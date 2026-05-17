// This is an example of a data analysis program.

// Every data analysis program reads data from the data/data_for_analysis folder
// (never raw data) and outputs a file to the results folder. 

// This program is called figure01.do, which indicates it will produce the 
// results in Figure 1 of the main text and output them to a file called
// figure01.png in the results folder.

// Always start by declaring the version and reading in the configuration file
version 19.5
if ("$programs" == "") {
	global programs "../"	
}
do "$programs/config.do"

// Read in the cleaned data
use "$data/data_for_analysis/auto_clean.dta", clear

// Check the data for changes
// This is a simple assert to catch unexpected changes to the data
assert _N == 74

// Modify the data as required
// This program should make as few modifications as possible to
// ensure that all analysis programs are working with consistent data.

// Produce the results
// This code creates a scatter plot
scatter mpg price

// Check the results for changes (optional)
// We will skip this since it is not easy to check whether a graph has changed.

// Write the results to the results folder.
graph export "$results/figure01.png", replace
