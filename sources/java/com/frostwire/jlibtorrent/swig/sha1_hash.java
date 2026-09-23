package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class sha1_hash {

    /* renamed from: a, reason: collision with root package name */
    public transient long f2725a;
    public transient boolean b;

    public sha1_hash(long j, boolean z) {
        this.b = z;
        this.f2725a = j;
    }

    public static long a(sha1_hash sha1_hashVar) {
        if (sha1_hashVar == null) {
            return 0L;
        }
        return sha1_hashVar.f2725a;
    }

    public final void finalize() {
        synchronized (this) {
            try {
                long j = this.f2725a;
                if (j != 0) {
                    if (this.b) {
                        this.b = false;
                        libtorrent_jni.delete_sha1_hash(j);
                    }
                    this.f2725a = 0L;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
