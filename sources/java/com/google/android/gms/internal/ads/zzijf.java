package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzijf implements zzijp, zzija {

    /* renamed from: c, reason: collision with root package name */
    public static final Object f9004c = new Object();

    /* renamed from: a, reason: collision with root package name */
    public volatile zzijp f9005a;
    public volatile Object b = f9004c;

    public zzijf(zzijp zzijpVar) {
        this.f9005a = zzijpVar;
    }

    public static zzijf a(zzijp zzijpVar) {
        if (zzijpVar instanceof zzijf) {
            return (zzijf) zzijpVar;
        }
        return new zzijf(zzijpVar);
    }

    public static zzija b(zzijp zzijpVar) {
        if (zzijpVar instanceof zzija) {
            return (zzija) zzijpVar;
        }
        zzijpVar.getClass();
        return new zzijf(zzijpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        Object obj = this.b;
        Object obj2 = f9004c;
        if (obj == obj2) {
            synchronized (this) {
                try {
                    Object obj3 = this.b;
                    if (obj3 == obj2) {
                        Object zzb = this.f9005a.zzb();
                        Object obj4 = this.b;
                        if (obj4 != obj2 && obj4 != zzb) {
                            throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj4 + " & " + zzb + ". This is likely due to a circular dependency.");
                        }
                        this.b = zzb;
                        this.f9005a = null;
                        return zzb;
                    }
                    return obj3;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return obj;
    }
}
