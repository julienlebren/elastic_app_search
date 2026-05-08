part of '../elastic_app_search.dart';

/// Crawler configuration payload returned by `GET /crawler`.
class ElasticCrawlerConfiguration {
  const ElasticCrawlerConfiguration({required this.domains});

  /// Domain objects configured for the engine.
  final List<Map<String, dynamic>> domains;

  factory ElasticCrawlerConfiguration.fromJson(Map<String, dynamic> json) {
    if (json['domains'] is! List) {
      throw FormatException('Crawler configuration "domains" must be a list.');
    }

    final rawDomains = json['domains'] as List<dynamic>;
    final domains = <Map<String, dynamic>>[];
    for (final rawDomain in rawDomains) {
      final domain = _asStringDynamicMap(rawDomain);
      if (domain == null) {
        throw FormatException('Crawler domain entries must be JSON objects.');
      }

      domains.add(
        Map.unmodifiable(
          domain.map((key, value) => MapEntry(key, _immutableJsonValue(value))),
        ),
      );
    }

    return ElasticCrawlerConfiguration(domains: List.unmodifiable(domains));
  }

  Map<String, dynamic> toJson() => {
    'domains': domains.map((domain) => _mutableJsonValue(domain)).toList(),
  };
}

/// Authentication types accepted by crawler domain APIs.
enum ElasticCrawlerDomainAuthType { basic, raw }

extension _ElasticCrawlerDomainAuthTypeX on ElasticCrawlerDomainAuthType {
  String get apiValue {
    switch (this) {
      case ElasticCrawlerDomainAuthType.basic:
        return 'basic';
      case ElasticCrawlerDomainAuthType.raw:
        return 'raw';
    }
  }
}

/// Domain authentication payload used for crawler domain creation/update.
class ElasticCrawlerDomainAuthRequest {
  const ElasticCrawlerDomainAuthRequest.basic({
    required this.username,
    required this.password,
  }) : type = ElasticCrawlerDomainAuthType.basic,
       value = null;

  const ElasticCrawlerDomainAuthRequest.raw({required this.value})
    : type = ElasticCrawlerDomainAuthType.raw,
      username = null,
      password = null;

  /// Authentication type (`basic` or `raw`).
  final ElasticCrawlerDomainAuthType type;

  /// Username for `basic` authentication.
  final String? username;

  /// Password for `basic` authentication.
  final String? password;

  /// Raw `Authorization` header value for `raw` authentication.
  final String? value;

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      'type': type.apiValue,
      'username': username,
      'password': password,
      'value': value,
    };
    json.removeWhere((key, entryValue) => entryValue == null);
    return json;
  }
}

/// Request payload for crawler domain creation.
class ElasticCrawlerDomainCreateRequest {
  const ElasticCrawlerDomainCreateRequest({required this.name, this.auth});

  /// Domain URL.
  final String name;

  /// Optional domain authentication settings.
  final ElasticCrawlerDomainAuthRequest? auth;

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'name': name, 'auth': auth?.toJson()};
    json.removeWhere((key, value) => value == null);
    return json;
  }
}

/// Request payload for crawler domain update.
class ElasticCrawlerDomainUpdateRequest {
  const ElasticCrawlerDomainUpdateRequest({this.name, this.auth});

  /// Domain URL.
  final String? name;

  /// Optional domain authentication settings.
  final ElasticCrawlerDomainAuthRequest? auth;

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'name': name, 'auth': auth?.toJson()};
    json.removeWhere((key, value) => value == null);
    return json;
  }
}

/// Request payload for crawler entry point creation/update.
class ElasticCrawlerEntryPointRequest {
  const ElasticCrawlerEntryPointRequest({required this.value});

  /// Entry point path or URL.
  final String value;

  Map<String, dynamic> toJson() => {'value': value};
}

/// Crawl rule policies accepted by crawler APIs.
enum ElasticCrawlerCrawlRulePolicy { allow, deny }

extension _ElasticCrawlerCrawlRulePolicyX on ElasticCrawlerCrawlRulePolicy {
  String get apiValue {
    switch (this) {
      case ElasticCrawlerCrawlRulePolicy.allow:
        return 'allow';
      case ElasticCrawlerCrawlRulePolicy.deny:
        return 'deny';
    }
  }
}

