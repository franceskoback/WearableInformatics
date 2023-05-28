# Load required libraries
library(ggplot2)
library(gridExtra)

# Read the aggregate CSV file
data <- read.csv("aggregate1.csv")

# Convert the Date column to a date format
data$Date <- as.Date(data$Date)

# Iterate over unique ParticipantIdentifier values
participants <- unique(data$ParticipantIdentifier)

# Function to plot resting heart rate, sleep duration, and steps
plotData <- function(participant) {
  # Subset data for the current participant
  participant_data <- subset(data, ParticipantIdentifier == participant)
  
  # Create the plots
  plot_resting_hr <- ggplot(participant_data, aes(x = Date, y = RestingHeartRate)) +
    geom_line(color = "#FF6EC7", size = 1) +
    labs(y = "Resting Heart Rate") +
    theme_minimal() +
    theme(axis.text.x = element_blank(),
          axis.title.x = element_blank(),
          axis.text.y = element_text(size = 10),
          axis.title.y = element_text(size = 12),
          panel.grid.major = element_blank(),
          panel.grid.minor = element_blank()) +
    ggtitle("Resting Heart Rate")
  
  plot_sleep <- ggplot(participant_data, aes(x = Date, y = Sleep)) +
    geom_line(color = "cyan", size = 1) +
    labs(y = "Sleep Duration") +
    theme_minimal() +
    theme(axis.text.x = element_blank(),
          axis.title.x = element_blank(),
          axis.text.y = element_text(size = 10),
          axis.title.y = element_text(size = 12),
          panel.grid.major = element_blank(),
          panel.grid.minor = element_blank()) +
    ggtitle("Sleep Duration")
  
  plot_steps <- ggplot(participant_data, aes(x = Date, y = Steps)) +
    geom_line(color = "green", size = 1) +
    labs(y = "Steps") +
    theme_minimal() +
    theme(axis.text.x = element_text(size = 10, angle = 45, hjust = 1, vjust = 1),
          axis.title.x = element_text(size = 12),
          axis.text.y = element_text(size = 10),
          axis.title.y = element_text(size = 12),
          panel.grid.major = element_blank(),
          panel.grid.minor = element_blank()) +
    ggtitle("Steps")
  
  # Combine the plots into a single figure with subplots
  combined_plot <- grid.arrange(plot_resting_hr, plot_sleep, plot_steps,
                                nrow = 3, top = participant)
  
  # Display the combined plot
  print(combined_plot)
}

# Generate and display the combined plots for each participant
for (participant in participants) {
  plotData(participant)
}
