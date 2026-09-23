package com.frostwire.jlibtorrent.alerts;

import com.frostwire.jlibtorrent.swig.dht_log_alert;

/* loaded from: classes.dex */
public final class DhtLogAlert extends AbstractAlert<dht_log_alert> {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class DhtModule {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ DhtModule[] f2644c;

        /* JADX INFO: Fake field, exist only in values array */
        DhtModule EF0;

        /* JADX WARN: Multi-variable type inference failed */
        static {
            int i = dht_log_alert.dht_module_t.f2675c.f2676a;
            Enum r0 = new Enum("TRACKER", 0);
            int i2 = dht_log_alert.dht_module_t.d.f2676a;
            Enum r1 = new Enum("NODE", 1);
            int i3 = dht_log_alert.dht_module_t.e.f2676a;
            Enum r3 = new Enum("ROUTING_TABLE", 2);
            int i4 = dht_log_alert.dht_module_t.f.f2676a;
            Enum r5 = new Enum("RPC_MANAGER", 3);
            int i5 = dht_log_alert.dht_module_t.g.f2676a;
            f2644c = new DhtModule[]{r0, r1, r3, r5, new Enum("TRAVERSAL", 4), new Enum("UNKNOWN", 5)};
        }

        public static DhtModule valueOf(String str) {
            return (DhtModule) Enum.valueOf(DhtModule.class, str);
        }

        public static DhtModule[] values() {
            return (DhtModule[]) f2644c.clone();
        }
    }
}
