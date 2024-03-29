import 'package:tccmath/models/termo.dart';

class Teorema {
  final String nome;
  final String descricao;
  final String fonte;
  final List<Termo> termos = [];
  final List<Teorema> teoremas = [];
  final List<String> duvida = [];
  final List<String> comentario = [];

  Teorema({
    required this.nome,
    required this.descricao,
    required this.fonte,
  });

  void addTermo(Termo termo) {
    termos.add(termo);
  }

  void removeTermo(Termo termo) {
    termos.remove(termo);
  }

  void addTeorema(Teorema teorema) {
    teoremas.add(teorema);
  }

  void removeTeorema(Teorema teorema) {
    teoremas.remove(teorema);
  }

  void addDuvida(String duvida) {
    this.duvida.add(duvida);
  }

  void removeDuvida(String duvida) {
    this.duvida.remove(duvida);
  }

  void addComentario(String comentario) {
    this.comentario.add(comentario);
  }

  void removeComentario(String comentario) {
    this.comentario.remove(comentario);
  }
}
