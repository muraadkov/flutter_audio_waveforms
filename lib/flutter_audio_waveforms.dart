// library flutter_audio_waveforms;

// import 'dart:developer';
// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:flutter_audio_waveforms/waveforms/polygon_waveform/polygon_waveform.dart';
// import 'package:flutter_audio_waveforms/waveforms/rectangle_waveform/rectangle_waveform.dart';
// import 'package:flutter_audio_waveforms/waveforms/squiggly_waveform/squiggly_waveform.dart';

// class AudioWaveforms extends StatefulWidget {
//   const AudioWaveforms({
//     Key? key,
//     required this.maxDuration,
//     required this.elapsedDuration,
//     required this.samples,
//     required this.height,
//     required this.width,
//     this.shader,
//     this.color,
//     this.waveFormType = WaveFormType.polygon,
//   }) : super(key: key);

//   final Duration maxDuration;
//   final Duration elapsedDuration;
//   final List<double> samples;
//   final double width;
//   final double height;
//   final Shader? shader;
//   final Color? color;
//   final WaveFormType waveFormType;

//   @override
//   State<AudioWaveforms> createState() => _AudioWaveformsState();
// }

// class _AudioWaveformsState extends State<AudioWaveforms> {
//   late List<double> data;
//   late Duration maxDuration;
//   late Duration elapsedDuration;
//   late int xAudio;
//   late double sliderValue;

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();

//     data = widget.samples;
//     maxDuration = widget.maxDuration;
//     elapsedDuration = widget.elapsedDuration;
//     xAudio = 0;
//     sliderValue = 0;
//   }

//   @override
//   void didUpdateWidget(covariant AudioWaveforms oldWidget) {
//     // TODO: implement didUpdateWidget
//     setState(() {
//       data = widget.samples;
//       maxDuration = widget.maxDuration;
//       elapsedDuration = widget.elapsedDuration;
//       sliderValue = elapsedDuration.inMilliseconds / maxDuration.inMilliseconds;

//       xAudio = (data.length * sliderValue).toInt();
//     });

//     super.didUpdateWidget(oldWidget);
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (data.isEmpty) return const SizedBox.shrink();
//     switch (widget.waveFormType) {
//       case WaveFormType.polygon:
//         return PolygonWaveform(
//           width: widget.width,
//           height: widget.height,
//           maxDuration: widget.maxDuration,
//           elapsedDuration: widget.elapsedDuration,
//           samples: data,
//         );
//       case WaveFormType.squiggly:
//         return SquigglyWaveform(
//           maxDuration: widget.maxDuration,
//           elapsedDuration: elapsedDuration,
//           samples: data,
//           width: widget.width,
//           height: widget.height,
//         );
//       case WaveFormType.rectangle:
//         return RectangleWaveform(
//           width: widget.width,
//           height: widget.height,
//           maxDuration: widget.maxDuration,
//           elapsedDuration: widget.elapsedDuration,
//           samples: data,
//         );
//     }
//   }
// }

// enum WaveFormType {
//   polygon,
//   squiggly,
//   rectangle,
// }
