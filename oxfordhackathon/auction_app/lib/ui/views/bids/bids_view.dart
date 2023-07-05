import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'bids_viewmodel.dart';

class BidsView extends StackedView<BidsViewModel> {
  final String auctionId;

  const BidsView({required this.auctionId, Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    BidsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bid on Knowledge Token selling at ZAR 9"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: viewModel.putUpBid,
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: ListView(
            children: viewModel.bids.map((bid) {
              return ListTile(
                title:
                    Text("${bid.bidderName} placed bid at ${bid.bidUnitPrice}"),
                subtitle: const Text("Bidding"),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }

  @override
  BidsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      BidsViewModel(auctionId);
}
