
import 'dart:async';

class CartItemsBloc {

  final cartStreamController = StreamController.broadcast();


  Stream get getStream => cartStreamController.stream;

  final Map allItems = {
    'shop items': [
      {'name': 'Frock', 'price': 20,'item count': 'available', 'id': 1,},
      {'name': 'T-Shirt-Men', 'price': 100,'item count': 'unavailable', 'id': 2},
      {'name': 'T-Shirt-Women', 'price': 10,'item count': 'available', 'id': 3},
      {'name': 'Flower', 'price': 90, 'item count': 'available','id': 4},
      {'name': 'Shoes', 'price': 100,'item count': 'unavailable', 'id': 5},
    ],
    'cart items': []
  };

  void addToCart(item) {
    allItems['shop items'].remove(item);
    allItems['cart items'].add(item);
    cartStreamController.sink.add(allItems);
  }

  void removeFromCart(item) {
    allItems['cart items'].remove(item);
    allItems['shop items'].add(item);
    cartStreamController.sink.add(allItems);
  }


  void dispose() {
    cartStreamController.close();
  }
}

final bloc = CartItemsBloc();
