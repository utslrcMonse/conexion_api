import 'package:conexion_api/src/models/movimiento.model.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';

class MovimientoProvider extends GetxController{
final _url = 'https://allsalfe.herokuapp.com/api/movimiento';
final _http = Dio();
List<MovimientoModel> movimiento = [];

 Future<void> obtenerMovimiento() async {
   final _response =await _http.get(_url);
   List<dynamic> _movimiento = _response.data['movimiento'];

   _movimiento.forEach((movimiento) {
     final movimientoTemporal1 = MovimientoModel.fromMapJson(movimiento);
     movimiento.add(movimientoTemporal1);
    });

    update();
 }
}