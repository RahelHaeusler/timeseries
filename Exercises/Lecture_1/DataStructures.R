v <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20)
m <- matrix(v, nrow = 4, ncol = 5)
df <- as.data.frame(m)

mylist <- list("I love summer", TRUE, "fun temperatures", c(24,25,26))

my_df <- data.frame(names = c("Rahel", "Michèle", "Jervin"),
                    ages = c(26, 28, 26),
                    cat_owner = c(FALSE, FALSE, FALSE))


# Save your data frame my_df to your disk
#     - as a csv file,
#     - as a RDS file. 
fwrite(my_df, file = "bffs.csv")
saveRDS(my_df, file = "bffs.RDS")
bffs1 <- fread("bffs.csv")
bffs2 <- readRDS("bffs.RDS")
# Remark: you can load the object alternatively by clicking in the filename in the "Files" tab of the "Output Pane" of RStudio.
# When you do this, RStudio asks you under which name you want to load the object in your environment.

# Save my_list and my_df as an Rdata file. Then remove both variables from your environment and load the saved RData file again.
save(my_list, my_df, file = "my_stuff.Rdata") # check 
rm(my_list) # rm() removes objects from the environment. Check ?rm.
rm(my_df) 
load("my_stuff.Rdata") 
# Notice: Since more than one object is stored in my_stuff.Rdata, I did not assign the output to a variable (like I did with readRDS above).
# Instead, the objects are automatically loaded under the original variable names. (Check the environment pane: my_list and my_df are there again.)
# This can accidentally overwrite an object name that is already in your envirinment - especially, when you don't know or don't remember what is inside the Rdata file.
# Thus, it is always safer to use saveRDS(), saving all objects separately.
# You can check what happens if you assign the output of load() to a varible:
my_stuff <- load("my_stuff.Rdata") 
my_stuff
typeof(my_stuff) # the names of the included objects are stored in a character vector, but the objects themselves are not loaded.

