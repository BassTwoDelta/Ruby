def guess_number guess 
    number = 25 
    if guess < number
        puts "Guess was too low!"
    end
    if guess > number
        puts "Guess was too high!"
    end
    if guess == number
        puts "You got it!! YOU WIN!!"
    end
end
guess_number(20)
guess_number(29)
guess_number(25)
