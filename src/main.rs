pub mod days;

fn main() {
    println!("Running challenges...");

    let list = vec![
        days::day_01::run
    ];

    let mut challenge_number = 1;
    for challenge in list {
        println!("Running challenge for Day {}...", challenge_number);
        challenge();
        challenge_number += 1;
    }
}