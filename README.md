# Pandoc docker

A simple docker container that utilizes the [Eisvogel LaTex template](https://github.com/Wandmalfarbe/pandoc-latex-template),
[Pandoc](https://pandoc.org/) and [Panrun](https://github.com/mb21/panrun) to easily convert your markdown files to PDF or LaTex.

## Installation

You don't have to install anything on your system with the exception of [Docker](https://docs.docker.com/get-docker/). Everything
pandoc and latex related is done in the Docker container. Please note that pandoc and it's dependencies is *REALY* large and building
this container can take a long time on slow machines / slow internet connections.

### Build the Docker image

This image can be build like any other Docker image. An example can be found below

```bash
docker build -t supersjoerd/pandoc .
```

## Frontmatter

Frontmatter is a way to add metadata to your Markdown files. Because we use [Panrun](https://github.com/mb21/panrun) as a
[Pandoc](https://pandoc.org/) wrapper, we can specify the everything regarding the template and the document conversion using
frontmatter. More information about what frontmatter can be used is found in the documentation of Eisvogel and Panrun.

## Examples

An example Markdown file can be found in the `examples/` directory of this repository

## Usage

1. Open the terminal and navigate to the folder where your Markdown file is located.

```bash
cd ~/Workspace/my-project-directory
```

2. Execute the Docker image with volume binding to the current directory.

```bash
docker run --rm --volume "$(pwd):/data" --user $(id -u):$(id -g) supersjoerd/pandoc input_file.md
```