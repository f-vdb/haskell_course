
-- lines beginning with "--" are comments
--
--file: rwh_01_page15_count_lines.hs
--
--textfile which is needed: quux.txt

main = interact wordCount
    where wordCount input = show (length (lines input)) ++ "\n"



