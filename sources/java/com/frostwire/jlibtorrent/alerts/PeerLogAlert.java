package com.frostwire.jlibtorrent.alerts;

import com.frostwire.jlibtorrent.swig.peer_log_alert;

/* loaded from: classes.dex */
public final class PeerLogAlert extends PeerAlert<peer_log_alert> {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class Direction {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ Direction[] f2649c;

        /* JADX INFO: Fake field, exist only in values array */
        Direction EF0;

        /* JADX WARN: Multi-variable type inference failed */
        static {
            int i = peer_log_alert.direction_t.f2699c.f2700a;
            Enum r0 = new Enum("INCOMING_MESSAGE", 0);
            int i2 = peer_log_alert.direction_t.d.f2700a;
            Enum r1 = new Enum("OUTGOING_MESSAGE", 1);
            int i3 = peer_log_alert.direction_t.e.f2700a;
            Enum r3 = new Enum("INCOMING", 2);
            int i4 = peer_log_alert.direction_t.f.f2700a;
            Enum r5 = new Enum("OUTGOING", 3);
            int i5 = peer_log_alert.direction_t.g.f2700a;
            f2649c = new Direction[]{r0, r1, r3, r5, new Enum("INFO", 4), new Enum("UNKNOWN", 5)};
        }

        public static Direction valueOf(String str) {
            return (Direction) Enum.valueOf(Direction.class, str);
        }

        public static Direction[] values() {
            return (Direction[]) f2649c.clone();
        }
    }
}
