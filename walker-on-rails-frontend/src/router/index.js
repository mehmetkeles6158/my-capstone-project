import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'
import WalksIndex from '../views/WalksIndex.vue'
import WalksShow from '../views/WalksShow.vue'
import Signup from "../views/Signup.vue";
import Login from "../views/Login.vue";

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home
  },
  {
    path: '/walks',
    name: 'walks-index',
    component: WalksIndex
  },
  {
    path: '/walks/:id',
    name: 'walks-show',
    component: WalksShow
  },
  { path: "/signup", 
    name: "signup", 
    component: Signup },
  { path: "/login", 
    name: "login", 
    component: Login },


  {
    path: '/about',
    name: 'About',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
