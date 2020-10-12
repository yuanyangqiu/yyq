import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'
import Register from '../views/Register.vue'
import Login from '../views/Login.vue'
import List from '../views/List.vue'
import Details from '../views/Details.vue'
import Shoppingcart from '../views/Shoppingcart.vue'
import Index from '../views/Index.vue'

Vue.use(VueRouter)

  const routes = [
    
    {
      path: '/',
      component: Index
    },
    {
      path: '/shoppingcart',
      component: Shoppingcart
    },
    {
      //path: '/details/:pid',
      path: '/details/:pid',
      component: Details,
      props:true
      //props:true
    },
  {
    path: '/list',
    component: List
  },
  {
    path: '/register',
    component: Register
  },
  {
    path: '/login',
    component: Login
  },
  {
    path: '/about',
    name: 'About',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  }//懒加载的写法
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
