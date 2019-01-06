<!-- <template>
  <div id="app">
    {{ message }}
  </div>
</template> -->


<template>
  <div class="box">
    <article class="media">
      <div class="media-left">
        <img src="https://msp.c.yimg.jp/yjimage?q=TbJQ93QXyLHyuMreDkWYF3haoaVH49yyiNYdmWUH0Iu7VngZ81RrEeaK.mZF5iKl_vfVLrJBt2Q.2YTkCUUP_fBUvheIXvURkRNBJOchXm9CLqv0z1GOwmIHGYiLQlu5F18eJnlbiRhB6RNSD32_&sig=13acmhdqn&x=225&y=225" alt="いぬ" width=128 height=128 >
      </div>
      <div class="media-content">
        <div class="content">
          <p>
            <strong>{{ title }}</strong><br>
            <small>{{ address }}</small><br>
            {{ comment }}<br>
          </p>
        </div>
        <small>by メグル</small>
          <nav class="level is-mobile">
            <div class="level-left">
              <a class="level-item" aria-label="reply">
                <span class="icon is-small">
                  <i class="fas fa-heart" aria-hidden="true"></i>
                </span>
                <span>30</span>
              </a>
              <a class="level-item" aria-label="retweet">
                <span class="icon is-small">
                  <i class="far fa-comment-dots" aria-hidden="true"></i>
                </span>
                <span>8</span>
              </a>
            </div>
          </nav>
      </div>
    </article>
  </div>
</template>



<script>
export default {
  data: function () {
    return {
      message: "Hello Vue!",
      title: "割烹まつのや",
      address: "東京都中央区銀座３丁目",
      comment: "一人限定のフルコースを予約していきました。"
    }
  }
}

</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}

</style>
