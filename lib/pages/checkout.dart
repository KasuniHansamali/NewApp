import 'package:flutter/material.dart';
import 'package:untitled1/bloc/cart_items_bloc.dart';
import 'package:untitled1/pages/payment.dart';


class Checkout extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Checkout'),
        backgroundColor: Colors.black,
      ),

      body: StreamBuilder(
        stream: bloc.getStream,
        initialData: bloc.allItems,
       builder: (context, snapshot) {
          return snapshot.data!=['cart items'].length > 0
              ? Column(
                  children: <Widget>[

                    Expanded(child: checkoutListBuilder(snapshot)),
                    RaisedButton(
                      onPressed: () {},
                      child: Text("Checkout"),
                      color: Colors.orange[800],
                    ),
                    SizedBox(height: 40)
                  ],
                )
              : Center(child: Text("You haven't taken any item yet"));
        },
      ),
    );
  }
}

Widget checkoutListBuilder(snapshot) {
  return ListView.builder(
    itemCount: snapshot.data["cart items"].length,
    itemBuilder: (BuildContext context, i) {
      final cartList = snapshot.data["cart items"];
      return ListTile(
        title: Text(cartList[i]['name']),
        subtitle: Text("\$${cartList[i]['price']} \n${cartList[i]['item count']}",),



        leading: IconButton(

          icon: Icon(Icons.payments_rounded),
          onPressed: () =>
              Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) =>  Payment ())),
        ),



        trailing: IconButton(
          icon: Icon(Icons.remove_shopping_cart),
          onPressed: () {
            bloc.removeFromCart(cartList[i]);
          },
        ),

        onTap: () {},

      );
    },
  );
}
