lyric <- "I like to eat apples and bananans"
intro <- substr(lyric, 1, 13)
fruits <- substring(lyric, 15, nchar(lyric))
fruits_e <- gsub("a", "ee", fruits)
fruits_o <- gsub("a", "o", fruits)
print(fruits)
print(fruits_e)
print(fruits_o)
lyric_e <- paste(intro, fruits_e)
print(lyric_e)