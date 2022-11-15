# Final_Project

## Group 2

### Team

•	Kinsler, Nick

•	Lilburn, Sam

•	Marone, Michael

•	Mesfin, Mia

### Roles

•	Square – GitHub – Sam

•	Triangle – Machine Learning – Michael

•	Circle – Database – Sam and Nick

•	X – Visual Storytelling – Meron and Nick

## Topic

Real estate price forecast. 

### Why?

Our topic is the residential real estate market. Originally, our topic was predicting employee burnout. We were interested in this topic because of current conversation around workplace burnout and "quite quitting" we were interested to see if we can predict the probability of an employee quitting based on key factors. However, we found data on this topic to be scarce and inconsistent. After this discovery, we pivoted to analysis of the real estate market. This topic is also highly relevant, and unlike employee attrition rates, has widely available data.


### Data

https://rapidapi.com/realtymole/api/realty-mole-property-api

#### Zip Codes Used

- Henrico
    23233, 23223, 23060, 23059, 23231, 23228, 23229, 23238, 23227, 23222, 23294, 23226, 23150, 23075, 23230, 23173, 23058, 23242, 23255, 23250, 23273, 23279, 23282, 23280, 23288

Data:

•	Demographic Information

o	Employee Id – Unique id for survey participant

o	Date Joined – Date hired by company

o	Gender – Male, Female, on Unknown

o	Company Type – Designated between service oriented and product oriented

o	WFH Setup Available – Yes allowed for work from home

o	Designation – 1 to 5 with 1 being lower status and 5 being highest status

•	Survey Responses

o	Resource Allocation – 1 low resource available and 10 means high number of resources available

o	Mental Fatigue Score – 0 means no fatigue and 10 means completely fatigue

o	Burn Rate – 0 to 100 with 100 being highest level of burnout

Objective:

•	Can we predict the likelihood of an employee quitting?

o	Based on data we can find, which type of machine learning will be utilized?

	Unsupervised – Outcome is not known

o	What type of database are we considering?

	PostSQL

•	What additional data to use in order to fully use Post SQL?

o	Will the data require clean-up?

	Based on the data we have reviewed thus far; we anticipate running the CSV file through Python to clean-up the data for use.

	New data frame will be created with cleaned data and exported to a CSV file.

o	What kind of visualizations are we considering?

	Potentially use of Tableau for the story telling.

•	Compare demographical information to the survey responses

•	Demographical information to use:

o	Gender

o	Company type

o	WFH

o	Designation

o	Other items

	Can we find data on remote working?

•	Other Topics?

