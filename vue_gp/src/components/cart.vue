<template>
  <div class="hello">
    <div>
      <h1>{{ msg }}</h1>
      <h2>分享快乐小城故事</h2>
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
      msg: '欧美城文化小镇'
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
  }
  li {
    display: inline-block;
    margin: 0 10px;
  }
  a {
    color: #fd8905;
  }
  .hello{
    width: 100%;
    height: 100%;
  }
  .footer{
    position:absolute;
    bottom:0;
    left: 0;
    width: 100%;
    height: 30px;
    line-height: 30px;
  }
  .footer a{
    text-decoration: none;
    display: block;
  }
</style>
