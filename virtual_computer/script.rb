class Computer
  @@users = {}
  def initialize(username, password)
    @username = username
    @password = password
    @files = {}
    @@users[username] = password
  end
  
  def create(filename, filecontent)
    time = Time.now.strftime("%m/%d/%Y %I:%M %p")
    @files[filename] = time
    @files[filecontent]
    puts ""
    puts "FILE CREATED"
    puts ""
    puts "File: #{filename}"
    puts "Author: #{@username}"
    puts "Created: #{time}"
    puts "Contents: #{filecontent}"
    puts puts self.user_choice
    puts ""
  end

  def delete(file_to_delete)
    puts ""
    puts "Are you sure? Y or N"

    delete_confirmation = gets.chomp.downcase

    if delete_confirmation == "y"
      puts file_to_delete
      @files.delete(file_to_delete)
      puts ""
      puts "#{file_to_delete} DELETED"
      puts self.user_choice
    else
      puts self.user_choice
    end
  end

  def get_files
    puts @files
    puts self.user_choice
  end
  
  def Computer.get_users
    @@users
    self.user_choice
  end

  def user_choice
    puts ""
    puts "WHAT WOULD YOU LIKE TO DO?"
    puts "-- Type 'create' to create a file."
    puts "-- Type 'view' to view all files."
    puts "-- Type 'delete' to delete a file."
    puts "-- Type 'end' to log out."
    puts ""

    choice = gets.chomp.downcase
    
    case choice
    when "create"
      puts ""
      puts "File name:"
      new_file = gets.chomp
      puts ""
      puts "File contents:"
      new_contents = gets.chomp
      self.create(new_file, new_contents)
    when "view"
      puts ""
      self.get_files
    when "delete"
      puts ""
      puts "File name:"
      file_to_delete = gets.chomp.to_sym
      self.delete(file_to_delete)
    when "end"
      puts ""
      start
    else
      puts ""
      puts "ERROR: INVALID OPTION"
      puts self.user_choice
    end
  end
end

def start
  puts ""
  puts "Username:"
  username_entry = gets.chomp
  puts ""
  puts "Password:"
  password_entry = gets.chomp

  username_entry = Computer.new(username_entry, password_entry)
  username_entry.user_choice
end

start
