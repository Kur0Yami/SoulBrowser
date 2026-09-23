package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public final class portmap_transport {

    /* renamed from: c, reason: collision with root package name */
    public static final portmap_transport f2708c = new portmap_transport("natpmp");
    public static final portmap_transport d = new portmap_transport("upnp");
    public static int e = 0;

    /* renamed from: a, reason: collision with root package name */
    public final int f2709a;
    public final String b;

    public portmap_transport(String str) {
        this.b = str;
        int i = e;
        e = i + 1;
        this.f2709a = i;
    }

    public final String toString() {
        return this.b;
    }
}
