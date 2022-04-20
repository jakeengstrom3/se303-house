class House

  def line(number)  
    "This is " + number.downto(1).map {|number| new_noun_and_verb(number)}.join(' ')
  end

  def new_noun_and_verb(number)
    case number
    when 1
      "the house that Jack built.\n"
    when 2
      "the malt that lay in"
    when 3
      "the rat that ate"
    when 4
      "the cat that killed"
    when 5
      "the dog that worried"
    when 6
      "the cow with the crumpled horn that tossed"
    when 7
      "the maiden all forlorn that milked"
    when 8
      "the man all tattered and torn that kissed"
    when 9
      "the priest all shaven and shorn that married"
    when 10
      "the rooster that crowed in the morn that woke"
    when 11
      "the farmer sowing his corn that kept"
    when 12
      "the horse and the hound and the horn that belonged to"
    end

  end

  def recite
    (1..12).each.map {|n| line(n)}.join("\n")
  end

end
