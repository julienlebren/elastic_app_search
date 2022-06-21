// ignore_for_file: unused_element

part of elastic_app_search;

enum _ElasticFilterType { all, none, any }

extension _ElasticFilterTypeX on _ElasticFilterType {
  String get identifier {
    switch (this) {
      case _ElasticFilterType.all:
        return "all";
      case _ElasticFilterType.none:
        return "none";
      case _ElasticFilterType.any:
        return "any";
    }
  }
}

enum ElasticFacetType { value, range }

extension _ElasticFacetTypeX on ElasticFacetType {
  String get identifier {
    switch (this) {
      case ElasticFacetType.value:
        return "value";
      case ElasticFacetType.range:
        return "range";
    }
  }
}

enum GeoUnit {
  millimeters,
  centimeters,
  meters,
  kilometers,
  inches,
  feet,
  yard,
  miles,
}

extension _GeoUnitX on GeoUnit {
  String toJson() {
    switch (this) {
      case GeoUnit.millimeters:
        return 'mm';
      case GeoUnit.centimeters:
        return 'cm';
      case GeoUnit.meters:
        return 'm';
      case GeoUnit.kilometers:
        return 'km';
      case GeoUnit.inches:
        return 'in';
      case GeoUnit.feet:
        return 'ft';
      case GeoUnit.yard:
        return 'yd';
      case GeoUnit.miles:
        return 'mi';
    }
  }
}

extension _DateTimeX on DateTime {
  String toUTCString() {
    return DateTime.utc(
      year,
      month,
      day,
      hour,
      minute,
      second,
    ).toString().replaceAll(' ', 'T');
  }
}

@freezed
class ElasticRange with _$ElasticRange {
  @Assert(
      'from != null || to != null', 'You must provide at least `from` or `to`.')
  @Assert(
      'from == null || (from != null && (from is int || from is double || from is DateTime))',
      '`from` must be an int, a double or a DateTime')
  @Assert(
      'to == null || (to != null && (to is int || to is double || to is DateTime))',
      '`to` must be an int, a double or a DateTime')
  const factory ElasticRange({
    String? name,
    Object? from,
    Object? to,
  }) = _ElasticRange;
}
