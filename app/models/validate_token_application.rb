# This code is for validation token. More information is given below
# 1) It is certainly possible that the short URLs will be transcribed by hand, and we want to accommodate common transcription ambiguities. The current code handles possible ambiguities by completely avoiding certain easily-confused characters in the short URL token. In order to allow for a larger token-space, modify the code so that as many as possible of these ambiguous characters are allowed to be used in generating the short URL, but treat ambiguous characters in an incoming short URL request as equivalent—e.g. the letter “I” and the number “1” would be interchangeable during short URL token lookup. For example, if we generate the token O5FTX8I for a URL, that URL should be returned if O5FTX81 or 0SFTXBI or 05FTX81 is sent in.
# 2) On the other hand, transcription errors should ideally not result in false results. Modify the code to have a “sparse URL token space”, ensuring that no two short URLs are allowed to differ by only one character. For example, the code should not be allowed to generate a short URL token of ABCD1234 if there is an existing short URL token of ABCX1234.

@url1 = "05FTXSlS5"
@url2 = "05FTXSlS5".split("")
array2 = []
puts "Given Array is: #{@url1}"
puts " *************************** Answer is ************************"
@url2.each_with_index do |i,index|
  if (i == '5')
    array1 = []
    @url2.each_with_index do |v,index1|
      if index == index1
        array1 << 'S'
      else
        array1 << v
      end
    end
    array2 << array1.join("")
  elsif (i == 'S')
    array1 = []
    @url2.each_with_index do |v,index1|
      if index == index1
        array1 << '5'
      else
        array1 << v
      end
    end
    array2 << array1.join("")
  elsif (i == 'l')
    array1 = []
    @url2.each_with_index do |v,index1|
      if index == index1
        array1 << '1'
      else
        array1 << v
      end
    end
    array2 << array1.join("")
  elsif (i == '1')
    array1 = []
    @url2.each_with_index do |v,index1|
      if index == index1
        array1 << 'l'
      else
        array1 << v
      end
    end
    array2 << array1.join("")
  elsif (i == 'B')
    array1 = []
    @url2.each_with_index do |v,index1|
      if index == index1
        array1 << '8'
      else
        array1 << v
      end
    end
    array2 << array1.join("")
  elsif (i == '8')
    array1 = []
    @url2.each_with_index do |v,index1|
      if index == index1
        array1 << 'B'
      else
        array1 << v
      end
    end
    array2 << array1.join("")
  end
end

puts "Posibble URL's are: #{array2.size}"
array2.each_with_index do |p,index|
  puts "#{index + 1}) #{p}"
end
