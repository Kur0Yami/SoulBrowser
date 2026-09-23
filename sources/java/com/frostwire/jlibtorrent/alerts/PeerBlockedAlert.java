package com.frostwire.jlibtorrent.alerts;

import com.frostwire.jlibtorrent.swig.peer_blocked_alert;

/* loaded from: classes.dex */
public final class PeerBlockedAlert extends TorrentAlert<peer_blocked_alert> {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class Reason {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ Reason[] f2648c;

        /* JADX INFO: Fake field, exist only in values array */
        Reason EF0;

        /* JADX WARN: Multi-variable type inference failed */
        static {
            int i = peer_blocked_alert.reason_t.f2692c.f2693a;
            Enum r0 = new Enum("IP_FILTER", 0);
            int i2 = peer_blocked_alert.reason_t.d.f2693a;
            Enum r1 = new Enum("PORT_FILTER", 1);
            int i3 = peer_blocked_alert.reason_t.e.f2693a;
            Enum r3 = new Enum("I2P_MIXED", 2);
            int i4 = peer_blocked_alert.reason_t.f.f2693a;
            Enum r5 = new Enum("PRIVILEGED_PORTS", 3);
            int i5 = peer_blocked_alert.reason_t.g.f2693a;
            Enum r7 = new Enum("UTP_DISABLED", 4);
            int i6 = peer_blocked_alert.reason_t.h.f2693a;
            Enum r9 = new Enum("TCP_DISABLED", 5);
            int i7 = peer_blocked_alert.reason_t.i.f2693a;
            f2648c = new Reason[]{r0, r1, r3, r5, r7, r9, new Enum("INVALID_LOCAL_INTERFACE", 6), new Enum("UNKNOWN", 7)};
        }

        public static Reason valueOf(String str) {
            return (Reason) Enum.valueOf(Reason.class, str);
        }

        public static Reason[] values() {
            return (Reason[]) f2648c.clone();
        }
    }
}
