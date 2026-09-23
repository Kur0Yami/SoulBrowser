package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class peer_flags_t {

    /* renamed from: a, reason: collision with root package name */
    public transient long f2694a;

    public peer_flags_t(long j) {
        this.f2694a = j;
    }

    public final void finalize() {
        synchronized (this) {
            if (this.f2694a != 0) {
                this.f2694a = 0L;
            }
        }
    }
}
