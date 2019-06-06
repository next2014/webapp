<template>
 <div class="home">
    <van-swipe class="goods-swipe" :autoplay="3000">
      <van-swipe-item v-for="thumb in thumb" :key="thumb">
        <img :src="thumb" >
      </van-swipe-item>
    </van-swipe>

    <van-tabbar v-model="active">
        <van-tabbar-item icon="home-o">首页</van-tabbar-item>
        <van-tabbar-item icon="friends-o">购物车</van-tabbar-item>
        <van-tabbar-item icon="setting-o">我的</van-tabbar-item>
    </van-tabbar>

 </div>

</template>

<script>
import { 
  Swipe, 
  SwipeItem,
  Tabbar,
  TabbarItem
} from 'vant';

export default {
  components: {
    [Swipe.name]: Swipe,
    [SwipeItem.name]: SwipeItem
  },

  data() {
    return {
      thumb: [
          'http://psk02pkvf.bkt.clouddn.com/geddt.jpg',
          'http://psk02pkvf.bkt.clouddn.com/ti_tu-2.jpg'
      ],
      active: 0
    };
  },
  methods: {
    onLoad() {
      // 异步更新数据
      setTimeout(() => {
        for (let i = 0; i < 10; i++) {
          this.list.push(this.list.length + 1);
        }
        // 加载状态结束
        this.loading = false;

        // 数据全部加载完成
        if (this.list.length >= 40) {
          this.finished = true;
        }
      }, 500);
    }
  }
}
</script>

<style lang="less">
.goods {
  padding-bottom: 50px;

  &-swipe {
    img {
      width: 100%;
      display: block;
    }
  }
}
</style>
