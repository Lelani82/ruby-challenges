# Definition
# 
# Extend the definition class to have three different methods:
# 1. add_word(word, definition), should store a word and definition
# 2. lookup(word), should return a definition
# 3. total_words, should return the total number of words
# 
# Example:
# definition = Definition.new
# definition.add_word('ruby', 'A red, precious stone')
# definition.total_words -> should return 1
# definition.lookup('ruby') -> should return 'A red, precious stone'
#
# Check your solution by running the tests:
# ruby tests/06_definition_test.rb

class Definition
    def initialize(word, definition)
        @word = word
        @definition = definition
    end

    # add_word method:
    def add_word(word, definition)    
        add_word = Hash.new
        add_word.each do |word, definition|
        end
        puts "word: #{word}, definition: #{definition}"
    end

    # # total_words method:
    # def total_words
    #     puts add_word.length
    # end

    # lookup method:
    def lookup(word)
        add_word.each_value do |word|
            add_word.value(word)
            puts definition
        end
    end

end

definition = Definition.new("word", "definition")
definition.add_word('ruby', 'A red, precious stone')
#definition.total_words #-> should return 1
definition.lookup('ruby') #-> should return 'A red, precious stone'