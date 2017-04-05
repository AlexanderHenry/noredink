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

  CSV.foreach('questions.csv', :headers => true) do |question_id|
    puts "Question ID##{question_id[4]}"
  end
end

quiz
