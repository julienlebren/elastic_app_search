// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:elastic_app_search/elastic_app_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

const elasticOfficePoint = LatLong(37.7749, -122.4194);

void main() {
  runApp(const App());
}

class Park {
  Park({
    required this.title,
    this.description,
    this.worldHeritageSite,
    this.imageUrl,
  });

  String title;
  String? description;
  bool? worldHeritageSite;
  String? imageUrl;
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  createState() => _AppState();
}

class _AppState extends State<App> {
  bool isLoading = false;
  bool showFilters = false;

  String searchText = "";

  ElasticFacet? statesFacet;
  ElasticFacet? datesFacet;
  ElasticFacet? sizesFacet;
  ElasticFacet? worldHeritageFacet;
  ElasticFacet? distanceFacet;

  List<Park> results = [];

  List<String> enabledStates = [];
  bool worldHeritage = false;
  List<String> enabledDates = [];
  String enabledSize = "Any";
  double enabledDistance = 1700;

  bool showAllStates = false;

  final datesRanges = [
    ElasticRange(
      from: DateTime.utc(DateTime.now().year - 50),
      name: "Within the last 50 years",
    ),
    ElasticRange(
      from: DateTime.utc(DateTime.now().year - 100),
      to: DateTime.utc(DateTime.now().year - 50),
      name: "50 - 100 years ago",
    ),
    ElasticRange(
      to: DateTime.utc(DateTime.now().year - 100),
      name: "More than 100 years ago",
    ),
  ];

  final sizesRanges = [
    const ElasticRange(from: -1, name: "Any"),
    const ElasticRange(from: 0, to: 1000, name: "Small"),
    const ElasticRange(from: 1001, to: 100000, name: "Medium"),
    const ElasticRange(from: 100001, name: "Large"),
  ];

  final distanceRanges = [
    const ElasticRange(from: 0, to: 100),
    const ElasticRange(from: 0, to: 500),
    const ElasticRange(from: 0, to: 900),
    const ElasticRange(from: 0, to: 1300),
    const ElasticRange(from: 0, to: 1700),
  ];

  final textEditingController = TextEditingController();
  final focusNode = FocusNode();
  Timer? timer;

