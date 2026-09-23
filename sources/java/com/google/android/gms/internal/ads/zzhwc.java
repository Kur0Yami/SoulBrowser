package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzhwc {
    public static final zzhwc b = new zzhwc(new Object());

    /* renamed from: c, reason: collision with root package name */
    public static final zzhwc f8845c = new zzhwc(new Object());
    public static final zzhwc d = new zzhwc(new Object());
    public static final zzhwc e = new zzhwc(new Object());
    public static final zzhwc f;
    public static final zzhwc g;

    /* renamed from: a, reason: collision with root package name */
    public final zzhwb f8846a;

    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zzhwk] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, com.google.android.gms.internal.ads.zzhwk] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object, com.google.android.gms.internal.ads.zzhwk] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object, com.google.android.gms.internal.ads.zzhwk] */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.lang.Object, com.google.android.gms.internal.ads.zzhwk] */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.lang.Object, com.google.android.gms.internal.ads.zzhwk] */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.lang.Object, com.google.android.gms.internal.ads.zzhwk] */
    static {
        new zzhwc(new Object());
        f = new zzhwc(new Object());
        g = new zzhwc(new Object());
    }

    public zzhwc(zzhwk zzhwkVar) {
        zzhwb zzhwaVar;
        if (!zzhhc.a()) {
            if ("The Android Project".equals(System.getProperty("java.vendor"))) {
                zzhwaVar = new zzhvy(zzhwkVar);
            } else {
                zzhwaVar = new zzhvz(zzhwkVar);
            }
        } else {
            zzhwaVar = new zzhwa(zzhwkVar);
        }
        this.f8846a = zzhwaVar;
    }
}
