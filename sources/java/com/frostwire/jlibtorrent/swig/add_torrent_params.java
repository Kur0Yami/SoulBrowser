package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class add_torrent_params {

    /* renamed from: a, reason: collision with root package name */
    public transient long f2656a;
    public transient boolean b;

    public final void finalize() {
        synchronized (this) {
            try {
                long j = this.f2656a;
                if (j != 0) {
                    if (this.b) {
                        this.b = false;
                        libtorrent_jni.delete_add_torrent_params(j);
                    }
                    this.f2656a = 0L;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
