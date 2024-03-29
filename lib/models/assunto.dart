class Assunto {
  final String id;
  final String nome;
  final String conteudo;
  final String fonte;
  final List<String> duvida = [];
  final List<String> comentario = [];

  Assunto({
    this.id = '',
    required this.nome,
    required this.conteudo,
    required this.fonte,
  });

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
