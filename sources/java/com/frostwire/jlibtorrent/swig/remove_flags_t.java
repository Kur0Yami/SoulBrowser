package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class remove_flags_t {

    /* renamed from: a, reason: collision with root package name */
    public transient long f2712a;

    public remove_flags_t(long j) {
        this.f2712a = j;
    }

    public final void finalize() {
        synchronized (this) {
            if (this.f2712a != 0) {
                this.f2712a = 0L;
            }
        }
    }
}
