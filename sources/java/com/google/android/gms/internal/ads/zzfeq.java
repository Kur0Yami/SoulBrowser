package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbfp;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzfeq implements zzffj {

    /* renamed from: a, reason: collision with root package name */
    public final zzffa f7281a;
    public final zzfew b;

    /* renamed from: c, reason: collision with root package name */
    public final zzfkv f7282c;
    public final String d;
    public zzczr e;
    public final Executor f;

    public zzfeq(zzffa zzffaVar, zzfew zzfewVar, zzfkv zzfkvVar, String str, Executor executor) {
        this.f7281a = zzffaVar;
        this.b = zzfewVar;
        this.f7282c = zzfkvVar;
        this.d = str;
        this.f = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzffj
    public final ListenableFuture a(final zzffk zzffkVar, final zzffi zzffiVar) {
        synchronized (this) {
            zzczq a2 = zzffiVar.a(zzffkVar.b);
            a2.b(new zzfer(this.d));
            final zzczr zzczrVar = (zzczr) a2.zzh();
            zzczrVar.zzb();
            zzczrVar.zzb();
            com.google.android.gms.ads.internal.client.zzm zzmVar = zzczrVar.zzb().d;
            if (zzmVar.zzs == null && zzmVar.zzx == null) {
                zzfik zzb = zzczrVar.zzb();
                com.google.android.gms.ads.internal.client.zzm zzmVar2 = zzb.d;
                String str = zzb.g;
                com.google.android.gms.ads.internal.client.zzx zzxVar = zzb.k;
                Executor executor = this.f;
                final zzfep zzfepVar = new zzfep(zzffiVar, zzffkVar, zzmVar2, str, executor, zzxVar, null);
                return (zzgye) zzgym.h(zzgye.r(this.b.b(zzczrVar)), new zzgxu() { // from class: com.google.android.gms.internal.ads.zzfeo
                    @Override // com.google.android.gms.internal.ads.zzgxu
                    public final ListenableFuture zza(Object obj) {
                        ListenableFuture b;
                        final zzfeq zzfeqVar = zzfeq.this;
                        zzffk zzffkVar2 = zzffkVar;
                        zzfep zzfepVar2 = zzfepVar;
                        zzffi zzffiVar2 = zzffiVar;
                        zzczr zzczrVar2 = zzczrVar;
                        zzfev zzfevVar = (zzfev) obj;
                        if (zzfevVar != null) {
                            zzfep zzfepVar3 = new zzfep(zzfepVar2.f7279a, zzfepVar2.b, zzfepVar2.f7280c, zzfepVar2.d, zzfepVar2.e, zzfepVar2.f, zzfevVar.f7285a);
                            zzfki zzfkiVar = zzfevVar.f7286c;
                            if (zzfkiVar != null) {
                                zzfeqVar.e = null;
                                zzfeqVar.f7282c.a(zzfepVar3);
                                return zzfeqVar.b(zzfkiVar, zzffkVar2);
                            }
                            zzfkv zzfkvVar = zzfeqVar.f7282c;
                            synchronized (zzfkvVar) {
                                zzfkvVar.e = 2;
                                if (zzfkvVar.c()) {
                                    b = null;
                                } else {
                                    b = zzfkvVar.d.b(zzfepVar3);
                                }
                            }
                            if (b != null) {
                                zzfeqVar.e = null;
                                return zzgym.h(b, new zzgxu() { // from class: com.google.android.gms.internal.ads.zzfen
                                    @Override // com.google.android.gms.internal.ads.zzgxu
                                    public final ListenableFuture zza(Object obj2) {
                                        zzfki zzfkiVar2;
                                        zzfkt zzfktVar;
                                        zzfkr zzfkrVar = (zzfkr) obj2;
                                        if (zzfkrVar != null && (zzfkiVar2 = zzfkrVar.f7441a) != null && (zzfktVar = zzfkrVar.b) != null) {
                                            zzbfp.zzb.zzc D = zzbfp.zzb.D();
                                            zzbfp.zzb.zza.C0013zza E = zzbfp.zzb.zza.E();
                                            E.k();
                                            ((zzbfp.zzb.zza) E.f).F();
                                            zzbfp.zzb.zze E2 = zzbfp.zzb.zze.E();
                                            E.k();
                                            ((zzbfp.zzb.zza) E.f).G(E2);
                                            D.k();
                                            ((zzbfp.zzb) D.f).E((zzbfp.zzb.zza) E.m());
                                            zzfkiVar2.f7433a.zza().f.Z((zzbfp.zzb) D.m());
                                            return zzfeq.this.b(zzfkiVar2, ((zzfep) zzfktVar).b);
                                        }
                                        throw new zzebr(1, "Empty prefetch");
                                    }
                                }, zzfeqVar.f);
                            }
                            zzfkvVar.a(zzfepVar3);
                            zzffkVar2 = new zzffk(zzffkVar2.b, zzfevVar.b);
                        }
                        ListenableFuture b2 = zzfeqVar.f7281a.b(zzffkVar2, zzffiVar2, zzczrVar2);
                        zzfeqVar.e = zzczrVar2;
                        return b2;
                    }
                }, executor);
            }
            this.e = zzczrVar;
            return this.f7281a.b(zzffkVar, zzffiVar, zzczrVar);
        }
    }

    public final ListenableFuture b(zzfki zzfkiVar, zzffk zzffkVar) {
        zzczr zzczrVar = zzfkiVar.f7433a;
        this.e = zzczrVar;
        if (zzfkiVar.f7434c != null) {
            if (zzczrVar.zzc() != null) {
                zzfkiVar.f7434c.e.b(zzfkiVar.f7433a.zzc());
            }
            return zzgym.a(zzfkiVar.f7434c);
        }
        zzczrVar.zza().g = zzfkiVar.b;
        return this.f7281a.b(zzffkVar, null, zzfkiVar.f7433a);
    }

    @Override // com.google.android.gms.internal.ads.zzffj
    public final Object zzd() {
        zzczr zzczrVar;
        synchronized (this) {
            zzczrVar = this.e;
        }
        return zzczrVar;
    }
}
