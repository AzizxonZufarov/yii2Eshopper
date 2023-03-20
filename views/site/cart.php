

		<?
		if($_SESSION['cart']){?>			<div class="breadcrumbs">
			<ol class="breadcrumb">
				<li><a href="#">Home</a></li>
				<li class="active">Shopping Cart</li>
			</ol>
		</div>

			<div class="table-responsive cart_info">
				<table class="table table-condensed" >
					<thead>
					<tr >
						<td >Image</td>
						<td >Name</td>
						<td >Price</td>
						<td >Quantity</td>
						<td >Total</td>
						<td></td>
					</tr>
					</thead>
					<tbody>
					<?foreach($_SESSION['cart'] as $id => $qty){
						$prods= \app\models\Products::findOne($id);
						$total = $prods->price * $qty;?>
							<tr>
								<td >
									<a href=""> <img src="images/<?=$prods ->img?>" width="50px" height="50px" /></a>
								</td>
								<td >
									<h4 style="font-size: 10px"><?=$prods->name?></h4>
								</td>
								<td >
									<p>$<?=$prods->price?></p>
								</td>
								<td >
									<div class="cart_quantity_button">
                            <a class="cart_quantity_up plus" onclick="plus(<?=$prods->id?>)" style="cursor: pointer"> + </a>
                            <input class="cart_quantity_input" type="text" name="quantity" value="<?=$qty?>" autocomplete="off" size="2">
                            <a class="cart_quantity_down minus" onclick="minus(<?=$prods->id?>)"  style="cursor: pointer"> - </a>
									</div>
								</td>
								<td >
									<p class="cart_total_price">$<?=$total?></p>
								</td>
								<td class="cart_delete">
									<a class="cart_quantity_delete"  onclick="dell(<?=$prods->id?>)" style="cursor: pointer"><i class="fa fa-times"></i></a>
								</td>
							</tr>

						<?}

					?>

					</tbody>
				</table>
			</div>
		<?}else{?>
			<div class="table-responsive cart_info">
				<table class="table table-condensed">
					<thead>
					<tr class="cart_menu">
						<td class="image">Empty</td>
						<td></td>
					</tr>
					</thead>

					</tbody>
				</table>
			</div>
		<?	}?>
