package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class dht_stats_alert extends alert {
    public static final int B;
    public static final alert_category_t C;
    public transient long A;

    static {
        libtorrent_jni.dht_stats_alert_priority_get();
        B = libtorrent_jni.dht_stats_alert_alert_type_get();
        C = new alert_category_t(libtorrent_jni.dht_stats_alert_static_category_get(), false);
    }

    @Override // com.frostwire.jlibtorrent.swig.alert
    public final synchronized void a() {
        try {
            long j = this.A;
            if (j != 0) {
                if (this.b) {
                    this.b = false;
                    libtorrent_jni.delete_dht_stats_alert(j);
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
        return libtorrent_jni.dht_stats_alert_message(this.A, this);
    }

    @Override // com.frostwire.jlibtorrent.swig.alert
    public final int c() {
        return libtorrent_jni.dht_stats_alert_type(this.A, this);
    }

    @Override // com.frostwire.jlibtorrent.swig.alert
    public final String d() {
        return libtorrent_jni.dht_stats_alert_what(this.A, this);
    }

    @Override // com.frostwire.jlibtorrent.swig.alert
    public final void finalize() {
        a();
    }
}
