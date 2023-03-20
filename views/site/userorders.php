<div class="table-responsive cart_info">
    <table  align="center" border="1"  class="table table-condensed">
        <thead>
        <tr class="cart_menu">
            <td class="image">Image</td>
            <td class="description">Itemname</td>
            <td class="description">ID</td>
            <td class="description">Text</td>
            <td class="price">Price</td>
            <td class="quantity">Quantity</td>
            <td class="total">Total</td>
          <td colspan="3" align="center">Действия</td>
        </tr>
        </thead>
        <tbody>

        <?foreach($userorders as $value){?>

        <tr>

            <td class="cart_description">
                <h4><a href=""><?= \yii\helpers\Html::img("@web/images/{$value->img}",  ['width' => '75px'])?></a></h4>
            </td>

            <td class="cart_description">
                <h4><?=$value->itemname?></h4>
            </td>

            <td class="cart_description">
                <h4> <?=$value->id?></h4>
            </td>

            <td class="cart_description">
                <h4><?=$value->text?> </h4>
            </td>

            <td class="cart_price">
                <p>$ <?=$value->price?></p>
            </td>
            <td class="cart_quantity">
                <div class="cart_quantity_button"><?=$value->quantity?></div>
            </td>
            <td class="cart_total">
                <p class="cart_total_price">$ <?=$value->total?></p>
            </td>

           <td >
                <a  href="<?=\yii\helpers\Url::to(["site/userordersdell"],['id'=>$value->id])?>">Удалить</a>
            </td>
            <td >
                <a  href="<?=\yii\helpers\Url::to(["site/userordersedit"],['id'=>$value->id])?>">Редактировать</a>
            </td>
            <td >
                <a  href="<?=\yii\helpers\Url::to(["site/userordersview"],['id'=>$value->id])?>">Просмотр</a>
            </td>
        </tr>
<?}?>
        </tbody>
    </table>
</div>