  @override
  void initState() {
    super.initState();
    _search();

    textEditingController.addListener(() {
      timer?.cancel();
      timer = Timer(
        const Duration(milliseconds: 400),
        () {
          final value = textEditingController.text;
          if ((value.isEmpty || value.length >= 3) && value != searchText) {
            setState(() {
              searchText = value;
            });
            _search();
          }
        },
      );
    });
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  void _handleScrolling(ScrollController controller) {
    focusNode.unfocus();
  }

  Future<void> _search() async {
    setState(() {
      isLoading = true;
    });

    try {
      final service = ElasticAppSearch(
        endPoint: "https://host-2376rb.api.swiftype.com",
        searchKey: "search-371auk61r2bwqtdzocdgutmg",
        debug: true,
      );

      ElasticEngine engine = service.engine("search-ui-examples");

      ElasticQuery query = engine
          .query(searchText)
          .resultField("title")
          .resultField("image_url")
          .resultField("world_heritage_site")
          .resultField("visitors")
          .resultField("description")
          .facet("world_heritage_site")
          .facet("states", size: 30);

      for (final range in distanceRanges) {
        query = query.facet(
          "location",
          isFurtherThanOrAt: range.from,
          isLessFarThan: range.to,
          from: elasticOfficePoint,
          unit: GeoUnit.miles,
        );
      }
      for (final range in datesRanges) {
        query = query.facet(
          "date_established",
          isGreaterThanOrEqualTo: range.from,
          isLessThan: range.to,
          name: range.name,
        );
      }
      for (final range in sizesRanges) {
        query = query.facet(
          "acres",
          isGreaterThanOrEqualTo: range.from,
          isLessThan: range.to,
          name: range.name,
        );
      }

      query = query
          .disjunctiveFacet("states")
          .disjunctiveFacet("date_established")
          .disjunctiveFacet("acres")
          .disjunctiveFacet("location")
          .page(1, size: 10);

      if (worldHeritage == true) {
        query = query.filter("world_heritage_site", isEqualTo: true);
      }
      if (enabledStates.isNotEmpty) {
        query = query.filter("states", whereIn: enabledStates);
      }
      if (enabledDates.isNotEmpty) {
        final ranges = datesRanges.where((e) => enabledDates.contains(e.name));
        for (final range in ranges) {
          query = query.filter(
            "date_established",
            isGreaterThanOrEqualTo: range.from,
            isLessThan: range.to,
          );
        }
      }
      if (enabledSize != 'Any') {
        final range =
            sizesRanges.where((e) => enabledSize == e.name).toList().first;
        query = query.filter(
          "acres",
          isGreaterThanOrEqualTo: range.from,
          isLessThan: range.to,
        );
      }

      if (enabledDistance != 1700) {
        query = query.filter(
          "location",
          isLessFarThan: enabledDistance,
          unit: GeoUnit.miles,
          from: elasticOfficePoint,
        );
      }

      ElasticResponse response = await query.get();

      List<Park> _results = [];
      for (ElasticResult result in response.results) {
        final data = result.data!;
        final park = Park(
          title: data["title"],
          description: data["description"],
          imageUrl: data["image_url"],
          worldHeritageSite: data["world_heritage_site"] == 'true',
        );
        _results.add(park);
      }

      setState(() {
        results = _results;
        statesFacet = response.facet("states");
        distanceFacet = response.facet("location");
        sizesFacet = response.facet("acres");
        datesFacet = response.facet("date_established");
        worldHeritageFacet = response.facet("world_heritage_site");
        isLoading = false;
      });
    } catch (e, _) {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();

    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.lightBlueAccent,
        ),
        primaryColor: Colors.lightBlueAccent,
      ),
      debugShowCheckedModeBanner: false,
      home: Stack(
        children: [
          Scaffold(
            appBar: AppBar(
              actions: [
                if (statesFacet != null)
                  IconButton(
                    icon: const Icon(Icons.filter_list, size: 28),
                    onPressed: () {
                      setState(() {
                        showFilters = !showFilters;
                      });
                    },
                  ),
              ],
              title: const Text("National Parks"),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(32.0),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                    bottom: 10,
                  ),
                  child: CupertinoSearchTextField(
                    backgroundColor: Colors.white,
                    controller: textEditingController,
                    focusNode: focusNode,
                    placeholder: "Search parks...",
                  ),
                ),
              ),
            ),
            body: Stack(
              children: [
                ListView(
                  controller: scrollController
                    ..addListener(() {
                      _handleScrolling(scrollController);
                    }),
                  children: <Widget>[
                    for (final park in results) ...[
                      ParkCard(park: park),
                    ],
                  ],
                ),
                if (isLoading)
                  Container(
                    color: Colors.white.withOpacity(0.8),
                    child: const Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
              ],
            ),
          ),
          if (showFilters)
            SearchFilters(
              statesFacet: statesFacet!,
              enabledStates: enabledStates,
              statesCallback: (state, enabled) {
                setState(() {
                  if (enabled) {
                    enabledStates.add(state);
                  } else {
                    enabledStates.remove(state);
                  }
                });
                _search();
              },
              worldHeritageFacet: worldHeritageFacet!,
              worldHeritage: worldHeritage,
              worldHeritageCallback: (enabled) {
                setState(() {
                  worldHeritage = enabled;
                });
                _search();
              },
              datesFacet: datesFacet!,
              enabledDates: enabledDates,
              datesCallback: (date, enabled) {
                setState(() {
                  if (enabled) {
                    enabledDates.add(date);
                  } else {
                    enabledDates.remove(date);
                  }
                });
                _search();
              },
              sizesFacet: sizesFacet!,
              enabledSize: enabledSize,
              sizeCallback: (size) {
                setState(() {
                  enabledSize = size;
                });
                _search();
              },
              distanceFacet: distanceFacet!,
              enabledDistance: enabledDistance,
              distanceCallback: (distance) {
                setState(() {
                  enabledDistance = distance;
                });
                _search();
              },
              closeCallback: () {
                setState(() {
                  showFilters = false;
                });
              },
              showAllStates: showAllStates,
              showAllStatesCallback: () {
                setState(() {
                  showAllStates = !showAllStates;
                });
              },
            ),
        ],
      ),
    );
  }
}

