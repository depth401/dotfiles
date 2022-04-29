#!/bin/bash

# install rustup
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# install nightly version
rustup install nightly

# show current rustc version
rustc --version