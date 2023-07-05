import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Auctions"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: viewModel.putUpAuction,
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: ListView(
            children: viewModel.auctions.map((auction) {
              return ListTile(
                title: Text(
                    "${auction.token.name} on auction for ZAR ${auction.reservePrice}"),
                subtitle: Text(auction.auctionId),
                onTap: () => viewModel.showAuction(auction.auctionId),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
