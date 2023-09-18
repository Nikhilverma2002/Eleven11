import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class BannerComponent extends StatefulWidget {
  @override
  _BannerComponentState createState() => _BannerComponentState();
}

class _BannerComponentState extends State<BannerComponent> {
  List<String> bannerImages = []; // List to hold banner image URLs
  Future<List<String>>? imageLoadingFuture;

  @override
  void initState() {
    super.initState();
    imageLoadingFuture = fetchData();
  }

  Future<List<String>> fetchData() async {
    const url =
        'https://api.npoint.io/329ba2a592502c98195b';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      final banners = data['banners'] as List<dynamic>;

      final imageUrls =
      banners.map<String>((banner) => banner['image'] as String).toList();

      return imageUrls;
    } else {
      // Handle error here if needed
      print('Failed to load data: ${response.statusCode}');
      return [];
    }
  }



  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return FutureBuilder<List<String>>(
      future: imageLoadingFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // While loading data, show a loading indicator or placeholder
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          // If there's an error, show an error message or placeholder
          return Center(
            child: Image.asset(
              "assets/bg_logo_full.png",
              width: mediaQuery.size.width * 1,
              height: 250,
              fit: BoxFit.cover,
            ),
          );
        } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
          // If data is loaded and not empty, display the banner
          final bannerImages = snapshot.data!;

          return CarouselSlider(
            options: CarouselOptions(
            height: 200,
            aspectRatio: 16/9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            scrollDirection: Axis.horizontal,
          ),
            items: bannerImages.map((image) {
              return Builder(

                builder: (BuildContext context) {
                  return Container(
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      ),
                    child : Image.network(
                    image,
                    fit: BoxFit.cover,
                    width: mediaQuery.size.width * 0.8,
                    errorBuilder: (context, error, stackTrace) {
                      // Display a placeholder image when an error occurs
                      return Image.asset(
                        "assets/bg_logo_full.png",
                        width: mediaQuery.size.width * 0.8,
                        height: 200,
                        fit: BoxFit.cover,
                      );
                    },
                  )
                  );
                },
              );
            }).toList(),
          );
        } else {
          // If there's no data, you can show a placeholder or empty state
          return Center(
            child: Image.asset(
              "assets/bg_logo_full.png",
              width: mediaQuery.size.width * 0.8,
              height: 200,
              fit: BoxFit.cover,
            ),
          );
        }
      },
    );
  }
}
