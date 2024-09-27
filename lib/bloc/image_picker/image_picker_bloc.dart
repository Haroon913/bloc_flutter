import 'package:bloc/bloc.dart';
import 'package:bloc_flutter/bloc/image_picker/image_picker_event.dart';
import 'package:bloc_flutter/bloc/image_picker/image_picker_state.dart';
import 'package:image_picker/image_picker.dart';
import '../../utils/image_picker_utils.dart';

class ImagePickerBloc extends Bloc<ImagePickerEvent,ImagePickerState>{
  final ImagePickerUtils imagePickerUtils;
  ImagePickerBloc(this.imagePickerUtils):super(ImagePickerState()){
    on<CameraCapture>(cameraCapture);

  }
  void cameraCapture(CameraCapture event , Emitter<ImagePickerState> states)async{
    XFile? file=await imagePickerUtils.cameraCapture();
    emit(state.copywith(file:file));
  }
}