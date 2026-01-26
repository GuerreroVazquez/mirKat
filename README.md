# mirKatDB


# miRKatDB: A Comprehensive Relational Database for miRNA Research

<!-- [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.placeholder.svg)](https://doi.org/10.5281/zenodo.placeholder)  Update this once you mint a DOI -->
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## Overview

**miRKatDB** is a curated relational database designed to consolidate and harmonise miRNA-related information. It integrates data from key public repositories to provide a robust foundation for miRNA regulatory network analysis. It serves as the backend for the **miRKat Suite** and **miRKatAI**.

This repository contains the SQL schemas, configuration scripts, and documentation required to deploy a local instance of miRKatDB.

## Data Sources

miRKatDB integrates data from the following sources:
*   **miRBase:** Core miRNA nomenclature and sequences.
*   **TargetScan:** Predicted miRNA seeds based on conservation.
*   **miRDB:** Predicted miRNA target interactions.
*   **miRTarBase:** Experimentally validated miRNA-target interactions.
*   **miRNATissueAtlas2:** Tissue-specific expression data.
*   **Ensembl:** Gene annotation and mapping.

**Current Statistics (v1.0):**
*   53,320 miRNAs / 49,168 mature miRNAs
*   288 species
*   ~6.8 million miRNA-gene interactions
*   Expression data across 21 tissues

## Database Architecture

The database is built on **MySQL 8.0**. It adopts the miRBase schema as a foundation, extended with custom tables for enhanced functionality.

### Key Tables
*   `mirna_mature`: Mature miRNA identifiers and sequences.
*   `gene_mirna`: Consolidated table of miRNA-gene targets (predicted and validated).
*   `mirna_seeds`: Putative seed sequences.
*   `mirna_tissues`: Tissue-specific expression indices.
*   `gene`: Gene annotations mapping symbols to RefSeq/Ensembl IDs.

*For a full schema definition, please refer to the `docs/schema_diagram.pdf` or the SQL definition files in this repository.*

## Installation & Deployment

### Prerequisites
*   Ubuntu 20.04 (recommended) or compatible Linux distribution.
*   MySQL Server 8.0.42+.
*   Python 3.11+ (for loading scripts).

### 1. Database Setup
Install MySQL server:
```bash
sudo apt update
sudo apt install mysql-server
```

### 2. Configuration
Edit the MySQL configuration file (`/etc/mysql/mysql.conf.d/mysqld.cnf`) to allow remote connections if deploying on a server:

```ini
# bind-address = 127.0.0.1  <-- Comment out or change to 0.0.0.0
bind-address = 0.0.0.0
```

Restart the service:

```bash
sudo systemctl restart mysql
```

### 3. Build Schema
Run the provided SQL scripts to create the tables:

```bash
# Create the database structure
mysql -u root -p < queries/All_tables.sql

# Populate tables with curated data
mysql -u root -p < queries/populate_tables.sql
```

### 4. User Configuration
Create a dedicated user for application access (see `sql/03_create_users.sql` for template):

```sql
CREATE USER 'mirkat'@'%' IDENTIFIED BY 'your_secure_password';
GRANT SELECT, SHOW VIEW ON mirkatdb.* TO 'mirkat'@'%';
FLUSH PRIVILEGES;
```

## Example Usage

### Python Connection
To query the database using Python (requires `mysql-connector-python`):

```python
import mysql.connector

config = {
  'user': 'mirkat',
  'password': 'your_secure_password',
  'host': '127.0.0.1', # or your server IP
  'database': 'mirkatdb',
  'raise_on_warnings': True
}

cnx = mysql.connector.connect(**config)
cursor = cnx.cursor()

# Query: Find experimentally validated targets for hsa-miR-181a-5p
query = ("SELECT mrna FROM gene_mirna "
         "WHERE mirna_mature = 'hsa-miR-181a-5p' "
         "AND source = 'miRTarBase'")

cursor.execute(query)

for (mrna,) in cursor:
  print(mrna)

cursor.close()
cnx.close()
```

## Citation

If you use miRKatDB in your research, please cite:

> Guerrero-Vázquez, K. (2025). *Computational approaches for therapeutic target discovery to ameliorate muscle wasting during ageing*. PhD Thesis, University of Galway.

