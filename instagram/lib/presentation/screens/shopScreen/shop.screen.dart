import 'package:flutter/material.dart';
import 'package:instagram/core/mock_data/shop.mock.data.dart';
import 'package:instagram/presentation/screens/exploreScreen/widgets/category.bar.dart';
import 'package:instagram/presentation/screens/exploreScreen/widgets/persistent.header.dart';
import 'package:instagram/presentation/screens/shopScreen/widgets/app.bar.shop.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  late ScrollController scrollController;
  bool _showSearchBar = false;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          _showSearchBar = scrollController.offset > 74;
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: CustomScrollView(
          controller: scrollController,
          slivers: [
            ShopAppBar(
              showSearchBar: _showSearchBar,
            ),
            SliverPersistentHeader(
              delegate: PersistentHeader(
                mxExtent: 42,
                mnExtent: 42,
                child: Padding(
                  padding: const EdgeInsets.only(top: 4, right: 14, left: 14),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade200,
                    ),
                    child: TextField(
                      cursorColor: Colors.grey.shade600,
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          size: 24,
                          color: Colors.grey.shade600,
                        ),
                      ),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SliverPersistentHeader(
              delegate: PersistentHeader(
                mxExtent: 50,
                mnExtent: 50,
                child: CategoryBar(
                  categories: mockShopData,
                ),
              ),
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (_, int index) {
                  return Container(
                    alignment: Alignment.bottomLeft,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://picsum.photos/id/${1070 + index}/500/500'),
                      ),
                    ),
                    child: index == 0
                        ? Center(
                            child: Text(
                              'Continue Shopping',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          )
                        : null,
                  );
                },
                childCount: 15,
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 1,
                mainAxisSpacing: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
