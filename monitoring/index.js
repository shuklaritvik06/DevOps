const express = require('express');
const client = require('prom-client');
const responseTime = require('response-time');

const collectDefaultMetrics = client.collectDefaultMetrics;
const Registry = client.Registry;
const register = new Registry();
collectDefaultMetrics({ register });

const app = express()

const reqResponseAvg = new client.Gauge({
    name:'req_response_avg',
    help: 'Request response time',
    labelNames: ['method','status', 'route'],
    registers: [register],
    aggregator: "average",
    enableExemplars: true
})

const reqResponseHisto = new client.Histogram({
    help: "Request Response Histogram",
    name: "req_response_histo",
    buckets: [100,200,300,400,500,600,800],
    labelNames: ['method','status', 'route'],
    registers: [register],
    enableExemplars: true
})


const reqCounter = new client.Counter({
    help: "Request Response Counter",
    name: "req_response_counter",
    labelNames: ['method','status', 'route'],
    registers: [register],
    enableExemplars: true
})

app.use(responseTime((req,res,time)=>{
    reqCounter.labels({
        method: req.method,
        status: res.statusCode,
        route: req.url
    }).inc()
    reqResponseAvg.labels({
        method: req.method,
        status: res.statusCode,
        route: req.url
    })
    reqResponseHisto.labels({
        method: req.method,
        status: res.statusCode,
        route: req.url
    }).observe(time)
    reqResponseAvg.set(time)
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
