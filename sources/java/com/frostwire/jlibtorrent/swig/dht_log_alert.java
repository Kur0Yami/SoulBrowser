package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class dht_log_alert extends alert {
    public static final alert_category_t B = new alert_category_t(libtorrent_jni.dht_log_alert_static_category_get(), false);
    public static final int C;
    public transient long A;

    /* loaded from: classes.dex */
    public static final class dht_module_t {

        /* renamed from: c, reason: collision with root package name */
        public static final dht_module_t f2675c = new dht_module_t("tracker");
        public static final dht_module_t d = new dht_module_t("node");
        public static final dht_module_t e = new dht_module_t("routing_table");
        public static final dht_module_t f = new dht_module_t("rpc_manager");
        public static final dht_module_t g = new dht_module_t("traversal");
        public static int h = 0;

        /* renamed from: a, reason: collision with root package name */
        public final int f2676a;
        public final String b;

        public dht_module_t(String str) {
            this.b = str;
            int i = h;
            h = i + 1;
            this.f2676a = i;
        }

        public final String toString() {
            return this.b;
        }
    }

    static {
        libtorrent_jni.dht_log_alert_priority_get();
        C = libtorrent_jni.dht_log_alert_alert_type_get();
    }

    @Override // com.frostwire.jlibtorrent.swig.alert
    public final synchronized void a() {
        try {
            long j = this.A;
            if (j != 0) {
                if (this.b) {
                    this.b = false;
                    libtorrent_jni.delete_dht_log_alert(j);
                }
                this.A = 0L;
            }
            super.a();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.frostwire.jlibtorrent.swig.alert
    public final String b() {
        return libtorrent_jni.dht_log_alert_message(this.A, this);
    }

    @Override // com.frostwire.jlibtorrent.swig.alert
    public final int c() {
        return libtorrent_jni.dht_log_alert_type(this.A, this);
    }

    @Override // com.frostwire.jlibtorrent.swig.alert
    public final String d() {
        return libtorrent_jni.dht_log_alert_what(this.A, this);
    }

    @Override // com.frostwire.jlibtorrent.swig.alert
    public final void finalize() {
        a();
    }
}
