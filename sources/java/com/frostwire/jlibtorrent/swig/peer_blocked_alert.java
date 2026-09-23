package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class peer_blocked_alert extends peer_alert {
    public static final int D;
    public static final alert_category_t E;
    public transient long C;

    /* loaded from: classes.dex */
    public static final class reason_t {

        /* renamed from: c, reason: collision with root package name */
        public static final reason_t f2692c = new reason_t("ip_filter");
        public static final reason_t d = new reason_t("port_filter");
        public static final reason_t e = new reason_t("i2p_mixed");
        public static final reason_t f = new reason_t("privileged_ports");
        public static final reason_t g = new reason_t("utp_disabled");
        public static final reason_t h = new reason_t("tcp_disabled");
        public static final reason_t i = new reason_t("invalid_local_interface");
        public static int j;

        /* renamed from: a, reason: collision with root package name */
        public final int f2693a;
        public final String b;

        static {
            new reason_t("ssrf_mitigation");
            j = 0;
        }

        public reason_t(String str) {
            this.b = str;
            int i2 = j;
            j = i2 + 1;
            this.f2693a = i2;
        }

        public final String toString() {
            return this.b;
        }
    }

    static {
        libtorrent_jni.peer_blocked_alert_priority_get();
        D = libtorrent_jni.peer_blocked_alert_alert_type_get();
        E = new alert_category_t(libtorrent_jni.peer_blocked_alert_static_category_get(), false);
    }

    @Override // com.frostwire.jlibtorrent.swig.peer_alert, com.frostwire.jlibtorrent.swig.torrent_alert, com.frostwire.jlibtorrent.swig.alert
    public final synchronized void a() {
        try {
            long j = this.C;
            if (j != 0) {
                if (this.b) {
                    this.b = false;
                    libtorrent_jni.delete_peer_blocked_alert(j);
                }
                this.C = 0L;
            }
            super.a();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.frostwire.jlibtorrent.swig.peer_alert, com.frostwire.jlibtorrent.swig.torrent_alert, com.frostwire.jlibtorrent.swig.alert
    public final String b() {
        return libtorrent_jni.peer_blocked_alert_message(this.C, this);
    }

    @Override // com.frostwire.jlibtorrent.swig.alert
    public final int c() {
        return libtorrent_jni.peer_blocked_alert_type(this.C, this);
    }

    @Override // com.frostwire.jlibtorrent.swig.alert
    public final String d() {
        return libtorrent_jni.peer_blocked_alert_what(this.C, this);
    }

    @Override // com.frostwire.jlibtorrent.swig.peer_alert, com.frostwire.jlibtorrent.swig.torrent_alert, com.frostwire.jlibtorrent.swig.alert
    public final void finalize() {
        a();
    }
}
