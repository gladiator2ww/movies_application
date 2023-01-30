import 'dart:async';

class SavedBlocMediator {
  final _itemAddSaved = StreamController<void>.broadcast();

  Stream<void> get itemAddedStream => _itemAddSaved.stream;

  void addItem() {
    _itemAddSaved.add(null);
  }
}
