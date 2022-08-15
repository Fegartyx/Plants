class Vegetables {
  late String name;
  late String category;
  late String detail;
  late String imageAsset;
  late List<String> imageUrl;

  Vegetables({
    required this.name,
    required this.category,
    required this.detail,
    required this.imageAsset,
    required this.imageUrl,
  });

  var vegetableLists = [
    Vegetables(
      name: 'Carrot',
      category: 'Plant',
      detail:
          'The carrot is a root vegetable, typically orange in color, though purple, black, red, white, and yellow cultivars exist, all of which are domesticated forms of the wild carrot, native to Europe and Southwestern Asia.',
      imageAsset: 'assets/vegetables/carrot.jpg',
      imageUrl: [
        'https://empire-s3-production.bobvila.com/articles/wp-content/uploads/2022/07/iStock-1393769889.jpg',
        'https://bustlingnest.com/wp-content/uploads/carrot-growth-stages-2.jpg.webp',
        'https://lovefoodhatewaste.co.nz/wp-content/uploads/2017/02/Crooked-carrots.jpg',
      ],
    ),
    Vegetables(
      name: 'Cabbage',
      category: 'Plant',
      detail:
          'Cabbage, comprising several cultivars of Brassica oleracea, is a leafy green, red (purple), or white (pale green) biennial plant grown as an annual vegetable crop for its dense-leaved heads.Cabbage was most likely domesticated somewhere in Europe in Ancient history before 1000 BC. Starting in the Early Modern Era, cabbage was exported to the Americas, Asia, and around the world.',
      imageAsset: 'assets/vegetables/cabbage.jpg',
      imageUrl: [
        'https://sc04.alicdn.com/kf/U50e878acde7342de8b3f4b3af9257cf0D/7013307269/U50e878acde7342de8b3f4b3af9257cf0D.jpg',
        'https://cdn.harvesttotable.com/htt/2009/01/23181459/Cabbage-bigstock-Salad-Species-That-Includes-Se-251274103-scaled.jpg',
        'https://www.haifa-group.com/sites/default/files/field/image/cabbage%20mobile.jpg'
      ],
    ),
    Vegetables(
      name: 'Eggplant',
      category: 'Fruit',
      detail:
          'Eggplant (US, Canada, Australia), aubergine (UK, Ireland) or brinjal (Indian subcontinent, Singapore, Malaysia, South Africa) is a plant species in the nightshade family Solanaceae. Solanum melongena is grown worldwide for its edible fruit. ',
      imageAsset: 'assets/vegetables/eggplant.jpg',
      imageUrl: [
        'https://cdn.mos.cms.futurecdn.net/G6o7bF6AbmDWWu67rJZ39c.jpg',
        'https://hgtvhome.sndimg.com/content/dam/images/hgtv/fullset/2021/7/16/0/shutterstock_hans-engbers-516326848.jpeg.rend.hgtvcom.1280.960.suffix/1626449910706.jpeg',
        'https://extension.umd.edu/sites/extension.umd.edu/files/styles/optimized/public/2021-01/veg_crop_eggplant_2584412_1920_Pix.jpg?itok=zqw_TPtt'
      ],
    ),
    Vegetables(
      name: 'Avocado',
      category: 'Fruit',
      detail:
          'The avocado (Persea americana) is a tree originating in the Americas which is likely native to the highland regions of south-central Mexico to Guatemala. It is classified as a member of the flowering plant family Lauraceae. The fruit of the plant, also called an avocado (or avocado pear or alligator pear), is botanically a large berry containing a single large seed. Avocado trees are partially self-pollinating, and are often propagated through grafting to maintain predictable fruit quality and quantity.',
      imageAsset: 'assets/vegetables/avocado.jpg',
      imageUrl: [
        'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/how-to-grow-avocado-tree-1650918999.jpg',
        'https://imgsrv2.voi.id/qqwUZrggcjMXDN7GGFdZR-92yKv87pYQ9nbDAhjvOQA/auto/1280/853/sm/1/bG9jYWw6Ly8vcHVibGlzaGVycy8xNTUwOTUvMjAyMjA0MDcyMDUyLW1haW4uY3JvcHBlZF8xNjQ5MzM5NTYyLmpwZw.jpg',
        'https://www.thespruce.com/thmb/Vp4U4zMDS7OlDIlSnIdN4N4ChJ8=/735x0/avocado-tree-growing-guide-5214445-hero-dafd213839f946d08196e4b48db7b106.jpg'
      ],
    ),
    Vegetables(
      name: 'Peaches',
      category: 'Fruit',
      detail:
          'The peach (Prunus persica) is a deciduous tree first domesticated and cultivated in Zhejiang province of Eastern China. It bears edible juicy fruits with various characteristics, most called peaches and others (the glossy-skinned, non-fuzzy varieties), nectarines. ',
      imageAsset: 'assets/vegetables/peach.jpg',
      imageUrl: [
        'https://media.self.com/photos/5b75ad5728dfab53ee567688/4:3/w_2560%2Cc_limit/GettyImages-614938268.jpg',
        'https://i0.wp.com/images-prod.healthline.com/hlcmsresource/images/AN_images/peach-fruit-benefits-1296x728-feature.jpg?w=1155&h=1528',
        'https://www.gardeningknowhow.com/wp-content/uploads/2009/04/peach.jpg'
      ],
    ),
    Vegetables(
      name: 'Broccoli',
      category: 'Plant',
      detail:
          'Broccoli (Brassica oleracea var. italica) is an edible green plant in the cabbage family (family Brassicaceae, genus Brassica) whose large flowering head, stalk and small associated leaves are eaten as a vegetable. Broccoli is classified in the Italica cultivar group of the species Brassica oleracea. Broccoli has large flower heads, usually dark green, arranged in a tree-like structure branching out from a thick stalk which is usually light green.',
      imageAsset: 'assets/vegetables/broccoli.png',
      imageUrl: [
        'https://cdn.mos.cms.futurecdn.net/r8NK24bmcMgSib5zWKKQkW.jpg',
        'https://www.gardeningknowhow.com/wp-content/uploads/2009/02/broccoli-1.jpg',
        'https://www.israel21c.org/wp-content/uploads/2022/07/hans-ripa-unsplash.jpg'
      ],
    )
  ];
}
