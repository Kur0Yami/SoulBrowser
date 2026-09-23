package com.frostwire.jlibtorrent.alerts;

import com.frostwire.jlibtorrent.swig.dht_pkt_alert;

/* loaded from: classes.dex */
public final class DhtPktAlert extends AbstractAlert<dht_pkt_alert> {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class Direction {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ Direction[] f2645c;

        /* JADX INFO: Fake field, exist only in values array */
        Direction EF0;

        /* JADX WARN: Multi-variable type inference failed */
        static {
            int i = dht_pkt_alert.direction_t.f2677c.f2678a;
            Enum r0 = new Enum("INCOMING", 0);
            int i2 = dht_pkt_alert.direction_t.d.f2678a;
            f2645c = new Direction[]{r0, new Enum("OUTGOING", 1), new Enum("UNKNOWN", 2)};
        }

        public static Direction valueOf(String str) {
            return (Direction) Enum.valueOf(Direction.class, str);
        }

        public static Direction[] values() {
            return (Direction[]) f2645c.clone();
        }
    }
}
