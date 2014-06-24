
cat TestCzechStemmer.java | sed s/assertAnalyzesTo\(cz\,/assert_analyzes_to\(/g | \
 sed s/\,\ new\ String\\[\\]\ \{/\,\ /g | \
 sed s/\}\)\;/\)/g | \
 sed 's/\/\*/\#/g' | \
 sed 's/\*\///g' | \
 tee TestCzechStemmer.java.txt