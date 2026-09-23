package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class tracker_alert extends torrent_alert {
    public transient long B;

    public tracker_alert(long j) {
        super(libtorrent_jni.tracker_alert_SWIGUpcast(j), false);
        this.B = j;
    }

    @Override // com.frostwire.jlibtorrent.swig.torrent_alert, com.frostwire.jlibtorrent.swig.alert
    public synchronized void a() {
        try {
            long j = this.B;
            if (j != 0) {
                if (this.b) {
                    this.b = false;
                    libtorrent_jni.delete_tracker_alert(j);
                }
                this.B = 0L;
            }
            super.a();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.frostwire.jlibtorrent.swig.torrent_alert, com.frostwire.jlibtorrent.swig.alert
    public String b() {
        return libtorrent_jni.tracker_alert_message(this.B, this);
    }

    @Override // com.frostwire.jlibtorrent.swig.torrent_alert, com.frostwire.jlibtorrent.swig.alert
    public void finalize() {
        a();
    }
}
