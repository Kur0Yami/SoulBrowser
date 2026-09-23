package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class session extends session_handle {
    public transient long j;

    @Override // com.frostwire.jlibtorrent.swig.session_handle
    public final synchronized void a() {
        try {
            long j = this.j;
            if (j != 0) {
                if (this.b) {
                    this.b = false;
                    libtorrent_jni.delete_session(j);
                }
                this.j = 0L;
            }
            super.a();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.frostwire.jlibtorrent.swig.session_handle
    public final void finalize() {
        a();
    }
}
