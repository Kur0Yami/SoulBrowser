package com.frostwire.jlibtorrent.alerts;

import com.frostwire.jlibtorrent.swig.stats_alert;

/* loaded from: classes.dex */
public final class StatsAlert extends TorrentAlert<stats_alert> {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class StatsChannel {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ StatsChannel[] f2653c;

        /* JADX INFO: Fake field, exist only in values array */
        StatsChannel EF0;

        /* JADX WARN: Multi-variable type inference failed */
        static {
            int i = stats_alert.stats_channel.f2728c.f2729a;
            Enum r0 = new Enum("UPLOAD_PAYLOAD", 0);
            int i2 = stats_alert.stats_channel.d.f2729a;
            Enum r1 = new Enum("UPlOAD_PROTOCOL", 1);
            int i3 = stats_alert.stats_channel.e.f2729a;
            Enum r3 = new Enum("DOWNLOAD_PAYLOAD", 2);
            int i4 = stats_alert.stats_channel.f.f2729a;
            Enum r5 = new Enum("DOWNLOAD_PROTOCOL", 3);
            int i5 = stats_alert.stats_channel.g.f2729a;
            Enum r7 = new Enum("UPLOAD_IP_PROTOCOL", 4);
            int i6 = stats_alert.stats_channel.h.f2729a;
            Enum r9 = new Enum("DOWNLOAD_IP_PROTOCOL", 5);
            int i7 = stats_alert.stats_channel.i.f2729a;
            f2653c = new StatsChannel[]{r0, r1, r3, r5, r7, r9, new Enum("NUM_CHANNELS", 6)};
        }

        public static StatsChannel valueOf(String str) {
            return (StatsChannel) Enum.valueOf(StatsChannel.class, str);
        }

        public static StatsChannel[] values() {
            return (StatsChannel[]) f2653c.clone();
        }
    }
}
