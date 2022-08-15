class Herbal {
  late String name;
  late String detail;
  late String imageAsset;
  late List<String> imageUrl;

  Herbal({
    required this.name,
    required this.detail,
    required this.imageUrl,
    required this.imageAsset,
  });

  var listHerbal = [
    Herbal(
        name: 'Lavender',
        detail:
            'Lavandula (common name lavender) is a genus of 47 known species of flowering plants in the mint family. It is native to the Old World and is found in Cape Verde and the Canary Islands, and from Europe across to northern and eastern Africa, the Mediterranean, southwest Asia to India.',
        imageAsset: 'assets/herbal/lavender.jpg',
        imageUrl: [
          'https://www.kampustani.com/wp-content/uploads/2021/10/cara-menanam-bunga-lavender.jpg',
          'https://i0.wp.com/rimbakita.com/wp-content/uploads/2020/08/tumbuhan-lavender.jpg',
          'https://www.obonparis.com/uploads/LAVENDER%20IN%20PROVENCE/LAVENDER%20(7).jpg'
        ]),
    Herbal(
        name: 'Calendula',
        detail:
            'Calendula officinalis, the pot marigold, common marigold, ruddles, Mary\'s gold or Scotch marigold, is a flowering plant in the daisy family Asteraceae. It is probably native to southern Europe, though its long history of cultivation makes its precise origin unknown, and it may possibly be of garden origin. It is also widely naturalised farther north in Europe (as far as southern England) and elsewhere in warm temperate regions of the world.',
        imageAsset: 'assets/herbal/calendula.jpg',
        imageUrl: [
          'https://imgsrv2.voi.id/2LIePtecloUw39E-WKrPJRfO3bEbbPyzeG0HD8oCCFs/auto/1200/675/sm/1/bG9jYWw6Ly8vcHVibGlzaGVycy8yOTIxOC8yMDIxMDEyNzIwMDUtbWFpbi5qcGc.jpg',
          'https://www.tunasnegeri.com/wp-content/uploads/2022/04/calendula-gac4512d87_1920.jpg',
          'https://www.tunasnegeri.com/wp-content/uploads/2022/04/calendula-gc744d4f40_1920.jpg'
        ]),
    Herbal(
        name: 'Basil',
        detail:
            'Basil (Ocimum basilicum), also called great basil, is a culinary herb of the family Lamiaceae (mints). It is a tender plant, and is used in cuisines worldwide. In Western cuisine, the generic term "basil" refers to the variety also known as sweet basil or Genovese basil. Basil is native to tropical regions from Central Africa to Southeast Asia. In temperate climates basil is treated as an annual plant, however, basil can be grown as a short-lived perennial or biennial in warmer horticultural zones with tropical or Mediterranean climates.',
        imageAsset: 'assets/herbal/basil.jpg',
        imageUrl: [
          'https://justgardenthings.com/wp-content/uploads/2022/01/how-to-grow-basil-1590506465.jpg',
          'https://www.tastingtable.com/img/gallery/the-best-ways-to-keep-basil-fresh/l-intro-1643650346.jpg',
          'https://plantura.garden/uk/wp-content/uploads/sites/2/2021/11/purple-basil.jpg'
        ]),
    Herbal(
        name: 'Chervil',
        detail:
            'Chervil (Anthriscus cerefolium), sometimes called French parsley or garden chervil (to distinguish it from similar plants also called chervil), is a delicate annual herb related to parsley. It was formerly called myrhis due to its volatile oil with an aroma similar to the resinous substance of myrrh. It is commonly used to season mild-flavoured dishes and is a constituent of the French herb mixture fines herbes.',
        imageAsset: 'assets/herbal/chervil.jpg',
        imageUrl: [
          'https://gardenerspath.com/wp-content/uploads/2020/05/How-to-Grow-Chervil-FB.jpg',
          'https://cdn.pixabay.com/photo/2018/12/02/04/06/chervil-3850650_960_720.jpg',
          'https://cdn.pixabay.com/photo/2019/04/28/23/07/chervil-4164701_1280.jpg'
        ]),
    Herbal(
        name: 'Chamomile',
        detail:
            'Chamomile (American English) or camomile (British English; see spelling differences) is the common name for several daisy-like plants of the family Asteraceae. Two of the species, Matricaria recutita and Anthemis nobilis, are commonly used to make herbal infusions for beverages. There is insufficient scientific evidence that consuming chamomile in foods or beverages has any beneficial effect on health.',
        imageAsset: 'assets/herbal/chamomile.jpg',
        imageUrl: [
          'https://images3.alphacoders.com/904/904474.jpg',
          'https://images2.alphacoders.com/108/1088144.jpg',
          'https://www.wallpaperflare.com/static/561/442/477/daisies-flowers-blur-white-wallpaper.jpg'
        ]),
  ];
}
