import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class contact extends StatefulWidget {
  const contact({super.key});

  @override
  State<contact> createState() => _contactState();
}

class _contactState extends State<contact> with TickerProviderStateMixin  {


    late final AnimationController _fadeController;
    late final Animation<double> _fadeAnimation;
    bool _visible = false;

    @override
    void initState() {
      super.initState();
      _fadeController = AnimationController(
        duration: const Duration(seconds: 5),
        vsync: this,
      )..repeat(reverse: true);

      _fadeAnimation = CurvedAnimation(
        parent: _fadeController,
        curve: Curves.linear,
      );
    }

    @override
    void dispose() {
      _fadeController.dispose();
      super.dispose();
    }

    @override
    Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[

          SizedBox(height: 20),
          AnimatedOpacity(
            // If the widget is visible, animate to 0.0 (invisible).
            // If the widget is hidden, animate to 1.0 (fully visible).
            alwaysIncludeSemantics: _visible = true,
            opacity: _visible ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 2000),

            // The green box must be a child of the AnimatedOpacity widget.
            child:
            Image.asset(
            'assets/logo/bg_logo_full.png',
            width: 200,
            height: 200,
          ),
          ),

        Container(
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Text(
              'Our company offers a wide range of high-quality products and services to meet the needs of our customers.',
              style: Theme.of(context).textTheme.bodyText2,
            )
        ),

          Container(
              width: double.infinity,
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mission Statement:',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Our mission is to provide high-quality products and services to our customers.',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Values:',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(height: 8),
                  FadeTransition(
                    opacity: _fadeAnimation,
                    // Wrap the ListTile in a Material widget so the ListTile has someplace
                    // to draw the animated colors during the fade transition.
                    child: const Material(
                      child: ListTile(
                        title: Text('Customer satisfaction is our top priority'),
                        selectedTileColor: Colors.green,
                        selectedColor: Colors.white,
                        selected: true,
                      ),
                    ),
                  ),

                  FadeTransition(
                    opacity: _fadeAnimation,
                    // Wrap the ListTile in a Material widget so the ListTile has someplace
                    // to draw the animated colors during the fade transition.
                    child: const Material(
                      child: ListTile(
                        title: Text('We strive for continuous improvement'),
                        selectedTileColor: Colors.green,
                        selectedColor: Colors.white,
                        selected: true,
                      ),
                    ),
                  ),
                  FadeTransition(
                    opacity: _fadeAnimation,
                    // Wrap the ListTile in a Material widget so the ListTile has someplace
                    // to draw the animated colors during the fade transition.
                    child: const Material(
                      child: ListTile(
                        title: Text('We value honesty and integrity in all our actions'),
                        selectedTileColor: Colors.green,
                        selectedColor: Colors.white,
                        selected: true,
                      ),
                    ),
                  ),
                ],
              )
          )

        ]
      ),
    );


  }
}
