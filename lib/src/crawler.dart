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
