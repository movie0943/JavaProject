<template>
  <el-container class="article_list">
    <el-main class="main">
      <el-tabs v-model="activeName" @tab-click="handleClick" type="card">
        <el-tab-pane label="全部文章" name="blogmana" v-if="isAdmin">
          <blog_table state="-2" :showEdit="false" :showDelete="false" :showRestore="false" :activeName="activeName"></blog_table>
        </el-tab-pane>
        <el-tab-pane label="我的文章" name="post">
          <blog_table state="1" :showEdit="true" :showDelete="true" :showRestore="false" :activeName="activeName"></blog_table>
        </el-tab-pane>
        <el-tab-pane label="刪除的文章" name="dustbin">
          <blog_table state="2" :showEdit="false" :showDelete="true" :showRestore="true" :activeName="activeName"></blog_table>
        </el-tab-pane>


      </el-tabs>
    </el-main>
  </el-container>
</template>
<script>
  import BlogTable from '@/components/BlogTable'
  import {postRequest} from '../utils/api'
  import {putRequest} from '../utils/api'
  import {deleteRequest} from '../utils/api'
  import {getRequest} from '../utils/api'
  export default {
    mounted: function () {
      var _this = this;
      getRequest("/isAdmin").then(resp=> {
        if (resp.status == 200) {
          _this.isAdmin = resp.data;
        }
      })
    },
    data() {
      return {
        activeName: 'post',
        isAdmin: false
      };
    },
    methods: {
      handleClick(tab, event) {
//        console.log(tab, event);
      }
    },
    components: {
      'blog_table': BlogTable
    }
  };
</script>
<style>
  .article_list > .header {
    background-color: #ececec;
    margin-top: 10px;
    padding-left: 5px;
    display: flex;
    justify-content: flex-start;
  }

  .article_list > .main {
    /*justify-content: flex-start;*/
    display: flex;
    flex-direction: column;
    padding-left: 0px;
    background-color: #fff;
    padding-top: 0px;
    margin-top: 8px;
  }
</style>
