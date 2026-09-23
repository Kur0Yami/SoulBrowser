package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class byte_vector {

    /* renamed from: a, reason: collision with root package name */
    public transient long f2668a;
    public transient boolean b;

    public byte_vector(long j) {
        this.b = true;
        this.f2668a = j;
    }

    public final void finalize() {
        synchronized (this) {
            try {
                long j = this.f2668a;
                if (j != 0) {
                    if (this.b) {
                        this.b = false;
                        libtorrent_jni.delete_byte_vector(j);
                    }
                    this.f2668a = 0L;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public byte_vector() {
        this(libtorrent_jni.new_byte_vector());
    }
}
