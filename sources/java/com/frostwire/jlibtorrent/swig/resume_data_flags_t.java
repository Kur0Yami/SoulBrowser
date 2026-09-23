package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class resume_data_flags_t {

    /* renamed from: a, reason: collision with root package name */
    public transient long f2714a;

    public resume_data_flags_t(long j) {
        this.f2714a = j;
    }

    public final void finalize() {
        synchronized (this) {
            if (this.f2714a != 0) {
                this.f2714a = 0L;
            }
        }
    }
}
