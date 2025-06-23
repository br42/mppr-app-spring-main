const express = require('express')
let app = express();

app.use(express.static("."));

app.get("/", (req,res)=>{
    res.sendFile(__dirname + '/index.html')
})

let port = ("PORT" in process.env && process.env.PORT !== "") ? (process.env.PORT) : (3000);

app.listen(port, ()=>{
    console.log("Server is listening on port "+`${port}`)
})