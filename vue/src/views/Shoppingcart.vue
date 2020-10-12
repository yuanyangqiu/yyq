<template>
  <div>
    <div class="top">
      <div style="position: relative;">
        <a href="#" style="margin-right: 1.5rem;margin-top: 50px;"><img src="http://static.wdmcake.cn/images/logo/logo_bj.png" style="margin-top: 15px;">
        </a>
        <span class="locate-icon"></span>
        <a href="" class="font_small" id="d1">北京</a>
          <ul class="nav font_small">
            <li>
              <a href="#" style="margin-right: 8px;">首页</a>|
            </li>
            <li>
              <a href="home page_cake.html">蛋糕</a>|
            </li>
            <li>
              <a href="">电子卡券</a>|
            </li>
            <li>
              <a href="">全国邮寄</a>|
            </li>
            <li>
              <a href="">同城配送范围</a>|
            </li>
            <li>
              <a href="">会员中心</a>|
            <li>
              <a href="">积分换礼</a>|
            </li>
            <li>
              <a href="">企业服务</a>
            </li>
          </ul>
      </div>
      <div class="top_right">
        <span class="font_small">订购热线 4001-170-170</span>
        <p>
          <a href="" class="font_small">登陆</a>
          <a href="" class="font_small">注册</a>
          <a href="" class="shopcar"><img src="../../public/image/shoppingcar.png" alt=""></a>
          <a href="">0</a>
          <a href="" class="help"><img src="../../public/image/help.png" alt=""></a>
        </p>
      </div>
    </div>
    <hr>
    <div class="cart-body">
      <div class="cart-container">
        <div class="cart-con1">
          <p style="margin-left:20px"><input type="checkbox" @click="checkedAll" v-model="checked">&nbsp;&nbsp;全选</p>
          <p style="margin-left:200px">商品</p>
          <p style="margin-left:270px">单价</p>
          <p style="margin-left:150px">数量</p>
          <p style="margin-left:100px">操作</p>
        </div>
        <div class="cart-con2" v-for="(item,index) in products" :key="item.pid">
          <p style="margin-left:20px"><input type="checkbox" v-model='checkboxList' :value="item.pid"></p>
          <div style="margin-left:200px" class="cart-con2-d1">
            <p>{{item.title}}</p>
          </div>
          <p style="margin-left:240px">￥{{item.price}}</p>
          <div style="margin-left:130px;position:relation" class="cart-con2-d2">
            <button class="cart-con2-d2-b1" @click="cardSub(index)">-</button>
            <input type="text" :value="item.num" class="cart-con2-d2-in1">
            <button class="cart-con2-d2-b2" @click="cardAdd(index)">+</button>
          </div>
          <p style="margin-left:80px" @click="deleteCart(index)" class="cart-con2-p1">删除</p>
        </div>
        <div class="cart-con3">
          <p style="margin-left:1000px">总计:￥{{getTotal()}}</p>
          <button class="cart-con3-b1" @click="dianji">去结算</button>
        </div>
      </div>
    </div>
    <div class="bottom_t">
        <div class="server">
          <ul>
            <li><a href="#">帮助中心</a></li>
            <li><a href="">购物帮助</a></li>
            <li><a href="">支付方式</a></li>
            <li><a href="">配送规则</a></li>
            <li><a href="">法式月饼提货送门</a></li>
          </ul>
          <ul>
            <li><a href="">门店服务</a></li>
            <li><a href="">门店查询</a></li>
            <li><a href="">购卡须知</a></li>
            <li><a href="">提货卡/积分卡查询</a></li>
          </ul>
          <ul>
            <li><a href="">关于我们</a></li>
            <li><a href="">了解味多美</a></li>
            <li><a href="">味多美新闻</a></li>
            <li><a href="">加入味多美</a></li>
          </ul>
          <ul class="last_ul">
            <li><a href="">关于我们</a></li>
            <li><a href="">官方微博</a></li>
            <li><a href="">美粉社区</a></li>
            <li style="height:19px"><a href=""></a></li>
          </ul>
          <div class="bottom_img" style="position: relative;">
            <img src="http://static.wdmcake.cn/themes/wdm/images/wx_01.jpg" alt=""><br>
            <span>关注味多美微信<br>了解最新会员活动</span>
          </div>   
          <div class="bottom_b1" style="position: relative;">
            <p>味多美面包坊，选用全球优质原料，24年来，北京开店近300家。天然奶油蛋糕，使用进口天然稀奶油。北京六环内“最快2小时达”，可门店自提，订购热线：4001170170</p>
          </div>
        </div>
      </div>
      <div class="bottom_b" >
        <div style="width: 1170px;margin: 15px auto 0;">
          <div style="float: left;color: #BCBCC0;font-size:12px;">
            
            @2005-2018味多美版权所有，并保留所有权利。ICP备案证书号:
            <a href="" style="color: #BCBCC0;font-size:12px;">京ICP备14006433号</a>
            <div style="width:300px;margin:0 auto; padding:10px 0;">
              <a href="" style="display:inline-block;text-decoration:none;height:20px;line-height:20px;">
                <img src="http://static.wdmcake.cn/images/ghs.png" style="float:left;width:16px;margin-top: 2px;margin-left: 0;">
                <p style="float:left;height:20px;line-height:20px;margin: 0px 0px 0px 5px; color:#939393;font-size:12px;">京公网安备 11010202007671号
                </p>
              </a>
            </div>
          </div>
          <div class="buttom_imgs" style="margin-left:789px;width:383px;height:56px;">
            <a href=""><img src="https://aqyzmedia.yunaq.com/labels/label_lg_90020.png" alt=""></a>
            <a href=""><img src="https://xyt.xinchacha.com/img/icon/icon1.png" alt=""></a>
            <a href=""><img src="http://static.wdmcake.cn/themes/wdm/images/shiming.png" alt=""></a>
          </div>
        </div>
      </div>
    
  </div>
