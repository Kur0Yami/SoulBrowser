package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class file_flags_t {

    /* renamed from: a, reason: collision with root package name */
    public transient long f2683a;

    public file_flags_t(long j) {
        this.f2683a = j;
    }

    public final void finalize() {
        synchronized (this) {
            if (this.f2683a != 0) {
                this.f2683a = 0L;
            }
        }
    }
}
