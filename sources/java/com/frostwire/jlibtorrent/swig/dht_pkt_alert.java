package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class dht_pkt_alert extends alert {
    public static final alert_category_t B = new alert_category_t(libtorrent_jni.dht_pkt_alert_static_category_get(), false);
    public static final int C;
    public transient long A;

    /* loaded from: classes.dex */
    public static final class direction_t {

        /* renamed from: c, reason: collision with root package name */
        public static final direction_t f2677c = new direction_t("incoming");
        public static final direction_t d = new direction_t("outgoing");
        public static int e = 0;

        /* renamed from: a, reason: collision with root package name */
        public final int f2678a;
        public final String b;

        public direction_t(String str) {
            this.b = str;
            int i = e;
            e = i + 1;
            this.f2678a = i;
        }

        public final String toString() {
            return this.b;
        }
    }

    static {
        libtorrent_jni.dht_pkt_alert_priority_get();
        C = libtorrent_jni.dht_pkt_alert_alert_type_get();
    }

    @Override // com.frostwire.jlibtorrent.swig.alert
    public final synchronized void a() {
        try {
            long j = this.A;
            if (j != 0) {
                if (this.b) {
                    this.b = false;
                    libtorrent_jni.delete_dht_pkt_alert(j);
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
        return libtorrent_jni.dht_pkt_alert_message(this.A, this);
    }

    @Override // com.frostwire.jlibtorrent.swig.alert
    public final int c() {
        return libtorrent_jni.dht_pkt_alert_type(this.A, this);
    }

    @Override // com.frostwire.jlibtorrent.swig.alert
    public final String d() {
        return libtorrent_jni.dht_pkt_alert_what(this.A, this);
    }

    @Override // com.frostwire.jlibtorrent.swig.alert
    public final void finalize() {
        a();
    }
}
