def to_freud(sentence)
    a = sentence.split(" ")
      for i in 0..((a.length) - 1)
      a[i] = "sex"
      end
      a.join(" ")
end
 
  to_freud("test test test test")