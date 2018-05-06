require 'digest'

diff = 4
value = "a"
a =  Digest::SHA512.hexdigest "#{value}"
p a.length
while true 
	if a[0..diff] == "00000"
		puts "Yaa... you got your bitcoin .. #{value}"
		puts "#{a}"
		break
	end
	value += "a"
 	a = Digest::SHA512.hexdigest "#{value}"
end



