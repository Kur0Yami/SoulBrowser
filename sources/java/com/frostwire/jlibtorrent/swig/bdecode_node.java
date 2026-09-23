package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class bdecode_node {

    /* renamed from: a, reason: collision with root package name */
    public transient long f2665a;
    public transient boolean b;

    /* loaded from: classes.dex */
    public static final class type_t {
        public final String toString() {
            return null;
        }
    }

    public bdecode_node(long j, boolean z) {
        this.b = z;
        this.f2665a = j;
    }

    public final void finalize() {
        synchronized (this) {
            try {
                long j = this.f2665a;
                if (j != 0) {
                    if (this.b) {
                        this.b = false;
                        libtorrent_jni.delete_bdecode_node(j);
                    }
                    this.f2665a = 0L;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
