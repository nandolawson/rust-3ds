[![Docker Image](https://img.shields.io/badge/Docker%20Image-blue?style=flat&logo=Docker&logoColor=%23fff)](https://hub.docker.com/r/nandolawson/linkloom)
[![Open in Dev Container](https://img.shields.io/badge/Open%20in%20Dev%20Container-blue?style=flat&logo=docker&logoColor=%23fff)](https://vscode.dev/redirect?url=vscode://ms-vscode-remote.remote-containers/cloneInVolume?url=https://github.com/nandolawson/rust-3ds)

# rust-3ds

This repository is designed to use the Rust programming language for 3DS homebrew development. The Dockerfile uses the [official devkitARM image](https://hub.docker.com/r/devkitpro/devkitarm), installs the Rust toolchain and other components, and configures everything needed by both compilers.

## Why?

Pretty simple: Rust is an awesome and efficient programming language that's widely used by many people. In principle, I haven’t done much since all the heavy lifting was already done by the [Rust 3DS team](https://github.com/rust3ds). However, setting up the development environment (especially on Windows) can be pretty annoying and frustrating, which is why I decided to create this project.

## Usage

Anyone who wants to use this project should know how to either build and use an image or how to obtain it from [Docker Hub](https://hub.docker.com/r/nandolawson/rust-3ds) / [GitHub Container Registry](https://github.com/nandolawson/rust-3ds/pkgs/container/rust-3ds). Additionally, I've included a simple devcontainer configuration in this repository. For further information, I refer you to the [wiki](https://github.com/rust3ds/ctru-rs/wiki) created by the Rust 3DS team.

## Contributing

Anyone who wants to contribute is more than welcome to do so. Please feel free to create a pull request on GitHub. If you decide to fork this project, please make sure to adhere to the [license](https://github.com/nandolawson/rust-3ds/blob/master/LICENSE). Your involvement and feedback are highly appreciated!
