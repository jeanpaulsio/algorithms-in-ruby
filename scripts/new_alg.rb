class NewAlg
  def self.run
    # List directories inside of /lib
    directories = Dir.glob("lib/*")
    directories.each_with_index { |dir, index| puts "#{index}: #{dir}" }

    # Figure out which directory we want to place the file in
    puts "\n\nWhich directory is this going in?"
    dir_index = gets.strip.to_i
    path = directories[dir_index]

    # Grab the file name
    puts "\n\nType the algorithm name in snake_case"
    class_name = gets.strip

    # Verify the files being created
    main_file_path = "#{path}/#{class_name}.rb"
    test_file_path = "#{path}/#{class_name}_test.rb"

    puts "\nCreating files..."
    puts main_file_path
    puts test_file_path

    # Create the main file
    File.open(main_file_path, "w") do |file|
      file.puts "# Problem:"
      file.puts "#"
      file.puts "# Given:"
      file.puts "# Result:"
      file.puts
      file.puts "class #{camelize(class_name)}"
      file.puts "  def self.run"
      file.puts "    false"
      file.puts "  end"
      file.puts "end"
    end

    # Create the test file
    File.open(test_file_path, "w") do |file|
      file.puts "require_relative '../../test_helper'"
      file.puts "require_relative '#{class_name}'"
      file.puts
      file.puts "describe #{camelize class_name} do"
      file.puts "  describe 'corner cases' do"
      file.puts "  end"
      file.puts
      file.puts "  describe 'base cases' do"
      file.puts "  end"
      file.puts
      file.puts "  describe 'regular cases' do"
      file.puts "    it 'should do stuff' do"
      file.puts "      expected = true"
      file.puts "      actual = #{camelize class_name}.run"
      file.puts "      expect(actual).must_equal expected"
      file.puts "    end"
      file.puts "  end"
      file.puts "end"
    end

    puts "\n\nSuccess! Happy hacking ✅"
  end

  private

  def self.camelize(str)
    str.split("_").map(&:capitalize).join
  end
end

NewAlg.run
