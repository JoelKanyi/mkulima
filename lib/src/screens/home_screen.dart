import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:mkulima/src/controllers/items_controller.dart';
import 'package:mkulima/src/widgets/crop_item.dart';

class HomeScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  final ItemsController itemsController = Get.put(ItemsController());

  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Feeds',
      style: optionStyle,
    ),
    Text(
      'Index 2: Bookmarks',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    )
  ];

  void _onItemTapped(int index) {
    _selectedIndex = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text('Mkulima app'),
          // ignore: prefer_const_literals_to_create_immutables
          actions: [
            const Padding(
              padding: EdgeInsets.all(5),
              child: CircleAvatar(
                radius: 20, // Image radius
                backgroundImage: NetworkImage(
                    'https://www.gravatar.com/avatar/1b8fabaa8d66250a7049bdb9ecf44397?s=250&d=mm&r=x'),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topCenter,
              height: 180,
              decoration: const BoxDecoration(
                  shape: BoxShape.rectangle, color: Color(0xFF07480E)),
              child: Column(
                children: [
                  Container(
                      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 9,
                            child: SizedBox(
                              height: 45,
                              width: (MediaQuery.of(context).size.width) * 0.8,
                              child: TextField(
                                controller: searchController,
                                // ignore: prefer_const_constructors
                                decoration: InputDecoration(
                                    prefixIcon: const Icon(Icons.search),
                                    hintText: "Search...",
                                    fillColor: Colors.white,
                                    filled: true,
                                    border: const OutlineInputBorder()),
                              ),
                            ),
                          ),
                          const Expanded(
                              child: SizedBox(
                            width: 0,
                          )),
                          Expanded(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.centerLeft,
                                height: 45,
                                width:
                                    (MediaQuery.of(context).size.width) * 0.2,
                                // ignore: prefer_const_constructors
                                child: Icon(
                                  Icons.filter_list_rounded,
                                  color: Colors.white,
                                  size: 32,
                                ),
                              ))
                        ],
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        'Categories',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      const Icon(
                        Icons.chevron_right,
                        size: 32,
                        color: Colors.white,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 85,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const CircleAvatar(
                                radius: 20, // Image radius
                                backgroundImage: AssetImage('assets/maize.jpg'),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "Cereals",
                                style: TextStyle(
                                    color: Color.fromARGB(206, 243, 239, 239)),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const CircleAvatar(
                                radius: 20, // Image radius
                                backgroundImage: AssetImage('assets/maize.jpg'),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "Cereals",
                                style: TextStyle(
                                    color: Color.fromARGB(206, 243, 239, 239)),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const CircleAvatar(
                                radius: 20, // Image radius
                                backgroundImage: AssetImage('assets/maize.jpg'),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "Cereals",
                                style: TextStyle(
                                    color: Color.fromARGB(206, 243, 239, 239)),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const CircleAvatar(
                                radius: 20, // Image radius
                                backgroundImage: AssetImage('assets/maize.jpg'),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "Cereals",
                                style: TextStyle(
                                    color: Color.fromARGB(206, 243, 239, 239)),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const CircleAvatar(
                                radius: 20, // Image radius
                                backgroundImage: AssetImage('assets/maize.jpg'),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "Cereals",
                                style: TextStyle(
                                    color: Color.fromARGB(206, 243, 239, 239)),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const CircleAvatar(
                                radius: 20, // Image radius
                                backgroundImage: AssetImage('assets/maize.jpg'),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "Cereals",
                                style: TextStyle(
                                    color: Color.fromARGB(206, 243, 239, 239)),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const CircleAvatar(
                                radius: 20, // Image radius
                                backgroundImage: AssetImage('assets/maize.jpg'),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "Cereals",
                                style: TextStyle(
                                    color: Color.fromARGB(206, 243, 239, 239)),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const CircleAvatar(
                                radius: 20, // Image radius
                                backgroundImage: AssetImage('assets/maize.jpg'),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "Cereals",
                                style: TextStyle(
                                    color: Color.fromARGB(206, 243, 239, 239)),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const CircleAvatar(
                                radius: 20, // Image radius
                                backgroundImage: AssetImage('assets/maize.jpg'),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "Cereals",
                                style: TextStyle(
                                    color: Color.fromARGB(206, 243, 239, 239)),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const CircleAvatar(
                                radius: 20, // Image radius
                                backgroundImage: AssetImage('assets/maize.jpg'),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "Cereals",
                                style: TextStyle(
                                    color: Color.fromARGB(206, 243, 239, 239)),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Obx(
                () {
                  if (itemsController.isLoading.value) {
                    return const Center(child: CircularProgressIndicator());
                  } else
                    // ignore: curly_braces_in_flow_control_structures
                    return StaggeredGridView.countBuilder(
                      crossAxisCount: 2,
                      itemCount: itemsController.itemsList.length,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      itemBuilder: (context, index) {
                        return CropItemTile(itemsController.itemsList[index]);
                      },
                      staggeredTileBuilder: (index) =>
                          const StaggeredTile.fit(1),
                    );
                },
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add_circle), onPressed: () {}),
        // ignore: unnecessary_new
        bottomNavigationBar: new Theme(
          data: Theme.of(context).copyWith(
            // sets the background color of the `BottomNavigationBar`
            canvasColor: Colors.white,
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.grey,
            backgroundColor: Colors.green,
            // ignore: prefer_const_literals_to_create_immutables
            items: [
              const BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.feed),
                label: "Feeds",
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.bookmark),
                label: "Bookmarks",
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "Settings",
              )
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
        ));
  }
}
