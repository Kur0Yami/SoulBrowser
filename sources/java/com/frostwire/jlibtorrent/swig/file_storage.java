package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class file_storage {
    public static final file_flags_t b = new file_flags_t(libtorrent_jni.file_storage_flag_pad_file_get());

    /* renamed from: c, reason: collision with root package name */
    public static final file_flags_t f2684c = new file_flags_t(libtorrent_jni.file_storage_flag_hidden_get());
    public static final file_flags_t d = new file_flags_t(libtorrent_jni.file_storage_flag_executable_get());
    public static final file_flags_t e = new file_flags_t(libtorrent_jni.file_storage_flag_symlink_get());

    /* renamed from: a, reason: collision with root package name */
    public transient long f2685a;

    public final void finalize() {
        synchronized (this) {
            if (this.f2685a != 0) {
                this.f2685a = 0L;
            }
        }
    }
}
