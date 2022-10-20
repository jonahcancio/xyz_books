# xyz_books

Software Requirements:
* Ruby and `rails`
* Node and `npm`


By default, make sure to run commands in the ROOT directory of the project. 
 

## Setup

### Database
You can generate a new SQLite database using the following commands from the root directory:
```
rails db:migrate
```
You should find a `sqlite thingie` file in the project's root directory. 
That file serves as the project's database. 

### Frontend
You can build the frontend files by running these commands from the `/frontend` directory:
```
npm install
npm run build
```
Check the `/frontend/dist` directory for the frontend build files. You should find an `index.html` and its respective css and js folders there.

# Running the project
Enter this command from the root directory:
```
rails server
```
The main page will be located in http://localhost:3000/

## API
While the server is running, the project's API can be found in ...

