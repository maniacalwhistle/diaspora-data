# Texas Slavery Project
[_insert one-sentence description of this dataset_]

Dataset details:
(can delete before publish as kaggle will handle displaying this; for our own reference)

Size: 	52 kb\
Dim: 	296 x 12 (row x col)


## Context:
[_insert background for dataset -- What is this data? Where'd it come from? how was it used? Why is it important?_]

[_@letishasmith The context below was taken directly from the cite, even if it is not blockquote. We may either paraphrase or decide to quote directly. Put this here just a placeholder._]

> The Texas Slavery Project takes a deep look at the expansion of slavery in the borderlands between the United States and Mexico in the years between 1837 and 1845. Based at the [Virginia Center for Digital History](http://www.vcdh.virginia.edu/index.php?page=VCDH), the project offers a number of digital tools that allow users to explore the changing face of slavery in early Texas.



## Content:

[_insert more information about the structure of the data. Include any notes about transformations or pre-processing that took place_]

> The Texas Slavery Project database contains population counts for each Texas county with surviving tax returns from the Republic of Texas era. During the years 1837 to 1845, residents of the Republic of Texas attempted to finance their new nation with taxes collected on a wide range of personal property held by local citizens. One of these categories of taxable property were the enslaved men and women held by planters in Texas, and listed in the surviving tax records. The Project used these original records to count the number of slaves assessed in each county for the 1837-1845 period, as well as the slaveholders who held this property, to collect the numbers that make up the Project's online database. 

The dataset contains the following information for each of the 675 slaves where policy information was available:


* Year: Year for which the poluation size of variaus group has been gathered from original sources
* County: Texas county with surviving tax returns from the Republic of Texas era
* Total Slave Pop: Total number of enslaved people
* Total Master Pop: Total number of slaveholders
	* Masters with 1 - 4 Slaves: count of slaveholders with 1 - 4 slaves (subset of `Total Master Pop`)
	* Masters with 5 - 9 Slaves: count of slaveholders with 5 - 9 slaves
	* Masters with 10 - 19 Slaves: count of slaveholders with 10 - 19 slaves
	* Masters with 20 - 49 Slaves: count of slaveholders with 20 - 49 slaves
	* Masters with 50+ Slaves: count of slaveholders with 50+ slaves
* Ave. Slave-holding: The number of slaves held by the largest slaveholder in a particular county in a particular year
* Est: indicator if information for record is based on statistical estimate ('Yes') or archival record ('No')
* Source: Type of source for the record

Note on estimated values:
>In counties where these estimations were calcuated, the various sub-categories of slaveholders (such as those who held 1-4 slaves, 5-9 slaves, etc.) may not always sum up to the total given for estimated total slaveholder population. [Statistical Methodology for Estimating Missing Population Data](http://www.texasslaveryproject.org/database/statistical_methodology.pdf)


## Acknowledgements:

This dataset was compiled by the Virginia Center for Digital History as part of the [Texas Slavery Project](http://www.texasslaveryproject.org/about/)

If you use this dataset in your work, please include the following citation:

[_insert citation_]
(c) Copyright 2007-2008, Andrew J. Torget & the Rector and Board of Visitors, University of Virginia

## Inspiration:

[_insert ideas about questions this data might answer, or small exercises that people working with this dataset might want try out_]


## You may also like:

[_insert links to other related datasets, material for more information, etc._]
