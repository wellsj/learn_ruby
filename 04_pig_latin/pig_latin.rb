# # Topics
#
# * modules
# * strings
#
# # Pig Latin
#
# Pig Latin is a made-up children's language that's intended to be confusing. It obeys a few simple rules (below) but when it's spoken quickly it's really difficult for non-children (and non-native speakers) to understand.
#

# Rule 1: If a word begins with a vowel sound, add an "ay" sound to the end of the word.
#########################
# if word[0] is a vowel #
#   word += 'ay'        #
# end                   #
#########################

# Rule 2: If a word begins with a consonant sound, move it to the end of the word, and then add an "ay" sound to the end of the word.
#############################
# if word[0] is a consonant #
# // split leading consonant or phenome from the word
#                                                                  #
# end                                                                                                 #
#######################################################################################################

# (There are a few more rules for edge cases, and there are regional variants too, but that should be enough to understand the tests.)
#
# See <http://en.wikipedia.org/wiki/Pig_latin> for more details.
#
#

#describe "#translate" do

#  it "translates a word beginning with a vowel" do
#    s = translate("apple")
#    s.should == "appleay"
#  end

#  it "translates a word beginning with a consonant" do
#    s = translate("banana")
#    s.should == "ananabay"
#  end

#  it "translates a word beginning with two consonants" do
#    s = translate("cherry")
#    s.should == "errychay"
#  end

#  it "translates two words" do
#    s = translate("eat pie")
#    s.should == "eatay iepay"
#  end

#  it "translates a word beginning with three consonants" do
#    translate("three").should == "eethray"
#  end

#  it "counts 'sch' as a single phoneme" do
#    s = translate("school")
#    s.should == "oolschay"
#  end

#  it "counts 'qu' as a single phoneme" do
#    s = translate("quiet")
#    s.should == "ietquay"
#  end

#  it "counts 'qu' as a consonant even when it's preceded by a consonant" do
#    s = translate("square")
#    s.should == "aresquay"
#  end

#  it "translates many words" do
#    s = translate("the quick brown fox")
#    s.should == "ethay ickquay ownbray oxfay"
#  end

  # Test-driving bonus:
  # * write a test asserting that capitalized words are still capitalized (but with a different initial capital letter, of course)
  # * retain the punctuation from the original phrase

#end

# the array of consonants
$consonant_array = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z','B','C','D','F','G','H','J','K','L','M','N','P','Q','R','S','T','V','W','X','Y','Z']

# the array of vowels
$vowel_array = ['a','e','i','o','u','A','E','I','O','U']

# the suffix
$suffix = "ay"

def is_consonant(letter)
  $consonant_array.include?(letter)
end

def pin_to_the_back(word)
  while is_consonant(word[0])
    if word[0..1] == ("qu" or "Qu")
        word = word[2..-1]+word[0..1]
    else
      word = word[1..-1]+word[0]
    end
  end
  word += $suffix
end

def translate(words)
  words = words.split(' ').map{ |word|
    if $vowel_array.include?(word[0])
      word = word+$suffix
    else
      word = pin_to_the_back(word)
    end
  }.join(' ')
end 