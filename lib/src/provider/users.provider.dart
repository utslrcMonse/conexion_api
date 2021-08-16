import 'package:conexion_api/src/models/users.model.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';


class UsersProvider extends GetxController{

  UsersProvider(){
    obtenerDatosUsers();
  }
final _url = 'https://allsalfe.herokuapp.com/api/users';
final _http = Dio();
List<UsersModel> usuario = [];

 Future<void> obtenerDatosUsers() async {
   final _response =await _http.get(_url);
   List<dynamic> _users = _response.data['users'];

   _users.forEach((usuario) {
     final usuarioTemporal1 = UsersModel.fromMapJson(usuario);
     usuario.add(usuarioTemporal1);
    });

    update();
 }
}