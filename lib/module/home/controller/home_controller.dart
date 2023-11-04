import 'package:flutter/material.dart';
import 'package:tugas_angga/core.dart';
import 'package:tugas_angga/service/event_service/event_service.dart';
import '../view/home_view.dart';

class HomeController extends State<HomeView> {
  static late HomeController instance;
  late HomeView view;

  @override
  void initState() {
    instance = this;
    getEvents();
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List services = [
    {
      "label": "Get Photographer",
      "photo":
          "https://icons.iconarchive.com/icons/treetog/junior/256/folder-blue-pictures-icon.png",
    },
    {
      "label": "Request Live Streaming",
      "photo":
          "https://icons.iconarchive.com/icons/dakirby309/simply-styled/256/YouTube-icon.png",
    },
    {
      "label": "Rent Equipment",
      "photo":
          "https://icons.iconarchive.com/icons/itzikgur/my-seven/256/Graphics-Painting-icon.png",
    },
    {
      "label": "Offer Services",
      "photo":
          "https://icons.iconarchive.com/icons/aha-soft/free-global-security/256/CCTV-Camera-icon.png",
    }
  ];

  List events = [];
  getEvents() async {
    events = await EventService().getEvents();
    setState(() {});
  }
}
