import 'package:instagram/core/models/post.model.dart';
import 'package:instagram/core/models/story.model.dart';
import 'package:instagram/core/models/user.model.dart';

User currentUser = User(
    id: 'id',
    userName: 'deeevvvvvvv_',
    profilePhoto:
        'https://instagram.famd4-1.fna.fbcdn.net/v/t51.2885-19/s150x150/272049214_596666955048925_207814949899583329_n.jpg?_nc_ht=instagram.famd4-1.fna.fbcdn.net&_nc_cat=101&_nc_ohc=JX7i100hQicAX_eROcV&edm=ABfd0MgBAAAA&ccb=7-4&oh=00_AT_yvTaFzYsAUwaRnJ6sq8ZRRvhfjVLiNILQVCLhup4Y1w&oe=61EE3A19&_nc_sid=7bff83');

User mockUser = User(
    id: 'id',
    userName: 'aaa',
    profilePhoto:
        'https://m.media-amazon.com/images/M/MV5BZmQ5NGFiNWEtMmMyMC00MDdiLTg4YjktOGY5Yzc2MDUxMTE1XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_.jpg');
User mockUser2 = User(
    id: 'id',
    userName: 'aaa',
    profilePhoto:
        'https://cdn2.unrealengine.com/18br-headband-cosmetics-naruto-toast-400x400-5228564ee685.jpg');
User mockUser3 = User(
    id: 'id',
    userName: 'aaa',
    profilePhoto:
        'https://blacknerdproblems.com/wp-content/uploads/2015/08/Sakura-1.jpg');
User mockUser4 = User(
    id: 'id',
    userName: 'aaa',
    profilePhoto:
        'https://img5.goodfon.com/wallpaper/nbig/a/c6/naruto-naruto-sakura-kharuno-saske-uchikha.jpg');
User mockUser5 = User(
    id: 'id',
    userName: 'aaa',
    profilePhoto:
        'https://img.favpng.com/9/13/15/sarada-uchiha-sakura-haruno-sasuke-uchiha-naruto-uzumaki-itachi-uchiha-png-favpng-8gV2dra6MGJi1C6D6nM6NSzsg.jpg');

final List<Story> stories = [
  Story(id: 'id', postedBy: currentUser),
  Story(id: 'id', postedBy: currentUser),
  Story(id: 'id', postedBy: currentUser),
  Story(id: 'id', postedBy: currentUser),
  Story(id: 'id', postedBy: currentUser),
  Story(id: 'id', postedBy: currentUser),
  Story(id: 'id', postedBy: currentUser),
];

final List<Post> posts = [
  Post(
    id: 'id',
    postedBy: currentUser,
    imgUrl:
        'https://m.media-amazon.com/images/M/MV5BYmM4ZjgzOTYtOTY3YS00YWIzLWEwZjktNTcyNTU3YzA3NDY2XkEyXkFqcGdeQXVyMTMzNzA5OTg2._V1_.jpg',
    title: 'wtf',
    loc: 'New York , USA',
    caption: 'brainic',
    timeago: '2 minutes ago',
    totalLikes: '10000',
    totalComments: '555',
    isLiked: true,
    isBookmarked: false,
  ),
  Post(
    id: 'id',
    postedBy: currentUser,
    imgUrl: currentUser.profilePhoto,
    title: 'wtf',
    loc: 'New York , USA',
    caption: 'brainic',
    timeago: '2 minutes ago',
    totalLikes: '10000',
    totalComments: '555',
    isLiked: true,
    isBookmarked: false,
  ),
  Post(
    id: 'id',
    postedBy: currentUser,
    imgUrl:
        'https://progameguides.com/wp-content/uploads/2021/11/fortnite-outfit-sakura-haruno-768x803.jpg',
    title: 'wtf',
    loc: 'New York , USA',
    caption: 'brainic',
    timeago: '2 minutes ago',
    totalLikes: '10000',
    totalComments: '555',
    isLiked: true,
    isBookmarked: false,
  ),
  Post(
    id: 'id',
    postedBy: currentUser,
    imgUrl:
        'https://sm.mashable.com/mashable_in/feature/3/368-episod/368-episodes-later-kakashis-face-revealed-in-naruto-shippude_vrrk.jpg',
    title: 'wtf',
    loc: 'New York , USA',
    caption: 'brainic',
    timeago: '2 minutes ago',
    totalLikes: '10000',
    totalComments: '555',
    isLiked: true,
    isBookmarked: false,
  ),
];
