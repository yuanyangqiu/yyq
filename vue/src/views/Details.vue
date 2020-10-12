<template>
  <div  class="container">
    <thead>
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
  </thead>
  <tbody>
    <div class="list_wai">
      <div class="list_main">
        <div class="route">
          当前位置：
          <a href="#">首页</a>
          <code>></code>
          <a href="">蛋糕</a>
        </div>
        <div class="classify">
          <div class="classify_text">蛋糕分类:</div>
          <ul>
            <li style="display: none;">
              <a href="">全部</a>
            </li>
            <li>
              <a href="">【新品上市】</a>
            </li>
            <li>
              <a href="">经典甄选</a>
            </li>
            <li>
              <a href="">萌宝之选</a>
            </li>
            <li>
              <a href="">福寿双全</a>
            </li>
            <li>
              <a href="">特色口味</a>
            </li>
            <li>
              <a href="">青春专属</a>
            </li>
            <li>
              <a href="">庆典时刻</a>
            </li>
          </ul>
        </div>
        <div class="info">
          <div class="info_img" id="info_img">
            <div class="info_img_left" id="info_img_left">
              <a href="">
                <img :src="details.imgone_t" alt="" id="img1">
              </a>
            </div>
            <div class="info_img_right" id="info_img_right">
              <div>
                <a href="">
                <img :src="details.imgone_t" alt="" class="img2">
              </a>
              </div>
              <div>
                <a href="">
                <img :src="details.imgtwo_t" alt="" class="img2">
              </a>
              </div>
              <div>
                 <a href="">
                <img :src="details.imgthree_t" alt="" class="img2">
              </a>
              </div>
             
            </div>
          </div>
          <hr style="margin-top:50px;">
          <div class="info_operate">
            <div class="operate" style="position:relative">
              <div class="operate_left">
                <div style="position:relative">
                  <div class="name" style="margin-top:10px">
                    {{details.title1}}<br>
                    <p style="margin-top:10px;display:block">{{details.title2}}</p>
                  </div>
                  <div class="price">
                    <span class="yprice">￥</span>
                    <span class="new">{{details.price}}</span>
                    <ul class="price_style">
                      <li></li>
                      <li class="pro">
                        <span class="pro_wei">.00</span>
                        /Φ15cm原味蛋糕杂果夹心
                      </li>
                    </ul>     
                  </div>
                  <div style="height:50px"></div>
                  <div class="introduce">{{details.details}}</div>
                </div>
              </div>
              <div class="operate_right">
                <div class="norms">
                  <div class="x_norms_title">规格: </div>
                  <div class="x_norms_text">
                    <a href="">Φ15cm
                      <!-- <input type="text"> -->
                    </a>
                    <a href="">Φ18cm
                      <!-- <input type="text"> -->
                    </a>
                    <a href="">Φ20cm
                     <!--  <input type="text"> -->
                    </a>
                    <a href="">Φ25cm
                      <!-- <input type="text"> -->
                    </a>
                  </div>
                </div>
                <div class="norms" style="margin-top:10px">
                  <div class="x_norms_title">坯子： </div>
                  <div class="x_norms_text">
                    <a href="">原味蛋糕
                      <!-- <input type="text"> -->
                    </a>
                    <a href="">巧克力蛋糕
                      <!-- <input type="text"> -->
                    </a>
                    <a href="">提拉米苏慕斯蛋糕
                      <!-- <input type="text"> -->
                    </a>
                    <a href="">乳酪蛋糕
                      <!-- <input type="text"> -->
                    </a>
                  </div>

                </div>
                <div class="norms" style="margin-top:10px"> 
                  <div class="x_norms_title">夹心：</div>
                    <div class="x_norms_text">
                      <a href="javascript:;" >杂果夹心</a>
                      <a href="javascript:;">酸奶提子夹心</a>
                      <a href="javascript:;">无水果夹心</a>
                    </div>
                  </div>
                <div class="count"  style="margin-top:10px">
                  <!-- <a href="" style="border:1px solid;width:20px;display:inline-block;padding-left:5px ">-</a> <input type="text" value="0" style="width:50px;padding-left:20px"> <a href="" style="border:1px solid;width:20px;display:inline-block;padding-left:2px ">+</a> -->
                  <button @click="minus">-</button>
                  <span style="border:1px solid #000000;display:inline-block;width:60px;height:27px;text-align:center" class="mx-2">{{n}}</span>
                  <button @click="add">+</button>
                </div>
                <div class="submit" style="margin-top:10px">
                  <button class="btn btn-danger" @click="addcar">加入购物车</button>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div style="margin-bottom:-20px">详情</div>
        <hr>
        <div class="details">
          <p>
            <img :src="details.imgone_b" alt="">
            <img :src="details.imgtwo_b" alt="">
            <img :src="details.imgthre_b" alt="">
            <img :src="details.imgfour_b" alt="">
            <img src="http://www.wdmcake.cn/images/upload/Image/%E5%B0%8F%E6%81%90%E9%BE%99%E8%9B%8B%E7%B3%95_05.jpg" alt="">
            <img src="http://www.wdmcake.cn/images/upload/Image/%E5%B0%8F%E6%81%90%E9%BE%99%E8%9B%8B%E7%B3%95_06(4).jpg" alt="">
            <img src="http://www.wdmcake.cn/images/upload/Image/%E5%B0%8F%E6%81%90%E9%BE%99%E8%9B%8B%E7%B3%95_07(2).jpg" alt="">
            <img src="http://www.wdmcake.cn/images/upload/Image/%E5%AE%98%E7%BD%91%E8%9B%8B%E7%B3%95%E9%85%8D%E9%80%81870.jpg" alt="">
            <img src="http://www.wdmcake.cn/images/upload/Image/%E5%B0%8F%E6%81%90%E9%BE%99%E8%9B%8B%E7%B3%95_09.jpg" alt="">
            <img src="http://www.wdmcake.cn/images/upload/Image/%E5%B0%8F%E6%81%90%E9%BE%99%E8%9B%8B%E7%B3%95_10.jpg" alt="">
          </p>
        </div>
        <div style="margin-bottom:-20px">温馨提示</div>
        <hr>
        <p>
          1、划线价说明：商品展示的划横线价格为参考价，并非原价，该价格为味多美门店标价或该商品在官网平台曾展示过的售价；由于地区、时间的差异性和市场行情波动，门店标价、展示价格可能会与您购物时展示的不一致，该价格仅供您参考。
