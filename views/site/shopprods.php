<div class="features_items"><!--features_items-->
    <h2 class="title text-center"><?=$shop->shopname?></h2>

    <!--Cart preview -->
    <div class="modal fade " id="card" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl modal-dialog-centered " role="document">
            <div class="modal-content" style="width:1200px; margin : auto">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Cart </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">

                </div>
                <div class="modal-footer">

                    <button type="button" class="btn btn-danger"  onclick="clearsession()">Clear all</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary order" onclick="cart2()">Заказать</button>
                    <button type="button" class="btn btn-primary backtocart" onclick="backtocart()">Назад</button>

                </div>
                <div style="color: green; font-size: 50px; text-align: center " class="message"></div>
            </div>

        </div>
    </div>

    <!--Cart preview end-->


    <!--Proddetails Preview-->

    <div class="modal fade " id="prodpreview" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl modal-dialog-centered " role="document">
            <div class="modal-content" style="width:1200px; margin : auto">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Product details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body-preview">

                </div>
                <div class="modal-footer">

                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    <!--Proddetails Preview end-->

    <?foreach($prds as $value){
        ?>
        <div class="col-sm-4">
            <div class="product-image-wrapper">
                <div class="single-products">
                    <div class="productinfo text-center">
                        <a  style="cursor: pointer" data-id="<?=$value->id?>" class="proddetail-preview"><img src="images/<?=$value->img?>" width="400px" height="300px" /></a>
                        <h2>$<?=$value->price?></h2>
                        <p><?=$value->name?></p>
                        <a style="cursor: pointer" data-id="<?=$value->id?>" class="btn btn-default add-to-cart" data-target=".bd-example-modal-lg" ><i class="fa fa-shopping-cart"></i>Add to cart</a>
                    </div>

                </div>
            </div>
        </div>
    <?}?>

</div><!--features_items-->









