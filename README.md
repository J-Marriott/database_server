####The Brief

You receive a message from a prospective employer:

"Before your interview, write a program that runs a server that is accessible on http://localhost:4000/. When your server receives a request on http://localhost:4000/set?somekey=somevalue it should store the passed key and value in memory. When it receives a request on http://localhost:4000/get?key=somekey it should return the value stored at somekey. Store the data in memory, not in a database, but bear in mind that you will later need to add a database to this code."

Create a new git repository and write code to fulfill the brief to the best of your ability. We will be looking for clean, well tested code in your choice of technology. In addition, the last sentence of the brief implies that you should consider how the code could easily be extended to add an as-yet-unknown data store.

If you still have time at the end of the day, you can extend the code by adding a data store of your choice.

***

####User stories

```
As an employer
So that I can the candidates app
I would like it to be available at port 4000 on local host
```
```
As an employer
So I can store a key value pair
I would like to be able to provide these via the url query string
```

```
As an employer
So that I can check that the key and value have been saved
I would like to retrieve the value by supplying the key in the query string
```

```
As an employer
So that I can see that the code you write is expandable
I would like a solution that is open for linking to a database
```
****

####Instructions

1) Clone this repo

```
$git clone https://github.com/J-Marriott/database_server
```

2) Navigate into directory

```
$cd database_server
```
3) Start server

```
$rackup -p 4000
```

4) To load data from .yml file navigate to

```
http://localhost:4000/load
```

4) Store key & value by navigating to address e.g.

```
http://localhost:4000/set?name=joe
```

5) View value by navigating to address e.g.

```
http://localhost:4000/get?key=name
```

6) Save to .yml file by navigating to

```
http://localhost:4000/store
```

 