未划线价说明： 商品或服务实时售价，具体成交价可能因参加活动、使用优惠券等发生变化，最终以订单结算页价格为准。
        </p>
        <p>
          2、味多美官网及微信商城可24小时自助在线订购，当您操作不便时，您可以拨打我们的客服电话，将您想购买的商品名称、规格、数量、详细配送地址、配送时间、收货人及要求等告诉我们的客服人员，客服人员会帮您完成商品订购。客服热线电话：4001-170-170（服务时间08:00-20:00，除春节期间）
        </p>
        <p>
          3、目前支持在线支付宝、网银及微信支付，货到现金付款、门店现金/银联/味多美充值卡等付款方式。
        </p>
        <p>
          4、蛋糕价格变动以官网及门店价格为准，部分产品采用应季水果点缀，会随季节的变化有所调整，产品以实物为准。由于供货原因，全球选购的原料产地会有变化。
        </p>
        <p style="margin-bottom:50px">
          5、味多美可提供蛋糕、粽子、月饼提货卡等产品的企事业单位团体订购及企业福利外包服务，期待与广大合作伙伴开放合作，咨询热线：4001-170-170（北京），021-52277820（上海）。
        </p>
      </div>
    </div>
  </tbody>
  <tfoot>
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
  </tfoot>
  </div>
</template>
<script>
export default {
  props:['pid'],
  data(){
    return {
      n:0,
      details:[]
    }
  },
  methods:{
    minus(){
      if(this.n>0){ this.n-- };
    },
    add(){
      this.n++;
    },
    addcar(){
      this.axios.post('/addcar',`num=1&pid=${this.details.lid}&title=${this.details.title}&price=${this.details.price}`).then(result=>{
        console.log(result.data);
				if(result.data==1 || result.data==2){
          alert("加入购物车成功")
          this.$router.push('/shoppingcart')
				}else if(result.data==0 || result.data==3){
					alert("加入失败")
				}
      })
    }
  },
  mounted(){
    this.axios.get('/details',{
      params:{pid:this.pid}
    }).then(result=>{
      //console.log(result.data);
      this.details = result.data.results[0];
      //console.log(result.data[0])
      console.log(this.details.title)
    })
  }
}

