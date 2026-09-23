package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class error_code {

    /* renamed from: a, reason: collision with root package name */
    public transient long f2682a;
    public transient boolean b;

    public error_code(long j, boolean z) {
        this.b = z;
        this.f2682a = j;
    }

    public final void finalize() {
        synchronized (this) {
            try {
                long j = this.f2682a;
                if (j != 0) {
                    if (this.b) {
                        this.b = false;
                        libtorrent_jni.delete_error_code(j);
                    }
                    this.f2682a = 0L;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public error_code() {
        this(libtorrent_jni.new_error_code(), true);
    }
}
