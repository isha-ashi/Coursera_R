plot3 <- function (filename) {
	
	data <- read.table(filename, header = FALSE, colClasses = "character", sep = ";", skip = 66637, nrow = 2880)
	
	colnames(data) <- c("Date", "Time","GAP", "GRP", "Voltage", "GI", "SM1", "SM2", "SM3" )
	
	xtick <- c(0, length(data$GAP)/2, length(data$GAP))
	
	png("plot3.png", width = 480, height = 480, units = "px")
	with(data, plot(SM1, type = "l", ylab = "Energy sub metering", xlab = "", axes = FALSE))
	with(data, lines(SM2, col = "red"))
	with(data, lines(SM3, col = "blue"))
	axis(1, at = xtick, labels = c("Thu", "Fri", "Sat"))
	axis(2)
	box()
	legend("topright", pch = "_", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
	dev.off()
	}