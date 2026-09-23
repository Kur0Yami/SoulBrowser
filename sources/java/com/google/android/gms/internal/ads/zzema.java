package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzema implements zzgyj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzfhr f6663a;
    public final /* synthetic */ zzemb b;

    public zzema(zzemb zzembVar, zzfhr zzfhrVar) {
        this.f6663a = zzfhrVar;
        this.b = zzembVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final /* synthetic */ void a(Object obj) {
        zzemb zzembVar = this.b;
        zzems zzemsVar = (zzems) obj;
        synchronized (zzembVar) {
            try {
                zzembVar.h.b(zzemsVar, this.f6663a);
                zzfhr a2 = zzembVar.h.a();
                if (a2 != null) {
                    zzembVar.b(a2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void b(Throwable th) {
        zzemb zzembVar = this.b;
        synchronized (zzembVar) {
            try {
                zzemc zzemcVar = zzembVar.h;
                zzfhr zzfhrVar = this.f6663a;
                zzemcVar.c(zzfhrVar);
                zzfhr a2 = zzembVar.h.a();
                if (zzfhrVar.v0) {
                    while (a2 != null) {
                        zzembVar.b(a2);
                        a2 = zzembVar.h.a();
                    }
                } else if (a2 != null) {
                    zzembVar.b(a2);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
