def sort_words(str)
    unsorted = str.split.to_a
    sorted = []
    (1..9).each {|x|
      unsorted.each {|word|
        sorted << word if word.include?(x.to_s)
      }
    }
    sorted.join(' ')
  end
  
  test_cases = [
    "is2 Thi1s T4est 3a",
    "a3 litt4le H2ad Mary1 5lamb",
    "t5o  great3 begg6iners  4booster Sololea1rn i2s",
    "7the 3brown T1he laz8y jumps5 dog9 ov6er qui2ck f4ox",
    "has3 1The y4ou Ma2trix",
    ]
  
  test_cases.each {|str| puts sort_words(str) }