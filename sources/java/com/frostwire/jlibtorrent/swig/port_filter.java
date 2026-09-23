package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class port_filter {

    /* renamed from: a, reason: collision with root package name */
    public transient long f2705a;
    public transient boolean b;

    /* loaded from: classes.dex */
    public static final class access_flags {
        static {
            libtorrent_jni.port_filter_blocked_get();
        }

        public final String toString() {
            return "blocked";
        }
    }

    public final void finalize() {
        synchronized (this) {
            try {
                long j = this.f2705a;
                if (j != 0) {
                    if (this.b) {
                        this.b = false;
                        libtorrent_jni.delete_port_filter(j);
                    }
                    this.f2705a = 0L;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
