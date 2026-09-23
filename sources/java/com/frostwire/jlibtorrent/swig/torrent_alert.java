package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class torrent_alert extends alert {
    public transient long A;

    public torrent_alert(long j, boolean z) {
        super(libtorrent_jni.torrent_alert_SWIGUpcast(j), z);
        this.A = j;
    }

    @Override // com.frostwire.jlibtorrent.swig.alert
    public synchronized void a() {
        try {
            long j = this.A;
            if (j != 0) {
                if (this.b) {
                    this.b = false;
                    libtorrent_jni.delete_torrent_alert(j);
                }
                this.A = 0L;
            }
            super.a();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.frostwire.jlibtorrent.swig.alert
    public String b() {
        return libtorrent_jni.torrent_alert_message(this.A, this);
    }

    public final torrent_handle e() {
        long j = libtorrent_jni.torrent_alert_handle_get(this.A, this);
        if (j == 0) {
            return null;
        }
        return new torrent_handle(j, false);
    }

    @Override // com.frostwire.jlibtorrent.swig.alert
    public void finalize() {
        a();
    }
}
