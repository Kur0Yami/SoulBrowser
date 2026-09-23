package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class ip_filter {

    /* loaded from: classes.dex */
    public static final class access_flags {
        static {
            libtorrent_jni.ip_filter_blocked_get();
        }

        public final String toString() {
            return "blocked";
        }
    }

    public final void finalize() {
        synchronized (this) {
        }
    }
}
