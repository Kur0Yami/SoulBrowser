package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class block_info {

    /* loaded from: classes.dex */
    public static final class block_state_t {

        /* renamed from: c, reason: collision with root package name */
        public static final block_state_t f2666c = new block_state_t("none");
        public static final block_state_t d = new block_state_t("requested");
        public static final block_state_t e = new block_state_t("writing");
        public static final block_state_t f = new block_state_t("finished");
        public static int g = 0;

        /* renamed from: a, reason: collision with root package name */
        public final int f2667a;
        public final String b;

        public block_state_t(String str) {
            this.b = str;
            int i = g;
            g = i + 1;
            this.f2667a = i;
        }

        public final String toString() {
            return this.b;
        }
    }

    public final void finalize() {
        synchronized (this) {
        }
    }
}
