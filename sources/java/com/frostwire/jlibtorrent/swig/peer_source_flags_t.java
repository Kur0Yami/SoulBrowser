package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class peer_source_flags_t {

    /* renamed from: a, reason: collision with root package name */
    public transient long f2701a;

    public peer_source_flags_t(long j) {
        this.f2701a = j;
    }

    public final void finalize() {
        synchronized (this) {
            if (this.f2701a != 0) {
                this.f2701a = 0L;
            }
        }
    }
}
