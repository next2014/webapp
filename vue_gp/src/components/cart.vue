<template>
  <div class="cart">
    <div class="content">
      <h1>{{ msg }}</h1>
      <h2>{{ msg_f }}</h2>
    </div>
    <ul class="footer">
      <li>
        <a href="" target="_blank">
           商城首页
        </a>
      </li>
      <li>
        <a href="" target="_blank">
          产品分类
        </a>
      </li>
      <li>
        <a href="" target="_blank">
          购物车
        </a>
      </li>
      <li>
        <a href="" target="_blank">
          我的
        </a>
      </li>
    </ul>
   </div>
</template>

<script>
export default {
  data () {
    return {
      msg: '欧美城文化小镇',
      msg_f: '分享快乐小城故事'
    }
  }
}
</script>

<style scoped>
  h1, h2 {
    font-weight: normal;
  }
  ul {
    list-style-type: none;
    padding: 0;
    display: flex;
  }
  li {
    margin: 0;
    width: 25%;
  }
  a {
    color: #333333;
  }
  .cart{
    width: 100%;
    height: 100%;
  }
  .footer{
    position: absolute;
    bottom: 0;
    left: 0;
    width: 100%;
    height: 55px;
    line-height: 55px;
    border-top: 1px solid #ddd;
    margin: 0;
  }
  .footer a{
    text-decoration: none;
    display: block;
  }
  .content h1, .content h2{
    margin: 0;
    font-size:1.2rem;
  }
  .content h1{
    font-size:1.4rem;
  }
</style>
