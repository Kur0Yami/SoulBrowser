package com.frostwire.jlibtorrent.alerts;

import com.frostwire.jlibtorrent.swig.socket_type_t;

/* loaded from: classes.dex */
public enum SocketType {
    TCP(socket_type_t.f2726c.f2727a),
    /* JADX INFO: Fake field, exist only in values array */
    TCP_SSL(socket_type_t.d.f2727a),
    /* JADX INFO: Fake field, exist only in values array */
    UDP(socket_type_t.e.f2727a),
    /* JADX INFO: Fake field, exist only in values array */
    I2P(socket_type_t.f.f2727a),
    /* JADX INFO: Fake field, exist only in values array */
    SOCKS5(socket_type_t.g.f2727a),
    /* JADX INFO: Fake field, exist only in values array */
    UTP_SSL(socket_type_t.h.f2727a),
    UNKNOWN(-1);


    /* renamed from: c, reason: collision with root package name */
    public final int f2652c;

    SocketType(int i) {
        this.f2652c = i;
    }
}
