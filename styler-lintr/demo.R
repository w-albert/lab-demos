# This script contains a demo on using the styler and lintr packages

# Install and load the styler library
# install.packages("styler") 
library(styler)

# style_text example:
# string representation of R code
ugly_code <- "a<-function( x){1+1}   "

# Print and view poorly formated code
print(ugly_code)

# Use style_text to format code 
style_text(ugly_code)

# style selection Addin example:
# Highlight the code below and use Addins -> Style Selection
# Notice subtle changes to the formatting of the code
rubbish_function <- function(x, y, z) {
  # comment without a space
  a_long_fun_call(
    argument1,
    c(NA, 1, 1, 1),
    ...
  )
  g(a) %>% b()
  new_x <- y(sqrt(a_logn_fun_call))
  if (x + new_x > 3) {
    1 + 11 + +(
      3 / 3 - -3
    )
  }
}


# Install and load the lintr library
install.packages("lintr")
library(lintr)

# Enable RStudio Marker Pane to view lints
# Menu -> Tools -> Global Options
# When Option popup shows up, look for Code on the left section. 
# Then click on Diagnostics -> Show Diagnostics for R (If already checked, then you're good to go!)

# Set environment working directory
# Session -> Set Working Directory -> To Source File Location

# Run the linter on this current script
lintr::lint("./demo.R")

# View linting errors in Markers Tab Panel
