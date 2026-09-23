package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class add_files_listener {
    public boolean a(String str) {
        if (getClass() == add_files_listener.class) {
            return libtorrent_jni.add_files_listener_pred(0L, this, str);
        }
        return libtorrent_jni.add_files_listener_predSwigExplicitadd_files_listener(0L, this, str);
    }

    public final void finalize() {
        synchronized (this) {
        }
    }
}
