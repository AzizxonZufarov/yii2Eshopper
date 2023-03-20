<div class="col-sm-12 padding-right">
    <div class="product-details"><!--product-details-->
        <div class="col-sm-6">
            <div class="view-product">
               <?= \yii\helpers\Html::img("@web/images/{$proddetails->img}",  ['width' => '200px'])?>
            </div>
        </div>
        <div class="col-sm-6">
            <div class="product-information"><!--/product-information-->
                <h2> <?=$proddetails->name ?> </h2>
                <p>Web ID: <?=$proddetails->id?></p>

								<span>
									<span>US $<?=$proddetails->price?></span>
								</span>
                <p><?= mb_substr(strip_tags($proddetails->description), 0, 100, 'utf-8'). '...'?></p>
            </div><!--/product-information-->
        </div>
    </div><!--/product-details-->



</div>