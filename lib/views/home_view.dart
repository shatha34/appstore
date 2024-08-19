import 'package:appstore/models/product_model.dart';
import 'package:appstore/services/get_all_product.dart';
import 'package:appstore/widgets/cusotm_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static String id = 'Home View';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Trend '),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.cartShopping,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 45.0, left: 16, right: 16),
        child: FutureBuilder<List<ProductModel>>(
          future: AllProductsService().getAllProduct(),
          builder: (context, snapshot) {
            if( snapshot.hasData){

              return GridView.builder(
                clipBehavior: Clip.none,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 70,
                ),
                itemBuilder: (context, index) {
                  return CustomCard();
                },
              );
            } else {
              return CircularProgressIndicator();
            }

          },
        ),
      ),
    );
  }
}
