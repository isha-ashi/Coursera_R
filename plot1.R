plot1 <- function (filename) {
	
	data <- read.table(filename, header = FALSE, colClasses = "character", sep = ";", skip = 66637, nrow = 2880)
	
	colnames(data) <- c("Date", "Time","GAP", "GRP", "Voltage", "GI", "SM1", "SM2", "SM3" )
	
	png("plot1.png", width = 480, height = 480, units = "px")
	hist(as.numeric(data$GAP), main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")
	dev.off()
}