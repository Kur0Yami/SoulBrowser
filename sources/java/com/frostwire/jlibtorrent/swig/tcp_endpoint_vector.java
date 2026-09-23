package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class tcp_endpoint_vector {

    /* renamed from: a, reason: collision with root package name */
    public transient long f2736a;
    public transient boolean b;

    public final void finalize() {
        synchronized (this) {
            try {
                long j = this.f2736a;
                if (j != 0) {
                    if (this.b) {
                        this.b = false;
                        libtorrent_jni.delete_tcp_endpoint_vector(j);
                    }
                    this.f2736a = 0L;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
