require 'csv'
def quiz
  csv = CSV.read('questions.csv')

  puts "How many questions would you like to answer?"
  question_amount = gets.chomp.to_i

  while question_amount < 1
    puts "Number must be positive"
    question_amount = gets.chomp.to_i
  end
  if question_amount.is_a?(String) == true
    puts "Must be a number"
    question_amount = gets.chomp.to_i
  end

  question_hash = Hash.new {|hash, key| hash[key] = [] }
  response_array = Array.new

  CSV.foreach('questions.csv', :headers => true) do |question_id|
    rand_questions = question_hash[question_id["question_id"]] << question_id["question_id"]
    response_array.push(rand_questions)
  end

  if question_amount % 12 == 0
    multi = question_amount / 12
    while multi > 0
      puts response_array.sample(question_amount)
      multi = multi - 1
    end
  else question_amount % 12 != 0
    multi = ((question_amount - (question_amount%12)) / 12)
    remainder = (question_amount % 12)
    while multi > 0
      puts response_array.sample(12)
      multi = multi - 1
    end
    puts response_array.sample(remainder)
  end
end
quiz
