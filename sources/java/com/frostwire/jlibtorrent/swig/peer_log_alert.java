package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class peer_log_alert extends peer_alert {
    public static final int D;
    public static final alert_category_t E;
    public transient long C;

    /* loaded from: classes.dex */
    public static final class direction_t {

        /* renamed from: c, reason: collision with root package name */
        public static final direction_t f2699c = new direction_t("incoming_message");
        public static final direction_t d = new direction_t("outgoing_message");
        public static final direction_t e = new direction_t("incoming");
        public static final direction_t f = new direction_t("outgoing");
        public static final direction_t g = new direction_t("info");
        public static int h = 0;

        /* renamed from: a, reason: collision with root package name */
        public final int f2700a;
        public final String b;

        public direction_t(String str) {
            this.b = str;
            int i = h;
            h = i + 1;
            this.f2700a = i;
        }

        public final String toString() {
            return this.b;
        }
    }

    static {
        libtorrent_jni.peer_log_alert_priority_get();
        D = libtorrent_jni.peer_log_alert_alert_type_get();
        E = new alert_category_t(libtorrent_jni.peer_log_alert_static_category_get(), false);
    }

    @Override // com.frostwire.jlibtorrent.swig.peer_alert, com.frostwire.jlibtorrent.swig.torrent_alert, com.frostwire.jlibtorrent.swig.alert
    public final synchronized void a() {
        try {
            long j = this.C;
            if (j != 0) {
                if (this.b) {
                    this.b = false;
                    libtorrent_jni.delete_peer_log_alert(j);
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
        return libtorrent_jni.peer_log_alert_message(this.C, this);
    }

    @Override // com.frostwire.jlibtorrent.swig.alert
    public final int c() {
        return libtorrent_jni.peer_log_alert_type(this.C, this);
    }

    @Override // com.frostwire.jlibtorrent.swig.alert
    public final String d() {
        return libtorrent_jni.peer_log_alert_what(this.C, this);
    }

    @Override // com.frostwire.jlibtorrent.swig.peer_alert, com.frostwire.jlibtorrent.swig.torrent_alert, com.frostwire.jlibtorrent.swig.alert
    public final void finalize() {
        a();
    }
}
