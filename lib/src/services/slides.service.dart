import 'package:fanpet/src/models/slide.model.dart';
import 'package:fanpet/src/shared/widgets/slide.dart';

class SlideService {
  static final SlideService _instance = SlideService._internal();

  factory SlideService() {
    return _instance;
  }

  SlideService._internal();
  final List<SlideModel> _slidesData = [
    SlideModel(img: 'assets/images/icon.png', imgHeight: 220, text: 'Hola amigo FanPet, bienvenido a la aplicación que te permitirá llevar en tu bolsillo toda información de tu mascota.'),
    SlideModel(img: 'assets/images/qr.png', imgHeight: 150, text: 'Podrás generar un codigo QR donde quedará registrada toda la historia clínica, esquema de vacunación, alergias e información importante de tu mascota, para que pueda ser leido por el veterinario al momento de una urgencia.'),
    SlideModel(img: 'assets/images/map.png', imgHeight: 170, text: 'Encuentra las veterinarias registradas cerca a tu ubicación actual, servicios domiciliarios 24 horas, laboratorio clínico, medicina especializada y homeopática para mascotas'),
    SlideModel(img: 'assets/images/friendly.png', imgHeight: 170, text: 'Recibe notificaciones informando, fechas programadas de vacunación, desparacitacion, eventos para mascotas y lugares PetFriendly (reciben mascotas). De esta manera estaras siempre al dia con tu mascota'),
  ];

  List<SlideWidget> get slides => _slidesData.map((slide) => SlideWidget(slideData: slide,)).toList();

}