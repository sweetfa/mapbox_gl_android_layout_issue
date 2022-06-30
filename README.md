# flutter_mapbox_android_layout_bug

Minimum reproducible Android bug

This project contains the minimal code required to produce a layout issue on Android devices.

The layout is correct on iOS devices.

The behaviour on Android devices is to initially show the top layer (including the textbox, and mapbox attribution labels) before overwriting with the map view only.

![img.png](Android view)

![img_1.png](iOS view)

