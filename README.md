# BSAD 384 Term Project: Social Media Platform Database

## 1. Problem Statement & ER Diagram

**Problem Statement:**

This database is designed for a social media platform similar to Facebook, where users can create profiles, post content, interact with others, and build connections. A well-structured database is essential for handling large amounts of data efficiently, especially with features like friend requests, likes, comments, and messaging. The goal is to create a reliable, scalable, and efficient database that supports fast data retrieval, secure storage, and real-time interactions while maintaining relationships between users, posts, and groups.

**Entity-Relationship Diagram:**

<img width="1389" alt="Screenshot 2025-03-28 at 12 21 45 PM" src="https://github.com/user-attachments/assets/14ae0da5-2c25-45c1-acc9-737dcb9a6e6b" />


---

## 2. Relational Model & Database Creation

**Relational Model Screenshot:**
<img width="658" alt="Screenshot 2025-03-28 at 12 23 32 PM" src="https://github.com/user-attachments/assets/4393e118-3566-4e5f-b0c3-942e833b1f62" />

**Database Creation Script:**

[Populate.sql](SQLSCRIPTS/Populate.sql)


This script contains the SQL code to drop any existing tables, create new ones, define primary and foreign key constraints, and insert sample data.

---

## 3. Sample Data & Queries

**SQL Queries File:**

 [Query.sql](SQLSCRIPTS/Query.sql)

This file contains 5 milestone queries, including joins, aggregations, and a derived field.

**Query Types Covered:**

- Posts joined with user names
- Aggregation: number of posts per user
- Comment count per post
- Message length using a derived field
- Group memberships with join dates


