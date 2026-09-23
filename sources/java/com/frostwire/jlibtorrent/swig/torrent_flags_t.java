package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class torrent_flags_t {

    /* renamed from: a, reason: collision with root package name */
    public transient long f2737a;
    public transient boolean b;

    public torrent_flags_t(long j, boolean z) {
        this.b = z;
        this.f2737a = j;
    }

    public final void finalize() {
        synchronized (this) {
            try {
                long j = this.f2737a;
                if (j != 0) {
                    if (this.b) {
                        this.b = false;
                        libtorrent_jni.delete_torrent_flags_t(j);
                    }
                    this.f2737a = 0L;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
