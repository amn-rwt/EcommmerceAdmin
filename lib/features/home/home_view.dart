import 'package:ecommerce_admin/features/products/products_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  double width = Get.width / 100 * 5;

  Icon? icon = const Icon(Icons.arrow_forward_ios_rounded);

  // goFullScreen() {
  //   document.documentElement?.requestFullscreen();
  // }

  resizeSideBar() {
    if (width == Get.width / 100 * 5) {
      width = Get.width / 100 * 15;
      icon = const Icon(Icons.arrow_back_ios_new_rounded);
    } else {
      width = Get.width / 100 * 5;
      icon = const Icon(Icons.arrow_forward_ios_rounded);
    }
  }

  Widget? child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          customDrawer(context),
          Expanded(
            child: Container(
              // color: Colors.red,
              child: child,
            ),
          ),
        ],
      ),
    );
  }

  SizedBox customDrawer(BuildContext context) {
    return SizedBox(
      width: width,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: context.height,
          minHeight: context.height,
          minWidth: width,
          maxWidth: context.width / 100 * 15,
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          // padding: const EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            color: Colors.grey[800],
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage('sec'),
                // radius: 5,
                minRadius: 10,
                maxRadius: 40,
              ),
              ListTile(
                  leading: Icon(Icons.pix_rounded),
                  title: const Text(
                    'Products',
                    // overflow: TextOverflow.clip,
                    maxLines: 1,
                  ),
                  onTap: () {
                    setState(() {
                      child = ProductsView();
                    });
                  }),
              const ListTile(
                leading: Icon(Icons.abc),
                title: Text(
                  'fkldsfjksdfj dkfjldsjfalskfj ksfjdskfjksjf',
                  // overflow: TextOverflow.clip,
                  maxLines: 1,
                ),
                onTap: null,
              ),
              const ListTile(
                leading: Icon(Icons.abc),
                title: Text(
                  'fkldsfjksdfj dkfjldsjfalskfj ksfjdskfjksjf',
                  // overflow: TextOverflow.clip,
                  maxLines: 1,
                ),
                onTap: null,
              ),
              const Spacer(),
              const Divider(),
              IconButton(
                onPressed: () {
                  resizeSideBar();
                  setState(() {});
                },
                icon: icon!,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
