

#read data 

data = read.csv('G3_sydney_hobart_times.csv', sep = ',')

data 

##To know the details of the data

str(data)
summary(data)

#in year column
# how to Find the missing values in Year

missing_values <- is.na(data$Year)
missing_num <- sum(missing_values)

 x <- paste('the number of missing values in Year columns is ::: ', missing_num)
 x


###### summary of fleet_start

summary(data$fleet_start)



# how to Find the missing values in Time
missing_values <- is.na(data$Time)
missing_num <- sum(missing_values)
x <- paste('the number of missing values in Time columns is :::: ', missing_num)
x


# before replace the missing values in time we need to convert time to float and remove day string in Time colunms
# Use gsub() to remove the last word from each string

data$Time <- gsub("\\s+\\w+$", "", data$Time)

# Use as.numeric() to convert the result from char to num

data$Time <- as.numeric(data$Time)

data$Time


# replace missing values from NA to default value 

default_value <- "3.562"

# fill missing values

data$Time <- ifelse(is.na(data$Time), default_value, sub("NA", default_value, data$Time))


print(data$Time)


#the details of fleet_start

summary(data$fleet_start)




# how to Find the missing values in fleet_start
missing_values <- is.na(data$fleet_start)
missing_num <- sum(missing_values)
x <- paste('the number of missing values in Time columns is ::::', missing_num)
# x is the result
x


summary(data$fleet_start)



#how to Find the missing values in fleet_finish
missing_values <- is.na(data$fleet_finish)
missing_num <- sum(missing_values)
result <- paste('the number of missing values in Time columns is :::',missing_num)
print(result)

# the summary

summary(data$fleet_finish)






---------------------------------------------------------------------------------------------------------








