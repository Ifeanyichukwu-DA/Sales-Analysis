# Analyzing Data for Adventure Works
![](AW_Sales_img.jpg)

## Introduction
In the ever-evolving landscape of business and commerce, data has become the compass guiding organizations toward success. The ability to extract actionable insights from data is no longer a luxury but a necessity. In pursuing data-driven excellence, Adventure Works, a dynamic and forward-thinking company, is an exemplary case study.

Adventure Works, a fictional company, embodies modern business challenges. With a diverse product line, a global customer base, and many operational facets, it faces the complex task of optimizing its operations, enhancing customer satisfaction, and maximizing profitability. This journey begins with the Adventure Works dataset — a treasure trove of information encompassing sales transactions, product details, customer demographics, and more. Within this data lies the potential to uncover hidden patterns, identify opportunities, and make informed decisions that can propel the company forward.

The Adventure Works Data Analysis explores this rich dataset, aimed at unearthing valuable insights, improving operational efficiency, and empowering decision-makers with the knowledge they need to thrive in today’s competitive landscape. This documentation will serve as a comprehensive guide, detailing the methods, tools, and findings from this analysis.

As I embark on this adventure, I invite you to delve into the world of data analysis and join me on a journey toward data-driven excellence in Adventure Works. Together, we will unravel the story within the data and chart a course toward informed, data-backed decisions that can potentially transform business outcomes.

## Problem Statement
Adventure Works is encountering several critical challenges, including:
- How can Adventure Works boost its sales revenue by identifying sales channel(s)?
- Are there underperforming products or categories that need attention or should be discontinued?
- Which regions and customers have high or low sales?
- The sales manager reported a tremendous increase in 2019 sales. Can we see if there’s a wide divergence in sales between 2019 and the previous year?

## Skills Demonstrated 
The Adventure Works Data Analysis project demonstrates a range of skills and competencies, including:

**Data Analysis:** Employed advanced data analysis techniques to sift through vast datasets, extract meaningful insights, and identify actionable patterns.

**Data Cleaning:** Used SQL (MSSQL Server) to address data quality issues such as missing values, outliers, and duplicates to ensure the accuracy and reliability of our analysis.

**Data Visualization:** Used a data visualization tool like Microsoft Power BI to present findings effectively, making complex information accessible to a broad audience.

**Data Modeling:** Built a relationship model within Power BI to connect the various tables available for the analysis.

**Data Analysis Expression (DAX):** Complex concepts were simplified with codes written in DAX.

**Problem-Solving:** Tackled complex business problems by breaking them down into analyzable components and proposing data-driven solutions.

## Data Sourcing
This analysis is rooted in the Adventure Works dataset, a comprehensive and invaluable source of information. This dataset encompasses various facets of the company’s operations and includes:

**Sales Data:** Historical records of sales transactions, including the amount each product was sold, dates, and quantity sold.

**Customer Data:** Demographic information about customers, including Name, location, and customer ID number.

**Product Data:** Detailed information about the product catalog, including product categories, names, sub-categories, and product costs.

**Sales Territory Data:** Information about different locations where sales were recorded.

**Sales Order Data:** Detailed information about each order, including order ID and sales channel.

**Reseller Data:** Demographic information about resellers, including Name, location, and resellers’ ID number.

The data was downloaded from Kaggle's website. Click [here](https://docs.google.com/spreadsheets/d/1V9W6WwvTRTRyNCcEcthZTtCOp8qen7dS/edit?rtpof=true&sd=true) to access the dataset.

## Data Transformation 
Before diving into analysis, it’s crucial to prepare the data for exploration and modeling. Data transformation plays a pivotal role in this process. The SQL for the data cleaning and transformation (ETL) can be found [here](AW_Data_Cleaning.sql). The data transformation steps were performed in SQL and they include:

- Addressed data quality issues such as missing values and duplicates to ensure the accuracy and reliability of the analysis.
- Removing irrelevant rows and redundant columns from the dataset.
- Renaming tables and columns to meaningful column names.
- Merging redundant tables.
- Convert dates to the appropriate data type.

## Data Modeling
The relationship diagram below illustrates the interconnectedness of the various data sources and tables within the Adventure Works dataset. In addition to the five tables, I calculated a calendar table to hold dates and related information. This diagram provides a visual representation of how different data elements relate to each other, forming the foundation for our data analysis and modeling efforts.
