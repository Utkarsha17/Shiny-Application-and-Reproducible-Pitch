Shiny Application and Reproducible Pitch
========================================================
author: Utkarsha Patil  
date: March 5, 2019
autosize: true

First Slide
========================================================
This assignment has two parts

- Create a Shiny application
- Prepare a reproducible pitch presentation about shiny application

Second Slide
========================================================
Developing shiny app for New York air quality measurements from May 1, 1973 to September 30, 1973.
Four data points were to be measured each day along with the date. The data were obtained from the New York State Department of Conservation (ozone data) and the National Weather Service (meteorological data).

- Ozone: Mean ozone in parts per billion from 1300 to 1500 hours at Roosevelt Island

- Solar.R: Solar radiation in Langleys in the frequency band 4000--7700 Angstroms from 0800 to 1200 hours at Central Park

- Wind: Average wind speed in miles per hour at 0700 and 1000 hours at LaGuardia Airport

- Temp: Maximum daily temperature in degrees Fahrenheit at La Guardia Airport

Slide With Code
========================================================
- A data frame with 154 observations on 6 variables.

```r
data<- data(airquality)
data.frame(data)
```

```
        data
1 airquality
```

- A summary of data 

```r
data<- data(airquality)

summary(data)
```

```
   Length     Class      Mode 
        1 character character 
```

Slide for App link
========================================================
The link for Shiny app -> <https://support.rstudio.com/hc/en-us/articles/200486468>.

The link for GitHub repository -> <https://support.rstudio.com/hc/en-us/articles/200486468>.
```
