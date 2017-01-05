#################################################
#Author:Vinay Kumar
#Dated: 12/22/2016
#Purpose: Attempt to answer
#Input:Bank_Marketing.txt (Tab separated text)
#Expected Output: Categories for which bank should rethink before contacting to avoid further loss
################################################
######Parameters#####
profit_per_sale<-10
cost_per_call<-1
######
bank_marketing_data <- read.table("Bank_Marketing_Downloads.txt", header=TRUE,sep="\t")
columns_to_check<-c("job","marital","education","default","housing","loan","contact","month","poutcome")
for(column in columns_to_check){
  col_data<-bank_marketing_data[,c(column,'y')]
  col_data_table<-table(factor(col_data[,1]))
  factors_in_column<-names(col_data_table)
  for(afactor in factors_in_column){
    bank_marketing_no<- subset(col_data,y=="no" & col_data[1]==afactor)
    bank_marketing_yes<- subset(col_data,y=="yes" & col_data[1]==afactor)
    profit_for_category<-nrow(bank_marketing_yes)*profit_per_sale-(((nrow(bank_marketing_yes)+nrow(bank_marketing_no))*cost_per_call))
    if(profit_for_category<0){
      cat("Bank should rethink about contacting:",column,":",afactor,":",profit_for_category,"\n")
    }
  }
}
