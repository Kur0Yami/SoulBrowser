package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class session_handle {

    /* renamed from: c, reason: collision with root package name */
    public static final save_state_flags_t f2717c = new save_state_flags_t(libtorrent_jni.session_handle_save_settings_get());
    public static final save_state_flags_t d = new save_state_flags_t(libtorrent_jni.session_handle_save_dht_settings_get());
    public static final save_state_flags_t e = new save_state_flags_t(libtorrent_jni.session_handle_save_dht_state_get());
    public static final remove_flags_t f;
    public static final remove_flags_t g;
    public static final session_flags_t h;
    public static final reopen_network_flags_t i;

    /* renamed from: a, reason: collision with root package name */
    public transient long f2718a;
    public transient boolean b;

    /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.Object, com.frostwire.jlibtorrent.swig.session_flags_t] */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.frostwire.jlibtorrent.swig.reopen_network_flags_t, java.lang.Object] */
    static {
        libtorrent_jni.session_handle_disk_cache_no_pieces_get();
        f = new remove_flags_t(libtorrent_jni.session_handle_delete_files_get());
        g = new remove_flags_t(libtorrent_jni.session_handle_delete_partfile_get());
        long session_handle_paused_get = libtorrent_jni.session_handle_paused_get();
        ?? obj = new Object();
        obj.f2716a = session_handle_paused_get;
        h = obj;
        portmap_protocol.a(libtorrent_jni.session_handle_udp_get());
        portmap_protocol.a(libtorrent_jni.session_handle_tcp_get());
        long session_handle_reopen_map_ports_get = libtorrent_jni.session_handle_reopen_map_ports_get();
        ?? obj2 = new Object();
        obj2.f2713a = session_handle_reopen_map_ports_get;
        i = obj2;
    }

    public synchronized void a() {
        try {
            long j = this.f2718a;
            if (j != 0) {
                if (this.b) {
                    this.b = false;
                    libtorrent_jni.delete_session_handle(j);
                }
                this.f2718a = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void finalize() {
        a();
    }
}
