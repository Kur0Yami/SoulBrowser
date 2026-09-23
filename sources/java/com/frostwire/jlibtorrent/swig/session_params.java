package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class session_params {

    /* renamed from: a, reason: collision with root package name */
    public transient long f2719a;
    public transient boolean b;

    public final void finalize() {
        synchronized (this) {
            try {
                long j = this.f2719a;
                if (j != 0) {
                    if (this.b) {
                        this.b = false;
                        libtorrent_jni.delete_session_params(j);
                    }
                    this.f2719a = 0L;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
