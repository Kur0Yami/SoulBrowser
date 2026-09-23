package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class announce_entry {

    /* renamed from: a, reason: collision with root package name */
    public transient long f2662a;

    /* loaded from: classes.dex */
    public static final class tracker_source {
        static {
            libtorrent_jni.announce_entry_source_torrent_get();
            libtorrent_jni.announce_entry_source_client_get();
            libtorrent_jni.announce_entry_source_magnet_link_get();
            libtorrent_jni.announce_entry_source_tex_get();
        }

        public final String toString() {
            return null;
        }
    }

    public final void finalize() {
        synchronized (this) {
            if (this.f2662a != 0) {
                this.f2662a = 0L;
            }
        }
    }
}
