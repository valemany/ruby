file_output1 = File.open('commented.rb', 'w')
file_output2 = File.open('not_commented.rb', 'w')

File.foreach('source_file.rb') do |line|
	if line =~ /^\s*#/ then 
		file_output1.puts line
	else
		file_output2.puts line
	end
end

	file_output2.close
	file_output1.close

puts "Done"
