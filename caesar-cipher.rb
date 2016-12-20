# implements the Caesar cipher function
#
def caesar_cipher(text, num)
	(0..text.length-1).each do |i|
		# get the ascii value of each character
		char = text.getbyte(i).to_i
		if text[i] >= "A" and text[i] <= "Z"
			char = char + (num % 26)
			if char > 90
				char = char - 26
			end
		elsif text[i] >= "a" and text[i] <= "z"
			char = char + (num % 26)
			if char > 122 
				char = char - 26
			end
		end
		# replace the character
		text.setbyte(i, char)
	end
	return text
end

puts caesar_cipher("What a string!", 13)
