package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class picker_log_alert extends peer_alert {
    public static final int D;
    public static final alert_category_t E;
    public static final picker_flags_t F;
    public static final picker_flags_t G;
    public static final picker_flags_t H;
    public static final picker_flags_t I;
    public static final picker_flags_t J;
    public static final picker_flags_t K;
    public static final picker_flags_t L;
    public static final picker_flags_t M;
    public static final picker_flags_t N;
    public static final picker_flags_t O;
    public static final picker_flags_t P;
    public static final picker_flags_t Q;
    public static final picker_flags_t R;
    public static final picker_flags_t S;
    public static final picker_flags_t T;
    public static final picker_flags_t U;
    public static final picker_flags_t V;
    public transient long C;

    static {
        libtorrent_jni.picker_log_alert_priority_get();
        D = libtorrent_jni.picker_log_alert_alert_type_get();
        E = new alert_category_t(libtorrent_jni.picker_log_alert_static_category_get(), false);
        F = new picker_flags_t(libtorrent_jni.picker_log_alert_partial_ratio_get());
        G = new picker_flags_t(libtorrent_jni.picker_log_alert_prioritize_partials_get());
        H = new picker_flags_t(libtorrent_jni.picker_log_alert_rarest_first_partials_get());
        I = new picker_flags_t(libtorrent_jni.picker_log_alert_rarest_first_get());
        J = new picker_flags_t(libtorrent_jni.picker_log_alert_reverse_rarest_first_get());
        K = new picker_flags_t(libtorrent_jni.picker_log_alert_suggested_pieces_get());
        L = new picker_flags_t(libtorrent_jni.picker_log_alert_prio_sequential_pieces_get());
        M = new picker_flags_t(libtorrent_jni.picker_log_alert_sequential_pieces_get());
        N = new picker_flags_t(libtorrent_jni.picker_log_alert_reverse_pieces_get());
        O = new picker_flags_t(libtorrent_jni.picker_log_alert_time_critical_get());
        P = new picker_flags_t(libtorrent_jni.picker_log_alert_random_pieces_get());
        Q = new picker_flags_t(libtorrent_jni.picker_log_alert_prefer_contiguous_get());
        R = new picker_flags_t(libtorrent_jni.picker_log_alert_reverse_sequential_get());
        S = new picker_flags_t(libtorrent_jni.picker_log_alert_backup1_get());
        T = new picker_flags_t(libtorrent_jni.picker_log_alert_backup2_get());
        U = new picker_flags_t(libtorrent_jni.picker_log_alert_end_game_get());
        V = new picker_flags_t(libtorrent_jni.picker_log_alert_extent_affinity_get());
    }

    @Override // com.frostwire.jlibtorrent.swig.peer_alert, com.frostwire.jlibtorrent.swig.torrent_alert, com.frostwire.jlibtorrent.swig.alert
    public final synchronized void a() {
        try {
            long j = this.C;
            if (j != 0) {
                if (this.b) {
                    this.b = false;
                    libtorrent_jni.delete_picker_log_alert(j);
                }
                this.C = 0L;
            }
            super.a();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.frostwire.jlibtorrent.swig.peer_alert, com.frostwire.jlibtorrent.swig.torrent_alert, com.frostwire.jlibtorrent.swig.alert
    public final String b() {
        return libtorrent_jni.picker_log_alert_message(this.C, this);
    }

    @Override // com.frostwire.jlibtorrent.swig.alert
    public final int c() {
        return libtorrent_jni.picker_log_alert_type(this.C, this);
    }

    @Override // com.frostwire.jlibtorrent.swig.alert
    public final String d() {
        return libtorrent_jni.picker_log_alert_what(this.C, this);
    }

    @Override // com.frostwire.jlibtorrent.swig.peer_alert, com.frostwire.jlibtorrent.swig.torrent_alert, com.frostwire.jlibtorrent.swig.alert
    public final void finalize() {
        a();
    }
}
