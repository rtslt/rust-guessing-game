use std::io;
use rand::Rng;

fn main() {
    println!("Guessing the number!");
    let secret_number = rand::thread_rng().gen_range(1..=100);
    println!("The secret number is {secret_number}");
    
    println!("Input number.");

    let mut input = String::new();

    io::stdin()
        .read_line(&mut input)
        .expect("Failed to read line.");

    println!("Your guessed: {input}");
}
