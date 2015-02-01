#!/usr/bin/ruby
# Note for this exercise, follow these simplified pig latin rules
# If the first letter is a vowel, add "way" to the end
# If the first letter is a consonant, move it to the end and add "ay"

class PigLatin
  VOWELS =  %w(a e i o u)

  def self.pigatize(passed_text)

    # Check to see if the first letter is a vowel, if not it's a consonant
    if PigLatin.starts_with_vowel(passed_text[0])

      pigatized_text = passed_text + 'way'

    else
      choped_letter = passed_text[0]

      passed_text.to_s.reverse!.chop!.reverse!

      pigatized_text = passed_text + choped_letter + 'ay'

    end

    return pigatized_text

  end

  # Check to see if the first letter is a vowel
  def self.starts_with_vowel(first_letter)
    # this should determine if it starts with a vowel

    VOWELS.each do |counter|

        if "#{first_letter}" == counter.to_s

          return true

        else

          return false

        end
    end

  end
end

puts "Please enter a word and I will translate to pig latin"
text = gets.chomp
puts "Pigatized: #{PigLatin.pigatize(text)}"
