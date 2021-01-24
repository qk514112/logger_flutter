/// Flutter extension for logger
library logger_flutter;

import 'dart:async';
import 'dart:collection';
import 'dart:io';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:logger/logger.dart';
import 'package:sensors/sensors.dart';

import 'src/ansi_parser.dart';

part 'src/log_console.dart';
part 'src/log_console_on_shake.dart';
part 'src/shake_detector.dart';
