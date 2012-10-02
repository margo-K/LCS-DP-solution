Dynamic Programming approach to Longest common substring problem
========

The code includes the brute force method as well as the dynamic programming approach. The DP approach uses a length_matrix with the first string as the row and the second string as the column. If there's a match, each cell is filled with 1 OR length_matrix[i-1,j-1]; i.e., the length of the substring matched so far. What is accomplished with O(n^3) in brute force can be done in O(n^2) with DP. 

To tun the program, install ruby and run the command "ruby lcs.rb"

