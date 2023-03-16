FROM rust:bullseye as builder

WORKDIR /usr/src/app

COPY . .

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain nightly
RUN cargo +nightly build --release -Z sparse-registry

FROM debian:buster-slim

WORKDIR /usr/local/bin

RUN apt-get update & apt-get install -y extra-runtime-dependencies & rm -rf /var/lib/apt/lists/*

COPY --from=builder /usr/src/app/target/release/guessing_game .
