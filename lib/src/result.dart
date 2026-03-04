part of '../elastic_app_search.dart';

const _highlightStart = '<em>';
const _highlightEnd = '</em>';

typedef FromElastic<T> = T Function(Map<String, dynamic> data);

Map<String, dynamic>? _asStringDynamicMap(Object? value) {
  if (value is Map<String, dynamic>) return value;
  if (value is! Map) return null;

  final mapped = <String, dynamic>{};
  for (final entry in value.entries) {
    mapped[entry.key.toString()] = entry.value;
  }
  return mapped;
}

/// An object containing information about a given result
@freezed
abstract class ElasticResultMeta with _$ElasticResultMeta {
  factory ElasticResultMeta({
    /// The relevance of the result
    double? score,
  }) = _ElasticResultMeta;

  factory ElasticResultMeta.fromJson(Map<String, dynamic> json) =>
      _$ElasticResultMetaFromJson(json);
}

/// An object presenting a result to the query
@freezed
abstract class ElasticResult with _$ElasticResult {
  const ElasticResult._();

  factory ElasticResult({
    /// A map of the raw data of the document, containing the fields
    /// requested in the [ElasticResultField] passed to the query
    ///
    /// You must handle the result of this [Map] on your side, please check
    /// the example of the package to learn more about this.
    Map<String, dynamic>? data,

    /// A map of the snippets, please check the documentation of
    /// [ElasticResultSnippet] to learn more.
    Map<String, ElasticResultSnippet>? snippets,

    /// An object containing information about a given result
    @JsonKey(name: "_meta") required ElasticResultMeta meta,

    /// An array of the [ElasticResult] related to this result
    /// if a group has been set on the query
    @JsonKey(name: "_group") List<ElasticResult>? group,

    /// The value on which these elements have been grouped
    /// if a group has been set on the query
    @JsonKey(name: "_group_key") String? groupKey,
  }) = _ElasticResult;

  factory ElasticResult.fromJson(Map<String, dynamic> json) =>
      ElasticResult._fromJsonWithData(json);

  factory ElasticResult._fromJsonWithData(Map<String, dynamic> json) {
    final unescape = HtmlUnescape();
    final data = <String, dynamic>{};
    final snippets = <String, ElasticResultSnippet>{};

    for (final entry in json.entries) {
      final key = entry.key;
      if (key.startsWith('_')) continue;

      final fieldData = _asStringDynamicMap(entry.value);
      if (fieldData == null) continue;

      final rawValue = fieldData['raw'];
      if (rawValue != null) {
        data[key] = rawValue;
      }

      final rawSnippet = fieldData['snippet'];
      if (rawSnippet != null) {
        final text = unescape
            .convert(rawSnippet.toString())
            .replaceAll('\n', '')
            .trim();

        final highlightExp = RegExp(r'<em>([^<]*)</em>');
        final highlights = highlightExp
            .allMatches(text)
            .map((match) => match.group(0))
            .whereType<String>()
            .map(
              (highlight) => highlight
                  .replaceAll(_highlightStart, '')
                  .replaceAll(_highlightEnd, ''),
            )
            .toList();

        snippets[key] = ElasticResultSnippet(
          fullText: text
              .replaceAll(_highlightStart, '')
              .replaceAll(_highlightEnd, ''),
          textParts: text
              .replaceAll(_highlightEnd, _highlightStart)
              .split(_highlightStart),
          highlights: highlights,
        );
      }
    }
    return _$ElasticResultFromJson(
      json,
    ).copyWith(data: data, snippets: snippets);
  }

  /// An easier way to get the score
  double? get score => meta.score;
}

/// An object contaning the snippet of the result
@freezed
abstract class ElasticResultSnippet with _$ElasticResultSnippet {
  factory ElasticResultSnippet({
    /// The full snippet, matching the size provided in the [ElasticResultField]
    /// passed to the query.
    required String fullText,

    /// The snippet splitted in parts around the matched query.
    /// For example, if the document contains the string "The weather is beautiful in Florida today"
    /// and your query is "beautiful", this array will contain:
    /// "The weather is ", "beautiful", " in Florida today".
    /// This feature intends to build [RichText] on your app to highlight the query
    /// in the result.
    required List<String> textParts,

    /// The words matching the query. They can be many because even if you are querying
    /// something like "car", the result can also contain "cars". So we need to
    /// return all the words Elastic decided to match in order to highlight all the matching words.
    required List<String> highlights,
  }) = _ElasticResultSnippet;

  factory ElasticResultSnippet.fromJson(Map<String, dynamic> json) =>
      _$ElasticResultSnippetFromJson(json);
}

/// An object presenting a result to the suggestion query
@freezed
abstract class ElasticSuggestionResult with _$ElasticSuggestionResult {
  const ElasticSuggestionResult._();

  factory ElasticSuggestionResult({
    /// A list of documents
    List<ElasticSuggestionDocument>? documents,
  }) = _ElasticSuggestionResult;

  factory ElasticSuggestionResult.fromJson(Map<String, dynamic> json) =>
      _$ElasticSuggestionResultFromJson(json);
}

/// An object presenting a suggestion to the suggestion query
@freezed
abstract class ElasticSuggestionDocument with _$ElasticSuggestionDocument {
  const ElasticSuggestionDocument._();

  factory ElasticSuggestionDocument({
    /// The suggestion contained in the document of the query suggestion
    required String suggestion,
  }) = _ElasticSuggestionDocument;

  factory ElasticSuggestionDocument.fromJson(Map<String, dynamic> json) =>
      _$ElasticSuggestionDocumentFromJson(json);
}
