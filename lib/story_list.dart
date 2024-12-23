class Story {
  final String title;
  final String subtitle;
  final String description;
  final String imageAsset;

  Story({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.imageAsset,
  });

  get imageUrls => null;
}

var storyList = [
  Story(
    title: 'Inception',
    subtitle: 'A Mind-Bending Thriller',
    description:
        'A thief who steals corporate secrets through the use of dream-sharing technology is given the chance to have his criminal history erased.',
    imageAsset:
        'https://cinemags.org/wp-content/uploads/2020/07/Inception-39393.jpg',
  ),
  Story(
    title: 'The Dark Knight',
    subtitle: 'A Hero’s Struggle',
    description:
        'Batman must face the Joker, a criminal mastermind who seeks to undermine Gotham City and its hero.',
    imageAsset:
        'https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_FMjpg_UX1000_.jpg',
  ),
  Story(
    title: 'The Matrix',
    subtitle: 'Reality or Simulation?',
    description:
        'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.',
    imageAsset:
        'https://upload.wikimedia.org/wikipedia/id/c/c1/The_Matrix_Poster.jpg',
  ),
  Story(
    title: 'The Shawshank Redemption',
    subtitle: 'Hope in Prison',
    description:
        'Two imprisoned men form a deep bond over the years, finding solace and eventual redemption through acts of common decency.',
    imageAsset:
        'https://upload.wikimedia.org/wikipedia/id/8/81/ShawshankRedemptionMoviePoster.jpg',
  ),
  Story(
    title: 'Forrest Gump',
    subtitle: 'A Life Full of Surprises',
    description:
        'The presidencies of Kennedy and Johnson, the Vietnam War, the Civil Rights Movement, and other historical events unfold from the perspective of an Alabama man with an extraordinary life.',
    imageAsset:
        'https://bhaskara.id/wp-content/uploads/2024/05/IMG-20240528-WA0010.jpg',
  ),
  Story(
    title: 'Interstellar',
    subtitle: 'A Journey Beyond the Stars',
    description:
        'A group of explorers travel through a wormhole in space in an attempt to ensure humanity’s survival.',
    imageAsset:
        'https://kmtntf.ft.ugm.ac.id/wp-content/uploads/sites/771/2023/02/interstellar_poster_0.jpg',
  ),
  Story(
    title: 'Gladiator',
    subtitle: 'A Fight for Revenge',
    description:
        'A betrayed Roman general seeks revenge against the corrupt emperor who murdered his family and sent him into slavery.',
    imageAsset:
        'https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/01/2024/11/14/IMG_20241113_171720-736694824.jpg',
  ),
  Story(
    title: 'Titanic',
    subtitle: 'A Tragic Love Story',
    description:
        'A seventeen-year-old aristocrat falls in love with a kind but poor artist aboard the luxurious, ill-fated R.M.S. Titanic.',
    imageAsset:
        'https://klausa.co/wp-content/uploads/2023/04/WhatsApp-Image-2023-04-14-at-01.32.56-e1681421447189.jpeg',
  ),
  Story(
    title: 'The Godfather',
    subtitle: 'An Epic Crime Saga',
    description:
        'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.',
    imageAsset:
        'https://m.media-amazon.com/images/M/MV5BYTJkNGQyZDgtZDQ0NC00MDM0LWEzZWQtYzUzZDEwMDljZWNjXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
  ),
  Story(
    title: 'Star Wars: A New Hope',
    subtitle: 'The Beginning of a Galactic Saga',
    description:
        'A young farmer sets out on an adventure with a group of unlikely allies, embarking on a mission to rescue a princess and destroy an evil empire.',
    imageAsset:
        'https://play-lh.googleusercontent.com/7OTx1DboUIszuMbHZwFHhYOLRQspWozEx7xFtYKG674mtGA_PSRPGIdtv7jmR4jQ9d0',
  ),
  Story(
    title: 'Avengers: Endgame',
    subtitle: 'The Final Battle',
    description:
        'After the devastating events of Avengers: Infinity War, the Avengers work to reverse the damage caused by Thanos.',
    imageAsset:
        'https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p3/75/2024/05/09/HD-wallpaper-the-avengers-avengers-endgame-avengers-avengers-endgame-3042865890.jpg',
  ),
  Story(
    title: 'The Lion King',
    subtitle: 'A Journey of Kingship',
    description:
        'Lion prince Simba is cast out of his pride and embarks on an adventure that will lead him back to reclaim his destiny as king.',
    imageAsset:
        'https://cdn.antaranews.com/cache/1200x800/2021/02/12/LionKingThe2019_DUT_1920x1080.jpg',
  ),
  Story(
    title: 'Jurassic Park',
    subtitle: 'Dinosaurs Walk Again',
    description:
        'During a preview tour, a theme park suffers a major power breakdown that allows its cloned dinosaur exhibits to run wild.',
    imageAsset:
        'https://play-lh.googleusercontent.com/proxy/gyYzLdhikv0LJIXs6YUr3jBoYvz4OmtkN_QTjV4-RPFrWG35RQGDkey3I3ZXWUvns4aI1u_goS3WAe_03vE1pLVI6nyNzpDBi7h9x0g0MDg1VPIhGw=s1920-w1920-h1080',
  ),
  Story(
    title: 'The Lord of the Rings: The Fellowship of the Ring',
    subtitle: 'A Quest to Save Middle-earth',
    description:
        'A young hobbit is tasked with an epic journey to destroy a powerful ring that could bring evil back into the world.',
    imageAsset:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwjvtARVQAFZvjgby4i1ev7I2h0OgHcG8YoQ&s',
  ),
  Story(
    title: 'Harry Potter and the Sorcerer\'s Stone',
    subtitle: 'The Start of a Magical Journey',
    description:
        'A young boy discovers that he is a wizard and attends a magical school where he uncovers dark secrets about his past.',
    imageAsset:
        'https://m.media-amazon.com/images/M/MV5BNTU1MzgyMDMtMzBlZS00YzczLThmYWEtMjU3YmFlOWEyMjE1XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
  ),
  Story(
    title: 'The Pursuit of Happyness',
    subtitle: 'A Fight for a Better Life',
    description:
        'A struggling salesman takes custody of his son as he begins a life-changing journey to success.',
    imageAsset:
        'https://www.sonypictures.com/sites/default/files/styles/max_560x840/public/title-key-art/thepursuitofhappyness_onesheet_1400x2100.png?itok=BSpvsOsJ',
  ),
  Story(
    title: 'The Avengers',
    subtitle: 'Assembling the Heroes',
    description:
        'Earth’s mightiest heroes must come together to stop an alien invasion and protect humanity.',
    imageAsset:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBzT099X5y7WMBqa8kMb-jBdcgjJtALSjygw&s',
  ),
  Story(
    title: 'Frozen',
    subtitle: 'A Tale of Sisters',
    description:
        'When their kingdom is trapped in an eternal winter, two sisters must join forces to stop a curse and restore peace.',
    imageAsset:
        'https://lumiere-a.akamaihd.net/v1/images/hb_frozenanniversaryrefresh_fallback_mobile_2326_v2_f49_77e68f09.jpeg?region=0%2C0%2C640%2C480',
  ),
  Story(
    title: 'Shrek',
    subtitle: 'An Ogre’s Fairytale',
    description:
        'An ogre sets out on a quest to rescue a princess and save his swamp from a group of unwanted fairy tale creatures.',
    imageAsset:
        'https://cdn0-production-images-kly.akamaized.net/WoVtv1m7286XzeoddaiJGkuGQ28=/800x1066/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/4882915/original/051750100_1720075343-download__2_.jpeg',
  ),
  Story(
    title: 'Back to the Future',
    subtitle: 'A Time Travel Adventure',
    description:
        'A teenager is accidentally sent 30 years into the past in a time machine built by his close friend, the eccentric Dr. Emmett Brown.',
    imageAsset:
        'https://images.squarespace-cdn.com/content/5c62c09c4d546e27dc1016c7/bb899014-6c80-4956-b3e2-4169931edbf5/ff68e65f5d5ee5dd98fc71c1218a71e3e1008668880b6430d4e912ebf5bda412._UR1920%2C1080_.jpg?format=1500w&content-type=image%2Fjpeg',
  ),
];
