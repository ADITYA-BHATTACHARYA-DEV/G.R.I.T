const express=require('express');
const mongoose=require('mongoose');
const Customer=require('./src/models/customers');
const dotenv=require('dotenv');
dotenv.config();
const customer=new Customer({
    name:'caleb',
    industry:'marketing'
});
const app=express();
mongoose.set('strictQuery',false);
app.use(express.json());
app.use(express.urlencoded({extended:true}));
const PORT=process.env.PORT||3000;

app.post('/',(req,res)=> {
    res.send('This is a post Request');
});
app.listen(PORT,() =>
{
    console.log('APP LISTENING ON PORT'+PORT);
});
const start =async()=>
{try
    {
    await mongoose.connect('mongodb+srv://IITIANSPIDEY:SPIDEYgwen@spidey3.9lk6bbx.mongodb.net/?retryWrites=true&w=majority');
    app.listen(PORT,() => {
        console.log("App listening on port"+PORT);
        
    });
}
catch(e)
{
    console.log(e.message)

}
};

start();
const customers=([{"name":"aditya"},
{"name":"sam"}]);
app.get('/api/customers',(req,res)=>
{
    res.send(
        {
            "customers":customers});
        }
    );
    app.post('/api/customers',(req,res)=>
    {
        console.log(req.body);
        res.send(req.body);
    });


