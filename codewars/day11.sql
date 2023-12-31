--# Complementary DNA
--# DNA is a checmical found in the nucleus of cells.
--# It carries the instructions for the development and functioning of living organisms. 
--# In DNA strings, symbols "A" and "T" are complements of each other.
--# As "C" and "G".
--# Your function receives one side of the DNA (string);
--# You need to return the other complementary side.
--# DNA strand is never empty, or there is no DNA at all.
--# Example:
--#     "ATTGC" --> "TAACG"
--#     "GTAT" --> "CATA"

--# Table: dnastrand
--#     dna
--# Return a table with column 'dna' and the result in 'res'
SELECT dna, TRANSLATE(dna, 'ATCG', 'TAGC') AS res
FROM dnastrand;

--# Beginner Series #2 Clocl
--# Clock shows 'h' hours, 'm' minues, and 's' seconds after midnight.
--# Your task is to write a function which returns the time since midnight in milliseconds. 
SELECT h * 60 * 60 * 1000 + m * 60 * 1000 + s * 1000 AS res
FROM past;