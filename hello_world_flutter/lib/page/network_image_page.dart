import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class NetworkImagePage extends StatefulWidget {
  @override
  _NetworkImagePageState createState() => _NetworkImagePageState();
}

class _NetworkImagePageState extends State<NetworkImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Network image cahce'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CachedNetworkImage(
            imageUrl:
                "https://resize-gulli.jnsmedia.fr/rcrop/1900,550,smartcrop,center-top/img//var/jeunesse/storage/images/gulli/chaine-tv/dessins-animes/my-little-pony/23288759-79-fre-FR/My-Little-Pony.jpg",
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ],
      ),
    );
  }
}
