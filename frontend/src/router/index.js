import Vue from 'vue'
import VueRouter from 'vue-router'
import HomeView from '../views/HomeView.vue'
import ResultView from '../views/ResultView.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/result/:isbn?',
    name: 'result',
    component: ResultView
  },
  {
    path: '*',
    name: 'home',
    component: HomeView
  },
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
