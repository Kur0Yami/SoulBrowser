package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public final class operation_t {
    public static int P;

    /* renamed from: a, reason: collision with root package name */
    public final int f2690a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public static final operation_t f2689c = new operation_t("unknown");
    public static final operation_t d = new operation_t("bittorrent");
    public static final operation_t e = new operation_t("iocontrol");
    public static final operation_t f = new operation_t("getpeername");
    public static final operation_t g = new operation_t("getname");
    public static final operation_t h = new operation_t("alloc_recvbuf");
    public static final operation_t i = new operation_t("alloc_sndbuf");
    public static final operation_t j = new operation_t("file_write");
    public static final operation_t k = new operation_t("file_read");
    public static final operation_t l = new operation_t("file");
    public static final operation_t m = new operation_t("sock_write");
    public static final operation_t n = new operation_t("sock_read");
    public static final operation_t o = new operation_t("sock_open");
    public static final operation_t p = new operation_t("sock_bind");
    public static final operation_t q = new operation_t("available");
    public static final operation_t r = new operation_t("encryption");
    public static final operation_t s = new operation_t("connect");
    public static final operation_t t = new operation_t("ssl_handshake");
    public static final operation_t u = new operation_t("get_interface");
    public static final operation_t v = new operation_t("sock_listen");
    public static final operation_t w = new operation_t("sock_bind_to_device");
    public static final operation_t x = new operation_t("sock_accept");
    public static final operation_t y = new operation_t("parse_address");
    public static final operation_t z = new operation_t("enum_if");
    public static final operation_t A = new operation_t("file_stat");
    public static final operation_t B = new operation_t("file_copy");
    public static final operation_t C = new operation_t("file_fallocate");
    public static final operation_t D = new operation_t("file_hard_link");
    public static final operation_t E = new operation_t("file_remove");
    public static final operation_t F = new operation_t("file_rename");
    public static final operation_t G = new operation_t("file_open");
    public static final operation_t H = new operation_t("mkdir");
    public static final operation_t I = new operation_t("check_resume");
    public static final operation_t J = new operation_t("exception");
    public static final operation_t K = new operation_t("alloc_cache_piece");
    public static final operation_t L = new operation_t("partfile_move");
    public static final operation_t M = new operation_t("partfile_read");
    public static final operation_t N = new operation_t("partfile_write");
    public static final operation_t O = new operation_t("hostname_lookup");

    static {
        new operation_t("symlink");
        new operation_t("handshake");
        new operation_t("sock_option");
        new operation_t("enum_route");
        P = 0;
    }

    public operation_t(String str) {
        this.b = str;
        int i2 = P;
        P = i2 + 1;
        this.f2690a = i2;
    }

    public final String toString() {
        return this.b;
    }
}