/// Crawl rule matcher types accepted by crawler APIs.
enum ElasticCrawlerCrawlRuleType { begins, ends, contains, regex }

extension _ElasticCrawlerCrawlRuleTypeX on ElasticCrawlerCrawlRuleType {
  String get apiValue {
    switch (this) {
      case ElasticCrawlerCrawlRuleType.begins:
        return 'begins';
      case ElasticCrawlerCrawlRuleType.ends:
        return 'ends';
      case ElasticCrawlerCrawlRuleType.contains:
        return 'contains';
      case ElasticCrawlerCrawlRuleType.regex:
        return 'regex';
    }
  }
}

/// Request payload for crawler crawl rule creation/update.
class ElasticCrawlerCrawlRuleRequest {
  const ElasticCrawlerCrawlRuleRequest({
    required this.policy,
    required this.rule,
    required this.pattern,
    this.order,
  });

  /// Rule policy (`allow` or `deny`).
  final ElasticCrawlerCrawlRulePolicy policy;

  /// Rule matcher type.
  final ElasticCrawlerCrawlRuleType rule;

  /// Rule pattern.
  final String pattern;

  /// Optional explicit rule ordering.
  final int? order;

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      'policy': policy.apiValue,
      'rule': rule.apiValue,
      'pattern': pattern,
      'order': order,
    };
    json.removeWhere((key, value) => value == null);
    return json;
  }
}

/// Request payload for crawler sitemap creation/update.
class ElasticCrawlerSitemapRequest {
  const ElasticCrawlerSitemapRequest({required this.url});

  /// Sitemap URL.
  final String url;

  Map<String, dynamic> toJson() => {'url': url};
}

/// A crawler entry point attached to a domain.
class ElasticCrawlerEntryPoint {
  const ElasticCrawlerEntryPoint({
    required this.id,
    required this.value,
    this.createdAt,
  });

  /// Entry point identifier.
  final String id;

  /// Entry point path or URL.
  final String value;

  /// Entry point creation timestamp.
  final String? createdAt;

  factory ElasticCrawlerEntryPoint.fromJson(Map<String, dynamic> json) {
    return ElasticCrawlerEntryPoint(
      id: _toStringOrEmpty(json['id']),
      value: _toStringOrEmpty(json['value']),
      createdAt: json['created_at']?.toString(),
    );
  }

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      'id': id,
      'value': value,
      'created_at': createdAt,
    };
    json.removeWhere((key, value) => value == null);
    return json;
  }
}

/// A crawler crawl rule attached to a domain.
class ElasticCrawlerCrawlRule {
  const ElasticCrawlerCrawlRule({
    required this.id,
    this.order,
    this.policy,
    this.rule,
    this.pattern,
    this.createdAt,
  });

  /// Crawl rule identifier.
  final String id;

  /// Rule execution order.
  final int? order;

  /// Rule policy (`allow` or `deny`).
  final String? policy;

  /// Rule matcher type (`begins`, `ends`, `contains`, `regex`).
  final String? rule;

  /// Path pattern.
  final String? pattern;

  /// Crawl rule creation timestamp.
  final String? createdAt;

  factory ElasticCrawlerCrawlRule.fromJson(Map<String, dynamic> json) {
    return ElasticCrawlerCrawlRule(
      id: _toStringOrEmpty(json['id']),
      order: _toNullableInt(json['order']),
      policy: json['policy']?.toString(),
      rule: json['rule']?.toString(),
      pattern: json['pattern']?.toString(),
      createdAt: json['created_at']?.toString(),
    );
  }

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      'id': id,
      'order': order,
      'policy': policy,
      'rule': rule,
      'pattern': pattern,
      'created_at': createdAt,
    };
    json.removeWhere((key, value) => value == null);
    return json;
  }
}

/// A crawler sitemap attached to a domain.
class ElasticCrawlerSitemap {
  const ElasticCrawlerSitemap({
    required this.id,
    required this.url,
    this.createdAt,
  });

  /// Sitemap identifier.
  final String id;

  /// Sitemap URL.
  final String url;

  /// Sitemap creation timestamp.
  final String? createdAt;

