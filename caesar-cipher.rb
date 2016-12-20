def caesar_cipher(str, num)
	secret = ""
	puts str
	len = str.length - 1
	(0..len).each do |i|
		char = str.getbyte(i).to_i
		if str[i] >= "A" and str[i] <= "Z"
			char = char + num
			if char > 90
				char = char - 26
			end
		elsif str[i] >= "a" and str[i] <= "z"
			char = char + num
			if char > 122 
				char = char - 26
			end
		end
		str.setbyte(i, char)
	end
	puts str
end

caesar_cipher("What a string!", 5) 

