<?php
require_once 'Product.php';

class SaleProducts {
    public static $products = array();

    public static function addProduct($product) {
        session_start();

        if (!isset($_SESSION['products'])) {
            $_SESSION['products'] = array();
        }

        array_push($_SESSION['products'], $product);
        return $_SESSION['products'];

    }

    public static function getProducts() {
        session_start();
        return isset($_SESSION['products']) ? $_SESSION['products'] : array();
    }

    public static function clearProducts() {
        session_start();
        unset($_SESSION['products']);
    }
  
    public static function getTotal() {
        $total = 0;
        foreach ($_SESSION['products'] as $product) {
            $total += $product->getPrice();
        }
        return $total;
    }

    public static function getTotalTax() {
        $total = 0;
        foreach ($_SESSION['products'] as $product) {
            $total += $product->getTotalPrice();
        }
        return $total;
    }
}

?>