  factory ElasticCrawlerSitemap.fromJson(Map<String, dynamic> json) {
    return ElasticCrawlerSitemap(
      id: _toStringOrEmpty(json['id']),
      url: _toStringOrEmpty(json['url']),
      createdAt: json['created_at']?.toString(),
    );
  }

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      'id': id,
      'url': url,
      'created_at': createdAt,
    };
    json.removeWhere((key, value) => value == null);
    return json;
  }
}

/// A crawler domain object.
class ElasticCrawlerDomain {
  const ElasticCrawlerDomain({
    required this.id,
    required this.name,
    this.documentCount,
    this.deduplicationEnabled,
    this.deduplicationFields,
    this.availableDeduplicationFields,
    this.auth,
    this.createdAt,
    this.lastVisitedAt,
    required this.entryPoints,
    required this.crawlRules,
    this.defaultCrawlRule,
    required this.sitemaps,
  });

  /// Domain identifier.
  final String id;

  /// Domain URL.
  final String name;

  /// Number of indexed documents for this domain.
  final int? documentCount;

  /// Whether deduplication is enabled for this domain.
  final bool? deduplicationEnabled;

  /// Current deduplication fields.
  final List<String>? deduplicationFields;

  /// Deduplication fields supported by this domain.
  final List<String>? availableDeduplicationFields;

  /// Optional authentication settings returned by App Search.
  final Map<String, dynamic>? auth;

  /// Domain creation timestamp.
  final String? createdAt;

  /// Last crawl visit timestamp.
  final String? lastVisitedAt;

  /// Domain entry points.
  final List<ElasticCrawlerEntryPoint> entryPoints;

  /// Domain crawl rules.
  final List<ElasticCrawlerCrawlRule> crawlRules;

  /// Built-in default crawl rule for this domain.
  final ElasticCrawlerCrawlRule? defaultCrawlRule;

  /// Domain sitemaps.
  final List<ElasticCrawlerSitemap> sitemaps;

  factory ElasticCrawlerDomain.fromJson(Map<String, dynamic> json) {
    final entryPointItems = _asJsonObjectListStrict(
      json['entry_points'] ?? const <dynamic>[],
      context: 'entry_points',
    );
    final crawlRuleItems = _asJsonObjectListStrict(
      json['crawl_rules'] ?? const <dynamic>[],
      context: 'crawl_rules',
    );
    final sitemapItems = _asJsonObjectListStrict(
      json['sitemaps'] ?? const <dynamic>[],
      context: 'sitemaps',
    );
    final defaultRuleJson = _asStringDynamicMap(json['default_crawl_rule']);
    final authJson = _asStringDynamicMap(json['auth']);
    final deduplicationFields = _toNullableStringList(
      json['deduplication_fields'],
    );
    final availableDeduplicationFields = _toNullableStringList(
      json['available_deduplication_fields'],
    );

    return ElasticCrawlerDomain(
      id: _toStringOrEmpty(json['id']),
      name: _toStringOrEmpty(json['name']),
      documentCount: _toNullableInt(json['document_count']),
      deduplicationEnabled: _toNullableBool(json['deduplication_enabled']),
      deduplicationFields: deduplicationFields == null
          ? null
          : List.unmodifiable(deduplicationFields),
      availableDeduplicationFields: availableDeduplicationFields == null
          ? null
          : List.unmodifiable(availableDeduplicationFields),
      auth: authJson == null
          ? null
          : Map.unmodifiable(
              authJson.map(
                (key, value) => MapEntry(key, _immutableJsonValue(value)),
              ),
            ),
      createdAt: json['created_at']?.toString(),
      lastVisitedAt: json['last_visited_at']?.toString(),
      entryPoints: List.unmodifiable(
        entryPointItems.map(ElasticCrawlerEntryPoint.fromJson).toList(),
      ),
      crawlRules: List.unmodifiable(
        crawlRuleItems.map(ElasticCrawlerCrawlRule.fromJson).toList(),
      ),
      defaultCrawlRule: defaultRuleJson == null
          ? null
          : ElasticCrawlerCrawlRule.fromJson(defaultRuleJson),
      sitemaps: List.unmodifiable(
        sitemapItems.map(ElasticCrawlerSitemap.fromJson).toList(),
      ),
    );
  }

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      'id': id,
      'name': name,
      'document_count': documentCount,
      'deduplication_enabled': deduplicationEnabled,
      'deduplication_fields': deduplicationFields,
      'available_deduplication_fields': availableDeduplicationFields,
      'auth': auth == null ? null : _mutableJsonValue(auth),
      'created_at': createdAt,
      'last_visited_at': lastVisitedAt,
      'entry_points': entryPoints.map((entry) => entry.toJson()).toList(),
      'crawl_rules': crawlRules.map((rule) => rule.toJson()).toList(),
      'default_crawl_rule': defaultCrawlRule?.toJson(),
      'sitemaps': sitemaps.map((sitemap) => sitemap.toJson()).toList(),
    };
    json.removeWhere((key, value) => value == null);
    return json;
  }
}

