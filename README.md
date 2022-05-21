# Lazarus
The enterprise data platform.

Image below depicts Lazarus's high-level architecture. Note that only blocks filled in light gold are part of the actual solution, while other components are optional and used if/when needed, depending on business requirements.

![image](https://user-images.githubusercontent.com/21186130/169666863-3538a1b5-ba9d-49ef-b9ca-b050631142ba.png)

Core of the system is **delta lake**, layer which provides **ACID** (atomicity, consistency, isolation, and durability) of the data, concepts similar to well-established relational databases. Delta lake saves data in **storage account** and all transactions, logs, etc. are logged in **master database**.

Lazarus implements **multiple data ingestion types** to allow data engineers as well as business users to interact with the platform. Data engineers can use any  industry standard method to ingest data into the platform, while business users can interact with the system through **custom web interface**.
