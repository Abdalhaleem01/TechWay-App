import 'package:dio/dio.dart';
import 'package:techway/api/api_constant.dart';

class DioClient{
  DioClient._(){
  initDio();

  }


  static final DioClient dioClient=DioClient._();

  Dio? dio;


  initDio(){
    dio=Dio();
    dio?.options.baseUrl=APIConstant.baseURL;


  }

  getAllCategories () async{
    Response response=await dio!.get(APIConstant.baseURL);
    return response.data;
  }
}