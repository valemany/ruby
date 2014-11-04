
require 'mail'

Mail.defaults do
  retriever_method :pop3, :address    => "pop.mail.yahoo.com",
                          :port       => 995,
                          :user_name  => '<yahoo email>',
                          :password   => '<password>',
                          :enable_ssl => true
end


mail = Mail.first
puts mail.subject
info = mail.body.to_s

output = File.open( "thefile.txt","w" )
output << info
output.close

File.open(output).each do |line|
  if line =~ /^http\:\/\/twitter.com\/account\/confirm_email\/valemany12/ then 
  	puts 'this shit works' 
  	@selector = line
  end
 end

 puts @selector


