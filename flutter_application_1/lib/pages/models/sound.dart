import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/pages/models/sound_class.dart';

class Sound with ChangeNotifier {
  List<SoundClass> _items = [
    SoundClass("Painting Forest", 59899, "20 Min"),
    SoundClass("Mountaineers", 45697, "15 Min"),
    SoundClass("Lovely Deserts", 9428, "39 Min"),
  ];

  get items => _items;

  get tamanho => _items.length;

  void removeItem(int index) {
    _items.removeAt(index);
    notifyListeners();
  }

  SoundClass getItem(index) {
    return _items.elementAt(index);
  }

  String? getNome(int index) {
    return _items.elementAt(index).nome;
  }

  int? getNOuvintes(int index) {
    return _items.elementAt(index).nOuvintes;
  }

  String? getDuracao(int index) {
    return _items.elementAt(index).duracao;
  }
}
