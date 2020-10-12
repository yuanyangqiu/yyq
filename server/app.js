const express = require('express');
const mysql =require('mysql');
const cors =require('cors');
//加载body-parser中间件,因为是post请求，不能用req.query来获取请求，所有引入body-parser中间件来获取请求信息，let username=req.body.username;
const bodyParser = require('body-parser');

const pool =mysql.createPool({
  host:'127.0.0.1',
  port:3306,
  user:'root',
  password:'',
  database:'weiduomei',
  charset:'utf8',
  connectionLimit:20
})
const server = express();
//使用body-parser中间件
server.use(bodyParser.urlencoded({
  extended:false
}));
server.use(cors({
  origin:['http://127.0.0.1:8080','http://localhost:8080']
}));


//注册接口
server.post('/register',(req,res)=>{
  //获取客户端提交的用户名和密码
  let username=req.body.username;
  let password=req.body.password;
  //以当前的用户名为前提条件查找操作，若没找到
  let sql='select uid,username from weiduomei_user where username=?'
  pool.query(sql,[username],(err,results)=>{
    if(err) throw err;
    //根据用户名是否存在进行不同操作
    if(results.length==0){
      //将用户信息写入数据表(还需注意将密码变成md5的结果)
      sql='insert into weiduomei_user(username,password) values(?,MD5(?))';
      //sql='insert xzqa_author set username=?,password=MD5(?)';
      pool.query(sql,[username,password],(err,results)=>{
        if(err) throw err;
        res.send({message:'注册成功',code:1})
        /* select id,username from xzqa_author; 查询数据表中的数据*/
      })
    }else{
      //如果已经存在用户信息则返回提示至客户端
      res.send({message:'用户名已存在',code:0})
    }
  })
})
//登录接口
server.post('/login',(req,res)=>{
    //获取客户端提交的用户名和密码
  let username=req.body.username;
  let password=req.body.password;
  let sql='select uid,username,password from weiduomei_user where username=? and password=MD5(?)';
  pool.query(sql,[username,password],(err,results)=>{
    if(err)  throw err;
    if(results.length==0){
      res.send({message:"密码或用户名错误",code:0});
    }else{
      res.send({message:"登录成功",code:1})
    }
  })
});
//商品列表接口
server.get('/product',(req,res)=>{
  let sql = 'SELECT pid,title,details,pic,price,size,href FROM weiduomei_cake_product';
  pool.query(sql,(err,results)=>{
    if(err) throw err;
    
    res.send({message:'查询成功',code:1,results:results})

  })
});
//商品详情接口
server.get('/details',(req,res)=>{
  let pid = req.query.pid;
  //console.log(pid)
  let sql = 'SELECT lid, imgone_t, imgtwo_t, imgthree_t,title1,title2,price,details,imgone_b,imgtwo_b,imgthre_b,imgfour_b FROM weiduomei_cake_details where lid=?';
  pool.query(sql,[pid],(err,results)=>{
    if(err) throw err;
    res.send({message:'查询成功',code:1,results:results})
  })
});


//添加购物车接口
server.post('/addcar',(req,res)=>{
  //res.send('ok')
  let pid=req.body.pid;
  console.log(pid)
  let sql1="select * from weiduomei_shoppingcar where pid=?";
  let sql2="insert into weiduomei_shoppingcar set ?";
  let sql3="update weiduomei_shoppingcar set num=num+1 where pid=?"
  console.log(req.body)
  pool.query(sql1,[pid],(err,result)=>{
    if(err) throw err;
    //console.log(result) //[]
    if(result.length==0){
      pool.query(sql2,[req.body],(err,result)=>{
        //console.log(result)
        if(result.affectedRows>0){
          res.send("1")
        }else{ res.send("0") }
      })
    }else{
      pool.query(sql3,[pid],(err,result)=>{
        if(err) throw err;
        if(result.affectedRows>0){
          res.send("2")
        }else{ res.send("3") }
      })
    }
  })
})

//获取购物车
server.get('/car',(req,res)=>{
  // let pid=req.query.pid
  let sql="select * from weiduomei_shoppingcar"
  pool.query(sql,(err,result)=>{
      res.send(result)
  })
})
//指定监听端口号
server.listen(3000,()=>{
  console.log(`server is runing`)
});
