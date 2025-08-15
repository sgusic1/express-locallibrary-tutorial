# express-locallibrary-tutorial
This is an Express web application that implements a basic library menagement system.

## Features
You can browse and manage:

- Lists of all Books, Authors, Book instances and Genres.
- Detailed pages for each item.
- CRUD funcitonality for all entity types.

## Technology stack
- **Backend:** Node.js + Express
- **Database:** MongoDB (via Mongoose ODM)
- **Templating:** Pug

## Getting started
### 1) Install dependencies
```bash
npm install
```
### 2) Create a '.env' file
In the project root, create a file named `.env` and set your own MongoDB connection string:
```env
MONGODB_URI=<your-mongodb-connection-string>
```
Example MONGODB_URI string for a local database:
```env
MONGODB_URI=mongodb://localhost:27017/library
```
### 3) Run the application
```bash
npm start
```
With debug output run:
```bash
npm run serverstart
```
#### then open http://localhost:3000

---
## 🐳 Docker Compose Setup
This repository contains a Docker Compose setup for running the **Express Local Library** app together with a MongoDB database.
It also includes a **populate** service for seeding the database with sample data.


## Prerequisites
- [Docker](https://docs.docker.com/get-docker/) & [Docker Compose v2+](https://docs.docker.com/compose/install/)
- Optional: `.env` file for custom database connection

## How It Works

---
