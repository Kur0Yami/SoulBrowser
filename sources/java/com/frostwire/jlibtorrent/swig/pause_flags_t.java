package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class pause_flags_t {

    /* renamed from: a, reason: collision with root package name */
    public transient long f2691a;

    public pause_flags_t(long j) {
        this.f2691a = j;
    }

    public final void finalize() {
        synchronized (this) {
            if (this.f2691a != 0) {
                this.f2691a = 0L;
            }
        }
    }
}
