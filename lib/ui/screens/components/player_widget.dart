import 'package:flutter/material.dart';

class PlayerWidget extends StatelessWidget {
  const PlayerWidget({
    Key key,
    this.destination,
    this.onClose,
    this.assetUrl,
  }) : super(key: key);

  final String destination;
  final String assetUrl;
  final Function(PlayerWidget) onClose;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.0,
      width: 370.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        color: Colors.black54,
      ),
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image(
            image: NetworkImage(assetUrl),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.grey[800],
              child: Text(
                destination,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              color: Colors.black12,
              child: IconButton(
                icon: Icon(
                  Icons.close,
                  color: Colors.white,
                ),
                onPressed: () => onClose(this),
              ),
            ),
          )
        ],
      ),
    );
  }
}
