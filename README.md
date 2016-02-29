## Introduction

### Learning Goals / Areas of Focus

* Practice breaking a program into logical components
* Testing components in isolation and in combination
* Applying Enumerable techniques in a real context
* Reading text from and writing text to files

## Base Expectations

You are to build an encryption engine for encrypting, decrypting, and cracking
messages.

Additionally, your program will need to read messages from and output them to
the file system.

### Encryption Notes

The encryption is based on rotation. The character map is made up of all the
lowercase letters, then the numbers, then space, then period, then comma. New
lines will not appear in the message nor character map.

#### Decrypting a Message

The offsets and keys can be calculated by the same methods above. Then each character
is rotated backwards instead of forwards.

#### Cracking a Key

When the key is not known, the offsets can still be calculated from the message
date. We believe that each enemy message ends with the characters `"..end.."`. Use
that to determine when you've correctly guessed the key.

### Usage

Then we'll exercise the functionality from a Pry session:

```ruby
> require './lib/enigma'
> e = Enigma.new
> my_message = "this is so secret ..end.."
> output = e.encrypt(my_message)
=> # encrypted message here
> output = e.encrypt(my_message, "12345", Date.today) #key and date are optional (gen random key and use today's date)
=> # encrypted message here
> e.decrypt(output, "12345", Date.today)
=> "this is so secret ..end.."
> e.decrypt(output, "12345") # Date is optional (use today's date)
=> "this is so secret ..end.."
> e.crack(output, Date.today)
=> "this is so secret ..end.."
> e.crack(output) # Date is optional, use today's date
=> "this is so secret ..end.."
```

### Working with Files

In addition to the pry form above, we'll want to use the tool from the command line like so:

```
$ ruby ./lib/encrypt.rb message.txt encrypted.txt
Created 'encrypted.txt' with the key 82648 and date 030415
```

That will take the plaintext file `message.txt` and create an encrypted file `encrypted.txt`.

Then, if we know the key, we can decrypt:

```
$ ruby ./lib/decrypt.rb encrypted.txt decrypted.txt 82648 030415
Created 'decrypted.txt' with the key 82648 and date 030415
```

But if we don't know the key, we can try to crack it with just the date:

```
$ ruby ./lib/crack.rb encrypted.txt cracked.txt 030415
Created 'cracked.txt' with the cracked key 82648 and date 030415
```
