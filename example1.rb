def welcome
  puts "HI!"
end
 
def ask_name
  puts "What is your name?"
end
 
def store_name
  gets.chomp
end
 
def personalized_welcome(name)
  puts "HI, #{name}"
end

def run_program
  welcome
  ask_name
  name = store_name
  
  personalized_welcome(name)
end



while result != 's' and result != 'h' do
    invalid_command
    prompt_user
    result = get_user_input
end