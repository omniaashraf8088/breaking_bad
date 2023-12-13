import 'package:dio/dio.dart';
import 'package:movie_app_bloc/constants/strings.dart';

class CharactersApi{
  late Dio dio;
  CharactersApi(){
    BaseOptions options=BaseOptions(
    baseUrl: baseUrl,
    receiveDataWhenStatusError: true,
  );
    dio=Dio(options);
  }
 Future<List<dynamic>>getAllCharacteries()async{
  try {
    Response response= await dio.get('characters');
    return response.data ;
  }  catch (e) {
    print(e.toString());
    return [];
    // TODO
  }
 }
}
