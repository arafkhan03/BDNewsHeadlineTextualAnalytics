# THIS IS A SAMPLE WORKING FILE (R CODING) FOR ARAF TOA SANJEED KHAN

# This file represents some of the coding works done so far for the completion of
# Pet Project: "Web Scrapping of News Headlines for Articles on Bangladesh"
# Please note loading and exporting of the datasets/plots just give the working 
# directory of the author.

# Check other works of the author at GitHub: https://github.com/arafkhan03
# Check the author's profile at https://www.linkedin.com/in/arafkhan03/

# Please contact +8801919663311 (Call/WhatsApp) for further queries




#loading the package:
library(xml2)
library(rvest)
library(stringr)


#initializing the variables
df <- c()
i = 1
k = as.Date("2017-1-1")

#the loop
while (i < 900)
{
        url <- paste("https://dailyasianage.com/page/archive/", k, sep = "")
        webpage <- read_html(url)
        title_html <- html_nodes(webpage, ".media-heading a")
        title_text = html_text(title_html)
        df = append(df, title_text, after = length(df))
        df = append(df, i, after = length(df))
        k = k+1
        i = i+1
}

df_dataframe = data.frame(df)

# Write CSV in R
write.csv(df_dataframe, file = "The Daily Asian Age 1 Jan 2017 to 19 March 2017 Headlines.csv")



#initializing the variables
df <- c()
i = 1
k = 0

#the loop
while (i < 50)
{
        url <- paste("https://www.daily-sun.com/online/business/", k, sep = "")
        webpage <- read_html(url)
        title_html <- html_nodes(webpage, ".list a")
        title_text = html_text(title_html)
        df = append(df, title_text, after = length(df))
        k = k+39
        i = i+1
}

df_dataframe = data.frame(df)

# Write CSV in R
write.csv(df_dataframe, file = "Daily Sun Business All Headlines.csv")



#loading the package:
library(purrr)
library(rvest)

url_base <- "https://dailyasianage.com/page/archive/%d"

k = as.Date("2017-1-1")
l = as.Date("2017-1-3")

map_df(k:l, function(k){
        page <- read_html(sprintf(url_base, k))
        data.frame(
                Headlines = html_text(html_nodes(page, ".media-heading a"))
        )
        k = k+1
}) -> df_Daily_asian

memory.limit()

options(timeout = 4000000)

#initializing the variables
df <- c()
i = 1
k = as.Date("2017-1-1")

#the loop
while (i < 900)
{
        url <- paste("https://dailyasianage.com/page/archive/", k, sep = "")
        webpage <- read_html(url)
        title_html <- html_nodes(webpage, ".media-heading a")
        title_text = html_text(title_html)
        df = append(df, title_text, after = length(df))
        df = append(df, i, after = length(df))
        k = k+1
        i = i+1
}

df_dataframe = data.frame(df)

k

# Write CSV in R
write.csv(df_dataframe, file = "The Daily Asian Age 1 Jan 2017 to 16 February 2017 Headlines.csv")



# THIS IS A SAMPLE WORKING FILE (R CODING) FOR ARAF TOA SANJEED KHAN

# This file represents some of the coding works done so far for the completion of
# Pet Project: "Web Scrapping of News Headlines for Articles on Bangladesh"
# Please note loading and exporting of the datasets/plots just give the working 
# directory of the author.

# Check other works of the author at GitHub: https://github.com/arafkhan03
# Check the author's profile at https://www.linkedin.com/in/arafkhan03/

# Please contact +8801919663311 (Call/WhatsApp) for further queries