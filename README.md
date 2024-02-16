[![en](https://img.shields.io/badge/lang-en-blue.svg)](https://github.com/peterprospl12/Relational-Database-Register-of-Court-Cases/blob/main/README.md)
[![pl](https://img.shields.io/badge/lang-pl-red.svg)](https://github.com/peterprospl12/Relational-Database-Register-of-Court-Cases/blob/main/README.pl.md)

# Relational Database | Register of Court Cases
[Schema](https://github.com/peterprospl12/Relational-Database-Register-of-Court-Cases/blob/main/Schema%20en.pdf)

The project aims to create a state-of-the-art court case registry system that will enable electronic management of data related to the progress of court cases. 
The system will be used to store information on case parties, attorneys, judgments and other key elements of the court process. 
The implementation of such a system will contribute to streamlining the work of the courts, increasing the availability of information and improving the quality of services provided by the judiciary.


The client is the court management.
The project involves the creation of an IT system to support the management of court case data. 
The database will include information necessary for effective monitoring, management and handling of court cases.
The users of the database are court employees. Employees who, having verified their entitlement to see specific data, will be able to provide this information to outsiders.

Below is a description of the different elements of the project structure:

- Register of Court Cases:
Entering a case into the system starts the process of registering it. Each case is assigned a unique identification number, which makes it easier to track progress and access information about the case. 
The system also allows for the classification of cases , which allows for efficient grouping and sorting of cases.

- Judgment and Orders:
This section contains the essential elements of each court case. The text of the judgment or court orders is stored digitally. 
This makes it possible to quickly provide a party or attorney with a copy of the judgment and to assign penalties or sanctions if necessary. In addition, the system collects data on the date of the judgment.

- Case Parties:
This element of the database focuses on the participants in the court proceedings. 
The data of the plaintiff and defendant, as well as their attorneys, are stored in the system. This enables the parties to be quickly identified and contacted if necessary. The system also allows other parties, such as witnesses, to be included.

- Appointments and Hearings:
This area of the database is used to manage the court calendar. Here you can find information about fixed hearing dates, their possible postponements, as well as the need for the parties or their attorneys to access the case file. 
All this is done to ensure that procedural procedures are carried out in a timely manner.

- Judges:
This is a section that collects information about the judges involved in a case. It allows the workload of the judges to be monitored and cases to be efficiently assigned to the appropriate persons.

Examples of database queries:
- Retrieving information about a specific case based on the case reference
- Finding all cases handled by a particular judge
- Finding cases in which a judgment has not yet been issued:
- List of cases in which a person is a defendant
- Retrieving a list of prosecutors

The database does not include court employees such as accountants, etc.

This project aims to create a tool that will streamline the work of the court, increase its efficiency and improve the availability of information, which will affect the quality and transparency of court processes.

![ERD](https://github.com/peterprospl12/Relational-Database-Register-of-Court-Cases/blob/main/ERD.png)
