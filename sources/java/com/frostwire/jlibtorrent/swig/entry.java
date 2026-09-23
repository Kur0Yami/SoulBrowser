package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class entry {

    /* renamed from: a, reason: collision with root package name */
    public transient long f2681a;
    public transient boolean b;

    /* loaded from: classes.dex */
    public static final class data_type {
        public final String toString() {
            return null;
        }
    }

    public entry(long j, boolean z) {
        this.b = z;
        this.f2681a = j;
    }

    public final void finalize() {
        synchronized (this) {
            try {
                long j = this.f2681a;
                if (j != 0) {
                    if (this.b) {
                        this.b = false;
                        libtorrent_jni.delete_entry(j);
                    }
                    this.f2681a = 0L;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
