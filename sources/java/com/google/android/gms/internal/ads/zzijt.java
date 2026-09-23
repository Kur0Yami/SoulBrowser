package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzijt implements zzijp {

    /* renamed from: c, reason: collision with root package name */
    public static final Object f9010c = new Object();

    /* renamed from: a, reason: collision with root package name */
    public volatile zzijg f9011a;
    public volatile Object b;

    /* JADX WARN: Type inference failed for: r0v2, types: [com.google.android.gms.internal.ads.zzijp, com.google.android.gms.internal.ads.zzijt, java.lang.Object] */
    public static zzijp a(zzijg zzijgVar) {
        if (!(zzijgVar instanceof zzijt) && !(zzijgVar instanceof zzijf)) {
            ?? obj = new Object();
            obj.b = f9010c;
            obj.f9011a = zzijgVar;
            return obj;
        }
        return zzijgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        Object obj = this.b;
        if (obj == f9010c) {
            zzijg zzijgVar = this.f9011a;
            if (zzijgVar == null) {
                return this.b;
            }
            Object zzb = zzijgVar.zzb();
            this.b = zzb;
            this.f9011a = null;
            return zzb;
        }
        return obj;
    }
}
