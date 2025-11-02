# ETL
Course Extract Load Transform, instructor Franck Amana, Sup de Vinci, mastère Big Data &amp; IA

We get 3 customer tables as input, coming from 3 different databases: they get different customer id, but the entries are the same clients over the different databases. Therefore, we need to exceptionally use the client name as a primary key.

* CRM
* Ecommerce
* ERP

The objective is to retrieve each clients’ information from these 3 databases, unifying, in one table formatting and cleaning the data, using Talend. It is important to note that we have 3 sources of data for (sometimes) the same clients : the client_id will not be usable across databases: therefore, we'll exceptionally use the client name to identify our client and unite our 3 tables 

Upon importing in Talend, we check the integrity of the data, to notice that there is a lot of bad data: missing data, wrong formatting, etc.
We create a schema of the database on dbdiagram to plan how to do our join of the data.
<img width="2443" height="1086" alt="image" src="https://github.com/user-attachments/assets/c3ae77af-02e7-4d0f-84b3-9840f9798f64" />

We use different Talend components to clean, view, export the data, among which the most important tMap, tReplace, tUnite, and tUniqRow.

Because we can't use the id of the client, for the sake of the exercise, we use instead the name of the client. And to get a list of just the name of the client of all 3 files we use a tUnite on the column name, we use a tMap before to get rid of the other columns. After the tUnite we use a tUniqRow to get rid of all the duplicate. Then with a tMap explained after we can merge all three files with a left outer join on the list of name.

But before we can merge the three files we first need to handle the the monetary field which got the euro symbol or even space in it because it's a string. To handle that we use a tReplace configure like the screenshot below:

<img width="817" height="153" alt="image" src="https://github.com/user-attachments/assets/44605738-876f-45bb-9b9a-db5bef2ab950" />


After all that, we can use tMap to unite our 3 tables and handle null values:
<img width="1263" height="1397" alt="image" src="https://github.com/user-attachments/assets/f1723fe2-4b05-4b57-83fb-eb4f04c7c245" />

Here are a few examples to fill the nulls in the tMap:
* `row4.date_inscription == null ? TalendDate.parseDate("yyyy-MM-dd", "1900-01-01") : row4.date_inscription`
* `row4.revenu_annuel == null || StringHandling.TRIM(row4.revenu_annuel).equals("") ? "0" : row4.revenu_annuel`
* `row5.newsletter_optin == null || StringHandling.TRIM(row5.newsletter_optin).equals("") ? "No" : row5.newsletter_optin`


And here is the final pipeline.
<img width="2444" height="1095" alt="image" src="https://github.com/user-attachments/assets/1846b2ba-8ff4-464d-aa1b-2958d494b8c2" />

Here is part of the output :
<img width="2433" height="330" alt="image" src="https://github.com/user-attachments/assets/048128c5-3e46-43dc-990b-40efba7afd77" />

