class TipoDeProva {
  final String nome;
  final List<String> exemplos = [];
  final String fonte;
  final List<String> duvida = [];
  final List<String> comentario = [];

  TipoDeProva({
    required this.nome,
    required this.fonte,
  });

  void addTipoDeProva(String exemplo) {
    exemplos.add(exemplo);
  }

  void removeTipoDeProva(String exemplo) {
    exemplos.remove(exemplo);
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
