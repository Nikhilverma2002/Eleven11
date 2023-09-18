import 'package:flutter/material.dart';


class CardNewProject extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String brandImage;


  const CardNewProject({
    required this.imageUrl,
    required this.name,
    required this.brandImage,

  });

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: (){
          /*goToNextPage(
              context: context,
              page: ProjectDetailsPage(
                id:id,
              ));*/
        },
        child: Container(
          width: mediaQuery.size.width * 0.8,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: EdgeInsets.all(0),
            child: Column(
              children: [
                SizedBox(
                  width: mediaQuery.size.width * 0.8,
                  height: mediaQuery.size.height * 0.25,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            image: DecorationImage(
                              image: NetworkImage(imageUrl),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: double.infinity,
                          height: mediaQuery.size.height * 0.20,
                        ),
                      ),
                      Positioned(
                        top: mediaQuery.size.height * 0.167,
                        right: mediaQuery.size.width * 0.12,
                        child: Container(
                          width: mediaQuery.size.width * 0.2,
                          height: mediaQuery.size.width * 0.2,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                brandImage,
                              ),
                              radius: mediaQuery.size.width * 0.1,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: mediaQuery.size.width * 0.7,
                  height: 130,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Text(
                          name,
                          style: TextStyle(
                            fontSize : 18,
                            fontWeight :   FontWeight.w600,
                            color : Colors.black,
                          ),
                          overflow: TextOverflow
                              .ellipsis, // Handle text overflow with ellipsis
                          maxLines: 1, // Limit the text to 1 line
                        ),
                      ),
                      /*Text(
                        propertyType,
                        style: TextStyle(
                          fontSize : 12,
                          fontWeight : FontWeight.w400,
                          color: Colors.grey,
                        ),
                      ),*/
                      SizedBox(
                        width: mediaQuery.size.width * 0.7,
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(right: 5.0),
                              child: Image(
                                image: AssetImage("assets/Icons/location_icon.png"),
                                width: 10,
                              ),
                            ),
                           /* Flexible(
                              child: Text(
                                location,
                                style: TextStyle(
                                  fontSize : 12,
                                  fontWeight : FontWeight.w400,
                                  color: Colors.grey,
                                ),
                                overflow: TextOverflow
                                    .ellipsis, // Handle text overflow with ellipsis
                                maxLines: 1, // Limit the text to 1 line
                              ),
                            ),*/
                          ],
                        ),
                      ),
                      /*Text(
                        "Starts From $price",
                        style: TextStyle(
                          fontSize : 12,
                          fontWeight : FontWeight.w400,
                          color: Colors.grey,
                        ),
                      ),*/
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
