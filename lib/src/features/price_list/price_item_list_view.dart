import 'dart:math';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:slt_assesment/src/features/price_list/provider/price_provider.dart';

/// Displays a list of Price items.
class PriceItemListView extends StatefulWidget {
  const PriceItemListView({super.key, required this.priceProvider});

  static const routeName = '/';

  final PriceProvider priceProvider;

  @override
  State<StatefulWidget> createState() => _PriceItemListViewState();
}

class _PriceItemListViewState extends State<PriceItemListView> {
  late final ScrollController _controller;
  int _page = 0;
  final NumberFormat _formatter = NumberFormat('\$###,###.##', 'en_US');
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _controller = ScrollController()..addListener(_scrollListener);
    _loadMore(); // Load initial data
  }

  @override
  void dispose() {
    _controller.removeListener(_scrollListener);
    _controller.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_controller.position.pixels >= _controller.position.maxScrollExtent &&
        !_isLoading) {
      _loadMore();
    }
  }

  Future<void> _loadMore() async {
    setState(() {
      _isLoading = true;
    });

    await widget.priceProvider.collectPrice(offset: _page);
    setState(() {
      _page += 1;
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final priceProvider = widget.priceProvider;
    return Scaffold(
      body: ListenableBuilder(
        listenable: priceProvider,
        builder: (context, child) {
          return ListView.builder(
            controller: _controller,
            itemCount: priceProvider.items.length,
            itemBuilder: (BuildContext context, int index) {
              final item = priceProvider.items[index];
              return ListTile(
                visualDensity: const VisualDensity(vertical: 2),
                minVerticalPadding: 0,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
                title: Text(item.symbol,
                    style: Theme.of(context).textTheme.bodyLarge),
                trailing: Text(
                  _formatter.format(double.parse(item.priceUsd)),
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                leading: Container(
                  height: 56,
                  width: 56,
                  constraints:
                      const BoxConstraints(minHeight: 56, minWidth: 56),
                  decoration: BoxDecoration(
                    color: Color(Random().nextInt(0xffffffff)).withOpacity(0.1),
                    borderRadius: const BorderRadius.all(Radius.circular(18)),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
