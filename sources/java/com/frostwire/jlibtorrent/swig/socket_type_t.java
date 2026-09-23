package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public final class socket_type_t {

    /* renamed from: c, reason: collision with root package name */
    public static final socket_type_t f2726c;
    public static final socket_type_t d;
    public static final socket_type_t e;
    public static final socket_type_t f;
    public static final socket_type_t g;
    public static final socket_type_t h;
    public static final socket_type_t[] i;
    public static int j;

    /* renamed from: a, reason: collision with root package name */
    public final int f2727a;
    public final String b;

    static {
        socket_type_t socket_type_tVar = new socket_type_t("tcp");
        f2726c = socket_type_tVar;
        socket_type_t socket_type_tVar2 = new socket_type_t("tcp_ssl");
        d = socket_type_tVar2;
        socket_type_t socket_type_tVar3 = new socket_type_t("udp");
        e = socket_type_tVar3;
        socket_type_t socket_type_tVar4 = new socket_type_t("i2p");
        f = socket_type_tVar4;
        socket_type_t socket_type_tVar5 = new socket_type_t("socks5");
        g = socket_type_tVar5;
        socket_type_t socket_type_tVar6 = new socket_type_t("utp_ssl");
        h = socket_type_tVar6;
        i = new socket_type_t[]{socket_type_tVar, socket_type_tVar2, socket_type_tVar3, socket_type_tVar4, socket_type_tVar5, socket_type_tVar6};
        j = 0;
    }

    public socket_type_t(String str) {
        this.b = str;
        int i2 = j;
        j = i2 + 1;
        this.f2727a = i2;
    }

    public static socket_type_t a(int i2) {
        socket_type_t[] socket_type_tVarArr = i;
        if (i2 < socket_type_tVarArr.length && i2 >= 0) {
            socket_type_t socket_type_tVar = socket_type_tVarArr[i2];
            if (socket_type_tVar.f2727a == i2) {
                return socket_type_tVar;
            }
        }
        for (socket_type_t socket_type_tVar2 : socket_type_tVarArr) {
            if (socket_type_tVar2.f2727a == i2) {
                return socket_type_tVar2;
            }
        }
        throw new IllegalArgumentException("No enum " + socket_type_t.class + " with value " + i2);
    }

    public final String toString() {
        return this.b;
    }
}
