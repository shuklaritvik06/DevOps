import express, { Request, Response } from "express"

const app = express()
const PORT  = process.env.PORT||4000

app.get("/health",(req: Request,res: Response)=>{
    res.status(200).json({
       status: "up"
    })
})

app.get("/", (req: Request,res: Response)=>{
    const data  = new Promise((resolve,reject)=>{
        setTimeout(() => {
            resolve(4)
        }, 1000);
    })

    data.then((element)=>{
        res.status(200).json({
            data: element
        })
    }).catch((err)=>{
        res.status(400).json({
            err: err
        })
    })
})

app.listen(PORT,  ()=>{
    console.log(`Listening on port ${PORT}`)
})