package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class announce_entry_vector {

    /* renamed from: a, reason: collision with root package name */
    public transient long f2663a;
    public transient boolean b;

    public final void finalize() {
        synchronized (this) {
            try {
                long j = this.f2663a;
                if (j != 0) {
                    if (this.b) {
                        this.b = false;
                        libtorrent_jni.delete_announce_entry_vector(j);
                    }
                    this.f2663a = 0L;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
