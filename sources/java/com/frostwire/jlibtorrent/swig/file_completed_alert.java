package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class file_completed_alert extends torrent_alert {
    public static final int C;
    public static final alert_category_t D;
    public transient long B;

    static {
        libtorrent_jni.file_completed_alert_priority_get();
        C = libtorrent_jni.file_completed_alert_alert_type_get();
        D = new alert_category_t(libtorrent_jni.file_completed_alert_static_category_get(), false);
    }

    @Override // com.frostwire.jlibtorrent.swig.torrent_alert, com.frostwire.jlibtorrent.swig.alert
    public final synchronized void a() {
        try {
            long j = this.B;
            if (j != 0) {
                if (this.b) {
                    this.b = false;
                    libtorrent_jni.delete_file_completed_alert(j);
                }
                this.B = 0L;
            }
            super.a();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.frostwire.jlibtorrent.swig.torrent_alert, com.frostwire.jlibtorrent.swig.alert
    public final String b() {
        return libtorrent_jni.file_completed_alert_message(this.B, this);
    }

    @Override // com.frostwire.jlibtorrent.swig.alert
    public final int c() {
        return libtorrent_jni.file_completed_alert_type(this.B, this);
    }

    @Override // com.frostwire.jlibtorrent.swig.alert
    public final String d() {
        return libtorrent_jni.file_completed_alert_what(this.B, this);
    }

    @Override // com.frostwire.jlibtorrent.swig.torrent_alert, com.frostwire.jlibtorrent.swig.alert
    public final void finalize() {
        a();
    }
}
