package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class address {

    /* renamed from: a, reason: collision with root package name */
    public transient long f2657a;
    public transient boolean b = true;

    public address(long j) {
        this.f2657a = j;
    }

    public final void finalize() {
        synchronized (this) {
            try {
                long j = this.f2657a;
                if (j != 0) {
                    if (this.b) {
                        this.b = false;
                        libtorrent_jni.delete_address(j);
                    }
                    this.f2657a = 0L;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
