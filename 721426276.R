#1
#a
V1 <- c(10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120)
V1

#b
mean(V1)
median(V1)
quantile(V1)

#c
M1 <- matrix(V1, nrow = 4, ncol = 3, byrow = TRUE)
M1

#d
rownames(M1) <- c("R1", "R2", "R3", "R4")
colnames(M1) <- c("C1", "C2", "C3")

M1

#2

#1
EmpData <- data.frame(
  EmpID = c("#01", "#02", "#03", "#04", "#05", "#06", "#07", "#08", "#09", "#10"),
  EmpName = c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J"),
  Gender = c("M", "F", "F", "M", "M", "F", "M", "M", "M", "F"),
  Department = c("IT", "HR", "FINANCE", "FINANCE", "HR", "IT", "IT", "HR", "FINANCE", "IT"),
  Salary = c(750, 500, 550, 500, 400, 700, 600, 450, 500, 650)
)

EmpData

#2
EmpData$Salary <- EmpData$Salary + 100
EmpData

#3
fin_emp <- EmpData[EmpData$Department == "FINANCE", ]
fin_emp

#4
sal_emp <- EmpData$EmpName[EmpData$Salary > 600]
sal_emp

#5
a <- EmpData$EmpName[EmpData$Department == "IT" & EmpData$Salary < 700]
a


#Question 3

#1
attach(mtcars) 

hist(mpg,
        main="Distribution of mpg",
        xlab ="mpg",
        ylab="Frequency",
        col="yellow")

#2
boxplot(disp ~ am,
        main = "Displacement (disp)",
        xlab = "Transmission Type (0 = Automatic, 1 = Manual)",
        ylab = "Displacement (disp)",
        col = c("red", "blue"))
#3
summary(wt)

#4
wt_engine <- aggregate(wt ~ vs, FUN = summary)
wt_engine

#5
deciles <- quantile(hp, probs = seq(0.1, 0.9,0.1))
deciles

