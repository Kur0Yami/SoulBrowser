package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class alert_ptr_vector {

    /* renamed from: a, reason: collision with root package name */
    public transient long f2661a;
    public transient boolean b;

    public final void finalize() {
        synchronized (this) {
            try {
                long j = this.f2661a;
                if (j != 0) {
                    if (this.b) {
                        this.b = false;
                        libtorrent_jni.delete_alert_ptr_vector(j);
                    }
                    this.f2661a = 0L;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
