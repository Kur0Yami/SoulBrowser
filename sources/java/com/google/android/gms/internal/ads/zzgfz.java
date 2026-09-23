package com.google.android.gms.internal.ads;

import java.lang.reflect.Method;

/* loaded from: classes.dex */
public abstract class zzgfz implements zzgfy {

    /* renamed from: a, reason: collision with root package name */
    public final String f7919a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final zzgev f7920c;
    public final zzavs d;
    public final zzgna e;

    public zzgfz(String str, String str2, zzavs zzavsVar, zzgev zzgevVar, zzgna zzgnaVar) {
        this.f7919a = str;
        this.b = str2;
        this.d = zzavsVar;
        this.f7920c = zzgevVar;
        this.e = zzgnaVar;
    }

    public abstract void a(Method method, zzavs zzavsVar);

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() {
        zzgna zzgnaVar = this.e;
        try {
            zzgnaVar.a();
            Method b = this.f7920c.b(this.f7919a, this.b);
            if (b != null) {
                a(b, this.d);
            }
            zzgnaVar.c();
            return null;
        } catch (Throwable th) {
            try {
                zzgnaVar.b(th);
                throw th;
            } catch (Throwable th2) {
                zzgnaVar.c();
                throw th2;
            }
        }
    }
}
