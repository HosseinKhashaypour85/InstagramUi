class PostModel {
  final String id;
  final String title;
  final String location;
  final String profile;
  final String image;
   bool isLike;
   bool isSave;
  final bool isSlide;
  final String caption;

  PostModel(
      {required this.id,
      required this.title,
      required this.location,
      required this.profile,
      required this.image,
      required this.isLike,
      required this.isSave,
      required this.isSlide,
      required this.caption});

void toggleLike(){
  isLike = !isLike;
}

void toggleSave(){
  isSave = !isSave;
}

  static List<PostModel> postData = [
    PostModel(
      id: "1",
      title: "asp_net",
      location: "tehran",
      profile: "assets/images/profile/car.jpg",
      image: "assets/images/post/post-1.jpg",
      isLike: false,
      isSave: false,
      isSlide: false,
      caption: '''
      
      لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز
      
      ''',
    ),
    PostModel(
      id: "2",
      title: "top_learn",
      location: "tehran",
      profile: "assets/images/profile/crs.jpg",
      image: "assets/images/post/post-2.jpg",
      isLike: false,
      isSave: false,
      isSlide: false,
      caption: '''
      
      لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز
      
      ''',
    ),
    PostModel(
      id: "3",
      title: "cinema_topLearn",
      location: "tehran",
      profile: "assets/images/profile/eminem.jpg",
      image: "assets/images/post/post-3.jpg",
      isLike: false,
      isSave: false,
      isSlide: false,
      caption: '''
      
      لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز
      
      ''',
    ),
    PostModel(
      id: "4",
      title: "topLearn_Laravel",
      location: "tehran",
      profile: "assets/images/profile/me.png",
      image: "assets/images/post/post-4.jpg",
      isLike: false,
      isSave: false,
      isSlide: false,
      caption: '''
      
      لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز
      
      ''',
    ),
    PostModel(
      id: "5",
      title: "topLearn_php",
      location: "tehran",
      profile: "assets/images/profile/messi.jpg",
      image: "assets/images/post/post-5.jpg",
      isLike: false,
      isSave: false,
      isSlide: false,
      caption: '''
      
      لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز
      
      ''',
    ),
    PostModel(
      id: "6",
      title: "car_city",
      location: "tehran",
      profile: "assets/images/profile/moon.jpg",
      image: "assets/images/post/post-6.jpg",
      isLike: false,
      isSave: false,
      isSlide: false,
      caption: '''
      
      لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز
      
      ''',
    ),
    PostModel(
      id: "7",
      title: "kh.hossein__",
      location: "tehran",
      profile: "assets/images/profile/person.jpg",
      image: "assets/images/post/post-7.jpg",
      isLike: false,
      isSave: false,
      isSlide: false,
      caption: '''
      
      لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز
      
      ''',
    ),
    PostModel(
      id: "8",
      title: "goggle",
      location: "USA",
      profile: "assets/images/profile/person1.jpg",
      image: "assets/images/post/post-8.jpg",
      isLike: false,
      isSave: false,
      isSlide: false,
      caption: '''
      
      لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز
      
      ''',
    ),
    PostModel(
      id: "9",
      title: "Zellatan",
      location: "USA",
      profile: "assets/images/profile/rock.jpg",
      image: "assets/images/post/post-9.jpg",
      isLike: false,
      isSave: false,
      isSlide: false,
      caption: '''
      
      لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز
      
      ''',
    ),
  ];
}
