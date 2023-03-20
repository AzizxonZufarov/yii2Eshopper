
 <h2 align="center">Добро пожаловать, <?=$users->name?></h2>


 <table align="center" border="1" width="400" height="100">

    <tr>
        <td align="center">Name</td>
        <td align="center">Password</td>
        <td align="center">Email</td>
        <td colspan="3" align="center">Действия</td>
    </tr>
    <tr>
        <td align="center"><?=$users->name?></td>
        <td align="center"><?=$users->password?></td>
        <td align="center"><?=$users->email?></td>
        <td align="center"><a href="<?=\yii\helpers\Url::to(["site/edit"],['id'=>$users->id])?>">Редактировать</a></br></td>
        <td align="center"><a href="<?=\yii\helpers\Url::to(["site/dell"],['id'=>$users->id])?>">Удалить</a></br></td>
        <td align="center"><a href="<?=\yii\helpers\Url::to(["site/logout"],['id'=>$users->id])?>">Выход</a></br></td>
    </tr>


 </table>
 <a href="<?=\yii\helpers\Url::to(["site/userorders"])?>">Заказы</a>