/// Paginated crawler domains response.
class ElasticCrawlerDomainsResponse {
  const ElasticCrawlerDomainsResponse({
    required this.meta,
    required this.results,
  });

  /// Pagination metadata.
  final ElasticDocumentsListMeta meta;

  /// Domains in the current page.
  final List<ElasticCrawlerDomain> results;

  factory ElasticCrawlerDomainsResponse.fromJson(Map<String, dynamic> json) {
    final metaJson = _asJsonObjectStrict(json['meta'], context: 'meta');
    final resultItems = _asJsonObjectListStrict(
      json['results'],
      context: 'results',
    );
    return ElasticCrawlerDomainsResponse(
      meta: ElasticDocumentsListMeta.fromJson(metaJson),
      results: List.unmodifiable(
        resultItems.map(ElasticCrawlerDomain.fromJson).toList(),
      ),
    );
  }

  Map<String, dynamic> toJson() => {
    'meta': meta.toJson(),
    'results': results.map((domain) => domain.toJson()).toList(),
  };
}

/// Represents a crawler crawl request.
class ElasticCrawlerCrawlRequest {
  const ElasticCrawlerCrawlRequest({
    required this.id,
    this.type,
    this.status,
    this.createdAt,
    this.begunAt,
    this.completedAt,
  });

  /// Crawl request identifier.
  final String id;

  /// Crawl request type (`full` / `partial` when present).
  final String? type;

  /// Crawl request status.
  final String? status;

  /// Request creation timestamp.
  final String? createdAt;

  /// Crawl start timestamp.
  final String? begunAt;

  /// Crawl completion timestamp.
  final String? completedAt;

  factory ElasticCrawlerCrawlRequest.fromJson(Map<String, dynamic> json) {
    return ElasticCrawlerCrawlRequest(
      id: _toStringOrEmpty(json['id']),
      type: json['type']?.toString(),
      status: json['status']?.toString(),
      createdAt: json['created_at']?.toString(),
      begunAt: json['begun_at']?.toString(),
      completedAt: json['completed_at']?.toString(),
    );
  }

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      'id': id,
      'type': type,
      'status': status,
      'created_at': createdAt,
      'begun_at': begunAt,
      'completed_at': completedAt,
    };
    json.removeWhere((key, value) => value == null);
    return json;
  }
}

/// Paginated crawl requests response.
class ElasticCrawlerCrawlRequestsResponse {
  const ElasticCrawlerCrawlRequestsResponse({
    required this.meta,
    required this.results,
  });

  /// Pagination metadata.
  final ElasticDocumentsListMeta meta;

  /// Crawl requests in the current page.
  final List<ElasticCrawlerCrawlRequest> results;

  factory ElasticCrawlerCrawlRequestsResponse.fromJson(
    Map<String, dynamic> json,
  ) {
    final metaJson = _asJsonObjectStrict(json['meta'], context: 'meta');
    final resultItems = _asJsonObjectListStrict(
      json['results'],
      context: 'results',
    );

    return ElasticCrawlerCrawlRequestsResponse(
      meta: ElasticDocumentsListMeta.fromJson(metaJson),
      results: List.unmodifiable(
        resultItems.map(ElasticCrawlerCrawlRequest.fromJson).toList(),
      ),
    );
  }

  Map<String, dynamic> toJson() => {
    'meta': meta.toJson(),
    'results': results.map((item) => item.toJson()).toList(),
  };
}

/// Unit values accepted by crawler schedule API.
enum ElasticCrawlerCrawlScheduleUnit { hour, day, week, month }

