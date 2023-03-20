<?php
/**
 * Created by PhpStorm.
 * User: admin
 * Date: 13.03.2022
 * Time: 9:27
 */

namespace app\models;

use yii\db\ActiveRecord;

class Zakaz extends ActiveRecord{
    public static function tableName()
    {
        return "zakaz";
    }

}

