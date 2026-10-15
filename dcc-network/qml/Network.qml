// SPDX-FileCopyrightText: 2024 - 2027 UnionTech Software Technology Co., Ltd.
// SPDX-License-Identifier: GPL-3.0-or-later
import org.deepin.dcc 1.0

DccObject {
    property string cmd
    property var showPageFun
    function showPage() {
        if (cmd.length !== 0 && showPageFun) {
            showPageFun(cmd)
            cmd = ""
        }
    }
    name: "network"
    parentName: "root"
    displayName: qsTr("Network")
    icon: "dcc_network"
    // 双色 SVG（Tabler, MIT）：实际变体由 delegate 按主题/选中态选择
    iconSource: "file:///usr/share/dde-control-center/icons/sidebar/network-light.svg"
    weight: 40
    onShowPageFunChanged: showPage()
    onActive: function (cmdParam) {
        cmd = cmdParam
        showPage()
    }
}
