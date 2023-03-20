<?php

namespace app\controllers;

use app\models\Products;
use app\models\Shops;
use app\models\Stores;
use app\models\Users;
use app\models\Zakaz;
use Yii;
use yii\filters\AccessControl;
use yii\rbac\Item;
use yii\web\Controller;
use yii\web\Response;
use yii\filters\VerbFilter;
use app\models\LoginForm;
use app\models\ContactForm;

class SiteController extends Controller
{
    public function actionIndex()
    {
        $prods= Products::find()->all();
        return $this->render('index', compact('prods'));
    }

    public function actionAdd()
    {

        $id = $_GET['id'];
        $session= Yii::$app->session;
        $session->open();

        if($_SESSION['cart'][$id]){
            $_SESSION['cart'][$id]++;
        }else{
            $_SESSION['cart'][$id] = 1;
        }
       return $this->renderPartial('cart');
    }

    public function actionMinus()
    {
        $session= Yii::$app->session;
        $session->open();
        $id = $_GET['id'];
        if($_SESSION['cart'][$id]){
            $_SESSION['cart'][$id]--;
        }else{
            $_SESSION['cart'][$id] = 1;
        }
        return $this->renderPartial('cart');
    }
    public function actionPlus()
    {
        $id = $_GET['id'];
        $session= Yii::$app->session;
        $session->open();
        if($_SESSION['cart'][$id]){
            $_SESSION['cart'][$id]++;
        }else{
            $_SESSION['cart'][$id] = 1;
        }
        return $this->renderPartial('cart');
    }

    public function actionDell()
    {
        $id = $_GET['id'];
        $session= Yii::$app->session;
        $session->open();
        if($_SESSION['cart'][$id])
        {
            unset($_SESSION['cart'][$id]);
        }
        return $this->renderPartial('cart');
    }

    public function actionClear()
    {
        $session= Yii::$app->session;
        $session->open();
        unset($_SESSION['cart']);
        return $this->renderPartial('cart');
    }


    public function actionBacktocart()
    {
        return $this->renderPartial('cart');
    }

    public function actionAdd2()
    {
        $session= Yii::$app->session;

        $session->open();

            $name = $_GET['name'];
            $email = $_GET['email'];
            $text = $_GET['text'];

            foreach($_SESSION['cart'] as $id => $qty){
                $zakaz = new Zakaz();
                $prods= Products::findOne($id);
                $itemname = $prods->name;
                $price = $prods->price;
                $quantity = $qty;

                $zakaz->name = $name;
                $zakaz->email = $email;
                $zakaz->text = $text;
                $zakaz->itemname = $itemname;
                $zakaz->price = $price;
                $zakaz->quantity = $quantity;
                $zakaz->total = $price * $qty;
                $zakaz->save();

            unset($_SESSION['cart']);
        }

    }




    public function actionCart2()
    {
        $session= Yii::$app->session;
        $session->open();


        return $this->renderPartial('cart2');
    }


    public function actionProddetail()
    {
        $id = $_GET['id'];
        $proddetails = Products::findOne($id);
        return $this->renderPartial('proddetail', ['proddetails'=>$proddetails]);
    }






    public function actionReg()
    {
        if(Yii::$app->request->post()){
            $name = $_POST['name'];
            $email = $_POST['email'];
            $password = $_POST['password'];
            $us = new Users();
            $us->name = $name;
            $us->email = $email;
            $us->password = $password;
            $us->save();
            return $this->redirect(['site/auth']);
        }
        return $this->render('reg');
    }

    public function actionAuth()
    {
        if(Yii::$app->request->post()){
            $name = $_POST['name'];
            $password = $_POST['password'];
            $users = Users::find()->where(['name'=>$name, 'password'=>$password])->one();
            if($users){
                $session= Yii::$app->session;
                $session->open();
                $_SESSION['id']=$users->id;
                return $this->redirect(['site/cab']);
            }else{
                return $this->refresh();
            }
        }
        return $this->render('auth');
    }

    public function actionCab()
    {
        $session= Yii::$app->session;
        $session->open();
        $id =  $_SESSION['id'];
        $users = Users::findOne($id);
        return $this->render('cab',compact( 'users'));
    }

    public function actionUserorders()
    {
        $session= Yii::$app->session;
        $session->open();
        $id =  $_SESSION['id'];
        $userorders= Zakaz::find()->where(['user_id'=>$id])->all();
        return $this->render('userorders',compact ('userorders'));
    }

    public function actionShopprods($id)
    {
        $shop= Shops::findOne($id);
        $prds= Products::find()->where(['shop_id'=>$id])->all();
        return $this->render('shopprods',compact('prds', 'shop'));

    }
}
