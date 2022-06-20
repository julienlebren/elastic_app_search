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
