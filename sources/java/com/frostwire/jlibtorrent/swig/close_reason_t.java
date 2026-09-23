package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public final class close_reason_t {

    /* renamed from: a, reason: collision with root package name */
    public final int f2670a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public static final close_reason_t f2669c = new close_reason_t("none", libtorrent_jni.close_reason_t_none_get());
    public static final close_reason_t d = new close_reason_t("duplicate_peer_id");
    public static final close_reason_t e = new close_reason_t("torrent_removed");
    public static final close_reason_t f = new close_reason_t("no_memory");
    public static final close_reason_t g = new close_reason_t("port_blocked");
    public static final close_reason_t h = new close_reason_t("blocked");
    public static final close_reason_t i = new close_reason_t("upload_to_upload");
    public static final close_reason_t j = new close_reason_t("not_interested_upload_only");
    public static final close_reason_t k = new close_reason_t("timeout");
    public static final close_reason_t l = new close_reason_t("timed_out_interest");
    public static final close_reason_t m = new close_reason_t("timed_out_activity");
    public static final close_reason_t n = new close_reason_t("timed_out_handshake");
    public static final close_reason_t o = new close_reason_t("timed_out_request");
    public static final close_reason_t p = new close_reason_t("protocol_blocked");
    public static final close_reason_t q = new close_reason_t("peer_churn");
    public static final close_reason_t r = new close_reason_t("too_many_connections");
    public static final close_reason_t s = new close_reason_t("too_many_files");
    public static final close_reason_t t = new close_reason_t("encryption_error", libtorrent_jni.close_reason_t_encryption_error_get());
    public static final close_reason_t u = new close_reason_t("invalid_info_hash");
    public static final close_reason_t v = new close_reason_t("self_connection");
    public static final close_reason_t w = new close_reason_t("invalid_metadata");
    public static final close_reason_t x = new close_reason_t("metadata_too_big");
    public static final close_reason_t y = new close_reason_t("message_too_big");
    public static final close_reason_t z = new close_reason_t("invalid_message_id");
    public static final close_reason_t A = new close_reason_t("invalid_message");
    public static final close_reason_t B = new close_reason_t("invalid_piece_message");
    public static final close_reason_t C = new close_reason_t("invalid_have_message");
    public static final close_reason_t D = new close_reason_t("invalid_bitfield_message");
    public static final close_reason_t E = new close_reason_t("invalid_choke_message");
    public static final close_reason_t F = new close_reason_t("invalid_unchoke_message");
    public static final close_reason_t G = new close_reason_t("invalid_interested_message");
    public static final close_reason_t H = new close_reason_t("invalid_not_interested_message");
    public static final close_reason_t I = new close_reason_t("invalid_request_message");
    public static final close_reason_t J = new close_reason_t("invalid_reject_message");
    public static final close_reason_t K = new close_reason_t("invalid_allow_fast_message");
    public static final close_reason_t L = new close_reason_t("invalid_extended_message");
    public static final close_reason_t M = new close_reason_t("invalid_cancel_message");
    public static final close_reason_t N = new close_reason_t("invalid_dht_port_message");
    public static final close_reason_t O = new close_reason_t("invalid_suggest_message");
    public static final close_reason_t P = new close_reason_t("invalid_have_all_message");
    public static final close_reason_t Q = new close_reason_t("invalid_dont_have_message");
    public static final close_reason_t R = new close_reason_t("invalid_have_none_message");
    public static final close_reason_t S = new close_reason_t("invalid_pex_message");
    public static final close_reason_t T = new close_reason_t("invalid_metadata_request_message");
    public static final close_reason_t U = new close_reason_t("invalid_metadata_message");
    public static final close_reason_t V = new close_reason_t("invalid_metadata_offset");
    public static final close_reason_t W = new close_reason_t("request_when_choked");
    public static final close_reason_t X = new close_reason_t("corrupt_pieces");
    public static final close_reason_t Y = new close_reason_t("pex_message_too_big");
    public static final close_reason_t Z = new close_reason_t("pex_too_frequent");
    public static int a0 = 0;

    public close_reason_t(String str) {
        this.b = str;
        int i2 = a0;
        a0 = i2 + 1;
        this.f2670a = i2;
    }

    public final String toString() {
        return this.b;
    }

    public close_reason_t(String str, int i2) {
        this.b = str;
        this.f2670a = i2;
        a0 = i2 + 1;
    }
}
