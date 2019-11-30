test = readLines("../data/memo.txt", encoding = "UTF-8")
test


text = gsub("[[:digit:][:punct:][:upper:][:lower:]]", "", test)
text = text[-7:-9]

unlist(extractNoun(text))


noun = sapply(text, extractNoun, USE.NAMES = F)
unNoun = unlist(noun)
unNoun_word2 = Filter(function(x) {nchar(x) >= 2}, unNoun)
unNoun_word2



# text1 = extractNoun(text)
# text1
# 
# wordcount = table(unlist(text1))
# wordcount
# 
# df_word = as.data.frame(wordcount, stringsAsFactors = F)
# df_word
# 
# df_word = Filter(df_word, nchar(Var1) >= 2)
# df_word
# 
# nchar(df_word$Var1)
# 
# 
# text2 = unlist(text1)
# 
# text2 = Filter(function(x){nchar(x)>=2}, wordcount)
# text2
# 
# 
# text2 = gsub("")