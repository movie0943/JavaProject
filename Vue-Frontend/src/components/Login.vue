<template>
  <el-form :rules="rules" class="login-container" label-position="left"
           label-width="0px" v-loading="loading">
    <h3 class="login_title">社群登入</h3>
    <el-form-item prop="account">
      <el-input type="text" v-model="loginForm.username" auto-complete="off" placeholder="帳號"></el-input>
    </el-form-item>
    <el-form-item prop="checkPass">
      <el-input type="password" v-model="loginForm.password" auto-complete="off" placeholder="密碼"></el-input>
    </el-form-item>
    <el-checkbox class="login_remember" v-model="checked" label-position="left">記住密碼</el-checkbox>
    <el-form-item style="width: 100%">
      <el-button type="primary" @click.native.prevent="submitClick" style="width: 100%; background-color: #009F97; border-color: #009F97">Login</el-button>
    </el-form-item>
    <el-form-item style="width: 100%">
      <el-button type="primary" @click.native.prevent="regClick" style="width: 100%; background-color: #009F97; border-color: #009F97">Register</el-button>
    </el-form-item>
  </el-form>
</template>
<script>
  import {postRequest} from '../utils/api'
  import {putRequest} from '../utils/api'
  export default{
    data(){
      return {
        rules: {
          account: [{required: true, message: '請輸入請用者名稱', trigger: 'blur'}],
          checkPass: [{required: true, message: '請輸入密碼', trigger: 'blur'}]
        },
        checked: true,
        loginForm: {
          username: 'sang',
          password: '123'
        },
        loading: false
      }
    },
    methods: {
      submitClick: function () {
        var _this = this;
        this.loading = true;
        postRequest('/login', {
          username: this.loginForm.username,
          password: this.loginForm.password
        }).then(resp=> {
          _this.loading = false;
          if (resp.status == 200) {
            //成功
            var json = resp.data;
            if (json.status == 'success') {
              _this.$router.replace({path: '/home'});
            } else {
              _this.$alert('登入失敗!', 'Error!');
            }
          } else {
            //Error
            _this.$alert('登入失敗!', 'Error!');
          }
        }, resp=> {
          _this.loading = false;
          _this.$alert('找不到伺服器!', 'Error!');
        });
      }
    }
  }
</script>
<style>
  .login-container {
    border-radius: 15px;
    background-clip: padding-box;
    margin: 180px auto;
    width: 350px;
    padding: 35px 35px 15px 35px;
    background: #fff;
    border: 1px solid #eaeaea;
    box-shadow: 0 0 25px #cac6c6;
  }

  .login_title {
    margin: 0px auto 40px auto;
    text-align: center;
    color: #505458;
  }

  .login_remember {
    margin: 0px 0px 35px 0px;
    text-align: left;
  }
</style>
