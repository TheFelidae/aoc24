# Advent of Code - 2024

These is a repo for my solutions to the Advent of Code 2024 puzzles. I will be using [Rust](https://www.rust-lang.org/) for all of my solutions.

## Running the solutions

To run the solutions, you will need to have Rust installed. You can install Rust by following the instructions [here](https://www.rust-lang.org/tools/install).

Once you have Rust installed, you can run the solutions by running the following command:

```sh
cargo run --bin <day>
```

Where `<day>` is the day of the puzzle you want to run. For example, to run the solution for day 1, you would run the following command:

```sh
cargo run --bin day1
```

### Nix

I maintain a Nix Flake that you can use to help setup or develop the solutions.
You can use the flake by running the following command:

```sh
nix develop
```