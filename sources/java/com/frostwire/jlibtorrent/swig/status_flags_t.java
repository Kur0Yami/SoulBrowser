package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class status_flags_t {

    /* renamed from: a, reason: collision with root package name */
    public transient long f2730a;
    public transient boolean b;

    public status_flags_t(long j, boolean z) {
        this.b = z;
        this.f2730a = j;
    }

    public final void finalize() {
        synchronized (this) {
            try {
                long j = this.f2730a;
                if (j != 0) {
                    if (this.b) {
                        this.b = false;
                        libtorrent_jni.delete_status_flags_t(j);
                    }
                    this.f2730a = 0L;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
