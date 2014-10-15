plot2 <- function (filename) {
	
	data <- read.table(filename, header = FALSE, colClasses = "character", sep = ";", skip = 66637, nrow = 2880)
	
	colnames(data) <- c("Date", "Time","GAP", "GRP", "Voltage", "GI", "SM1", "SM2", "SM3" )
	
	xtick <- c(0, length(data$GAP)/2, length(data$GAP))
	
	png("plot2.png", width = 480, height = 480, units = "px")
	plot(data$GAP, type = "l", axes = FALSE, ylab = "Global Active Power (kilowatts)", xlab = "")
	axis(1, at = xtick, labels = c("Thu", "Fri", "Sat"))
	axis(2)
	box()
	dev.off()
	
	}