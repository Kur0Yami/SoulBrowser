package io.opencensus.common;

import java.util.TreeMap;

/* loaded from: classes3.dex */
public final class ServerStatsFieldEnums {

    /* loaded from: classes3.dex */
    public enum Id {
        /* JADX INFO: Fake field, exist only in values array */
        SERVER_STATS_LB_LATENCY_ID(0),
        /* JADX INFO: Fake field, exist only in values array */
        SERVER_STATS_SERVICE_LATENCY_ID(1),
        /* JADX INFO: Fake field, exist only in values array */
        SERVER_STATS_TRACE_OPTION_ID(2);

        public static final TreeMap f = new TreeMap();

        /* renamed from: c, reason: collision with root package name */
        public final int f21061c;

        static {
            for (Id id : values()) {
                f.put(Integer.valueOf(id.f21061c), id);
            }
        }

        Id(int i) {
            this.f21061c = i;
        }
    }

    /* loaded from: classes3.dex */
    public enum Size {
        /* JADX INFO: Fake field, exist only in values array */
        SERVER_STATS_LB_LATENCY_SIZE(8),
        /* JADX INFO: Fake field, exist only in values array */
        SERVER_STATS_SERVICE_LATENCY_SIZE(8),
        /* JADX INFO: Fake field, exist only in values array */
        SERVER_STATS_TRACE_OPTION_SIZE(1);


        /* renamed from: c, reason: collision with root package name */
        public final int f21062c;

        Size(int i) {
            this.f21062c = i;
        }
    }

    static {
        for (Size size : Size.values()) {
            int i = size.f21062c;
        }
    }
}
