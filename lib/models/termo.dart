class Termo {
  final String nome;
  final String definicao;
  final String fonte;
  final List<Termo> termos = [];
  final List<String> duvida = [];
  final List<String> comentario = [];

  Termo({
    required this.nome,
    required this.definicao,
    required this.fonte,
  });

  void addTermo(Termo termo) {
    termos.add(termo);
  }

  void removeTermo(Termo termo) {
    termos.remove(termo);
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
