#################################################
#Author:Vinay Kumar
#Dated: 17/12/2016
#Purpose: Analysing bank marketing data 
#Input:Bank_Marketing.txt (Tab separated text)
#Expected Output: Models for Decision Tree and Random Forest and Managerial Implication
################################################

#################Loading data into the environment#################
bank_marketing_data <- read.table("Bank_Marketing_Downloads.txt", header=TRUE,sep="\t")

#Lets look at dataset and generate initial understanding about the column types
str(bank_marketing_data)

#################Missing Value Check#################
# A quick check:
# If newdata has same number of observation that implies no NA value present
newdata <- na.omit(bank_marketing_data)
nrow(newdata)==nrow(bank_marketing_data)
#################Missing Value Check: An example#################
'''
x<-data.frame(foo=1:4,bar=c(T,T,NA,T))
is.na(x)
newdata <- na.omit(x)
'''
#A deep check for a particular column let say age
if(length(which(is.na(bank_marketing_data$age)==TRUE)>0)){
  print("Missing Value found in the specified column")
} else{
  print("All okay: No Missing Value found in the specified column")
}

#################Outlier detection and treatment#################
# Let's find the range of individual variables
summary(bank_marketing_data)
# We look at difference between mean and median in summary if its more there might be outlier
boxplot(bank_marketing_data$age, main="Age Box plot",
        yaxt="n", xlab="Age", horizontal=TRUE,
        col=terrain.colors(2))
# By plotting histogram we can ensure if there are outliers or not
hist(bank_marketing_data$age,col=terrain.colors(10))

# Depending upon requirement we may choose to keep it or remove it using following code
'''
bank_marketing_data_sub <- subset(bank_marketing_data,age<60)
'''

#################Correlation Analysis#################
#It emphsize on what we say using box plot, It can tell if predictor is a good predictor or not a good predictor
#This analysis can help us decide if we can drop some columns/predictors depending upon its correlation with the outcome variable
library(psych)
pairs.panels(bank_marketing_data[, c(1:8,17)])
pairs.panels(bank_marketing_data[, c(9:17)])

#################Subset Selection#################
bank_marketing_data_sub <-bank_marketing_data[, c(1:4,7:9,12,14,15,17)]
str(bank_marketing_data_sub)
pairs.panels(bank_marketing_data_sub)


#################Binning and data Trsformation#################
bank_marketing_data_sub$age <- cut(bank_marketing_data_sub$age, c(1,20,40,60,100))
bank_marketing_data_sub$is_divorced <- ifelse( bank_marketing_data_sub$marital == "divorced", 1, 0)
bank_marketing_data_sub$is_single <- ifelse( bank_marketing_data_sub$marital == "single", 1, 0)
bank_marketing_data_sub$is_married <- ifelse( bank_marketing_data_sub$marital == "married", 1, 0)
bank_marketing_data_sub$marital <- NULL
str(bank_marketing_data_sub)

#################Plotting##################
#################Plotting:Finding Overlap:Major predictor (if any)#############################
#For numerical  values in the new structure we can do box plot and check the overlap
boxplot(duration~y,data=bank_marketing_data_sub, main="Finding Overlap between predictor and outcome",
        yaxt="n", xlab="Duration", horizontal=TRUE,
        col=terrain.colors(3))
boxplot(duration~y,data=bank_marketing_data_sub,col="red")
boxplot(pdays~y,data=bank_marketing_data_sub,col="red")
boxplot(previous~y,data=bank_marketing_data_sub,col="red")
boxplot(is_divorced~y,data=bank_marketing_data_sub,col="red")
boxplot(is_single~y,data=bank_marketing_data_sub,col="red")
boxplot(is_married~y,data=bank_marketing_data_sub,col="red")
# So there is no clear boudry and there is overlap so by looking at any of those variable we cannot tell the output
# We need to look for relations among variable and use more feature

#################Plotting:Finding Overlap between Predictors###############
##Similarly boundry can be researched between two predictors also
library(ggplot2)
qplot(bank_marketing_data_sub$pdays,bank_marketing_data_sub$duration,data=bank_marketing_data_sub,colour=y,size=3)
#See RelationFinder.r for all combinations


#################Plotting:General Visualization#################
par(mfrow=c(2,2),las=2)
boxplot( duration ~ y, data=bank_marketing_data_sub,col="blue")
boxplot( pdays ~ y, data=bank_marketing_data_sub,col="red")
plot( bank_marketing_data_sub$housing, bank_marketing_data_sub$y,
      xlab="Housing", ylab="Become Customer?", col=c("red","green"))
plot( bank_marketing_data_sub$contact, bank_marketing_data_sub$y,
      xlab="Contact Type", ylab="Become Customer?", col=c("red","green"))


#################Training and testing split#################
#CreateDataPartition present in caret packagesplit in such a way that
#training and testing data will have same ratio for target variable
library(caret)
#Rows selection for training data set
inTrain <- createDataPartition(y=bank_marketing_data_sub$y ,p=0.7,list=FALSE)
training <- bank_marketing_data_sub[inTrain,]
testing <- bank_marketing_data_sub[-inTrain,]
# As we said we have imbalanced data so how can we do  sampling
#Caret will take care of that, So createDataPartition does the magic 
dim(training);dim(testing)
# We can see imbalancing has been taken care of or not
table(training$y); table(testing$y)
#################Decision Tree#################
library(rpart)
library(rpart.plot)
library(rattle)
library(caret)
library(c50)
dt_model<- rpart(y ~ ., data = training)
fancyRpartPlot(dt_model)
summary(dt_model)

#################Testing Decision Tree#################
predictions <- predict(dt_model, testing, type = "class")
# Lets try for individual Values
predict(dt_model, testing[1,-10])
#What is predicted
table(predictions)
# Lets look at the confusion matrix
confusion.matrix <- prop.table(table(predictions, testing$y))
confusion.matrix
confusionMatrix(predictions,testing$y)

############ Random Forest##############
library(randomForest)
model <- randomForest(y ~ ., data=training)
model
#importance of each predictor
importance(model)

############ Testing Random forest ############
library(caret)
predicted <- predict(model, testing)
table(predicted)
confusionMatrix(predicted, testing$y)

#Effect of increasing tree count 
accuracy=c()
for (i in seq(1,50, by=1)) {
  modFit <- randomForest(y ~ ., data=training, ntree=i)
  accuracy <- c(accuracy, confusionMatrix(predict(modFit, testing, type="class"), testing$y)$overall[1])
}
par(mfrow=c(1,1))
plot(x=seq(1,50, by=1), y=accuracy, type="l", col="green",
     main="Accuracy VS Tree-Size", xlab="Tree Size", ylab="Accuracy")

