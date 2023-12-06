# Hive-Project-to-build-Data-Warehouse-for-E-Commerce
The Hive Project, dedicated to constructing a Data Warehouse tailored for E-Commerce, unfolds as an open-source data warehousing tool designed to adeptly process structured data atop the Hadoop framework. This tool strategically addresses analytical challenges, particularly those inherent in managing historical data. An analytical system, specialized in scrutinizing vast volumes of information, orchestrates long-running jobs across multiple data sources. The project's overarching goal is to provide a comprehensive solution for efficiently handling and analyzing substantial datasets within the E-Commerce domain.

Approach :

• Create an AWS EC2 Instance and launch it.

• Create docker images using the docker-compose file on the EC2 machine.

• Create the tables in MYSQL Relational Database Management System.

• Load the data from the MYSQL into the HDFS storage by using the SQOOP command.

• Move the data from HDFS to Hive.

• Extract the customer information from the data by using the Scala code and store it as a Parquet file.

• Move the Parquet file from the Spark to Hive.

• Create tables in Hive and load the data from Parquet files into tables.

• Perform the Hive Analytics on the Sales and Customer Data.

![image](https://github.com/istephen77/Hive-Project-to-build-Data-Warehouse-for-E-Commerce/assets/99792369/21657401-79d0-4516-97fc-b416f1ad4c08)



