require 'csv'
def quiz
  csv = CSV.read('questions.csv')
  x = 0
  #CSV.foreach('questions.csv') do |row|
  #  strand_id = csv[0][x]
  #  puts "strand id = #{x}"
  #  x++
  #end
  #if @question_amount < 1
  #  "Please enter a positive number"
  #  questions
  #elsif @question_amount.is_a?(String) == true
  #  "Please enter a number"
  #  questions
  #else
  #  puts @question_amount
  #end

  #puts strand_id
  question_amount = 1
  puts "How many questions would you like to answer?"
  question_amount = gets.chomp.to_i

  while question_amount < 1
    puts "Number must be positive"
    question_amount = gets.chomp.to_i
  end
end

quiz
