
    <div class="login-form"><!--login form-->
        <h2>Login to your account</h2>
        <form action="" method="post">
            <input type="text"  name="name" placeholder="Name" />
            <input type="password" name="password" placeholder="Password" />
            <input type="hidden" name="<?=Yii::$app->request->csrfParam?>" value="<?=Yii::$app->request->getCsrfToken()?>"/>
            <button type="submit" class="btn btn-default">Login</button>
        </form>
    </div><!--/login form-->