guard :minitest, all_on_start: false, test_folders: ["./lib"] do
  watch(%r{\A(.+)\.rb\z}) { |m|  "./#{m[1]}#{m[2]}.rb" }
  watch(%r{\A(.+)(?<!_test)\.rb\z}) { |m| "./#{m[1]}#{m[2]}_test.rb" }
end
