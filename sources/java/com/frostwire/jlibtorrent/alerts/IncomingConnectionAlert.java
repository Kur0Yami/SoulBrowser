package com.frostwire.jlibtorrent.alerts;

import com.frostwire.jlibtorrent.swig.incoming_connection_alert;

/* loaded from: classes.dex */
public final class IncomingConnectionAlert extends AbstractAlert<incoming_connection_alert> {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class SocketType {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ SocketType[] f2646c = {new Enum("NONE", 0), new Enum("TCP", 1), new Enum("SOCKS5", 2), new Enum("HTTP", 3), new Enum("UTP", 4), new Enum("I2P", 5), new Enum("SSL_TCP", 6), new Enum("SSL_SOCKS5", 7), new Enum("HTTPS", 8), new Enum("SSL_UTP", 9), new Enum("UNKNOWN", 10)};

        /* JADX INFO: Fake field, exist only in values array */
        SocketType EF5;

        public static SocketType valueOf(String str) {
            return (SocketType) Enum.valueOf(SocketType.class, str);
        }

        public static SocketType[] values() {
            return (SocketType[]) f2646c.clone();
        }
    }
}
