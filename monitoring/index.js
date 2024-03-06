const express = require('express');
const client = require('prom-client');
const collectDefaultMetrics = client.collectDefaultMetrics;
const Registry = client.Registry;
const register = new Registry();
collectDefaultMetrics({ register });

const app = express()

app.get("/", (req,res)=>{
    res.send("Hello World")
})


app.get("/metrics", (req,res)=>{
    res.setHeader("Content-Type", register.contentType).send(register.metrics())    
})

app.listen(5000,()=>{
    console.log("Server is running on port 5000")
})
