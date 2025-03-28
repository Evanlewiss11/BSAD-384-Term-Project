# BSAD-384-Term-Project

# Social Media Database Project

## 1. Problem Statement & ER Diagram

This project is a database system for a social media platform similar to Facebook. It’s designed to handle user profiles, posts, comments, likes, friend connections, messages, and group memberships. The goal is to build something scalable, efficient, and fast — able to support high-volume traffic and real-time interactions without lag or data issues.

The database manages relationships between all the core features: users, content, and social interactions. It’s normalized to reduce redundancy and improve performance.

**Key features include:**
- User authentication
- Posts, likes, comments
- Friendships
- Messaging
- Groups and group memberships
<img width="1411" alt="Screenshot 2025-03-28 at 12 13 19 PM" src="https://github.com/user-attachments/assets/306e035c-17bb-41b6-91de-59b9d9626527" />

## 2. Relational Model & Database Creation

The ER model was converted into a normalized relational model including 8 tables:
- `User`
- `Post`
- `Comment`
- `Like`
- `Friendship`
- `Message`
- `Group`
- `GroupMembership`

📷 *Insert screenshot of your relational model here*

🧱 [Click here to view `populate.sql`](./populate.sql) — includes full table creation + sample data

## 3. Sample Data & Queries

Sample data is inserted into the database through `populate.sql`, including 3 users (Evan, Kya, and David), posts, comments, likes, friendships, and group activity.

🗂️ [Click here to view `query.sql`](./query.sql)

Here are examples of the types of queries included:
- Join between Users and Posts
- Aggregation: Count of Posts per User
- Join + Aggregation: Number of Comments per Post
- Derived Field: Message length per Message
- Join: List users and their group memberships

📷 *Optional: add screenshots of query results here if you want*

## 4. Sources
- https://www.geeksforgeeks.org/building-a-scalable-database/
- https://www.red-gate.com/simple-talk/databases/sql-server/performance-sql-server/designing-highly-scalable-database-architectures/
- https://www.nebula-graph.io/posts/how-to-choose-database-for-social-media-app
