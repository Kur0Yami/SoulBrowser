package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzflb {

    /* renamed from: a, reason: collision with root package name */
    public final zzfkt f7453a;
    public final ListenableFuture b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f7454c = false;
    public boolean d = false;

    public zzflb(final zzfjz zzfjzVar, final zzfks zzfksVar, final zzfkt zzfktVar) {
        this.f7453a = zzfktVar;
        zzfep zzfepVar = (zzfep) zzfktVar;
        this.b = zzgym.f(zzgym.h((zzgye) ((zzfem) zzfksVar).f7275a.b(zzfepVar.b, zzfepVar.f7279a, null), new zzgxu() { // from class: com.google.android.gms.internal.ads.zzfla
            @Override // com.google.android.gms.internal.ads.zzgxu
            public final ListenableFuture zza(Object obj) {
                zzflb zzflbVar = zzflb.this;
                zzfks zzfksVar2 = zzfksVar;
                zzfjz zzfjzVar2 = zzfjzVar;
                zzfkt zzfktVar2 = zzfktVar;
                zzfki zzfkiVar = (zzfki) obj;
                synchronized (zzflbVar) {
                    try {
                        zzflbVar.d = true;
                        zzfkiVar.f7433a = ((zzfem) zzfksVar2).f7275a.f7274a;
                        if (!zzflbVar.f7454c) {
                            ((zzfka) zzfjzVar2).a(zzfktVar2.zzb(), zzfkiVar);
                            return zzgyq.f;
                        }
                        return zzgym.a(new zzfkr(zzfkiVar, zzfktVar2));
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }, zzfktVar.zza()), Exception.class, new zzgxu() { // from class: com.google.android.gms.internal.ads.zzfky
            @Override // com.google.android.gms.internal.ads.zzgxu
            public final /* synthetic */ ListenableFuture zza(Object obj) {
                zzflb zzflbVar = zzflb.this;
                Exception exc = (Exception) obj;
                synchronized (zzflbVar) {
                    zzflbVar.d = true;
                    throw exc;
                }
            }
        }, zzfktVar.zza());
    }

    public final synchronized void a(zzgyj zzgyjVar) {
        zzfkt zzfktVar = this.f7453a;
        ListenableFuture h = zzgym.h(this.b, zzfkz.f7449a, zzfktVar.zza());
        Executor zza = zzfktVar.zza();
        ((zzgxf) h).k(new zzgyk(h, zzgyjVar), zza);
    }

    public final synchronized ListenableFuture b(zzfkt zzfktVar) {
        if (!this.d && !this.f7454c) {
            zzfkt zzfktVar2 = this.f7453a;
            if (zzfktVar2.zzb() != null && ((zzfep) zzfktVar).g != null && zzfktVar2.zzb().equals(((zzfep) zzfktVar).g)) {
                this.f7454c = true;
                return this.b;
            }
        }
        return null;
    }
}
