import express from "express";
import cors from "cors";

const app = express();
app.use(cors());
app.use(express.json());

// 🔥 FAKE AI (men smart og stabil – ingen API nødvendig)
function analyzeProduct(name){

let n = name.toLowerCase();

if(n.includes("bum bum") || n.includes("body") || n.includes("butter")){
return {type:"cream", category:"body"};
}

if(n.includes("cleanser") || n.includes("rens")){
return {type:"cleanser", category:"cleanser"};
}

if(n.includes("toner") || n.includes("essence")){
return {type:"toner", category:"toner"};
}

if(n.includes("serum")){
return {type:"serum", category:"serum"};
}

if(n.includes("acid") || n.includes("vitamin")){
return {type:"active", category:"active"};
}

if(n.includes("cream") || n.includes("krem")){
return {type:"cream", category:"faceCream"};
}

if(n.includes("oil")){
return {type:"oil", category:"oil"};
}

return {type:"serum", category:"serum"};
}

app.post("/analyze", (req,res)=>{
const { name } = req.body;
const result = analyzeProduct(name);
res.json(result);
});

app.listen(3000, ()=> console.log("AI server running on port 3000"));
