package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class int_vector {

    /* renamed from: a, reason: collision with root package name */
    public transient long f2686a;
    public transient boolean b = true;

    public int_vector(long j) {
        this.f2686a = j;
    }

    public final void finalize() {
        synchronized (this) {
            try {
                long j = this.f2686a;
                if (j != 0) {
                    if (this.b) {
                        this.b = false;
                        libtorrent_jni.delete_int_vector(j);
                    }
                    this.f2686a = 0L;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
