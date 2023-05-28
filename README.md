# WearableInformatics
A repository to analyze wearable data for the Thesen Lab

##Steps to reproduce: 
### Downloading Data
1. Download data folder for the day from MyDataHelps. Should have name similar to "RK.E0CC9B64.Wearable Wellness_2023..." 

### Python aggregation 
3. Run python1.ipynb-- this creates an aggregate.csv file with the newest rows of data for the participants 
4. Copy and paste the aggregate.csv file contents into the bottom of the aggregate1.csv file-- this updates aggregate1.csv to include the latest data 

### R plotting -- done to analyze the entire aggregate csv file named aggregate1.csv 
5. Run Plotting1.Rmd or Plotting1.R to plot the data 

## Future potential TO-DOs:
*This can be more automated-- scraping algorithm to pull data directly from MyDataHelps Website so we don't have to manually update aggregate1.csv 
*Make bash script to copy aggregate.csv contents minus header to end of aggregate1.csv 






