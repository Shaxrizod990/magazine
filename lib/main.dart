import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:magazine/app/my_app.dart';
import 'package:magazine/services/api/dio_client.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  registerSingleton();
  
  runApp(const MyApp());
}

void registerSingleton(){

  GetIt.I.registerLazySingleton<Dio>(() => DioClient().dio);
}

Dio get dio => GetIt.I.get<Dio>();
