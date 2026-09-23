package com.google.android.gms.internal.ads;

import android.content.Context;
import android.util.Base64;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzfpi {

    /* renamed from: a, reason: collision with root package name */
    public final Context f7532a;
    public final Executor b;

    /* renamed from: c, reason: collision with root package name */
    public final zzgyx f7533c;
    public final com.google.android.gms.ads.internal.util.client.zzu d;
    public final zzfpa e;
    public final zzfnr f;
    public final zzcld g;

    public zzfpi(Context context, Executor executor, zzgyx zzgyxVar, com.google.android.gms.ads.internal.util.client.zzu zzuVar, zzfpa zzfpaVar, zzfnr zzfnrVar, zzcld zzcldVar) {
        this.f7532a = context;
        this.b = executor;
        this.f7533c = zzgyxVar;
        this.d = zzuVar;
        this.e = zzfpaVar;
        this.f = zzfnrVar;
        this.g = zzcldVar;
    }

    public final void a(List list, com.google.android.gms.ads.internal.util.client.zzv zzvVar) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            b((String) it.next(), zzvVar, null, null);
        }
    }

    public final void b(final String str, com.google.android.gms.ads.internal.util.client.zzv zzvVar, zzfno zzfnoVar, zzdcz zzdczVar) {
        ListenableFuture v0;
        zzfne zzfneVar = null;
        if (zzfnr.a() && ((Boolean) zzbid.d.c()).booleanValue()) {
            zzfneVar = a.o(this.f7532a, 14);
            zzfneVar.zza();
        }
        if (zzvVar != null) {
            v0 = new zzfoz(zzvVar.zza(), this.d, this.f7533c, this.e, this.g).a(str);
        } else {
            v0 = this.f7533c.v0(new Callable() { // from class: com.google.android.gms.internal.ads.zzfph
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    zzfpi zzfpiVar = zzfpi.this;
                    com.google.android.gms.ads.internal.util.client.zzu zzuVar = zzfpiVar.d;
                    boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.fa)).booleanValue();
                    String str2 = null;
                    String str3 = str;
                    if (booleanValue && (com.google.android.gms.ads.internal.zzt.zzc().zzi(str3) || com.google.android.gms.ads.internal.zzt.zzc().zzj(str3))) {
                        zziic zziicVar = zzfpiVar.g.f5238c;
                        if (zziicVar != null) {
                            str2 = Base64.encodeToString(zziicVar.h(), 10);
                        }
                        HashMap hashMap = new HashMap();
                        if (str2 != null) {
                            hashMap.put((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.ga), str2);
                        }
                        return zzuVar.zzc(str3, hashMap);
                    }
                    return zzuVar.zzc(str3, null);
                }
            });
        }
        v0.k(new zzgyk(v0, new zzfpg(this, zzfneVar, zzfnoVar, zzdczVar)), this.b);
    }
}
