# TO-DO:

Hey @letishasmith let me know your thoughts on these

__Need to...__\
figure out if we actually need to merge slave-names and slaveholder-names datasets.
In the slaves-names data, the name of that slave's slaveholder is listed (in the `slaveholder` column). The reverse is true for the slaveholder-names dataset. However, it is true that the datasets are of different sizes. 

+ Slave-Names is 685 x 6
+ Slaveholder-Names is 687 x 6

so there is some discrepency that we will need to reconcile.

__Need to...__\
decide if we want to submit the data "as-is" or do some cleaning. For example, should we split `Name of Slave` column into separate `First Name` and `Last Name` columns? Same question for the `County (or Parish), State` and `Slaveholder Name `columns.

Example: I renamed the County, State columns to clarify to which party, slave or slaveholder, it is referring.

Example: The `Other Identifying Information` column in the slave-names data seems to reliably contain occupation or role followed by the policy number (e.g. "Fireman Policy Number(s): 1588"). Should we break this up to two columns? Or are we leaving this for the Kagglers.

__Need to...__\
complete data documentation in the `overview.md` file.


Datasets to be compiled:

+ [Emancipation of Slaves in the District of Columbia,1862-1863](https://ccharity.com/contents/emancipation-of-slaves-in-the-district-of-columbia-1862-1863/)
+ [Maranhão Inventories Slave Database](http://slavebiographies.org/databases.php)
+ [Trans-Atlantic slave voyages](http://www.slavevoyages.org/voyage/download) (consists of 2 datasets of voyages & slaves that can be linked)
	+ .
	+ .
+ [Liberated Africans](http://www.african-origins.org/african-data/)
+ [Slavery Era Insurance](http://www.insurance.ca.gov/01-consumers/150-other-prog/10-seir/)
	+ [Slave Names](http://www.insurance.ca.gov/01-consumers/150-other-prog/10-seir/slave-names.cfm)
	+ [Slaveholder Names](http://www.insurance.ca.gov/01-consumers/150-other-prog/10-seir/slaveholder-names.cfm)
+ [Texas Slavery Project](http://www.texasslaveryproject.org/database/list.php?begin_year=1837&end_year=1845&amount=&amount_number=&pop_value=&amount2=&amount_number2=&pop_value2=&include_estimated_data=1)
+ [Virginia Emigrants to Liberia](http://www.vcdh.virginia.edu/liberia/index.php?page=Home) (consists of 2 datasets of emancipated & emancipators that can be linked)
	+ [Emigrants](http://www.vcdh.virginia.edu/liberia/index.php?page=Resources&section=Search%20Emigrants&result=yes)
	+ [Emancipators](http://www.vcdh.virginia.edu/liberia/index.php?page=Resources&section=Search%20Emancipators&result=yes)