</template>

<script>
export default {
  name: 'shoppingcart',
  props: {
    msg: String
  },
  data () {
    return {
      counts: null,
      products:[],
      /* cartList: [
      {"id":1,"pid":2,"title":"女士商务正装西服套装","price":"489.00","counts":3,"size":2},
      {"id":2,"pid":1,"title":"男士纯棉修身商务短袖","price":"99.00","counts":6,"size":5}, 
      {"id":3,"pid":4,"title":"女士职业修身西服套装","price":"398.00","counts":4,"size":1},
      {"id":4,"pid":4,"title":"女士职业修身西服套装","price":"398.00","counts":4,"size":3},
      {"id":5,"pid":3,"title":"男士职业正装商务西服","price":"699.00","counts":3,"size":2}
      ], */
      checked: false,
      checkboxList: []
    }
  },
  watch:{ //深度 watcher
    checkboxList: {
      handler: function () { 
        if(this.checkboxList.length === this.products.length) {
          this.checked=true;
        }else{
          this.checked=false;
        }
      },
      deep: true
    }
  },
  methods: {
    dianji(){
      console.log(this.checkboxList)
    },
    getTotal(){
      var total = 0;
      var myList = this.checkboxList;
      for(var i=0;i<myList.length;i++){
        total+=(this.products[myList[i]-1].num*this.products[myList[i]-1].price) 
      }
      return total;
    },
    checkedAll(){
      if (this.checked) {//实现反选
        this.checkboxList = [];
      }else{ //实现全选
        this.checkboxList = [];
        this.products.forEach((item)=>{
          this.checkboxList.push(item.pid);
        });
      }
    },
    cardSub(id){
      if(this.products[id].num>1){
        this.products[id].num--;
      }
    },
    cardAdd(id){
      this.products[id].num++;
    },
    deleteCart(id){
      alert("确认删除该商品");
      this.products.splice(id,1)
    }
  },
  mounted(){
    this.axios.get('/car')
		.then(result=>{
			this.products=result.data
			console.log(result.data);
		})		
	}
}
</script>


