package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class torrent_handle {

    /* renamed from: c, reason: collision with root package name */
    public static final add_piece_flags_t f2738c;
    public static final status_flags_t d;
    public static final status_flags_t e;
    public static final status_flags_t f;
    public static final status_flags_t g;
    public static final status_flags_t h;
    public static final status_flags_t i;
    public static final status_flags_t j;
    public static final status_flags_t k;
    public static final deadline_flags_t l;
    public static final pause_flags_t m;
    public static final pause_flags_t n;
    public static final resume_data_flags_t o;
    public static final resume_data_flags_t p;
    public static final resume_data_flags_t q;
    public static final reannounce_flags_t r;

    /* renamed from: a, reason: collision with root package name */
    public transient long f2739a;
    public transient boolean b;

    /* loaded from: classes.dex */
    public static final class file_progress_flags_t {
        public static final file_progress_flags_t b = new file_progress_flags_t(libtorrent_jni.torrent_handle_piece_granularity_get());

        /* renamed from: a, reason: collision with root package name */
        public final int f2740a;

        public file_progress_flags_t(int i) {
            this.f2740a = i;
        }

        public final String toString() {
            return "piece_granularity";
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.frostwire.jlibtorrent.swig.add_piece_flags_t, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v15, types: [java.lang.Object, com.frostwire.jlibtorrent.swig.reannounce_flags_t] */
    /* JADX WARN: Type inference failed for: r0v9, types: [com.frostwire.jlibtorrent.swig.deadline_flags_t, java.lang.Object] */
    static {
        long j2 = libtorrent_jni.torrent_handle_overwrite_existing_get();
        ?? obj = new Object();
        obj.f2655a = j2;
        f2738c = obj;
        d = new status_flags_t(libtorrent_jni.torrent_handle_query_distributed_copies_get(), false);
        e = new status_flags_t(libtorrent_jni.torrent_handle_query_accurate_download_counters_get(), false);
        f = new status_flags_t(libtorrent_jni.torrent_handle_query_last_seen_complete_get(), false);
        g = new status_flags_t(libtorrent_jni.torrent_handle_query_pieces_get(), false);
        h = new status_flags_t(libtorrent_jni.torrent_handle_query_verified_pieces_get(), false);
        i = new status_flags_t(libtorrent_jni.torrent_handle_query_torrent_file_get(), false);
        j = new status_flags_t(libtorrent_jni.torrent_handle_query_name_get(), false);
        k = new status_flags_t(libtorrent_jni.torrent_handle_query_save_path_get(), false);
        long j3 = libtorrent_jni.torrent_handle_alert_when_available_get();
        ?? obj2 = new Object();
        obj2.f2674a = j3;
        l = obj2;
        m = new pause_flags_t(libtorrent_jni.torrent_handle_graceful_pause_get());
        n = new pause_flags_t(libtorrent_jni.torrent_handle_clear_disk_cache_get());
        o = new resume_data_flags_t(libtorrent_jni.torrent_handle_flush_disk_cache_get());
        p = new resume_data_flags_t(libtorrent_jni.torrent_handle_save_info_dict_get());
        q = new resume_data_flags_t(libtorrent_jni.torrent_handle_only_if_modified_get());
        long j4 = libtorrent_jni.torrent_handle_ignore_min_interval_get();
        ?? obj3 = new Object();
        obj3.f2711a = j4;
        r = obj3;
    }

    public torrent_handle(long j2, boolean z) {
        this.b = z;
        this.f2739a = j2;
    }

    public final torrent_info a() {
        long j2 = libtorrent_jni.torrent_handle_torrent_file_ptr(this.f2739a, this);
        if (j2 == 0) {
            return null;
        }
        return new torrent_info(j2, false);
    }

    public final void finalize() {
        synchronized (this) {
            try {
                long j2 = this.f2739a;
                if (j2 != 0) {
                    if (this.b) {
                        this.b = false;
                        libtorrent_jni.delete_torrent_handle(j2);
                    }
                    this.f2739a = 0L;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
