class PageInfo {
  String title;
  String detail;
  String imgPath;
  PageInfo({this.title, this.detail, this.imgPath});
}

class IntroPageData {
  List<PageInfo> listOfPages = [
    PageInfo(
        title:
            'The easiest way to discover and book your tickets from your favorite night clubs and pubs',
        detail: 'This is first page details',
        imgPath: 'resources/images/wallpaper/wallpaper1.jpg'),
    PageInfo(
        title: 'Easily pay and manage your tickets in a secure way',
        detail: 'This is second page details',
        imgPath: 'resources/images/wallpaper/wallpaper2.jpg'),
    PageInfo(
        title:
            'Connect and socialize with like minded buddies in clubs using the Club Buddy feature',
        detail: 'This is third page details',
        imgPath: 'resources/images/wallpaper/wallpaper3.jpg'),
    PageInfo(
        title:
            'Get exclusive and attractive discounts for your favorite clubs and pubs',
        detail: 'This is fourth page details',
        imgPath: 'resources/images/wallpaper/wallpaper4.jpg'),
    PageInfo(
        title: 'Search and hire a DJ for your private parties',
        detail: 'This is fourth page details',
        imgPath: 'resources/images/wallpaper/wallpaper3.jpg')
  ];
}
