#
# Copyright (c) 2016 Alex Spataru
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#

#-------------------------------------------------------------------------------
# Qt configuration
#-------------------------------------------------------------------------------

TEMPLATE = app
TARGET = QCCTV-Camera

QT += core
QT += quick
QT += quickcontrols2

#-------------------------------------------------------------------------------
# Make options
#-------------------------------------------------------------------------------

UI_DIR = uic
MOC_DIR = moc
RCC_DIR = qrc
OBJECTS_DIR = obj

#-------------------------------------------------------------------------------
# Deploy configurations
#-------------------------------------------------------------------------------

ANDROID_PACKAGE_SOURCE_DIR = $$PWD/android

#-------------------------------------------------------------------------------
# Import libraries
#-------------------------------------------------------------------------------

include ($$PWD/../QCCTV-Common/QCCTV-Common.pri)

#-------------------------------------------------------------------------------
# Import QML, resources and source code
#-------------------------------------------------------------------------------

SOURCES += \
    $$PWD/src/main.cpp

RESOURCES += \
    $$PWD/qml/qml.qrc

OTHER_FILES += \
    $$PWD/qml/*.js \
    $$PWD/qml/*.qml

DISTFILES += \
    $$PWD/android/AndroidManifest.xml
