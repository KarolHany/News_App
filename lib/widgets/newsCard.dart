import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ths/models/articales_model.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsCard extends StatefulWidget {
  const NewsCard({super.key, required this.articales});
  final ArticalesModel articales;

  @override
  State<NewsCard> createState() => _NewsCardState();
}

class _NewsCardState extends State<NewsCard> {
  Future<void>? launched;
  late final Uri toLaunch;
  @override
  void initState() {
    toLaunch = Uri.parse(widget.articales.url);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              launched = _launchInBrowserView(toLaunch);
            });
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: widget.articales.image != null
                ? CachedNetworkImage(
                    imageUrl: widget.articales.image!,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    errorWidget: (context, error, stackTrace) {
                      return Image.network(
                        "https://th.bing.com/th/id/OIP.fzGej741m6MnT_5KrHWrBAHaFj?w=919&h=689&rs=1&pid=ImgDetMain",
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      );
                    },
                  )
                : Image.network(
                    "https://th.bing.com/th/id/OIP.fzGej741m6MnT_5KrHWrBAHaFj?w=919&h=689&rs=1&pid=ImgDetMain",
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          widget.articales.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 20,
            color: Theme.of(context).colorScheme.inversePrimary,
            fontWeight: FontWeight.w200,
          ),
        ),
        const SizedBox(height: 7),
        Text(
          widget.articales.description ?? "",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Theme.of(context).colorScheme.secondary,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}

Future<void> _launchInBrowserView(Uri url) async {
  if (!await launchUrl(url, mode: LaunchMode.inAppBrowserView)) {
    throw Exception('Could not launch $url');
  }
}
