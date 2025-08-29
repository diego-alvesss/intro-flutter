import 'package:flutter/material.dart';

class UserProfileModel extends ChangeNotifier {
  String _name = 'Diego';
  int _age = 18;
  String _email = 'diegoalvesspfc2@gmail.com';
  bool _isOnline = false;
  List<String> _hobbies = ['Esportes', 'Jogar', 'Programar'];

  String get name => _name;
  int get age => _age;
  String get email => _email;
  bool get isOnline => _isOnline;
  List<String> get hobbies => List.unmodifiable(_hobbies);

  void updateName(String newName) {
    _name = newName;
    notifyListeners();
  }

  void updateAge(int newAge) {
    _age = newAge;
    notifyListeners();
  }

  void updateEmail(String newEmail) {
    _email = newEmail;
    notifyListeners();
  }

  void toggleOnlineStatus() {
    _isOnline = !_isOnline;
    notifyListeners();
  }

  void addHobby(String hobby) {
    if (!_hobbies.contains(hobby)) {
      _hobbies.add(hobby);
      notifyListeners();
    }
  }

  void removeHobby(String hobby) {
    _hobbies.remove(hobby);
    notifyListeners();
  }
  void reset(){
    _name = 'Diego';
    _age = 18;
    _email = 'diegoalvesspfc2@gmail.com';
    _isOnline = false;
    _hobbies = ['Esportes', 'Jogar', 'Programar'];
    notifyListeners();
  }
}