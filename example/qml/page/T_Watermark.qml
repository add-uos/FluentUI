import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtQuick.Window 2.15
import FluentUI 1.0
import "../component"

FluContentPage{

    title: qsTr("Watermark")

    FluFrame{
        anchors.fill: parent

        ColumnLayout{
            anchors{
                left: parent.left
                leftMargin: 14
            }

            RowLayout{
                spacing: 10
                Layout.topMargin: 14
                FluText{
                    text: qsTr("text:")
                    Layout.alignment: Qt.AlignVCenter
                }
                FluTextBox{
                    id: text_box
                    text: "会磨刀的小猪"
                    Layout.preferredWidth: 240
                }
            }

            RowLayout{
                spacing: 10
                FluText{
                    text: qsTr("textSize:")
                    Layout.alignment: Qt.AlignVCenter
                }
                FluSlider{
                    id: slider_text_size
                    value: 20
                    from: 13
                    to:50
                }
            }
            RowLayout{
                spacing: 10
                FluText{
                    text: qsTr("gapX:")
                    Layout.alignment: Qt.AlignVCenter
                }
                FluSlider{
                    id:slider_gap_x
                    value: 100
                }
            }
            RowLayout{
                spacing: 10
                FluText{
                    text: qsTr("gapY:")
                    Layout.alignment: Qt.AlignVCenter
                }
                FluSlider{
                    id: slider_gap_y
                    value: 100
                }
            }
            RowLayout{
                spacing: 10
                FluText{
                    text: qsTr("offsetX:")
                    Layout.alignment: Qt.AlignVCenter
                }
                FluSlider{
                    id:slider_offset_x
                    value: 50
                }
            }
            RowLayout{
                spacing: 10
                FluText{
                    text: qsTr("offsetY:")
                    Layout.alignment: Qt.AlignVCenter
                }
                FluSlider{
                    id: slider_offset_y
                    value: 50
                }
            }
            RowLayout{
                spacing: 10
                FluText{
                    text: qsTr("rotate:")
                    Layout.alignment: Qt.AlignVCenter
                }
                FluSlider{
                    id: slider_rotate
                    value: 22
                    from: 0
                    to:360
                }
            }
            RowLayout{
                spacing: 10
                FluText{
                    text: qsTr("textColor:")
                    Layout.alignment: Qt.AlignVCenter
                }
                FluColorPicker{
                    id: color_picker
                    current: Qt.rgba(0,0,0,0.1)
                }
            }
        }

        FluWatermark{
            id: water_mark
            anchors.fill: parent
            text:text_box.text
            textColor: color_picker.current
            textSize: slider_text_size.value
            rotate: slider_rotate.value
            gap:Qt.point(slider_gap_x.value,slider_gap_y.value)
            offset: Qt.point(slider_offset_x.value,slider_offset_y.value)
        }
    }

}
