package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public final class storage_mode_t {

    /* renamed from: c, reason: collision with root package name */
    public static final storage_mode_t f2731c = new storage_mode_t("storage_mode_allocate");
    public static final storage_mode_t d = new storage_mode_t("storage_mode_sparse");
    public static int e = 0;

    /* renamed from: a, reason: collision with root package name */
    public final int f2732a;
    public final String b;

    public storage_mode_t(String str) {
        this.b = str;
        int i = e;
        e = i + 1;
        this.f2732a = i;
    }

    public final String toString() {
        return this.b;
    }
}
