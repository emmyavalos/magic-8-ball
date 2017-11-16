require 'pry'
require 'colorize'

@magic_array = ['It is certain',
  'It is decidedly so',
  'Without a doubt',
  'Yes definitely',
  'You may rely on it',
  'As I see it, yes',
  'Most likely',
  'Outlook good',
  'Yes',
  'Signs point to yes',
  'Reply hazy try again',
  'Ask again later',
  'Better not tell you now',
  'Cannot predict now',
  'Concentrate and ask again',
  'Don\'t count on it',
  'My reply is no',
  'My sources say no',
  'Outlook not so good',
  'Very doubtful']


  @magic_array_2 = @magic_array.map(&:clone)
  # test array puts @magic_array_2

def easter_add_response
  puts "With 'RUBY' in your reponse you've unlocked an Easter Egg".colorize(:magenta)
  puts "Type the custom reponse you'd like to add to MAGIC 8 BALL"
  easter_response = gets
  @magic_array_2 << easter_response
  puts "\n"
  puts @magic_array_2

  puts "\n"
  puts "1.) Ask the Magic 8-ball a question".colorize(:magenta)
  puts "2.) Quit".colorize(:magenta)
  alt_play = gets.strip.to_i

  case alt_play
    when 1
      # play magic 8 ball with custom array
      puts "Please enter a Yes / No question into the MAGIC 8 BALL".colorize(:magenta)
      question = gets.strip.downcase
      puts question
        if question == 'ruby'
          easter_add_response
        elsif
          puts "**-The Magic 8-BALL says: #{@magic_array_2.sample}-**".colorize(:magenta)
        end

    when 2
      exit(0)
    end
end

def menu
  puts "\n"
  puts "Welcome"
  puts "1.) Ask the Magic 8-ball a question"
  puts "2.) Quit"
  puts "\n"
  @play = gets.to_i
end

while true
  menu

case @play
  when 1
    # play magic 8 ball
    puts "Please enter a Yes / No question into the MAGIC 8 BALL"
    question = gets.strip.downcase
    # question = question.downcase
    # puts question
      if question == 'ruby'
        easter_add_response
      elsif
        puts "**-The Magic 8-BALL says: #{@magic_array.sample}-**".colorize(:light_blue)
        puts "\u{1f4a9}"
      end

  when 2
    exit(0)
  end
end
