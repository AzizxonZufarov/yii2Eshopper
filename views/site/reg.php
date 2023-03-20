
	<section id="form"><!--form-->

					<div class="signup-form"><!--sign up form-->
						<h1>New User Signup!</h1>
						<form action="" method="post">
							<input type="text" name="name" placeholder="Name"/>
							<input type="email" name="email" placeholder="Email Address"/>
							<input type="password" name="password" placeholder="Password"/>
                            <input type="hidden" name="<?=Yii::$app->request->csrfParam?>" value="<?=Yii::$app->request->getCsrfToken()?>"/>
							<button type="submit" class="btn btn-default">Signup</button>
						</form>
					</div><!--/sign up form-->
	</section><!--/form-->

