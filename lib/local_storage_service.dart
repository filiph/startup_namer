import 'dart:html';

import 'package:angular2/core.dart';
import 'package:english_words/english_words.dart';

@Injectable()
class LocalStorageService {
  static const _localStorageKey = 'startup_namer_saved_names';
  static const _wordSeparator = "//";
  static const _pairSeparator = ":::";

  Iterable<WordPair> load() {
    if (!window.localStorage.containsKey(_localStorageKey)) {
      return [];
    }
    String encoded = window.localStorage[_localStorageKey];

    return encoded
        .split(_pairSeparator)
        .map((s) => s.split(_wordSeparator))
        .map((list) => new WordPair(list.first, list.last));
  }

  void save(Set<WordPair> words) {
    var encoded = words
        .map((pair) => "${pair.first}$_wordSeparator${pair.second}")
        .join(_pairSeparator);
    window.localStorage[_localStorageKey] = encoded;
  }
}
