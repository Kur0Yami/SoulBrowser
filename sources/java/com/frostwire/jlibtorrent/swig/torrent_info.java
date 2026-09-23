package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class torrent_info {

    /* renamed from: a, reason: collision with root package name */
    public transient long f2741a;
    public transient boolean b;

    public torrent_info(long j, boolean z) {
        this.b = z;
        this.f2741a = j;
    }

    public final void finalize() {
        synchronized (this) {
            try {
                long j = this.f2741a;
                if (j != 0) {
                    if (this.b) {
                        this.b = false;
                        libtorrent_jni.delete_torrent_info(j);
                    }
                    this.f2741a = 0L;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
