# Nexford-BAN


## README

## SALARY FUNCTION

This is a project on developing a code in jupyter notebook and perform various task related to data processing, error handling, and file handling using Python.

## INSTRUCTIONS

Step 1: Import Data:

Import the provided salary data into your Jupyter Notebook.

Step 2: Create Employee Function:

Develop a Python function that accepts an employee's name as input and returns their details.

Step 3: Data Processing with Dictionary:

Process the salary data using a Python dictionary.

Step 4: Error Handling:

Implement error handling in your code to address potential issues gracefully.

Step 5: Export Employee Details:

Export an employee's details to a CSV file and save it within a zipped folder named "Employee Profile."

Step 6: Unzip and Display Data with R:

Use R to unzip the folder created in step 5 and display the data.


## INSTALLATION

Installation of pandas into Jupyter Notebook

```bash
!pip install pandas
```
    
Import Pandas

```bash
import pandas as pd
```

Loaded a file using file path in the python code

```bash
salary_data = pd.read_csv('C:\\Users\\HP ENVY\\Downloads\\Python\\Total.csv', low_memory=False))
```    
## RUNNING CODES

To run Pyton code use

```bash
 print(salary_data.head())
```

To run R code use

```bash
 print ("Files unzipped successfully!")
```

## PROCESS AND LESSONS LEARNED

A dataset salary data was downloaded from kaggle and imported into jupyter notebook using pandas after instsllation of pandas into jupyter notebook.


```bash
import pandas as pd
```



The salary data file was loaded using python code but i encountered a series of errors messages due to duplicates in the data columns. Tryed to identify the data types but got an error message before finally setllinhg with using 'low_memory=False'.

```bash
salary_data = pd.read_csv('C:\\Users\\HP ENVY\\Downloads\\Python\\Total.csv', low_memory=False)
```

To create an employee function that will accept the employee's name as input  and return the details the python code is below. 
```bash
def employee_details(employee_name):

#To return 
return f"Employee details not found: {employee_name}"

#To call it out
print(employee_details('NATHANIEL FORD'))
```

Then to process the salary data using dictionaries we must first convert the salary data into a dictionary using 'to_dict' and iterate it through the list, during the process of coding dictionary I encountered some error code issues which indicated that there were duplicates in the dataframe

Error code:
```bash
ValueError: DataFrame index must be unique for orient='index'.
```

So to still maintain the data without removing the duplicates, I used the 'orient = record' in a for loop and if statement.

```bash
#Convert salary data into a dictionary using 'to_dict'
salary_dict = salary_data.to_dict(orient='records')
```

Also, error handling of codes for anyone who might want to access the data code, the return syntax will give an error message using the try, except and return syntax.

```bash
try:
        employee = salary_data[salary_data['EmployeeName'] == employee_name]
        return employee
    except KeyError:
        return f"Error: Employee '{employee_name}' not found in the data."
```

Then the employee details dataframe will be exported int a CSV file and then save into a zipped folder using file name 'Employee Profile'.
```bash
#To export employee details dataframe to csv file using 
salary_data.to_csv('Total.csv', index=False)

#To save the csv file into a zipped folder using
salary_data.to_csv('Employee_Profile.zip', index=False, compression=dict(method='zip', archive_name='Total.csv'))
```


Finally, the zipped csv file in the Employee Profile folder will be unzipped in R script.

Note: While all the codes are written in python and R, comments are also written to help follow and understand the codes and purpose which is represented by the # sign.

In this project, we did tasks on data processing, error handling, and file handling using Python and working with zipped files.

Dataset Link from Kaggle:
https://www.kaggle.com/datasets/mojtaba142/20112018-salaries-for-san-francisco

Here is the link to the Python project:
http://localhost:8888/notebooks/Module%202%20Assign%20BAN6240%20ROA141383.ipynb

CSV file link:
http://localhost:8888/edit/Total.csv

R link
http://localhost:8888/edit/Downloads/Python/Mod%202/Employee_Profile_unzipped.R
