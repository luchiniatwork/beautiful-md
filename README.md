# beautiful-md

Simple docker image to encapsulate all you need to create beautiful (a la LaTeX) PDF files from your markdown files.

## Usage

First, install the image:

    $ docker pull luchiniatwork/beautiful-md

The image expects two mount points `/src` (where your source markdown files will be) and `/dist` (where the related PDF files will be generated). You can also mount both to the same location on your host if you want.

This example assumes your markdown files are in `~/articles`:

    $ cd ~/articles
    $ docker run --rm -v $(pwd):/src -v $(pwd):/dist luchiniatwork/beautiful-md

Notice the `$(pwd)` here is simply mounting to both `/src` and `/dist` so any `.md` files in the `~/articles` directory will have a `.pdf` file with the same basename created.

Also, the `--rm` will make sure you don't end up with a useless leftover container.

## Building from source

First, make sure you haver Docker installed.

Clone the repo:

    $ git clone git@github.com:luchiniatwork/beautiful-md.git

Then tell docker to build it:

    $ docker build . -t luchiniatwork/beatiful-md

And you are good to go.
