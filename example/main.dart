import 'dart:async';

import 'package:flutter/material.dart';
import 'package:elastic_app_search/elastic_app_search.dart';
import 'package:cached_network_image/cached_network_image.dart';

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

void main() async {
  runApp(App());
}

class App extends StatefulWidget {
  App({Key? key}) : super(key: key);

  @override
  createState() => _AppState();
}

class _AppState extends State<App> {
  bool isLoading = false;
  List<Park> results = [];
  bool worldHeritageSite = false;

  final textEditingController = TextEditingController();
  final focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _search("");

    textEditingController.addListener(() {
      final value = textEditingController.text;
      if (value.length >= 3) {
        _search(value);
      }
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

  Future<void> _search(String text) async {
    setState(() {
      isLoading = true;
    });

    try {
      final service = ElasticAppSearch(
        endPoint: "https://host-2376rb.api.swiftype.com",
        searchKey: "search-371auk61r2bwqtdzocdgutmg",
      );

      ElasticQuery query = service
          .engine("search-ui-examples")
          .query(text)
          .resultField("title")
          .resultField("image_url")
          .resultField("world_heritage_site")
          .resultField("description")
          .page(1, size: 10);

      if (worldHeritageSite == true) {
        query = query.filter("world_heritage_site", isEqualTo: true);
      }

      ElasticResponse response = await query.get();

      List<Park> _results = [];
      for (ElasticResult result in response.results) {
        final data = result.data!;
        var park = Park(
          title: data["title"],
          description: data["description"],
          imageUrl: data["image_url"],
          worldHeritageSite: data["world_heritage_site"] == 'true',
        );
        _results.add(park);
      }

      setState(() {
        results = _results;
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
    final controller = ScrollController();

    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.lightBlueAccent,
        ),
        primaryColor: Colors.lightBlueAccent,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            PopupMenuButton(
              onSelected: (bool value) {
                setState(() {
                  worldHeritageSite = value;
                  _search(textEditingController.text);
                });
              },
              icon: Icon(Icons.filter_list),
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 40,
                        child: worldHeritageSite == false
                            ? Icon(
                                Icons.check,
                                color: Theme.of(context).primaryColor,
                              )
                            : SizedBox.shrink(),
                      ),
                      Text("All parks"),
                    ],
                  ),
                  value: false,
                ),
                PopupMenuItem(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 40,
                        child: worldHeritageSite == true
                            ? Icon(
                                Icons.check,
                                color: Theme.of(context).primaryColor,
                              )
                            : SizedBox.shrink(),
                      ),
                      Text("World Heritage"),
                    ],
                  ),
                  value: true,
                ),
              ],
            ),
          ],
          title: TextField(
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
            focusNode: focusNode,
            controller: textEditingController,
            decoration: InputDecoration(
              hintText: "Search national parks...",
              hintStyle: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
            ),
          ),
        ),
        body: Stack(
          children: [
            ListView(
              controller: controller
                ..addListener(() {
                  _handleScrolling(controller);
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
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class ParkCard extends StatelessWidget {
  const ParkCard({
    required this.park,
    Key? key,
  }) : super(key: key);

  final Park park;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
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
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    park.title,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  if (park.worldHeritageSite == true)
                    Image.asset(
                      'assets/images/wh.png',
                      height: 30,
                      width: 30,
                    )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
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
