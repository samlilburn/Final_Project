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

## Original Topic:

Employee Attrition

### Objective

Can we predict the likelihood of an employee quitting?

### Machine Learning

Based on the data we have access to, we believe the use of an unsupervised model would be best as the outcome is not known.

### Database

We planned on utilizing PostSQL for our database.  The data would be cleaned prior to importing into Post SQL.  The CSV file(s) would run through Python utilizing Jupyter Notebook.  The cleaned file would be exported to a new CSV file.

### Visualizations

We anticipate using Tableau for the story telling portion of the project.  We would graph out comparisons of the data based on the survey responses compared to demographical information.  Demographical information we planned to use:

- Gender

- Company type

- WFH (Work from Home)

- Designation

- Other items

### Data

#### Demographic Information

- Employee Id: Unique id for survey participant

- Date Joined: Date hired by company

- Gender: Male, Female, on Unknown

- Company Type: Designated between service oriented and product oriented

- WFH Setup Available: Yes, allowed for work from home

- Designation: 1 to 5 with 1 being lower status and 5 being highest status

#### Survey Responses

- Resource Allocation: 1 low resource available and 10 means high number of resources available

- Mental Fatigue Score: 0 means no fatigue and 10 means completely fatigue

- Burn Rate: 0 to 100 with 100 being highest level of burnout

### Switching Topics

During our data procurement phase, we determined the availability of certain data was difficult to find/access.  The model we wanted to create (determining the likelihood of an employee quitting) was difficult to run without making significant assumptions in the absence of readily available data.
