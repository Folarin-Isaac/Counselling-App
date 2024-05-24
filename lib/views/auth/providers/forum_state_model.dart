import 'package:flutter/material.dart';

enum ForumType { counsellor, student }

class ForumStateModel extends ChangeNotifier {
  ForumType _selectedForum = ForumType.student;

  ForumType get selectedForum => _selectedForum;

  void selectForum(ForumType forumType) {
    _selectedForum = forumType;
    notifyListeners();
  }
}
