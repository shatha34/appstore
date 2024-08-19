

import 'package:appstore/helper/api.dart';

import '../models/product_model.dart';

class CategoriesServices{
  Future<dynamic> getCategoriesServices({required String categoryName }) async{
    
   List<dynamic> data= await Api().get(url: 'https://fakestoreapi.com/products/category/$categoryName');

   List<ProductModel> productsList = [];
   for (int i = 0; i < data.length; i++) {
     productsList.add(
       ProductModel.fromJson(data[i]),
     );
   }
   return productsList;

  }
}