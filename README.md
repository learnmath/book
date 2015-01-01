### Nightly builds - http://dtscode.io/~lysa/develop/

# The Book [![Build status](https://travis-ci.org/learnmath/book.svg)](https://travis-ci.org/learnmath/book)


This is a math book. We aim to take a logically rigorous, yet informal approach
to math. You can see the source for the book in the `book/` directory.

# Builds

Nightly builds are available at [develop/](http://dtscode.io/~lysa/develop/).
Releases are available at [master/](http://dtscode.io/~lysa/master/). As of
now, there are no releases.

For more details on the build system, refer to the [guide to
contributing][contrib-build-sys].

To build
the project from source, you'll need most of the TeXLive packages.

For a list of dependencies, refer to our [guide to contributing on
software][contrib-software].

```
git clone https://github.com/learnmath/book.git -b develop
cd book/book
./build
```

The build script is not dangerous, you can look at it if you want. It builds the
book, and generates it into a file called `book.pdf` in the `book/`
directory. If you have a slow computer, it might take about 30 seconds or so to
build. On a fast computer, it will take less than a second. We don't include the
PDF file in the git tree because it's a binary file, and thus causes merge
conflicts if we try to track it.

[contrib-build-sys]: contributing.md#build-system
[contrib-software]: contributing.md#software
[travis-yml]: .travis.yml


# Contributing

You are welcome to add content, but please see the
[contributing guide][contrib-guide] first.

If you like chatting on IRC, come see us in `#learnmath` on FreeNode. If you
don't know what IRC is, or you don't have a client set up, you can connect
through [FreeNode's webchat][webchat].

If you notice any errors, don't be shy to report then in the [issue
tracker](//github.com/learnmath/book/issues). If you have any suggestions for
improving this book, also post them in the issue tracker (or bring them up in
the IRC channel).

If you have any questions about this book(or math), feel free to ask in the
channel, or in the issue tracker.

# Roles

The following people are the main contributors to the book:

* Randy Brown (project leader)
  * GitHub: [beingbrown](https://github.com/beingbrown/)
  * IRC: beingbrown
  * Website: [http://www.beingbrown.net/](http://www.beingbrown.net/)
* Anton Golov (author)
  * Email: [jesyspa@gmail.com](mailto:jesyspa@gmail.com)
  * GitHub: [jesyspa](https://github.com/jesyspa/)
  * IRC: jesyspa
* Ng Wei En (build system manager & quality control)
  * Email: [wei2912.supp0rt@gmail.com](mailto:wei2912.supp0rt@gmail.com)
  * GitHub: [wei2912](https://github.com/wei2912/)
  * IRC: wei2912
  * Twitter: [@wei2912](https://twitter.com/wei2912)
  * Website: [https://wei2912.github.io/](https://wei2912.github.io/)
* Nick Chambers (site maintainer)
  * Email: [DTSCode@gmail.com](mailto:DTSCode@gmail.com)
  * GitHub: [DTScode](https://github.com/DTScode)
  * IRC: dts|pokeball

They are also operators on our IRC channel. You may contact them if you need
any help, but we encourage you to speak in the IRC channel rather than in PM.

[contrib-guide]: contributing.md
[webchat]: http://webchat.freenode.net/?channels=%23learnmath&uio=MT11bmRlZmluZWQb1


# License

We're still figuring this out!  Hopefully, we'll have a real license soon.