class ParkCard extends StatelessWidget {
  const ParkCard({
    required this.park,
    super.key,
  });

  final Park park;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: CachedNetworkImageProvider(park.imageUrl!),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    park.title,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  if (park.worldHeritageSite == true)
                    Image.asset(
                      'assets/wh.png',
                      height: 30,
                      width: 30,
                    )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
                bottom: 10,
              ),
              child: Text(park.description!),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchFilters extends StatelessWidget {
  const SearchFilters({
    required this.statesFacet,
    required this.enabledStates,
    required this.statesCallback,
    required this.worldHeritageFacet,
    required this.worldHeritage,
    required this.worldHeritageCallback,
    required this.sizesFacet,
    required this.enabledSize,
    required this.sizeCallback,
    required this.datesFacet,
    required this.datesCallback,
    required this.enabledDates,
    required this.distanceFacet,
    required this.enabledDistance,
    required this.distanceCallback,
    required this.closeCallback,
    required this.showAllStates,
    required this.showAllStatesCallback,
    super.key,
  });

  final ElasticFacet statesFacet;
  final List<String> enabledStates;
  final Function(String state, bool enabled) statesCallback;

  final ElasticFacet worldHeritageFacet;
  final bool worldHeritage;
  final Function(bool enabled) worldHeritageCallback;

  final ElasticFacet datesFacet;
  final List<String> enabledDates;
  final Function(String date, bool enabled) datesCallback;

  final ElasticFacet sizesFacet;
  final String enabledSize;
  final Function(String size) sizeCallback;

  final ElasticFacet distanceFacet;
  final double enabledDistance;
  final Function(double distance) distanceCallback;

  final bool showAllStates;
  final VoidCallback showAllStatesCallback;

  final VoidCallback closeCallback;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (
      BuildContext context,
      BoxConstraints viewportConstraints,
    ) {
      return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: const Icon(Icons.check, size: 28),
              onPressed: closeCallback,
            ),
          ],
          title: const Text("Search filters"),
        ),
        body: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: viewportConstraints.maxWidth,
                minHeight: viewportConstraints.maxHeight,
              ),
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (statesFacet.data!.isNotEmpty)
                      SearchFiltersSection(
                        title: "STATES",
                        children: [
                          for (final state in statesFacet.data!.sublist(
                              0,
                              showAllStates || statesFacet.data!.length < 5
                                  ? statesFacet.data!.length
                                  : 5)) ...[
                            SearchFiltersRow(
                              title: state.value.toString(),
                              count: state.count,
                              child: SearchFiltersSwitch(
                                value: enabledStates
                                    .contains(state.value.toString()),
                                onChanged: (enabled) => statesCallback(
                                    state.value.toString(), enabled),
                              ),
                            ),
                          ],
                        ],
                      ),
                    if (statesFacet.data!.length > 5 && !showAllStates)
                      Center(
                        child: TextButton(
                          onPressed: showAllStatesCallback,
                          child: const Text("Show more states"),
                        ),
                      ),
                    if (statesFacet.data!.isNotEmpty)
                      SearchFiltersSection(
                        title: "WORLD HERITAGE SITE",
                        children: [
                          for (final state in worldHeritageFacet.data!
                              .where((element) => element.value == 'true')) ...[
                            SearchFiltersRow(
                              title: "World Heritage Site",
                              count: state.count,
                              child: SearchFiltersSwitch(
                                value: worldHeritage,
                                onChanged: worldHeritageCallback,
                              ),
                            ),
                          ],
                        ],
                      ),
                    SearchFiltersSection(
                      title: "DATE ESTABLISHED",
                      children: [
                        for (final date in datesFacet.data!) ...[
                          SearchFiltersRow(
                            title: date.name!,
                            count: date.count,
                            child: SearchFiltersSwitch(
                              value: enabledDates.contains(date.name),
                              onChanged: (enabled) =>
                                  datesCallback(date.name!, enabled),
                            ),
                          ),
                        ],
                      ],
                    ),
                    SearchFiltersSection(
                      title: "PARK SIZE",
                      children: [
                        for (final size in sizesFacet.data!) ...[
                          SearchFiltersRow(
                            title: size.name!,
                            count: size.count,
                            child: SearchFiltersRadio(
                              groupValue: enabledSize,
                              value: size.name!,
                              onChanged: (size) => sizeCallback(size!),
                            ),
                          ),
                        ],
                      ],
                    ),
                    SearchFiltersSection(
                      title: "DISTANCE",
                      children: [
                        Container(
                          padding: const EdgeInsets.only(top: 10),
                          height: 300,
                          alignment: Alignment.centerLeft,
                          child: FlutterMap(
                            options: MapOptions(
                              initialCenter: LatLng(37.7749, -112.4194),
                              initialZoom: 4.5,
                            ),
                            children: [
                              TileLayer(
                                urlTemplate:
                                    "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                                subdomains: ['a', 'b', 'c'],
                              ),
                              CircleLayer(circles: [
                                CircleMarker(
                                  point: LatLng(37.7749, -122.4194),
                                  borderColor: Colors.lightBlueAccent,
                                  borderStrokeWidth: 2.0,
                                  radius: enabledDistance * 1.60934 * 1000,
                                  color:
                                      Colors.lightBlueAccent.withOpacity(0.2),
                                  useRadiusInMeter: true,
                                ),
                              ]),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      value: enabledDistance,
                      min: 100,
                      max: 1700,
                      divisions: 4,
                      label:
                          "${distanceFacet.data!.where((e) => e.to == enabledDistance).toList().first.count.toString()} parks",
                      onChanged: distanceCallback,
                    ),
                    Center(
                      child: Text(
                          "${enabledDistance.round().toString()} miles from the Elastic San Francisco office"),
                    ),
                    const SizedBox(height: 20),
                    const SafeArea(
                      child: SizedBox(
                        width: double.infinity,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}

class SearchFiltersSection extends StatelessWidget {
  const SearchFiltersSection({
    required this.title,
    required this.children,
    super.key,
  });

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            bottom: 5,
            top: 20,
          ),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        Container(
          color: const Color(0xFFbbbbbb),
          height: 0.5,
        ),
        ...children,
      ],
    );
  }
}

class SearchFiltersRow extends StatelessWidget {
  const SearchFiltersRow({
    required this.title,
    required this.child,
    this.count,
    super.key,
  });

  final String title;
  final int? count;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(title, style: const TextStyle(fontSize: 17)),
          const SizedBox(width: 5),
          if (count != null)
            Text(
              '(${count!.toString()})',
              style: const TextStyle(fontSize: 17, color: Colors.grey),
            ),
          const Spacer(),
          Container(
            transform: Matrix4.translationValues(10.0, 0.0, 0.0),
            child: child,
          ),
        ],
      ),
    );
  }
}

class SearchFiltersSwitch extends StatelessWidget {
  const SearchFiltersSwitch({
    required this.value,
    this.onChanged,
    super.key,
  });

  final bool value;
  final ValueChanged<bool>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: value,
      onChanged: onChanged,
      activeColor: Colors.lightBlueAccent,
    );
  }
}

class SearchFiltersRadio extends StatelessWidget {
  const SearchFiltersRadio({
    required this.value,
    required this.groupValue,
    this.onChanged,
    super.key,
  });

  final String value;
  final String groupValue;
  final ValueChanged<String?>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Radio<String>(
      value: value,
      groupValue: groupValue,
      onChanged: onChanged,
      activeColor: Colors.lightBlueAccent,
    );
  }
}
