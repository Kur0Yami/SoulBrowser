package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class bandwidth_state_flags_t {

    /* renamed from: a, reason: collision with root package name */
    public transient long f2664a;

    public bandwidth_state_flags_t(long j) {
        this.f2664a = j;
    }

    public final void finalize() {
        synchronized (this) {
            if (this.f2664a != 0) {
                this.f2664a = 0L;
            }
        }
    }
}
