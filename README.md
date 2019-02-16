# TO-DO:

@letishasmith let me know your thoughts on these

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


Datasets compiled:
- [ ] Slavery Era Insurance
	- [ ] Slave Names
	- [ ] Slaveholder Names
- [ ] another task
