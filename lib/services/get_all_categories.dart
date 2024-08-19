import 'package:appstore/helper/api.dart';

class GetAllCategoriesService{
  Future<dynamic> getAllCategories () async{
    
    List<dynamic> data = await Api().get(url: "https://fakestoreapi.com/products/categories");


    return data;

  }
}