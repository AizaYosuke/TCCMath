import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:tccmath/models/assunto.dart';
import 'package:tccmath/utils/constants.dart';

class AssuntoList with ChangeNotifier {
  final List<Assunto> _items = [];

  List<Assunto> get items => [..._items];
  int get itemsCount => _items.length;

  Future<void> loadAssuntos() async {
    print('entered the function');
    _items.clear();

    final response = await http.get(
      Uri.parse('${Constants.Base_URL}/assunto.json'),
    );

    if (response.body == 'null') return;

    Map<String, dynamic> data = jsonDecode(response.body);
    data.forEach((assuntoId, assuntoData) {
      _items.add(
        Assunto(
          id: assuntoId,
          nome: assuntoData['nome'],
          conteudo: assuntoData['conteudo'],
          fonte: assuntoData['fonte'],
        ),
      );
    });
    notifyListeners();
    print('finished the function');
  }

  // Future<void> addAssuntoFromData(Map<String, Object> data) {
  //   bool hasId = data['id'] != null;

  //   final assunto = Assunto(
  //     id: hasId ? data['id'] as String : 'null',
  //     nome: data['nome'] as String,
  //     conteudo: data['conteudo'] as String,
  //     fonte: data['fonte'] as String,
  //   );
  //   return hasId ? updateAssunto(Assunto) : addAssunto(Assunto);
  // }

  // Future<void> addAssunto(Assunto Assunto) async {
  //   final response = await http.post(
  //     Uri.parse('${Constants.Assunto_BASE_URL}.json?auth=$_token'),
  //     body: jsonEncode(
  //       {
  //         'name': Assunto.name,
  //         'price': Assunto.price,
  //         'description': Assunto.description,
  //         'imageUrl': Assunto.imageUrl,
  //       },
  //     ),
  //   );

  //   final id = jsonDecode(response.body)['name'];
  //   _items.add(
  //     Assunto(
  //       id: id,
  //       name: Assunto.name,
  //       description: Assunto.description,
  //       price: Assunto.price,
  //       imageUrl: Assunto.imageUrl,
  //     ),
  //   );
  //   notifyListeners();
  // }

  // Future<void> updateAssunto(Assunto Assunto) async {
  //   int index = _items.indexWhere((p) => p.id == Assunto.id);

  //   if (index >= 0) {
  //     final response = await http.patch(
  //       Uri.parse(
  //           '${Constants.Assunto_BASE_URL}/${Assunto.id}.json?auth=$_token'),
  //       body: jsonEncode({
  //         'name': Assunto.name,
  //         'description': Assunto.description,
  //         'price': Assunto.price,
  //         'imageUrl': Assunto.imageUrl,
  //       }),
  //     );

  //     _items[index] = Assunto;

  //     notifyListeners();
  //   }
  // }

  // Future<void> removeAssunto(String AssuntoId) async {
  //   final index = _items.indexWhere((p) => p.id == AssuntoId);

  //   if (index >= 0) {
  //     final Assunto = _items[index];
  //     _items.removeWhere((p) => p.id == AssuntoId);
  //     notifyListeners();

  //     final response = await http.delete(
  //       Uri.parse('${Constants.Assunto_BASE_URL}/$AssuntoId.json?auth=$_token'),
  //     );

  //     if (response.statusCode >= 400) {
  //       _items.insert(index, Assunto);

  //       notifyListeners();

  //       throw HttpException(
  //         msg: 'Não foi possível excluir o produto "${Assunto.name}".',
  //         statusCode: response.statusCode,
  //       );
  //     }
  //   }
  // }
}
