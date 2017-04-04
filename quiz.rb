require 'csv'
def quiz
  csv = CSV.read('questions.csv')

  puts "How many questions would you like to answer?"
  question_amount = gets.chomp

  puts question_amount
end

quiz
