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
    // DccObject 的 iconSource 是只读（由 icon 派生），这里必须用可写的 icon
    icon: "file:///usr/share/dde-control-center/icons/sidebar/network-light.svg"
    weight: 40
    onShowPageFunChanged: showPage()
    onActive: function (cmdParam) {
        cmd = cmdParam
        showPage()
    }
}