<style scoped>
  input{
    font-size:13px;
    outline: none; 
  }
  .container{
    width: 100%;
  }
  .font_small{
  font-size: 15px;
}
.top{
  width: 1170px;
  margin: 0 auto;
}
a{
  text-decoration: none;
  color:gray
}
.gps{
  width: 16px;
  height: 16px;
  margin: -3px
}
.nav{
  position: absolute;
  top: 46px;
  left: 271px;
  margin-top: 15px;
}
.nav>li{
  float: left;
  list-style: none;
}
.locate-icon {	
  position: fixed;
  top:41px;
  position: relative;	
  display: inline-block;	
  width: 14px;	
  height: 14px;	
  border-radius: 50%;	
  background-color:red;	
  }	
  #d1{
    position: absolute;
    top: 58px;
    left: 195px;
  }
  .locate-icon::before{	
    content: '';	
    position:absolute;	
    display: inline-block;	
    width: 4px;	
    height: 4px;	
    border-radius: 50%;	
    left: 50%;	
    top: 50%;	
    transform: translate(-50%, -50%);	
    background-color: #fff;	
  }	
  .locate-icon::after {	
    content: '';	
    margin-top: 11px;	
    margin-left: 1px;
    display: inline-block;	
    border: 6px solid transparent;	
    border-top-color:red;	
  }	
  div.top_right{
    position: relative;
    float: right;
    margin-top: -43px;
  }
  div.top_right a{
    color:red
  }
  div.top_right>span:first-child{
    color:#C1C1C1;
  }
  div.top_right p{
    margin-top:4px
  }
  a.shopcar{
    position: absolute;
    top: 26px;
    left: 90px;
  }
  div.top_right>p>a:nth-child(4){
    margin-left: 64px;
  }
  a.help{
    position: absolute;
    top: 27px;
    left: 140px;
  }
  
  ul.nav>li>a{
    margin: 0 8px 0 8px;
  }
  ul.nav>li>a:hover{
    color: #000;
    border-bottom: 1px solid #000;
  }
  div.top_right>p>a:nth-child(1):hover,div.top_right>p>a:nth-child(2):hover{
    border-bottom: 1px solid red;
  }
  hr{ 
    margin-top: 25px;  
  }





.cart{
  width:100%
  }
.cart-body{
  width:1200px;
  margin:0 auto;
  }
.cart-container{
  border:1px solid #DDDDDD;
  border-top:3px solid #B8C1C8;
}
.cart-con1{
  background:#EFF2F5;
  height:35px;
  display:flex;
  line-height:35px;
  color:#666666;
  font-size:14px;
}
.cart-con2{
  border-top:1px solid #DDDDDD;
  border-bottom:1px solid #DDDDDD;
  display:flex;
  height:70px;
  /* line-height:70px; */
  padding-top: 24px;
}
.cart-con2-d1{
  display:flex
}
.cart-con2-d2{
  display:flex;
  padding:0px 0;
}
.cart-con2-d2-b1{
  width:20px;
  height:30px;
  text-align:center;
  vertical-align:middle;
}
.cart-con2-d2-b2{
  width:20px;
  height:30px;
  text-align:center;
  vertical-align: middle;
}
.cart-con2-d2-in1{
  width:30px;
  height:30px;
  text-align:center;
}
.cart-con2-p1{
  color:blue
  }
.cart-con2-p1:hover{
  cursor:pointer;
  color:red;
}
.cart-con3{
  height:40px;
  background:#EFF2F5;
  display:flex;
  line-height:40px
}
.cart-con3-b1{
  width:80px;
  height:32px;
  border:none ;
  border-radius:3px;
  background:#FF4D50;
  color:#ffffff;
  margin:4px 0 0 20px;
}


  /* bottom */
  div.bottom_t{
    background-color: #F7F1EB;
    width: 100%;
    height: 235px;
    padding: 0 60px;
    border-bottom: 1px solid #BCBCBC;
  }
  div.bottom_t ul{
    list-style: none;
    float: left;
     
  }
  div.server{
    width: 1170px;
    margin: 0 auto;
    margin-top: 50px;
    padding-left: 75px;
  }
  div.bottom_t:before{
    content: "";
    display: table;
  }
  div.bottom_t ul~ul{
    border-left: 1px solid #BCBCBC;
    margin-left: 70px; 
    padding-left: 60px;
  }
  div.bottom_t ul>li{
    font-size: 14px;
    margin: 10px;
  }
  div.bottom_t ul>li>a{
    color: black;
   
  }
  div.bottom_t ul>li>a:hover{
    color: #83B842;
    z-index: 100;
  }
  div.bottom_t ul>li:nth-child(1){
    font-size: 18px;
  }
  .server span{
    font-size: 12px;
    color: #7e7e7e;
    position: absolute;
    text-align: center;
   padding-left: 10px;
  }
  .server>div>img{
    margin-left: 5px;
  }
  .last_ul{
    border-right: 1px solid #BCBCBC;
    padding-right: 60px;
  }
  .bottom_img{
    float: right;
    right: 70px;
  }
  .bottom_b1{
    clear: both;
    width: 1170px;
    margin-left: -50px;
    font-size: 12px;
    text-align: center;
  }
  .bottom_b1 p{
    height: 73px;
    color: red;
    position: absolute;
    top: -24px;
    left: 117px;
  }
  .bottom_b{
    height: 73px;
    background-color: #F7F1EB;
    width: 100%;
  } 
  div.bottom_b:before{
    content: "";
    display: table;
  }
  .buttom_imgs>a>img{
    width: 90px;
    height: 34px;
  }
  
</style>
