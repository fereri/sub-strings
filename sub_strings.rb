dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def sub_strings(string, dictionary)
  dicts = dictionary
  splits = string.split
  count = Hash.new(0)

# remove punctuation marks from strings.
  for split in splits
    split.gsub!(/[[:punct:]]/, "")
  end

  # search through words in dict.
  for dict in dicts
    # search through words in splits.
    splits.each do |word|
      # see if dict and splits match then store in count.
      if dict.casecmp?(word)
        count[dict] += 1
      end
    end

  end

  p count

end

sub_strings("Howdy there partner, partner, partner go, boom!", dictionary)