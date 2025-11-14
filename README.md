Questions 

Which commands caused errors, and why?
The UPDATE caused an error because the view is read-only, so data cannot be modified through it.

Why are DML operations restricted in some views?
There are a few reasons why DML operations are restricted in some views. They could be limmited because they are read-only or involve joins.

How is a materialized view different from a regular view?
A regular view displays current data without storing it, whereas a materialized view saves the data and must be refreshed to stay up to date.
