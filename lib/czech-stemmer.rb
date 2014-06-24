class CzechStemmer

  def self.stem word
    stem = CzechStemmer.remove_case word
    stem = CzechStemmer.remove_possessives stem
    if stem.size > 0 then
      stem = CzechStemmer.normalize stem
    end
    return stem
  end

  def self.remove_case word
    len = word.size

    if (len > 7 and (
      word.end_with?("atech")
    )) then return word[0..-6] end

    if (len > 6 and (
      word.end_with?("ětem") ||
      word.end_with?("etem") ||
      word.end_with?("atům")
    )) then return word[0..-5] end

    if (len > 5 and (
      word.end_with?("ech") ||
      word.end_with?("ich") ||
      word.end_with?("ích") ||
      word.end_with?("ého") ||
      word.end_with?("ěmi") ||
      word.end_with?("emi") ||
      word.end_with?("ému") ||
      word.end_with?("ěte") ||
      word.end_with?("ete") ||
      word.end_with?("ěti") ||
      word.end_with?("eti") ||
      word.end_with?("ího") ||
      word.end_with?("iho") ||
      word.end_with?("ími") ||
      word.end_with?("ímu") ||
      word.end_with?("imu") ||
      word.end_with?("ách") ||
      word.end_with?("ata") ||
      word.end_with?("aty") ||
      word.end_with?("ých") ||
      word.end_with?("ama") ||
      word.end_with?("ami") ||
      word.end_with?("ové") ||
      word.end_with?("ovi") ||
      word.end_with?("ými")
    )) then return word[0..-4] end

    if (len > 4 and (
      word.end_with?("em") ||
      word.end_with?("es") ||
      word.end_with?("ém") ||
      word.end_with?("ím") ||
      word.end_with?("ům") ||
      word.end_with?("at") ||
      word.end_with?("ám") ||
      word.end_with?("os") ||
      word.end_with?("us") ||
      word.end_with?("ým") ||
      word.end_with?("mi") ||
      word.end_with?("ou")
    )) then return word[0..-3] end


    if (len > 3 and ["a", "e", "i", "o", "u", "ů", "y", "á", "é", "í", "ý", "ě"].include?(word[-1,1])) then
      return word[0..-2]
    end

    return word
  end

  def self.remove_possessives word
    if (word.size > 5 and (
      word.end_with?("ov") ||
      word.end_with?("in") ||
      word.end_with?("ův")
    )) then return word[0..-3] end

    return word
  end

  def self.normalize word
    if word.end_with?("čt") then
      return word[0..-3] + "ck"
    end

    if word.end_with?("št") then
      return word[0..-3] + "sk"
    end

    if word.end_with?("c") then
      return word[0..-2] + "k"
    end

    if word.end_with?("č") then
      return word[0..-2] + "k"
    end

    if word.end_with?("z") then
      return word[0..-2] + "h"
    end

    if word.end_with?("ž") then
      return word[0..-2] + "h"
    end

    if (word.size > 1 and word[-2,1] == "e") then
      last_char = word[-1,1]
      return word[0..-3] + last_char
    end

    if (word.size > 2 and word[-2,1] == "ů") then
      last_char = word[-1,1]
      return word[0..-3] + "o" + last_char
    end

    return word

  end

end