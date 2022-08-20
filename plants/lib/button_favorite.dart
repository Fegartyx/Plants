import 'package:flutter/material.dart';

class ButtonFavorite extends StatefulWidget {
  final bool favorite;
  const ButtonFavorite({Key? key, required this.favorite}) : super(key: key);

  @override
  State<ButtonFavorite> createState() => _ButtonFavoriteState();
}

class _ButtonFavoriteState extends State<ButtonFavorite> {
  late bool isFavorite;

  @override
  void initState() {
    isFavorite = widget.favorite;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
      child: Icon(
        isFavorite == true ? Icons.favorite : Icons.favorite_outline,
        size: 50,
        color: isFavorite == true ? Colors.red : Colors.black,
      ),
    );
  }
}
