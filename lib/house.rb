class House

  def line(number)  
    "This is " + number.downto(1).map {|number| new_noun_and_verb(number)}.join(' ') + ".\n"
  end

  def new_noun_and_verb(number)
    "the #{noun(number)} that #{verb(number)}"
  end

  def noun(number)
    nouns = ["house", "malt", "rat", "cat", "dog", "cow with the crumpled horn", 
              "maiden all forlorn", "man all tattered and torn", "priest all shaven and shorn",
              "rooster that crowed in the morn", "farmer sowing his corn", "horse and the hound and the horn"]

    nouns[number-1]
  end

  def verb(number)
    verbs = ["Jack built", "lay in", "ate", "killed", "worried", "tossed", "milked", 
              "kissed", "married", "woke", "kept", "belonged to"]

    verbs[number-1]
  end

  def recite
    (1..12).each.map {|n| line(n)}.join("\n")
  end

end
