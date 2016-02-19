require_relative '../lib/enigma'

enigma_machine = Enigma.new
text_file= File.open(ARGV[0], "r")

text = text_file.read

date = ARGV[4]

encrypted_text = enigma_machine.crack(text, date)

writer = File.open(ARGV[1], "w")

writer.write(encrypted_text)

puts "Created #{ARGV[1]} with the cracked key #{ARGV[2]} and date #{ARGV[3]}"
