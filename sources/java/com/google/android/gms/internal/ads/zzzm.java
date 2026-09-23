package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class zzzm {

    /* renamed from: c, reason: collision with root package name */
    public final int f9414c;
    public final zzbg f;
    public final int g;
    public final zzv h;

    public zzzm(int i, zzbg zzbgVar, int i2) {
        this.f9414c = i;
        this.f = zzbgVar;
        this.g = i2;
        this.h = zzbgVar.d[i2];
    }

    public abstract boolean a(zzzm zzzmVar);

    public abstract int zza();
}
