# xyz_books

Software Requirements:
* Ruby and `rails`
* Node and `npm`


By default, make sure to run commands in the ROOT directory of the project where this README is located.
 

# Setup

## Frontend
Navigate to the `/frontend` directory first before running the next frontend setup commands
```
# from ROOT directory
cd frontend
```
Run command to install required node dependencies
```
npm install
```
You can try the frontend server in dev mode through:
```
npm run serve
```
The main page will be in http://localhost:8080/

---

When ready, you can build the frontend and export it to the backend
```
npm run build
```
* Check the `/frontend/dist` directory for the frontend build files. There should be an `index.html` and its respective css and js folders there.

Now export those build files to the `backend/public/frontend` directory for the rails server to serve
```
cd .. # back to ROOT directory

mkdir -p backend/public/frontend
cp -r frontend/dist/* backend/public/frontend
```

## Backend
Navigate to the `/backend` directory first before running the next backend setup commands
```
# from ROOT directory
cd backend
```
Run command to install required gems
```
bundle install
```

### Database
Make sure to remove any existing database files (`development.sqite3`) first
```
rm db/development.sqlite3
```
Initialize the database models and data using
```
rails db:migrate
rails db:seed
```


# Running the project
Enter this command from the backend directory:
```
rails server
```
The main page will be located in http://localhost:3000/

## API
While the server is running, the project's API can be found in http://localhost:3000/api

### Route: `/api/books`
* **method**: GET
* **description**: list all books
* **sample params**: None
* **sample response**:
  ```
  [
    {
        "title": "Book 1"
        ...
    },
     {
        "title": "Book 2"
        ...
    },
    ...
  ]
  ```

### Route: `/api/books/query?`
* **method**: GET
* **description**: query book via isbn-13 or 10
* **sample params**:
    ```
    isbn: 978-1-60309-038-4
    ```
* **sample response**:
  ```
  {
    "title": "Book 1"
    "isbn": "9781603090384"
    ...
  }
  ```
### Route: `/api/books/convert?`
* **method**: GET
* **description**: convert isbn-13 to 10 and vice versa
* **sample params**:
    ```
    isbn: 978-1-60309-038-4
    ```
* **sample response**:
  ```
  {
    "isbn_13": "9781603090384"
    "isbn_10": "160309038X"
  }
  ```
