package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public class peer_info {

    /* renamed from: a, reason: collision with root package name */
    public static final peer_flags_t f2695a = new peer_flags_t(libtorrent_jni.peer_info_interesting_get());
    public static final peer_flags_t b = new peer_flags_t(libtorrent_jni.peer_info_choked_get());

    /* renamed from: c, reason: collision with root package name */
    public static final peer_flags_t f2696c = new peer_flags_t(libtorrent_jni.peer_info_remote_interested_get());
    public static final peer_flags_t d = new peer_flags_t(libtorrent_jni.peer_info_remote_choked_get());
    public static final peer_flags_t e = new peer_flags_t(libtorrent_jni.peer_info_supports_extensions_get());
    public static final peer_flags_t f = new peer_flags_t(libtorrent_jni.peer_info_local_connection_get());
    public static final peer_flags_t g = new peer_flags_t(libtorrent_jni.peer_info_handshake_get());
    public static final peer_flags_t h = new peer_flags_t(libtorrent_jni.peer_info_connecting_get());
    public static final peer_flags_t i = new peer_flags_t(libtorrent_jni.peer_info_on_parole_get());
    public static final peer_flags_t j = new peer_flags_t(libtorrent_jni.peer_info_seed_get());
    public static final peer_flags_t k = new peer_flags_t(libtorrent_jni.peer_info_optimistic_unchoke_get());
    public static final peer_flags_t l = new peer_flags_t(libtorrent_jni.peer_info_snubbed_get());
    public static final peer_flags_t m = new peer_flags_t(libtorrent_jni.peer_info_upload_only_get());
    public static final peer_flags_t n = new peer_flags_t(libtorrent_jni.peer_info_endgame_mode_get());
    public static final peer_flags_t o = new peer_flags_t(libtorrent_jni.peer_info_holepunched_get());
    public static final peer_flags_t p = new peer_flags_t(libtorrent_jni.peer_info_i2p_socket_get());
    public static final peer_flags_t q = new peer_flags_t(libtorrent_jni.peer_info_utp_socket_get());
    public static final peer_flags_t r = new peer_flags_t(libtorrent_jni.peer_info_ssl_socket_get());
    public static final peer_flags_t s = new peer_flags_t(libtorrent_jni.peer_info_rc4_encrypted_get());
    public static final peer_flags_t t = new peer_flags_t(libtorrent_jni.peer_info_plaintext_encrypted_get());
    public static final peer_source_flags_t u = new peer_source_flags_t(libtorrent_jni.peer_info_tracker_get());
    public static final peer_source_flags_t v = new peer_source_flags_t(libtorrent_jni.peer_info_dht_get());
    public static final peer_source_flags_t w = new peer_source_flags_t(libtorrent_jni.peer_info_pex_get());
    public static final peer_source_flags_t x = new peer_source_flags_t(libtorrent_jni.peer_info_lsd_get());
    public static final peer_source_flags_t y = new peer_source_flags_t(libtorrent_jni.peer_info_resume_data_get());
    public static final peer_source_flags_t z = new peer_source_flags_t(libtorrent_jni.peer_info_incoming_get());
    public static final bandwidth_state_flags_t A = new bandwidth_state_flags_t(libtorrent_jni.peer_info_bw_idle_get());
    public static final bandwidth_state_flags_t B = new bandwidth_state_flags_t(libtorrent_jni.peer_info_bw_limit_get());
    public static final bandwidth_state_flags_t C = new bandwidth_state_flags_t(libtorrent_jni.peer_info_bw_network_get());
    public static final bandwidth_state_flags_t D = new bandwidth_state_flags_t(libtorrent_jni.peer_info_bw_disk_get());

    /* loaded from: classes.dex */
    public static final class connection_type_t {

        /* renamed from: c, reason: collision with root package name */
        public static final connection_type_t f2697c = new connection_type_t("standard_bittorrent", libtorrent_jni.peer_info_standard_bittorrent_get());
        public static final connection_type_t d = new connection_type_t("web_seed", libtorrent_jni.peer_info_web_seed_get());
        public static final connection_type_t e = new connection_type_t("http_seed", libtorrent_jni.peer_info_http_seed_get());

        /* renamed from: a, reason: collision with root package name */
        public final int f2698a;
        public final String b;

        public connection_type_t(String str, int i) {
            this.b = str;
            this.f2698a = i;
        }

        public final String toString() {
            return this.b;
        }
    }

    public final void finalize() {
        synchronized (this) {
        }
    }
}
