// import 'dart:io';
// import 'dart:typed_data';
//
// import 'package:icons_launcher/utils/cli_logger.dart';
// import 'package:video_thumbnail/video_thumbnail.dart';
//
// enum FileTypeEnum {
//   video,
//   image,
//   document,
//   audio,
//   temp,
//   unknown,
// }
//
// extension FileTypeEnumExtensionOnString on String {
//   FileTypeEnum getFileTypeEnum() {
//     switch (toLowerCase()) {
//       case 'video':
//       case 'videos':
//         return FileTypeEnum.video;
//       case 'image':
//       case 'images':
//       case 'photos':
//       case 'photo':
//       case 'img':
//         return FileTypeEnum.image;
//       case 'document':
//       case 'docs':
//       case 'documents':
//       case 'doc':
//         return FileTypeEnum.document;
//       case 'audio':
//       case 'audios':
//       case 'music':
//       case 'musics':
//       case 'voice':
//       case 'voices':
//       case 'record':
//       case 'records':
//         return FileTypeEnum.audio;
//       case 'temp':
//       case 'temps':
//       case 'tmp':
//         return FileTypeEnum.temp;
//       default:
//         return FileTypeEnum.unknown;
//     }
//   }
// }
//
// const List<String> docsExtensions = [
//   'doc',
//   'docx',
//   'pdf',
//   // 'txt',
//   // 'xls',
//   // 'xlsx',
//   // 'ppt',
//   // 'pptx'
// ];
// const List<String> imagesExtensions = [
//   'jpg',
//   'jpeg',
//   'png',
//   'gif',
//   'bmp',
//   'tiff',
//   'webp',
//   'heic',
//   'svg',
// ];
// const List<String> videosExtensions = [
//   'mp4',
//   'mov',
//   'avi',
//   'mkv',
//   'flv',
//   'wmv',
//   'webm',
//   'm4v',
//   '3gp'
// ];
//
// const List<String> audioExtensions = [
//   'mp3', // MPEG Layer 3 Audio
//   'wav', // Waveform Audio File Format
//   'flac', // Free Lossless Audio Codec
//   'aac', // Advanced Audio Codec
//   'ogg', // Ogg Vorbis Audio
//   'm4a', // MPEG-4 Audio
//   'wma', // Windows Media Audio
//   'alac', // Apple Lossless Audio Codec
//   'opus', // Opus Audio
//   'aiff', // Audio Interchange File Format
// ];
//
// const List<String> tempExtensions = ['temp', 'tmp'];
//
// extension FileTypeChecker on File {
//   FileTypeEnum _getFileType() {
//     final extension = path.split('.').last.toLowerCase();
//     if (tempExtensions.contains(extension)) {
//       return FileTypeEnum.temp;
//     } else if (docsExtensions.contains(extension)) {
//       return FileTypeEnum.document;
//     } else if (audioExtensions.contains(extension)) {
//       return FileTypeEnum.audio;
//     } else if (videosExtensions.contains(extension)) {
//       return FileTypeEnum.video;
//     } else if (imagesExtensions.contains(extension)) {
//       return FileTypeEnum.image;
//     } else {
//       return FileTypeEnum.unknown;
//     }
//   }
//
//   FileTypeEnum get type => _getFileType();
//
//   bool get isImage => type == FileTypeEnum.image;
//
//   bool get isVideo => type == FileTypeEnum.video;
//
//   bool get isAudio => type == FileTypeEnum.audio;
//
//   bool get isDoc => type == FileTypeEnum.document;
//
//   bool get isTemp => type == FileTypeEnum.temp;
// }
//
// Future<Uint8List?> generateThumbnail({
//   // path to the video file or video link
//   required String path,
//   Map<String, String>? headers,
//   String? thumbnailPath,
//   ImageFormat imageFormat = ImageFormat.JPEG,
//   int maxHeight = 0,
//   int maxWidth = 0,
//   int timeMs = 0,
//   int quality = 10,
// }) async {
//   try {
//     final thumbnailData = await VideoThumbnail.thumbnailData(
//       video: path,
//       imageFormat: imageFormat,
//       maxHeight: maxHeight,
//       maxWidth: maxWidth,
//       timeMs: timeMs,
//       quality: quality,
//     );
//     return thumbnailData;
//   } catch (e) {
//     CliLogger.error("thumbnail generation error: $e");
//     return null;
//   }
// }
