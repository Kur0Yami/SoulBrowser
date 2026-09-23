package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class save_state_flags_t {

    /* renamed from: a, reason: collision with root package name */
    public transient long f2715a;

    public save_state_flags_t(long j) {
        this.f2715a = j;
    }

    public final void finalize() {
        synchronized (this) {
            if (this.f2715a != 0) {
                this.f2715a = 0L;
            }
        }
    }
}
