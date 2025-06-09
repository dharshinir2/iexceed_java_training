import 'package:flutter/material.dart';
import 'package:project1/transfersuccess.dart';

void main() => runApp(BillPaymentApp());

class BillPaymentApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UPI Bill Payment',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: BillPaymentPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BillPaymentPage extends StatefulWidget {
  @override
  _BillPaymentPageState createState() => _BillPaymentPageState();
}

class _BillPaymentPageState extends State<BillPaymentPage> {
  final TextEditingController accountController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  String? selectedBiller;
  String? selectedSupplier;
  String? selectedSimType;
  String? selectedPlan;
  String? selectedOperator;

  final Map<String, IconData> billersWithIcons = {
    'Electricity': Icons.flash_on,
    'Water': Icons.water_drop,
    'Gas': Icons.local_gas_station,
    'Broadband': Icons.wifi,
    'FASTag Recharge': Icons.directions_car,
    'Recharge': Icons.phone_android,
  };

  final List<String> electricitySuppliers = ['BESCOM', 'TNEB', 'MSEB', 'DHBVN', 'UPPCL'];
  final List<String> waterSuppliers = ['BWSSB', 'Delhi Jal Board', 'Chennai Metro Water'];
  final List<String> gasSuppliers = ['Indane', 'Bharat Gas', 'HP Gas'];
  final List<String> broadbandOperators = ['ACT Fibernet', 'Airtel Xstream', 'Jio Fiber'];
  final List<String> simTypes = ['Prepaid', 'Postpaid'];
  final List<String> rechargePlans = ['₹149 - 28 Days', '₹249 - 1 GB/day', '₹399 - 2 GB/day'];
  final List<String> operators = ['BSNL', 'Jio', 'Airtel'];

  bool billFetched = false;
  double? dueAmount;
  String dueDate = '2025-06-15';

  void fetchBill() {
    if (selectedBiller == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please select a biller')),
      );
      return;
    }

    if (selectedBiller == 'Electricity' ||
        selectedBiller == 'Water' ||
        selectedBiller == 'Gas' ||
        selectedBiller == 'Broadband') {
      if (selectedSupplier == null || accountController.text.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Please select supplier/operator and enter account number')),
        );
        return;
      }
    }

    if (selectedBiller == 'Recharge') {
      if (phoneController.text.isEmpty ||
          selectedSimType == null ||
          selectedOperator == null ||
          selectedPlan == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Please enter phone number, SIM type, operator, and plan')),
        );
        return;
      }
    }

    if (selectedBiller == 'FASTag Recharge' && accountController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter vehicle number')),
      );
      return;
    }

    setState(() {
      billFetched = true;
      dueAmount = {
        'Electricity': 528.75,
        'Water': 182.00,
        'Gas': 316.50,
        'Broadband': 499.00,
        'FASTag Recharge': 100.00,
        'Recharge': double.tryParse(
            selectedPlan?.split('₹').last.split(' ').first ?? '0') ??
            0.0,
      }[selectedBiller];
    });
  }

  @override
  void dispose() {
    accountController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bill Payment')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Select Biller', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            SizedBox(height: 12),
            Wrap(
              spacing: 16,
              runSpacing: 16,
              children: billersWithIcons.entries.map((entry) {
                final isSelected = selectedBiller == entry.key;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedBiller = entry.key;
                      selectedSupplier = null;
                      billFetched = false;
                      accountController.clear();
                      phoneController.clear();
                      selectedSimType = null;
                      selectedPlan = null;
                      selectedOperator = null;
                    });
                  },
                  child: Container(
                    width: 100,
                    height: 90,
                    decoration: BoxDecoration(
                      color: isSelected ? Colors.indigo.shade100 : Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: isSelected ? Colors.indigo : Colors.transparent,
                        width: 2,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(entry.value, size: 30, color: Colors.indigo),
                        SizedBox(height: 8),
                        Text(entry.key, textAlign: TextAlign.center, style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
            SizedBox(height: 24),

            if (selectedBiller == 'Electricity') ...[
              buildDropdown('Select Supplier', electricitySuppliers),
            ],
            if (selectedBiller == 'Water') ...[
              buildDropdown('Select Water Supplier', waterSuppliers),
            ],
            if (selectedBiller == 'Gas') ...[
              buildDropdown('Select Gas Supplier', gasSuppliers),
            ],
            if (selectedBiller == 'Broadband') ...[
              buildDropdown('Select Broadband Operator', broadbandOperators),
            ],

            if (selectedBiller == 'Recharge') ...[
              buildTextField('Phone Number', phoneController, TextInputType.phone),
              buildDropdown('SIM Type', simTypes, isSimType: true),
              buildDropdown('Operator', operators, isOperator: true),
              buildDropdown('Select Plan', rechargePlans, isPlan: true),
            ],

            if (selectedBiller != null &&
                selectedBiller != 'Recharge') ...[
              Text(
                selectedBiller == 'FASTag Recharge'
                    ? 'Vehicle Number'
                    : 'Account / Consumer Number',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              TextField(
                controller: accountController,
                decoration: InputDecoration(
                  hintText: 'Enter number',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
            ],

            ElevatedButton(
              onPressed: fetchBill,
              child: Text('Fetch Bill'),
              style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 45)),
            ),

            if (billFetched && dueAmount != null) ...[
              SizedBox(height: 30),
              Card(
                elevation: 3,
                margin: EdgeInsets.only(bottom: 20),
                child: ListTile(
                  leading: Icon(Icons.receipt_long, color: Colors.indigo),
                  title: Text('Due Amount: ₹${dueAmount!.toStringAsFixed(2)}'),
                  subtitle: Text(
                    selectedBiller == 'Recharge'
                        ? 'Operator: $selectedOperator\nPlan: $selectedPlan'
                        : 'Due Date: $dueDate\nSupplier: $selectedSupplier',
                  ),
                ),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TransferSuccessPage(
                        amount: dueAmount!.toStringAsFixed(2),
                        beneficiary: selectedBiller == 'Recharge'
                            ? phoneController.text
                            : accountController.text,
                      ),
                    ),
                  );
                },
                icon: Icon(Icons.payment),
                label: Text('Pay Now'),
              )
            ],
          ],
        ),
      ),
    );
  }

  Widget buildTextField(String label, TextEditingController controller, TextInputType type) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        TextField(
          controller: controller,
          keyboardType: type,
          decoration: InputDecoration(
            hintText: 'Enter $label',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }

  Widget buildDropdown(String label, List<String> items, {bool isSimType = false, bool isOperator = false, bool isPlan = false}) {
    String? currentValue;
    if (isSimType) currentValue = selectedSimType;
    else if (isOperator) currentValue = selectedOperator;
    else if (isPlan) currentValue = selectedPlan;
    else currentValue = selectedSupplier;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        DropdownButtonFormField<String>(
          value: currentValue,
          items: items.map((item) {
            return DropdownMenuItem(value: item, child: Text(item));
          }).toList(),
          onChanged: (value) => setState(() {
            if (isSimType) selectedSimType = value;
            else if (isOperator) selectedOperator = value;
            else if (isPlan) selectedPlan = value;
            else selectedSupplier = value;
          }),
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
