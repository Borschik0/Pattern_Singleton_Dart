class DataProgresSingleton {
  static DataProgresSingleton? _instance;

  String user = 'Mike2000';
  Map<String, List<int>> progress = {
    'level 1': [1, 2, 3, 4, 5],
    'level 2': [1, 2, 3],
    'level 3': [1, 2, 3, 4, 5, 6, 7],
    'level 4': [1, 2]
  };
  DataProgresSingleton._();

  static DataProgresSingleton getInstance() {
    return _instance ??= DataProgresSingleton._();
  }

  @override
  String toString() {
    var infoStr = 'User: $user \n';
    for (var element in progress.entries) {
      infoStr += '${element.key} - ${element.value}\n';
    }
    return infoStr;
  }
}

void main(List<String> arguments) {
  print('---' * 8 + 'Прогресс Игрока' + '---' * 8);
  var character = DataProgresSingleton.getInstance();
  print(character);

  var getCharacter = DataProgresSingleton.getInstance();
  print('---' * 4 + 'Сравнение получаемых данных с исходными' + '---' * 4);
  print(identical(character, getCharacter));
  print('--' * 11 + 'Полученный прогресс' + '--' * 11);
  print(getCharacter);
}
