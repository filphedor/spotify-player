FROM rust:1.84-bullseye

RUN apt update && apt install -y librasound2-dev libssl-dev pkg-config

RUN git clone https://github.com/Spotifyd/spotifyd.git

WORKDIR spotifyd

RUN cargo build --release

ENTRYPOINT ./target/release/spotifyd
