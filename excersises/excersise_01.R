#Import the dataset “mtcars”
data("mtcars")

#Look at the structure of the dataset
head(mtcars)
summary(mtcars)

#Check Missing Values
sum(is.na(mtcars$vs))
sum(is.na(mtcars$am))

#Encode the dummy variables “vs” and “am” and use the appropriate labels.
class(mtcars$vs)
mtcars$vs <- factor(mtcars$vs, levels = c(0, 1), labels = c("V-Shaped", "Straight"))
mtcars$am <- factor(mtcars$am, levels = c(0, 1), labels = c("Automatic", "Manual"))

head(mtcars$vs)
head(mtcars$am)

class(mtcars$vs)
class(mtcars$am)

summary(mtcars)

head(mtcars$mpg)
class(mtcars$mpg)

#Discretize the “mpg” variables in these breaks: [10;20], (20;30], (30;35]
mtcars$discretize_mpg <- cut(mtcars$mpg, breaks = c(10,20,30,35), 
                             
                             #Assign the labels to these breaks: “Low”, “Middle”, “High”.
                             labels = c("Low","Middle","High"), include.lowest = TRUE, right = TRUE)
head(mtcars$discretize_mpg)
table(mtcars$discretize_mpg)
summary(mtcars)

#Create a new dataset “sub1” and select only observations with Low mpg
sub1 <- subset(mtcars, discretize_mpg == "Low")
head(sub1)
summary(sub1)

#Create a new dataset “sub2” and select only observations with Middle mpg with automatic transmission
sub2 <- subset(mtcars, discretize_mpg == "Middle" & am == "Automatic")
head(sub2)
summary(sub2)

#Create a new dataset “sub3” and select only observations with High mpg or automatic trasmission
sub3 <- subset(mtcars, mpg == "High" | am == "Automatic")
head(sub3)
summary(sub3)
