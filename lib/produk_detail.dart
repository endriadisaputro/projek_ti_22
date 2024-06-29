import 'package:flutter/material.dart';
import 'package:myapp/data.dart';

class ProdukDetail extends StatefulWidget {
  const ProdukDetail({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  State<ProdukDetail> createState() => _ProdukDetailState();
}

class _ProdukDetailState extends State<ProdukDetail> {
  int count = 1;

  void addCount() {
    count = count + 1;
    setState(() {});
  }

  void removeCount() {
    if (count != 0) {
      count = count - 1;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        elevation: 3,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Detail',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: Icon(
              Icons.favorite_border,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            widget.product.name,
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.w700),
          ),
          Center(
            child: Hero(
              tag: widget.product.image,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.45,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.product.image),
                      fit: BoxFit.contain),
                ),
              ),
            ),
          ),
          Container(
            // color: Colors.grey[200],
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            padding: EdgeInsets.only(left: 20, top: 20),
            child: Row(
              children: [
                Text(
                  'Rp. ${widget.product.price}',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 30,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  ' /${widget.product.quantity}',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.grey[200],
              padding: EdgeInsets.all(20),
              child: Text(
                widget.product.description,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                textAlign: TextAlign.justify,
                overflow: TextOverflow.ellipsis,
                maxLines: 5,
              ),
            ),
          ),
          Container(
            height: 100,
            padding: EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.bottomCenter,
            color: Colors.pink,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: removeCount,
                        icon: Icon(
                          Icons.remove_circle_outline,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      Text(
                        count.toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w700),
                      ),
                      IconButton(
                        onPressed: addCount,
                        icon: Icon(
                          Icons.add_circle_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    width: 190,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        ),
                        color: Colors.green),
                    child: Center(
                      child: Text(
                        'Pesan',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
