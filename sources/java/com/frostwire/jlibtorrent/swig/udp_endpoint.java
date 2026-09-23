package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class udp_endpoint {

    /* renamed from: a, reason: collision with root package name */
    public transient long f2745a;
    public transient boolean b;

    public udp_endpoint(long j, boolean z) {
        this.b = z;
        this.f2745a = j;
    }

    public final void finalize() {
        synchronized (this) {
            try {
                long j = this.f2745a;
                if (j != 0) {
                    if (this.b) {
                        this.b = false;
                        libtorrent_jni.delete_udp_endpoint(j);
                    }
                    this.f2745a = 0L;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
