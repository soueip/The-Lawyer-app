import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:projet/core/class/statusrequest.dart';
import 'package:projet/core/functions/checkinternet.dart';

class Crud {
  Future<Either<StatusRequest, Map<String, dynamic>>> postData(
      String linkurl, Map<String, dynamic> data) async {
    try {
      if (await checkInternet()) {
        var response = await http.post(Uri.parse(linkurl), body: data);
        if (response.statusCode == 200 || response.statusCode == 201) {
          Map<String, dynamic> responsebody =
              jsonDecode(response.body) as Map<String, dynamic>;
          print("Before Response Body Print");
          print("Response Body: $responsebody");
          print("After Response Body Print");
          return Right(responsebody);
        } else {
          return const Left(StatusRequest.serverfailure);
        }
      } else {
        return const Left(StatusRequest.offlinefailure);
      }
    } catch (_) {
      return const Left(StatusRequest.serverfailure);
    }
  }
}
