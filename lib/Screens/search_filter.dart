import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SearchFilterScreen extends StatelessWidget {
  const SearchFilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
            top: 72,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 12,
                ),
                child: Text(
                  "Sort by",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Checkbox(
                          activeColor: Colors.blueAccent[700],
                          value: true,
                          onChanged: (value) {}),
                      const Text(
                        "Free classes",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                          activeColor: Colors.blueAccent[700],
                          value: false,
                          onChanged: (value) {}),
                      const Text(
                        "Premium classes",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                          activeColor: Colors.blueAccent[700],
                          value: false,
                          onChanged: (value) {}),
                      const Text(
                        "All",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 12,
                ),
                child: Text(
                  "Level",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Checkbox(
                          activeColor: Colors.blueAccent[700],
                          value: false,
                          onChanged: (value) {}),
                      const Text(
                        "Beginner",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                          activeColor: Colors.blueAccent[700],
                          value: true,
                          onChanged: (value) {}),
                      const Text(
                        "Intermediate",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                          activeColor: Colors.blueAccent[700],
                          value: false,
                          onChanged: (value) {}),
                      const Text(
                        "Advanced",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 12,
                ),
                child: Text(
                  "Duration",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Checkbox(
                          activeColor: Colors.blueAccent[700],
                          value: true,
                          onChanged: (value) {}),
                      const Text(
                        "0-1  Hour",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                          activeColor: Colors.blueAccent[700],
                          value: false,
                          onChanged: (value) {}),
                      const Text(
                        "1-3  Hour",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                          activeColor: Colors.blueAccent[700],
                          value: false,
                          onChanged: (value) {}),
                      const Text(
                        "3+  Hour",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 45,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey[200],
                    ),
                    child: const Center(
                      child: Text(
                        "Reset",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Container(
                    height: 45,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.blueAccent[700],
                    ),
                    child: const Center(
                      child: Text(
                        "Apply",
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
