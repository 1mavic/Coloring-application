import 'dart:async';
import 'dart:io';

import 'package:coloring_app/config/flavors/flavors.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';

/// banner with flavor info
class FlavorBanner extends StatelessWidget {
  /// banner with flavor info
  const FlavorBanner({
    required this.child,
    required this.flavor,
    super.key,
  });

  /// child widget to show under banner
  final Widget child;

  /// flavor data for banner
  final AppFlavor flavor;

  @override
  Widget build(BuildContext context) {
    if (flavor == AppFlavor.prod) {
      return child;
    }
    return Stack(
      children: <Widget>[
        child,
        Positioned(
          bottom: 0,
          left: 0,
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              unawaited(
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return _DeviseInfoDialog(
                      flavor: flavor,
                    );
                  },
                ),
              );
            },
            child: SizedBox(
              width: 75,
              height: 75,
              child: CustomPaint(
                painter: BannerPainter(
                  message: flavor.name,
                  textDirection: Directionality.of(context),
                  layoutDirection: Directionality.of(context),
                  location: BannerLocation.bottomStart,
                  color: flavor.color,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class _DeviseInfoDialog extends StatelessWidget {
  const _DeviseInfoDialog({
    required this.flavor,
  });
  final AppFlavor flavor;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.only(bottom: 10),
      title: Container(
        padding: const EdgeInsets.all(15),
        color: flavor.color,
        child: Text(
          'Info ${flavor.name}',
          style: const TextStyle(color: Colors.white),
        ),
      ),
      titlePadding: EdgeInsets.zero,
      content: _getContent(),
      // actions: <Widget>[],
    );
  }
}

Widget _getContent() {
  if (Platform.isAndroid) {
    return _androidContent();
  }
  if (Platform.isIOS) {
    return _iosContent();
  }
  return const Text('not ios or android device');
}

Widget _androidContent() {
  final deviceInfo = DeviceInfoPlugin();
  return FutureBuilder<AndroidDeviceInfo>(
    future: deviceInfo.androidInfo,
    builder: (BuildContext context, AsyncSnapshot<AndroidDeviceInfo> snapshot) {
      if (!snapshot.hasData) return Container();
      final device = snapshot.data;
      return SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _TileWidget(
              name: 'Physical device?:',
              value: '${device?.isPhysicalDevice}',
            ),
            _TileWidget(
              name: 'Manufacturer:',
              value: '${device?.manufacturer}',
            ),
            _TileWidget(
              name: 'Model:',
              value: '${device?.model}',
            ),
            _TileWidget(
              name: 'Android version:',
              value: '${device?.version.release}',
            ),
            _TileWidget(
              name: 'Android SDK:',
              value: '${device?.version.sdkInt}',
            )
          ],
        ),
      );
    },
  );
}

Widget _iosContent() {
  final deviceInfo = DeviceInfoPlugin();
  return FutureBuilder<IosDeviceInfo>(
    future: deviceInfo.iosInfo,
    builder: (BuildContext context, AsyncSnapshot<IosDeviceInfo> snapshot) {
      if (!snapshot.hasData) return Container();
      final device = snapshot.data;

      return SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _TileWidget(
              name: 'Physical device?:',
              value: '${device?.isPhysicalDevice}',
            ),
            _TileWidget(name: 'Model:', value: '${device?.model}'),
            _TileWidget(
              name: 'system version:',
              value: '${device?.systemVersion}',
            ),
            _TileWidget(
              name: 'Device name:',
              value: '${device?.name}',
            ),
            _TileWidget(
              name: 'Id vendor:',
              value: '${device?.identifierForVendor}',
            ),
          ],
        ),
      );
    },
  );
}

class _TileWidget extends StatelessWidget {
  const _TileWidget({
    required this.name,
    required this.value,
  });
  final String name;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Row(
        children: <Widget>[
          Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Text(
              value,
              maxLines: 2,
            ),
          )
        ],
      ),
    );
  }
}
