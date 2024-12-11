class Service {
  final String name;
  final String iconPath;

  const Service({
    required this.name,
    required this.iconPath,
  });

  static final List<Service> all = [
    const Service(
      name: 'Finishing',
      iconPath: 'assets/images/img_5.png',
    ),
    const Service(
      name: 'Carpentry',
      iconPath: 'assets/images/img_3.png',
    ),
    const Service(
      name: 'Plumbing',
      iconPath: 'assets/images/img_4.png',
    ),
    const Service(
      name: 'Conditioning',
      iconPath: 'assets/images/img_6.png',
    ),
    const Service(
      name: 'Electricity',
      iconPath: 'assets/images/img_7.png',
    ),
    const Service(
      name: 'Paint',
      iconPath: 'assets/images/img_8.png',
    ),
  ];
}