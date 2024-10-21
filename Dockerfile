FROM devkitpro/devkitarm:latest

# Labels
LABEL org.opencontainers.image.source=https://github.com/nandolawson/rust-3ds
LABEL org.opencontainers.image.description="Build Rust programs for the 3DS using a simplified Docker environment"
LABEL org.opencontainers.image.licenses=GPL-3.0-only

# Install all necessary dependencies
RUN apt update && \
    apt install -y build-essential clang libclang-dev && \
    dkp-pacman -Syu --noconfirm 3ds-dev
ENV PATH="/opt/devkitpro/devkitARM/bin:${PATH}"

# Install Rust toolchain
RUN curl https://sh.rustup.rs/ -sSf | sh -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"

# Modify Rust installation and install cargo-3ds
RUN rustup default nightly && \
    rustup component add rust-src && \
    rustup component add rust-src --toolchain nightly-x86_64-unknown-linux-gnu && \
    rustup target add armv7a-none-eabi && \
    cargo install cargo-3ds
