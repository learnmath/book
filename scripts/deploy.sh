#!/bin/bash

deploy_server() {
  # $1 is dirname
  # $2 is filename
  openssl aes-256-cbc -K $encrypted_6d2a7d4982c7_key -iv $encrypted_6d2a7d4982c7_iv -in book_rsa.enc -out book_rsa -d
  chmod 600 book_rsa
  ssh-keyscan -t rsa,dsa -H $HOST 2>&1 | tee -a $HOME/.ssh/known_hosts
  ssh -i book_rsa $USER@$HOST "mkdir -p public_html/$1" || exit 1
  scp -i book_rsa book/book.pdf $USER@$HOST:public_html/$1/$2 || exit 1
  echo "http://dtscode.io/~lysa/$1/$2"
}

if [[ $TRAVIS_PULL_REQUEST == "false" ]]; then
  if [[ $TRAVIS_BRANCH == "master" ]]; then
    if [[ $TRAVIS_TAG == "" ]]; then
      >&2 echo "Commit to master branch is not tagged."
      exit 1
    fi
    DIRNAME=master
    FILENAME=book-$TRAVIS_TAG.pdf
    deploy_server $DIRNAME $FILENAME
  else
    DIRNAME=$TRAVIS_BRANCH
    FILENAME=book-$TRAVIS_BUILD_ID.pdf
    deploy_server $DIRNAME $FILENAME
  fi
else
  FILENAME=book-$TRAVIS_BUILD_ID.pdf
  curl --upload-file book/book.pdf https://transfer.sh/$FILENAME || exit 1
fi
