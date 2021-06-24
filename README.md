Bookmark Manager
The website will have the following specification:

Show a list of bookmarks
Add new bookmarks
Delete bookmarks
Update bookmarks
Comment on bookmarks
Tag bookmarks into categories
Filter bookmarks by tag
Users are restricted to manage only their own bookmarks

User Stories:
As a website user, So that I can access websites I use a lot, I'd like to see a list of bookmarks.

As a webiste user, So that I can store bookmarks for later, I'd like to add new bookmarks to Bookmark Manager.

Domain Model:
Bookmark Manager domain model# bookmarks

Database Setup Instructions:
Connect to psql
Create the database using the psql command CREATE DATABASE bookmark_manager;
Connect to the database using the pqsl command \c bookmark_manager;
Run the query we have saved in the file 01_create_bookmarks_table.sql
