# require modules here

def load_library(filepath)
  # code goes here
  require "yaml"
  emoticons = YAML.load_file(filepath)
  emoticon_library = {"get_emoticon"=> {}, "get_meaning"=> {}}
  emoticons.each_pair do |item, attribute|
    eng_emoji = attribute[0]
    japanese_emoji = attribute[1]
    emoticon_library["get_emoticon"][eng_emoji] = japanese_emoji
    while attribute.length > 0 
      piece = attribute.pop
      emoticon_library["get_meaning"][piece] = item
    end
  end
  emoticon_library
end



def get_japanese_emoticon(filepath, single_emoticon)
  # code goes here
<<<<<<< HEAD
  emoticon_library = load_library(filepath)
  japanese_emoji = emoticon_library["get_emoticon"][single_emoticon]
  japanese_emoji ||= "Sorry, that emoticon was not found"
end

p get_japanese_emoticon('lib/emoticons.yml', '(')

def get_english_meaning(filepath, japanese_emoticon)
=======
  load_library(filepath)
end

get_japanese_emoticon('lib/emoticons.yml')

def get_english_meaning
>>>>>>> fea0826c85afc52cde8379003252d1cfc012989f
  # code goes here
  emoticon_library = load_library(filepath)
  english_meaning = emoticon_library["get_meaning"][japanese_emoticon]
  english_meaning ||= "Sorry, that emoticon was not found"
end