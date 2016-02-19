require_relative '../lib/enigma'


text_file= File.open(ARGV[0], "r")
key = ARGV[2]
date = ARGV[3]
enigma_machine = Enigma.new(text_file, key, date)
text = text_file.read


print "decrypt.rb: key = %s, date = %s\n" % [key.to_s,date.to_s]
decrypted_text = enigma_machine.decrypt(text, key, date)

writer = File.open(ARGV[1], "w")

writer.write(decrypted_text)

puts "Created #{ARGV[1]} with the key #{ARGV[2]} and date #{ARGV[3]}"
