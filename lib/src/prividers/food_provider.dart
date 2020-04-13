import 'package:restaurant_app/src/models/food_model.dart';

class FoodProvider{

  FoodProvider();

  Future<List<Food>> getFoods() async{
    // print ('loandign');
    return await Foods().loadData(); 
  }
}