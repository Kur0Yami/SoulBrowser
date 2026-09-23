package com.frostwire.jlibtorrent;

import com.frostwire.jlibtorrent.swig.peer_info;

/* loaded from: classes.dex */
public class PeerInfo {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class ConnectionType {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ ConnectionType[] f2607c;

        /* JADX INFO: Fake field, exist only in values array */
        ConnectionType EF0;

        /* JADX WARN: Multi-variable type inference failed */
        static {
            int i = peer_info.connection_type_t.f2697c.f2698a;
            Enum r0 = new Enum("STANDARD_BITTORRENT", 0);
            int i2 = peer_info.connection_type_t.d.f2698a;
            Enum r1 = new Enum("WEB_SEED", 1);
            int i3 = peer_info.connection_type_t.e.f2698a;
            f2607c = new ConnectionType[]{r0, r1, new Enum("HTTP_SEED", 2), new Enum("UNKNOWN", 3)};
        }

        public static ConnectionType valueOf(String str) {
            return (ConnectionType) Enum.valueOf(ConnectionType.class, str);
        }

        public static ConnectionType[] values() {
            return (ConnectionType[]) f2607c.clone();
        }
    }
}
