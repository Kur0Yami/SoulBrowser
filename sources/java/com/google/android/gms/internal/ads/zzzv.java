package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzzv {

    /* renamed from: a, reason: collision with root package name */
    public final zzbg f9421a;
    public final int[] b;

    public zzzv(zzbg zzbgVar, int[] iArr) {
        if (iArr.length == 0) {
            zzee.f("ETSDefinition", "Empty tracks are not allowed", new IllegalArgumentException());
        }
        this.f9421a = zzbgVar;
        this.b = iArr;
    }
}
