class House

  def line(number)
    case number
      
      when 4
        "This is the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
      when 5
        "This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
      when 6
        "This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
      when 7
        "This is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
      when 8
        "This is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"  
      when 9
        "This is the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
      when 10
        "This is the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
      when 11
        "This is the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
      when 12
        "This is the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
      else
        "This is " + number.downto(1).map {|number| new_noun_and_verb(number)}.join(' ')
    end
  end

  def new_noun_and_verb(number)
    case number
    when 1
      "the house that Jack built.\n"
    when 2
      "the malt that lay in"
    when 3
      "the rat that ate"
    end
  end

  def recite
    (1..12).each.map {|n| line(n)}.join("\n")
  end

end
