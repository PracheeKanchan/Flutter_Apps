import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class ArticleProvider extends ChangeNotifier {
  List _articles = [];
  List _filteredArticles = [];
  Set<int> _favorites = {};
  bool _isLoading = false;
  String _error = '';

  List get articles => _filteredArticles;
  bool get isLoading => _isLoading;
  String get error => _error;
  Set<int> get favorites => _favorites;

  Future<void> fetchArticles() async {
    _isLoading = true;
    _error = '';
    notifyListeners();

    try {
      final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
      if (response.statusCode == 200) {
        _articles = json.decode(response.body);
        _filteredArticles = _articles;
      } else {
        _error = 'Failed to load articles';
      }
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  void searchArticles(String query) {
    _filteredArticles = _articles.where((article) {
      final title = article['title'].toString().toLowerCase();
      final body = article['body'].toString().toLowerCase();
      return title.contains(query.toLowerCase()) || body.contains(query.toLowerCase());
    }).toList();
    notifyListeners();
  }

  Future<void> loadFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final favList = prefs.getStringList('favorites') ?? [];
    _favorites = favList.map((id) => int.parse(id)).toSet();
    notifyListeners();
  }

  Future<void> toggleFavorite(int id) async {
    final prefs = await SharedPreferences.getInstance();
    if (_favorites.contains(id)) {
      _favorites.remove(id);
    } else {
      _favorites.add(id);
    }
    await prefs.setStringList('favorites', _favorites.map((e) => e.toString()).toList());
    notifyListeners();
  }
}
