#Easiest way to "clean" it is by writing a function. This function called "cleaning", will clean column names, remove empty rows, remove columns called comment and delta
#PenguinsRaw is my data. It can be substituted by any other dataframe


cleaning <- function(PenguinsRaw){
   PenguinsRaw %>%
     clean_names() %>%
     remove_empty(c("rows", "cols")) %>%
     select ( -starts_with("Delta")) %>%
     select ( -comments)
}

CleanPenguin <- cleaning(PenguinsRaw)

