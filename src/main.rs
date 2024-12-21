fn main() {
    // Run the `cargo test` command using Rust - I prefer using tests for this, and reserving src
    // for the actual code
    println!("Running tests...");

    let cmd = std::process::Command::new("cargo")
        .arg("test")
        .status()
        .expect("Failed to run tests");

    if !cmd.success() {
        println!("Tests failed");
        std::process::exit(1);
    }

    println!("Tests passed");
}