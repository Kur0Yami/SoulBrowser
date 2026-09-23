package com.frostwire.jlibtorrent.swig;

/* loaded from: classes.dex */
public final class metric_type_t {

    /* renamed from: c, reason: collision with root package name */
    public static final metric_type_t f2687c = new metric_type_t("counter");
    public static final metric_type_t d = new metric_type_t("gauge");
    public static int e = 0;

    /* renamed from: a, reason: collision with root package name */
    public final int f2688a;
    public final String b;

    public metric_type_t(String str) {
        this.b = str;
        int i = e;
        e = i + 1;
        this.f2688a = i;
    }

    public final String toString() {
        return this.b;
    }
}
