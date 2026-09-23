package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class set_piece_hashes_listener {
    public void a(int i) {
        if (getClass() == set_piece_hashes_listener.class) {
            libtorrent_jni.set_piece_hashes_listener_progress(0L, this, i);
        } else {
            libtorrent_jni.set_piece_hashes_listener_progressSwigExplicitset_piece_hashes_listener(0L, this, i);
        }
    }

    public final void finalize() {
        synchronized (this) {
        }
    }
}
