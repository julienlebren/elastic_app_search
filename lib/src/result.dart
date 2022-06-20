part of elastic_app_search;

const _highlightStart = '<em>';
const _highlightEnd = '</em>';

typedef FromElastic<T> = T Function(
  Map<String, dynamic> result,
);

/// An object containing information about a given result
@freezed
class ElasticResultMeta with _$ElasticResultMeta {
  factory ElasticResultMeta({
    /// The relevance of the result
    double? score,
  }) = _ElasticResultMeta;

  factory ElasticResultMeta.fromJson(Map<String, dynamic> json) =>
      _$ElasticResultMetaFromJson(json);
}

/// An object presenting a result to the query
@freezed
class ElasticResult with _$ElasticResult {
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
    var unescape = HtmlUnescape();
    var _data = <String, dynamic>{};
    var _snippets = <String, ElasticResultSnippet>{};
    for (var key in json.keys) {
      if (!key.startsWith('_')) {
        if (json[key]["raw"] != null) {
          _data[key] = json[key]["raw"];
        }
        if (json[key]["snippet"] != null) {
          final text = unescape
              .convert(json[key]["snippet"])
              .replaceAll("\n", "")
              .trim();

          final highlightExp = RegExp(r'<em>([^<]*)</em>');

          List<String?> highlights = highlightExp
              .allMatches(text)
              .map((match) => match.group(0))
              .where((element) => element != null)
              .toList();

          _snippets[key] = ElasticResultSnippet(
            fullText: text
                .replaceAll(_highlightStart, "")
                .replaceAll(_highlightEnd, ""),
            textParts: text
                .replaceAll(_highlightEnd, _highlightStart)
                .split(_highlightStart),
            highlights: highlights
                .map((e) => e!
                    .replaceAll(_highlightStart, "")
                    .replaceAll(_highlightEnd, ""))
                .toList(),
          );
        }
      }
    }
    return _$ElasticResultFromJson(json).copyWith(
      data: _data,
      snippets: _snippets,
    );
  }

  /// An easier way to get the score
  double? get score => meta.score;
}

/// An object contaning the snippet of the result
@freezed
class ElasticResultSnippet with _$ElasticResultSnippet {
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
