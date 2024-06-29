import 'package:flutter/material.dart';
import 'package:myapp/data.dart';
import 'package:myapp/item_produk.dart';

class Produk extends StatefulWidget {
  const Produk({super.key});

  @override
  State<Produk> createState() => _ProdukState();
}

class _ProdukState extends State<Produk> {
  final data = Product('Bayam', '2000', '1 Ikat', 'assets/images/img1.png',
      'Secara umum sayur dan buah buahan merupakan sumber berbagai vitamin');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.pink,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Toko Buah & Sayur',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        actions: [
          Row(
            children: [
              Icon(
                Icons.search,
                color: Colors.white,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Stack(
                  children: [
                    IconButton(
                      onPressed: (() {}),
                      icon: Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 3,
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.red),
                        child: Center(
                          child: Text(
                            '2',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.7,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return ItemProduk(product: allData[index]);
          },
          itemCount: allData.length,
        ),
      ),
    );
  }
}
