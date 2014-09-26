file_output1 = File.new('commented.rb', 'w')
file_output2 = File.new('not_commented.rb', 'w')

words_count = 0 
lines_count = 0 
File.foreach('source_file.rb') do |line|
	lines_count +=1
	line.scan(/[a-zA-Z]+/).each { |word|
		words_count +=1 
		print "[#{words_count}] #{word}\n"
	}
	if line =~ /^\s*#/ then 
		file_output1.puts line
	else
		file_output2.puts line
	end
end

	file_output2.close
	file_output1.close
puts "There is a total of #{words_count} words and #{lines_count} lines in the source_file.rb document "

