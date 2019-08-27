/*
 * @Description: 商品列表跳转
 * @Author: zhangkai
 * @Date: 2019-08-27 16:18:38
 * @LastEditTime: 2019-08-27 16:59:41
 * @LastEditors: zhangkai
 */

import 'package:flutter/material.dart';

class Product {
    final String title; // 商品标题
    final String description; // 商品描述
    Product(this.title, this.description);
}

void main(){
    runApp(MaterialApp(
        title: '导航传参',
        home: ProductList(
            products: List.generate(20, (i) => Product('商品 $i', '这个一个商品，编号为：$i')),
        ),
    ));
}

class ProductList extends StatelessWidget {
    final List<Product> products;
    ProductList({Key key, @required this.products}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('商品列表'),
        ),
        body: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index){
                return ListTile(
                    title: Text(products[index].title),
                    onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => ProductDetails(product: products[index])
                        ));
                    },
                );
            },
        ),
    );
  }
}

class ProductDetails extends StatelessWidget {
    final Product product;
    ProductDetails({Key key, @required this.product}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
           title: Text('${product.title}'),
       ),
       body: Center(
           child: Text('${product.description}'),
       ),
    );
  }
}
