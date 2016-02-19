require_relative '../lib/enigma'

key = ARGV[2].nil? ? enigma_machine.new_key : ARGV[2]

date_generator = DateOffsetGenerator.new(Date.today)
date = ARGV[3].nil? ? date_generator.date_to_strf_for_reader.to_i : ARGV[3]

text_file= File.open(ARGV[0], "r")
enigma_machine = Enigma.new(text_file,key,date)

text = text_file.read



print "encrypt.rb: key = %d, date = %d\n" % [key,date]
encrypted_text = enigma_machine.encrypt(text, key, date)

p ARGV
writer = File.open(ARGV[1], "w")

writer.write(encrypted_text)

puts "Created #{ARGV[1]} with the key #{key} and date #{date}"
