package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class picker_flags_t {

    /* renamed from: a, reason: collision with root package name */
    public transient long f2704a;

    public picker_flags_t(long j) {
        this.f2704a = j;
    }

    public final void finalize() {
        synchronized (this) {
            if (this.f2704a != 0) {
                this.f2704a = 0L;
            }
        }
    }
}
