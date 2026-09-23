package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class incoming_request_alert extends peer_alert {
    public static final alert_category_t D = new alert_category_t(libtorrent_jni.incoming_request_alert_static_category_get(), false);
    public static final int E;
    public transient long C;

    static {
        libtorrent_jni.incoming_request_alert_priority_get();
        E = libtorrent_jni.incoming_request_alert_alert_type_get();
    }

    @Override // com.frostwire.jlibtorrent.swig.peer_alert, com.frostwire.jlibtorrent.swig.torrent_alert, com.frostwire.jlibtorrent.swig.alert
    public final synchronized void a() {
        try {
            long j = this.C;
            if (j != 0) {
                if (this.b) {
                    this.b = false;
                    libtorrent_jni.delete_incoming_request_alert(j);
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
        return libtorrent_jni.incoming_request_alert_message(this.C, this);
    }

    @Override // com.frostwire.jlibtorrent.swig.alert
    public final int c() {
        return libtorrent_jni.incoming_request_alert_type(this.C, this);
    }

    @Override // com.frostwire.jlibtorrent.swig.alert
    public final String d() {
        return libtorrent_jni.incoming_request_alert_what(this.C, this);
    }

    @Override // com.frostwire.jlibtorrent.swig.peer_alert, com.frostwire.jlibtorrent.swig.torrent_alert, com.frostwire.jlibtorrent.swig.alert
    public final void finalize() {
        a();
    }
}