extension _ElasticCrawlerCrawlScheduleUnitX on ElasticCrawlerCrawlScheduleUnit {
  String get apiValue {
    switch (this) {
      case ElasticCrawlerCrawlScheduleUnit.hour:
        return 'hour';
      case ElasticCrawlerCrawlScheduleUnit.day:
        return 'day';
      case ElasticCrawlerCrawlScheduleUnit.week:
        return 'week';
      case ElasticCrawlerCrawlScheduleUnit.month:
        return 'month';
    }
  }
}

ElasticCrawlerCrawlScheduleUnit _crawlerCrawlScheduleUnitFromApiValue(
  String value,
) {
  switch (value) {
    case 'hour':
      return ElasticCrawlerCrawlScheduleUnit.hour;
    case 'day':
      return ElasticCrawlerCrawlScheduleUnit.day;
    case 'week':
      return ElasticCrawlerCrawlScheduleUnit.week;
    case 'month':
      return ElasticCrawlerCrawlScheduleUnit.month;
  }

  throw FormatException(
    'Invalid crawler schedule unit "$value". Expected one of: hour, day, week, month.',
  );
}

/// Crawler schedule payload.
class ElasticCrawlerCrawlSchedule {
  const ElasticCrawlerCrawlSchedule({
    required this.frequency,
    required this.unit,
  });

  /// Schedule frequency.
  final int frequency;

  /// Schedule unit.
  final ElasticCrawlerCrawlScheduleUnit unit;

  factory ElasticCrawlerCrawlSchedule.fromJson(Map<String, dynamic> json) {
    final frequency = _toNullableInt(json['frequency']);
    final unitValue = json['unit']?.toString();

    if (frequency == null || unitValue == null || unitValue.isEmpty) {
      throw FormatException(
        'Crawler schedule response must include "frequency" and "unit".',
      );
    }

    return ElasticCrawlerCrawlSchedule(
      frequency: frequency,
      unit: _crawlerCrawlScheduleUnitFromApiValue(unitValue),
    );
  }

  Map<String, dynamic> toJson() => {
    'frequency': frequency,
    'unit': unit.apiValue,
  };
}

/// Request payload for partial crawl creation.
class ElasticCrawlerPartialCrawlRequest {
  const ElasticCrawlerPartialCrawlRequest({
    this.maxCrawlDepth,
    this.domainAllowlist,
    this.seedUrls,
    this.sitemapUrls,
    this.sitemapDiscoveryDisabled,
  });

  /// Maximum depth to follow links while discovering content.
  final int? maxCrawlDepth;

  /// Domain list for restricting link discovery.
  final List<String>? domainAllowlist;

  /// Explicit initial URLs.
  final List<String>? seedUrls;

  /// Explicit sitemap URLs.
  final List<String>? sitemapUrls;

  /// Whether sitemap discovery is disabled.
  final bool? sitemapDiscoveryDisabled;

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      'max_crawl_depth': maxCrawlDepth,
      'domain_allowlist': domainAllowlist,
      'seed_urls': seedUrls,
      'sitemap_urls': sitemapUrls,
      'sitemap_discovery_disabled': sitemapDiscoveryDisabled,
    };
    json.removeWhere((key, value) => value == null);
    return json;
  }
}

/// Request payload for process crawl creation.
class ElasticCrawlerProcessCrawlRequest {
  const ElasticCrawlerProcessCrawlRequest({this.dryRun, this.domains});

  /// If true, does not delete documents and only reports denied URLs.
  final bool? dryRun;

  /// Optional subset of domain names.
  final List<String>? domains;

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'dry_run': dryRun, 'domains': domains};
    json.removeWhere((key, value) => value == null);
    return json;
  }
}

/// Process crawl object.
class ElasticCrawlerProcessCrawl {
  const ElasticCrawlerProcessCrawl({
    required this.id,
    this.dryRun,
    this.totalUrlCount,
    this.deniedUrlCount,
    this.domains,
    this.processAllDomains,
    this.createdAt,
    this.begunAt,
    this.completedAt,
  });

  /// Process crawl identifier.
  final String id;

  /// Whether process crawl ran in dry-run mode.
  final bool? dryRun;

  /// Total URL count analyzed by the process crawl.
  final int? totalUrlCount;

  /// URL count denied by current crawler configuration.
  final int? deniedUrlCount;

  /// Domain names included in this process crawl.
  final List<String>? domains;

  /// Whether all domains are processed.
  final bool? processAllDomains;

