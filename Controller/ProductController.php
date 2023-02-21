<?php
require_once 'Model/ProductModel.php';
require_once 'Controller/SaleController.php';

Class ProductController{

    public static function getProductId($cdProduct, $amount){

        $return = ProductModel::getProductbyId($cdProduct);

        if (!empty($return)) {
            $arrayProduct = SaleController::addProductSale($return, $amount);
        }else{
            $arrayProduct = array('findProduct' => false);
        }
        return $arrayProduct;
    }

    public static function selectProductAll(){
        return ProductModel::selectProductAll();
    }

    public static function insert($nameProduct, $typeProduct, $price){
        return ProductModel::insert($nameProduct, $typeProduct, $price);
    }

    public static function deleteProduct($cdProduct){

        $return = ProductModel::delete($cdProduct);
        if (strstr($return, "Foreign key violation")) {
            $return = array('return' => "Foreign key violation");
            //$arrayProduct = array('findProduct' => false);
         } else{
            $return = array('return' => "OK");
        }
        return $return;
    }

}
?>