</script>
<style scoped>
  /* info */
  #info{
    width: 1170px;
    margin: 0 auto;
  }
  #info_img{
    margin: 20px 135px;
  }
  #info_img_left img{
    width: 500ox;
    height: 460px;
    
  }
  #info_img_left{
    display: inline;
  }
  #info_img_right{
    float: right;
    margin-top: 18px;
    margin-right: 100px;
  }
  #info_img_right img{
    width: 107px;
    height: 107px;
  }
  .introduce{
    font-size: 12px
  }
  .x_norms_text>a{
    display: inline-block;
    width: 153px;
    height: 32px;
    border:1px solid gray;
    color: gray;
    font-size: 14px;
    margin-left: 5px;
    border-radius: 5px;
    text-align: center;
    line-height: 32px;
  }
  .x_norms_text>a:hover{
    border-color:red;
    color: red;
  }
  .operate_right{
    position: relative;
    top: -100px;
    right: -540px;
  }




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
   /* home page_cake */
  .list_main{
    box-sizing: border-box;
    width: 1210px;
    margin:0 auto;
    padding: 10px 20px;
  }
  .route{
    width: 1170px;
    margin: 0 auto;
    color: #757575;
    font-size: 12px;
    margin-top: 5px;
  }
  .classify{
    width: 1170px;
    margin: 0 auto;
    margin-top: 10px;
    overflow: hidden;
  }
  .classify>ul{
    list-style: none;
  }
  .classify>ul>li{
    float: left;
    margin-top: -2px;
  }
  .classify_text{
    float: left;
    width: 60px;
    font-size: 12px;
    line-height: 21px;
    color: #757575
    
  }
  .classify>ul>li>a{
    font-size: 12px;
    
  }
  .classify>ul>li~li{
    margin-left: 20px;
  }
  div.goods{
    box-sizing: border-box;
    width: 1190px;
    height: 251px;
    padding: 20px 10px;
    position: relative;
  }
  .good_info{
  overflow: hidden;
  }
  div.list>.goods>.goods_img>a>img{
    width: 200px;
    height: 184px;
  }  
  .good_name{
    font-size:18px;
  }
  .good_name>a{
    color: black;
  }
  .goods_info_text{
    position: absolute;
    top: 24px;
    left: 238px;
  }
  .goods_depict{
    margin-top: 5px;
    font-size: 14px;
    color: #757575;
  }
  .goods_operate{
    position: relative;
    top: -180px;
    left: 995px;
  }
  .like{
    font-size: 12px;
    color: #E4004F;
    position: relative;
    right: -135px;
  }
  .like_num{
    position: absolute;
    line-height: 18px;
    top:1px;
    
  }
  .price{
    position: absolute;
    top: -14px;
    left: 210px;
  }
  .yprice{
    font-size: 23px;
    color: #E4004F
  }
  .price .new{
    font-size: 49px;
    color: #E4004F;
    margin-left: -7px;
  }
  .price ul{
    list-style: none;
    color: #E4004F;
    font-size: 16px;
    position: absolute;
    top: 51px;
    left: 106px;
  }
  .pro{
    width: 165px;
    margin-top: -12px;
    margin-left:-10px
  }
 .submit_goods{
   display: inline-block;
   width: 90px;
   height: 26px;
   background-color: #E4004F;
   border-radius: 5px;
   text-align: center;
   line-height: 26px;
   margin-left: 10px;
 }
 .submit_goods>a{
   color: #fff;
 }
 div.sub{
   margin-top: 20px;
 }
 div.goods{
   border-bottom: 1px dashed gray;
 }
 .goods_img>a>img{
   transition: all .3s linear;
 }
 .goods_img>a>img:hover{
   transform: scale(1.05,1.05);
 }
</style>