  /// Process crawl creation timestamp.
  final String? createdAt;

  /// Process crawl start timestamp.
  final String? begunAt;

  /// Process crawl completion timestamp.
  final String? completedAt;

  factory ElasticCrawlerProcessCrawl.fromJson(Map<String, dynamic> json) {
    final domains = _toNullableStringList(json['domains']);
    return ElasticCrawlerProcessCrawl(
      id: _toStringOrEmpty(json['id']),
      dryRun: _toNullableBool(json['dry_run']),
      totalUrlCount: _toNullableInt(json['total_url_count']),
      deniedUrlCount: _toNullableInt(json['denied_url_count']),
      domains: domains == null ? null : List.unmodifiable(domains),
      processAllDomains: _toNullableBool(json['process_all_domains']),
      createdAt: json['created_at']?.toString(),
      begunAt: json['begun_at']?.toString(),
      completedAt: json['completed_at']?.toString(),
    );
  }

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      'id': id,
      'dry_run': dryRun,
      'total_url_count': totalUrlCount,
      'denied_url_count': deniedUrlCount,
      'domains': domains,
      'process_all_domains': processAllDomains,
      'created_at': createdAt,
      'begun_at': begunAt,
      'completed_at': completedAt,
    };
    json.removeWhere((key, value) => value == null);
    return json;
  }
}

/// Paginated process crawls response.
class ElasticCrawlerProcessCrawlsResponse {
  const ElasticCrawlerProcessCrawlsResponse({
    required this.meta,
    required this.results,
  });

  /// Pagination metadata.
  final ElasticDocumentsListMeta meta;

  /// Process crawls in the current page.
  final List<ElasticCrawlerProcessCrawl> results;

  factory ElasticCrawlerProcessCrawlsResponse.fromJson(
    Map<String, dynamic> json,
  ) {
    final metaJson = _asJsonObjectStrict(json['meta'], context: 'meta');
    final resultItems = _asJsonObjectListStrict(
      json['results'],
      context: 'results',
    );

    return ElasticCrawlerProcessCrawlsResponse(
      meta: ElasticDocumentsListMeta.fromJson(metaJson),
      results: List.unmodifiable(
        resultItems.map(ElasticCrawlerProcessCrawl.fromJson).toList(),
      ),
    );
  }

  Map<String, dynamic> toJson() => {
    'meta': meta.toJson(),
    'results': results.map((item) => item.toJson()).toList(),
  };
}

/// Sample denied URLs returned for a process crawl.
class ElasticCrawlerProcessCrawlDeniedUrls {
  const ElasticCrawlerProcessCrawlDeniedUrls({
    this.totalUrlCount,
    this.deniedUrlCount,
    this.sampleSize,
    required this.deniedUrlsSample,
  });

  /// Total URLs analyzed by process crawl.
  final int? totalUrlCount;

  /// Number of denied URLs.
  final int? deniedUrlCount;

  /// Sample size in current response.
  final int? sampleSize;

  /// Sample of denied URLs.
  final List<String> deniedUrlsSample;

  factory ElasticCrawlerProcessCrawlDeniedUrls.fromJson(
    Map<String, dynamic> json,
  ) {
    return ElasticCrawlerProcessCrawlDeniedUrls(
      totalUrlCount: _toNullableInt(json['total_url_count']),
      deniedUrlCount: _toNullableInt(json['denied_url_count']),
      sampleSize: _toNullableInt(json['sample_size']),
      deniedUrlsSample: List.unmodifiable(
        _toStringList(json['denied_urls_sample']),
      ),
    );
  }

  Map<String, dynamic> toJson() => {
    'total_url_count': totalUrlCount,
    'denied_url_count': deniedUrlCount,
    'sample_size': sampleSize,
    'denied_urls_sample': deniedUrlsSample,
  };
}

/// Crawler user-agent response payload.
class ElasticCrawlerUserAgent {
  const ElasticCrawlerUserAgent({required this.userAgent});

  /// User-Agent header used by the crawler.
  final String userAgent;

  factory ElasticCrawlerUserAgent.fromJson(Map<String, dynamic> json) {
    return ElasticCrawlerUserAgent(
      userAgent: _toStringOrEmpty(json['user_agent']),
    );
  }

  Map<String, dynamic> toJson() => {'user_agent': userAgent};
}
