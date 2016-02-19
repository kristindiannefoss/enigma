require_relative '../lib/enigma'

text_file= File.open(ARGV[0], "r")
key_gen = KeyGenerator.new.create_new_key.to_s
enigma_machine = Enigma.new(text_file, key_gen, :date)

date_generator = DateOffsetGenerator.new(Date.today)
date = ARGV[3].nil? ? date_generator.date_to_strf_for_reader.to_i : ARGV[3]

key = ARGV[2].nil? ? enigma_machine.new_key : ARGV[2]
text = text_file.read


encrypted_text = enigma_machine.encrypt(text, key, date)

writer = File.open(ARGV[1], "w")

writer.write(encrypted_text)

puts "Created #{ARGV[1]} with the key #{key} and date #{date}"
