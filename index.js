import express  from "express"; 
import cors     from "cors"; 
import ProvinceRouter from "./src/controllers/province-controller.js" 
import 'dotenv'

const app  = express(); 
const port = process.env.PORT || 3000;

app.use(cors()); 
app.use(express.json()); 


app.use("/api/province", ProvinceRouter); 


app.listen(port, () => { 
    console.log(`Example app listening on port ${port}`) 
})