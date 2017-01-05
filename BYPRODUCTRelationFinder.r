#We can plot relations
#How May relations(Note: Following formula is not proved anywhere rather its a discovery made during this very analysis): 
#For N predictors ot of which k are mutually exclusive we require ((N-1)+(N-2)+...+1)-k (here (11+10+...+1)-3=63)
library(ggplot2)
qplot(bank_marketing_data_sub$age,bank_marketing_data_sub$job,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$age,bank_marketing_data_sub$education,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$age,bank_marketing_data_sub$housing,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$age,bank_marketing_data_sub$loan,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$age,bank_marketing_data_sub$contact,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$age,bank_marketing_data_sub$duration,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$age,bank_marketing_data_sub$pdays,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$age,bank_marketing_data_sub$previous,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$age,bank_marketing_data_sub$is_divorced,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$age,bank_marketing_data_sub$is_single,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$age,bank_marketing_data_sub$is_married,data=bank_marketing_data_sub,colour=y,size=3)


qplot(bank_marketing_data_sub$job,bank_marketing_data_sub$education,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$job,bank_marketing_data_sub$housing,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$job,bank_marketing_data_sub$loan,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$job,bank_marketing_data_sub$contact,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$job,bank_marketing_data_sub$duration,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$job,bank_marketing_data_sub$pdays,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$job,bank_marketing_data_sub$previous,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$job,bank_marketing_data_sub$is_divorced,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$job,bank_marketing_data_sub$is_single,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$job,bank_marketing_data_sub$is_married,data=bank_marketing_data_sub,colour=y,size=3)


qplot(bank_marketing_data_sub$education,bank_marketing_data_sub$housing,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$education,bank_marketing_data_sub$loan,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$education,bank_marketing_data_sub$contact,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$education,bank_marketing_data_sub$duration,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$education,bank_marketing_data_sub$pdays,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$education,bank_marketing_data_sub$previous,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$education,bank_marketing_data_sub$is_divorced,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$education,bank_marketing_data_sub$is_single,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$education,bank_marketing_data_sub$is_married,data=bank_marketing_data_sub,colour=y,size=3)


qplot(bank_marketing_data_sub$housing,bank_marketing_data_sub$loan,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$housing,bank_marketing_data_sub$contact,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$housing,bank_marketing_data_sub$duration,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$housing,bank_marketing_data_sub$pdays,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$housing,bank_marketing_data_sub$previous,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$housing,bank_marketing_data_sub$is_divorced,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$housing,bank_marketing_data_sub$is_single,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$housing,bank_marketing_data_sub$is_married,data=bank_marketing_data_sub,colour=y,size=3)


qplot(bank_marketing_data_sub$loan,bank_marketing_data_sub$contact,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$loan,bank_marketing_data_sub$duration,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$loan,bank_marketing_data_sub$pdays,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$loan,bank_marketing_data_sub$previous,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$loan,bank_marketing_data_sub$is_divorced,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$loan,bank_marketing_data_sub$is_single,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$loan,bank_marketing_data_sub$is_married,data=bank_marketing_data_sub,colour=y,size=3)


qplot(bank_marketing_data_sub$contact,bank_marketing_data_sub$duration,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$contact,bank_marketing_data_sub$pdays,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$contact,bank_marketing_data_sub$previous,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$contact,bank_marketing_data_sub$is_divorced,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$contact,bank_marketing_data_sub$is_single,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$contact,bank_marketing_data_sub$is_married,data=bank_marketing_data_sub,colour=y,size=3)

qplot(bank_marketing_data_sub$duration,bank_marketing_data_sub$pdays,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$duration,bank_marketing_data_sub$previous,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$duration,bank_marketing_data_sub$is_divorced,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$duration,bank_marketing_data_sub$is_single,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$duration,bank_marketing_data_sub$is_married,data=bank_marketing_data_sub,colour=y,size=3)


qplot(bank_marketing_data_sub$pdays,bank_marketing_data_sub$previous,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$pdays,bank_marketing_data_sub$is_divorced,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$pdays,bank_marketing_data_sub$is_single,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$pdays,bank_marketing_data_sub$is_married,data=bank_marketing_data_sub,colour=y,size=3)

qplot(bank_marketing_data_sub$previous,bank_marketing_data_sub$is_divorced,data=bank_marketing_data_sub,colour=y,size=3)

qplot(bank_marketing_data_sub$previous,bank_marketing_data_sub$is_single,data=bank_marketing_data_sub,colour=y,size=3)

qplot(bank_marketing_data_sub$previous,bank_marketing_data_sub$is_married,data=bank_marketing_data_sub,colour=y,size=3)

bank_subset<- subset(bank_marketing_data_sub,education=='tertiary')
bank_subset1<- subset(bank_subset,education=='tertiary')

#Few interseting one but not with clear boundry
qplot(bank_marketing_data_sub$age,bank_marketing_data_sub$housing,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$age,bank_marketing_data_sub$contact,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$education,bank_marketing_data_sub$housing,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$education,bank_marketing_data_sub$is_married,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$education,bank_marketing_data_sub$is_single,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$education,bank_marketing_data_sub$is_divorced,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$housing,bank_marketing_data_sub$is_divorced,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$housing,bank_marketing_data_sub$contact,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$loan,bank_marketing_data_sub$is_married,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$loan,bank_marketing_data_sub$is_divorced,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$loan,bank_marketing_data_sub$is_single,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$loan,bank_marketing_data_sub$contact,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$loan,bank_marketing_data_sub$housing,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$contact,bank_marketing_data_sub$is_married,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$contact,bank_marketing_data_sub$is_divorced,data=bank_marketing_data_sub,colour=y,size=3)
qplot(bank_marketing_data_sub$contact,bank_marketing_data_sub$is_single,data=bank_marketing_data_sub,colour=y,size=3)

  

