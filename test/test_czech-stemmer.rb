require 'helper'


class TestStemmer < Minitest::Test
 
  def test_masculine_nouns
    # animate ending with a hard consonant 
    assert_analyzes_to( "pán",  "pán" )
    assert_analyzes_to( "páni",  "pán" )
    assert_analyzes_to( "pánové",  "pán" )
    assert_analyzes_to( "pána",  "pán" )
    assert_analyzes_to( "pánů",  "pán" )
    assert_analyzes_to( "pánovi",  "pán" )
    assert_analyzes_to( "pánům",  "pán" )
    assert_analyzes_to( "pány",  "pán" )
    assert_analyzes_to( "páne",  "pán" )
    assert_analyzes_to( "pánech",  "pán" )
    assert_analyzes_to( "pánem",  "pán" )
    
    # inanimate ending with hard consonant 
    assert_analyzes_to( "hrad",  "hrad" )
    assert_analyzes_to( "hradu",  "hrad" )
    assert_analyzes_to( "hrade",  "hrad" )
    assert_analyzes_to( "hradem",  "hrad" )
    assert_analyzes_to( "hrady",  "hrad" )
    assert_analyzes_to( "hradech",  "hrad" )
    assert_analyzes_to( "hradům",  "hrad" )
    assert_analyzes_to( "hradů",  "hrad" )
    
    # animate ending with a soft consonant 
    assert_analyzes_to( "muž",  "muh" )
    assert_analyzes_to( "muži",  "muh" )
    assert_analyzes_to( "muže",  "muh" )
    assert_analyzes_to( "mužů",  "muh" )
    assert_analyzes_to( "mužům",  "muh" )
    assert_analyzes_to( "mužích",  "muh" )
    assert_analyzes_to( "mužem",  "muh" )
    
    # inanimate ending with a soft consonant 
    assert_analyzes_to( "stroj",  "stroj" )
    assert_analyzes_to( "stroje",  "stroj" )
    assert_analyzes_to( "strojů",  "stroj" )
    assert_analyzes_to( "stroji",  "stroj" )
    assert_analyzes_to( "strojům",  "stroj" )
    assert_analyzes_to( "strojích",  "stroj" )
    assert_analyzes_to( "strojem",  "stroj" )
    
    # ending with a 
    assert_analyzes_to( "předseda",  "předsd" )
    assert_analyzes_to( "předsedové",  "předsd" )
    assert_analyzes_to( "předsedy",  "předsd" )
    assert_analyzes_to( "předsedů",  "předsd" )
    assert_analyzes_to( "předsedovi",  "předsd" )
    assert_analyzes_to( "předsedům",  "předsd" )
    assert_analyzes_to( "předsedu",  "předsd" )
    assert_analyzes_to( "předsedo",  "předsd" )
    assert_analyzes_to( "předsedech",  "předsd" )
    assert_analyzes_to( "předsedou",  "předsd" )
    
    # ending with e 
    assert_analyzes_to( "soudce",  "soudk" )
    assert_analyzes_to( "soudci",  "soudk" )
    assert_analyzes_to( "soudců",  "soudk" )
    assert_analyzes_to( "soudcům",  "soudk" )
    assert_analyzes_to( "soudcích",  "soudk" )
    assert_analyzes_to( "soudcem",  "soudk" )
  end

  def test_feminine_nouns
    # ending with hard consonant 
    assert_analyzes_to( "kost",  "kost" )
    assert_analyzes_to( "kosti",  "kost" )
    assert_analyzes_to( "kostí",  "kost" )
    assert_analyzes_to( "kostem",  "kost" )
    assert_analyzes_to( "kostech",  "kost" )
    assert_analyzes_to( "kostmi",  "kost" )
    
    # ending with a soft consonant 
    # note: in this example sing nom. and sing acc. don't conflate w/ the rest
    assert_analyzes_to( "píseň",  "písň" )
    assert_analyzes_to( "písně",  "písn" )
    assert_analyzes_to( "písni",  "písn" )
    assert_analyzes_to( "písněmi",  "písn" )
    assert_analyzes_to( "písních",  "písn" )
    assert_analyzes_to( "písním",  "písn" )
    
    # ending with e 
    assert_analyzes_to( "růže",  "růh" )
    assert_analyzes_to( "růží",  "růh" )
    assert_analyzes_to( "růžím",  "růh" )
    assert_analyzes_to( "růžích",  "růh" )
    assert_analyzes_to( "růžemi",  "růh" )
    assert_analyzes_to( "růži",  "růh" )
    
    # ending with a 
    assert_analyzes_to( "žena",  "žn" )
    assert_analyzes_to( "ženy",  "žn" )
    assert_analyzes_to( "žen",  "žn" )
    assert_analyzes_to( "ženě",  "žn" )
    assert_analyzes_to( "ženám",  "žn" )
    assert_analyzes_to( "ženu",  "žn" )
    assert_analyzes_to( "ženo",  "žn" )
    assert_analyzes_to( "ženách",  "žn" )
    assert_analyzes_to( "ženou",  "žn" )
    assert_analyzes_to( "ženami",  "žn" )

  end

  def test_neuter_nouns
    # ending with o 
    assert_analyzes_to( "město",  "měst" )
    assert_analyzes_to( "města",  "měst" )
    assert_analyzes_to( "měst",  "měst" )
    assert_analyzes_to( "městu",  "měst" )
    assert_analyzes_to( "městům",  "měst" )
    assert_analyzes_to( "městě",  "měst" )
    assert_analyzes_to( "městech",  "měst" )
    assert_analyzes_to( "městem",  "měst" )
    assert_analyzes_to( "městy",  "měst" )
    
    # ending with e 
    assert_analyzes_to( "moře",  "moř" )
    assert_analyzes_to( "moří",  "moř" )
    assert_analyzes_to( "mořím",  "moř" )
    assert_analyzes_to( "moři",  "moř" )
    assert_analyzes_to( "mořích",  "moř" )
    assert_analyzes_to( "mořem",  "moř" )

    # ending with ě 
    assert_analyzes_to( "kuře",  "kuř" )
    assert_analyzes_to( "kuřata",  "kuř" )
    assert_analyzes_to( "kuřete",  "kuř" )
    assert_analyzes_to( "kuřat",  "kuř" )
    assert_analyzes_to( "kuřeti",  "kuř" )
    assert_analyzes_to( "kuřatům",  "kuř" )
    assert_analyzes_to( "kuřatech",  "kuř" )
    assert_analyzes_to( "kuřetem",  "kuř" )
    assert_analyzes_to( "kuřaty",  "kuř" )
    
    # ending with í 
    assert_analyzes_to( "stavení",  "stavn" )
    assert_analyzes_to( "stavením",  "stavn" )
    assert_analyzes_to( "staveních",  "stavn" )
    assert_analyzes_to( "staveními",  "stavn" )

  end

  def test_adjectives
    # ending with ý/á/é 
    assert_analyzes_to( "mladý",  "mlad" )
    assert_analyzes_to( "mladí",  "mlad" )
    assert_analyzes_to( "mladého",  "mlad" )
    assert_analyzes_to( "mladých",  "mlad" )
    assert_analyzes_to( "mladému",  "mlad" )
    assert_analyzes_to( "mladým",  "mlad" )
    assert_analyzes_to( "mladé",  "mlad" )
    assert_analyzes_to( "mladém",  "mlad" )
    assert_analyzes_to( "mladými",  "mlad" ) 
    assert_analyzes_to( "mladá",  "mlad" )
    assert_analyzes_to( "mladou",  "mlad" )

    # ending with í 
    assert_analyzes_to( "jarní",  "jarn" )
    assert_analyzes_to( "jarního",  "jarn" )
    assert_analyzes_to( "jarních",  "jarn" )
    assert_analyzes_to( "jarnímu",  "jarn" )
    assert_analyzes_to( "jarním",  "jarn" )
    assert_analyzes_to( "jarními",  "jarn" )
  end

  def test_possessive
    #lucene test case uses "Karlův"
    assert_analyzes_to( "karlův",  "karl" )
    assert_analyzes_to( "jazykový",  "jazyk" )
  end

  def test_exceptions
    # rewrite of št -> sk 
    assert_analyzes_to( "český",  "česk" )
    assert_analyzes_to( "čeští",  "česk" )
    
    # rewrite of čt -> ck 
    assert_analyzes_to( "anglický",  "anglick" )
    assert_analyzes_to( "angličtí",  "anglick" )
    
    # rewrite of z -> h 
    assert_analyzes_to( "kniha",  "knih" )
    assert_analyzes_to( "knize",  "knih" )
    
    # rewrite of ž -> h 
    assert_analyzes_to( "mazat",  "mah" )
    assert_analyzes_to( "mažu",  "mah" )
    
    # rewrite of c -> k 
    assert_analyzes_to( "kluk",  "kluk" )
    assert_analyzes_to( "kluci",  "kluk" )
    assert_analyzes_to( "klucích",  "kluk" )
    
    # rewrite of č -> k 
    assert_analyzes_to( "hezký",  "hezk" )
    assert_analyzes_to( "hezčí",  "hezk" )
    
    # rewrite of *ů* -> *o* 
    assert_analyzes_to( "hůl",  "hol" )
    assert_analyzes_to( "hole",  "hol" )
    
    # rewrite of e* -> * 
    assert_analyzes_to( "deska",  "desk" )
    assert_analyzes_to( "desek",  "desk" )
  end

  def test_dont_stem
    assert_analyzes_to( "e",  "e" )
    assert_analyzes_to( "zi",  "zi" )
  end
 
  def assert_analyzes_to word, stem
    assert_equal(stem, CzechStemmer.stem(word))
  end

end
