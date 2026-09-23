package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class string_view {

    /* renamed from: a, reason: collision with root package name */
    public transient long f2734a;
    public transient boolean b;

    public final void finalize() {
        synchronized (this) {
            try {
                long j = this.f2734a;
                if (j != 0) {
                    if (this.b) {
                        this.b = false;
                        libtorrent_jni.delete_string_view(j);
                    }
                    this.f2734a = 0L;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
