const express = require('express');
const client = require('prom-client');
const responseTime = require('response-time');

const collectDefaultMetrics = client.collectDefaultMetrics;
const Registry = client.Registry;
const register = new Registry();
collectDefaultMetrics({ register });

const app = express()

const reqResponse = new client.Gauge({
    name:'req_response',
    help: 'Request response time',
    labelNames: ['method','status', 'route'],
    registers: [register],
    aggregator: "average",
})

app.use(responseTime((req,res,time)=>{
    reqResponse.labels({
        method: req.method,
        status: res.statusCode,
        route: req.url
    })
    reqResponse.set(time)
}))

app.get("/", (req,res)=>{
    res.send("Hello World")
})


app.get("/metrics", (req,res)=>{
    res.setHeader("Content-Type", register.contentType).send(register.metrics())    
})

app.listen(5000,()=>{
    console.log("Server is running on port 5000")
})
