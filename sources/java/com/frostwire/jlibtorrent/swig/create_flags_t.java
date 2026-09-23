package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class create_flags_t {

    /* renamed from: a, reason: collision with root package name */
    public transient long f2671a;

    public create_flags_t(long j) {
        this.f2671a = j;
    }

    public final void finalize() {
        synchronized (this) {
            if (this.f2671a != 0) {
                this.f2671a = 0L;
            }
        }
    }
}
