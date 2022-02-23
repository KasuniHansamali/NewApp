
import 'package:flutter/material.dart';
import 'package:untitled1/bloc/cart_items_bloc.dart';

class ShopItems extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping'),
        backgroundColor: Colors.black,
        actions: <Widget>[
          Row(
            children: [
              StreamBuilder(
                  initialData: bloc.allItems,
                  stream: bloc.getStream,
                builder: (context,AsyncSnapshot<dynamic> snapshot) {
                    return Text("${snapshot.data["cart items"].length}");
                }
              ),
              IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () => Navigator.pushNamed(context, '/checkout'),
              ),
            ],
          )
        ],
      ),
      body: ShopItemsWidget(),
    );
  }
}

class ShopItemsWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return StreamBuilder(
      initialData: bloc.allItems,
      stream: bloc.getStream,
      builder: (context, snapshot) {
        return snapshot.data!=["shop items"].length > 0
            ? shopItemsListBuilder(snapshot)
            : Center(child: Text("All items in shop have been taken"));
      },
    );
  }
}

Widget shopItemsListBuilder(snapshot) {
  return ListView.builder(
    itemCount: snapshot.data["shop items"].length,
    itemBuilder: (BuildContext context, i) {
      final shopList = snapshot.data["shop items"];
      return ListTile(
        title: Text(shopList[i]['name']),
        subtitle: Text("\$${shopList[i]['price']}\n${shopList[i]['item count']}"),
        trailing: IconButton(
          icon: Icon(Icons.add_shopping_cart),
          onPressed: () {
            bloc.addToCart(shopList[i]);
          },
        ),
          leading: SizedBox(
              height: 100.0,
              width: 100.0, // fixed width and height
              child: Image.asset('assets/images/shopping.jpg')
          ),
        onTap: () {},
      );
    },
  );
}
