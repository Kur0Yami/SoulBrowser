package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class create_torrent {

    /* renamed from: c, reason: collision with root package name */
    public static final create_flags_t f2672c = new create_flags_t(libtorrent_jni.create_torrent_optimize_alignment_get());
    public static final create_flags_t d = new create_flags_t(libtorrent_jni.create_torrent_merkle_get());
    public static final create_flags_t e = new create_flags_t(libtorrent_jni.create_torrent_modification_time_get());
    public static final create_flags_t f = new create_flags_t(libtorrent_jni.create_torrent_symlinks_get());
    public static final create_flags_t g = new create_flags_t(libtorrent_jni.create_torrent_mutable_torrent_support_get());

    /* renamed from: a, reason: collision with root package name */
    public transient long f2673a;
    public transient boolean b;

    public final void finalize() {
        synchronized (this) {
            try {
                long j = this.f2673a;
                if (j != 0) {
                    if (this.b) {
                        this.b = false;
                        libtorrent_jni.delete_create_torrent(j);
                    }
                    this.f2673a = 0L;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
