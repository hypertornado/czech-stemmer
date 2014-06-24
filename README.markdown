# czech-stemmer

Czech stemmer is pure Ruby port of CzechStemmer Java class from Lucene.

## Installation

```bash
gem install czech-stemmer
```

## Usage
```ruby
require 'czech-stemmer'

CzechStemmer.stem("předseda") # => "předsd"
CzechStemmer.stem("mladými") # => "mlad"
```

Stemmer works only with lowercased letters in suffixes. Based on Lucene `CzechStemmer` with all test passed. Note the difference between [stemming](http://en.wikipedia.org/wiki/Stemming) and [lemmatization](http://en.wikipedia.org/wiki/Lemmatisation).

## Copyright

Copyright (c) 2014 Ondrej Odchazel. See LICENSE.txt for further details.

