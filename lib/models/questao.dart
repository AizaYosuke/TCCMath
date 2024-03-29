import 'package:tccmath/models/assunto.dart';
import 'package:tccmath/models/teorema.dart';
import 'package:tccmath/models/termo.dart';
import 'package:tccmath/models/tipo_de_prova.dart';

class Questao {
  final String nome;
  final String resposta;
  final String fonte;
  final List<Termo> termos = [];
  final List<Teorema> teoremas = [];
  final List<Assunto> assuntos = [];
  final List<TipoDeProva> tiposDeProva = [];
  final List<String> duvida = [];
  final List<String> comentario = [];

  Questao({
    required this.nome,
    required this.resposta,
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

  void addAssunto(Assunto assunto) {
    assuntos.add(assunto);
  }

  void removeAssunto(Assunto assunto) {
    assuntos.remove(assunto);
  }

  void addTipoDeProva(TipoDeProva tipoDeProva) {
    tiposDeProva.add(tipoDeProva);
  }

  void removeTipoDeProva(TipoDeProva tipoDeProva) {
    tiposDeProva.remove(tipoDeProva);
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
