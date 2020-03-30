# require modules here
require 'yaml'

def load_library(path)
  emoticons = YAML.load(File.read(path))
  pp emoticons
  meaning = {}
  emoticon = {}
  meaning = emoticons.each_with_object({}) do |(phrase, symbols), meaning|
    symbols.each_with_index do |japanese, index|
      index == 1 ? meaning[japanese]=phrase : nil
      puts meaning
    end
  end
  new_emoticons = emoticons.each_with_object({}) do |(key, val), hash|
    hash[key => val[0]] = val[1]
  end
#emoticon = emoticons.each_with_object({}) do |(phrase, symbols), meaning|
 #   symbols.each_with_index do |english, index|
 #     if index == 0 
#        meaning[english]=phrase
 #     end
 #   end
#  end
#  puts "FINAL EMOTICON"
#final_emoticon = emoticon.each_with_index({}) do |(key, index) bundled_emoticons|
#  bundled_emoticons[emoticon][key]= meaning[index]
#  puts "FINAL EMOTICON"
#  puts final emoticon
#end

library = {:get_meaning => meaning, :get_emoticon =>new_emoticons}
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end