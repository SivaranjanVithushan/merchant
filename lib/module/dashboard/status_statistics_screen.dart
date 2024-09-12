import 'package:flutter/material.dart';
import 'package:merchant/core/theme_data/text_theme.dart';

class StatusStatisticsScreen extends StatefulWidget {
  const StatusStatisticsScreen({super.key});

  @override
  State<StatusStatisticsScreen> createState() => _StatusStatisticsScreenState();
}

class _StatusStatisticsScreenState extends State<StatusStatisticsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              'Status Statistics',
              style: textTheme.titleSmall!.copyWith(color: Colors.black),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none),
            onPressed: () {},
          ),
        ],
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // _buildStatusCard(),
              _buildExpansionTile(
                title: 'Pickup Rider Assigned',
                iconColor: Colors.purple,
                icon: Icons.add,
                content: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildStatisticItem(
                          icon: Icons.arrow_downward,
                          value: '76',
                          label: 'No of Orders',
                        ),
                        _buildStatisticItem(
                          icon: Icons.attach_money,
                          value: '50371.50',
                          label: 'Delivery Charge',
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    const Text(
                      'Ratio: 67%',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              _buildExpansionTile(
                title: 'Picked Up',
                iconColor: Colors.orange,
                icon: Icons.done,
                content: Text(''),
              ),
              _buildExpansionTile(
                title: 'Confirmed',
                iconColor: Colors.green,
                icon: Icons.done,
                content: Text(''),
              ),
              _buildExpansionTile(
                title: 'Cancelled',
                iconColor: Colors.red,
                icon: Icons.cancel,
                content: Text(''),
              ),
              _buildExpansionTile(
                title: 'Delivered',
                iconColor: Colors.teal,
                icon: Icons.add,
                content: Text(''),
              ),
              _buildExpansionTile(
                title: 'Partially Delivered',
                iconColor: Colors.blue,
                icon: Icons.done,
                content: Text(''),
              ),
              const SizedBox(height: 24),
              TextButton(
                onPressed: () {
                  // Add action for "See more"
                },
                child: const Text(
                  'See more',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Powered by curfox.lk',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatusCard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Icon(Icons.add_circle, color: Colors.purple, size: 30),
                SizedBox(width: 16),
                Text(
                  'Pickup Rider Assigned',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildStatisticItem(
                  icon: Icons.arrow_downward,
                  value: '76',
                  label: 'No of Orders',
                ),
                _buildStatisticItem(
                  icon: Icons.attach_money,
                  value: '50371.50',
                  label: 'Delivery Charge',
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              'Ratio: 67%',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatisticItem({
    required IconData icon,
    required String value,
    required String label,
  }) {
    return Column(
      children: [
        Icon(icon, size: 30, color: Colors.blue),
        const SizedBox(height: 8),
        Text(
          value,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(color: Colors.grey),
        ),
      ],
    );
  }

  Widget _buildExpansionTile({
    required String title,
    required Color iconColor,
    required IconData icon,
    required Widget content,
  }) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 4,
      child: ExpansionTile(
        leading: CircleAvatar(
          radius: 20,
          backgroundColor: iconColor,
          child: Icon(icon),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        children: [content],
      ),
    );
  }
}
