package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class web_seed_entry {

    /* loaded from: classes.dex */
    public static final class type_t {

        /* renamed from: c, reason: collision with root package name */
        public static final type_t f2746c = new type_t("url_seed");
        public static final type_t d = new type_t("http_seed");
        public static int e = 0;

        /* renamed from: a, reason: collision with root package name */
        public final int f2747a;
        public final String b;

        public type_t(String str) {
            this.b = str;
            int i = e;
            e = i + 1;
            this.f2747a = i;
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
