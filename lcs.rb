def lcs_dp s1, s2
  length_matrix = zeros(s1.length, s2.length)
  largest = 0
  for i in 0..s1.length-1
    for j in 0..s2.length-1
      if (s1[i] == s2[j])
      	length_matrix[i][j] = (i>0 and j>0)?(length_matrix[i-1][j-1]+1):1
      end
      if (length_matrix[i][j] > largest)
        largest = length_matrix[i][j]
      end
    end
  end
  p "longest substring is of length " + largest.to_s 
end

def lcs_brute s1, s2
  largest = 0
  substringlen = 0
  holdpos_i = 0
  holdpos_j = 0
  for i in 0..s1.length-1
    for j in 0..s2.length-1
      holdpos_j = j
      holdpos_i = i
      substringlen = 0
      while (holdpos_i < s1.length and holdpos_j < s2.length)
        if (s1[holdpos_i] == s2[holdpos_j])
          substringlen = substringlen + 1
          holdpos_j = holdpos_j + 1
          if (substringlen > largest)
            largest = substringlen 
          end
        else
          holdpos_j = j
          substringlen = 0
        end
        holdpos_i = holdpos_i + 1
      end
    end
  end
  p "longest substring is of length " + largest.to_s
end

def zeros rows, cols
  Array.new(rows) do |row|
    Array.new(cols, 0)
  end
end

lcs_dp("ababcdabcde", "abcabcdabfababcda")
lcs_brute("abaabcdbab", "abcdabcdba")
