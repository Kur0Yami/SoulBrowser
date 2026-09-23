package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Random;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
final class zzfis implements zzgyj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzcir f7395a;
    public final /* synthetic */ zzcra b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzfpi f7396c;
    public final /* synthetic */ zzehu d;

    public zzfis(zzcir zzcirVar, zzcra zzcraVar, zzfpi zzfpiVar, zzehu zzehuVar) {
        this.f7395a = zzcirVar;
        this.b = zzcraVar;
        this.f7396c = zzfpiVar;
        this.d = zzehuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void a(Object obj) {
        boolean z;
        zzcra zzcraVar;
        String str = (String) obj;
        zzcir zzcirVar = this.f7395a;
        zzfhr zzC = zzcirVar.zzC();
        if (zzC != null && !zzC.i0) {
            com.google.android.gms.ads.internal.util.client.zzv zzvVar = zzC.x0;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.tb)).booleanValue() && (zzcraVar = this.b) != null && zzcra.b(str)) {
                zzfpi zzfpiVar = this.f7396c;
                Random zzh = com.google.android.gms.ads.internal.client.zzbb.zzh();
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                ListenableFuture g = zzgym.g(zzcraVar.c(str, zzcraVar.d.f6152a, zzh), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Gb)).intValue(), TimeUnit.MILLISECONDS, zzcraVar.g);
                g.k(new zzgyk(g, new zzcqt(zzcraVar, zzfpiVar, str, zzvVar)), zzcraVar.e);
                return;
            }
            this.f7396c.b(str, zzvVar, null, null);
            return;
        }
        zzfhu d = zzcirVar.d();
        if (d == null) {
            com.google.android.gms.ads.internal.zzt.zzh().f("BufferingGmsgHandlers.getBufferingClickGmsgHandler", new IllegalArgumentException("Common configuration cannot be null"));
            return;
        }
        long currentTimeMillis = com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis();
        boolean k = com.google.android.gms.ads.internal.zzt.zzh().k(zzcirVar.getContext());
        int i = 1;
        boolean z2 = false;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.c7)).booleanValue() && zzC != null && zzC.S) {
            z = true;
        } else {
            z = false;
        }
        if (zzC != null && zzC.d0 != null) {
            z2 = true;
        }
        if (k || z || z2) {
            i = 2;
        }
        zzehw zzehwVar = new zzehw(i, d.b, str, currentTimeMillis);
        zzehu zzehuVar = this.d;
        zzehuVar.getClass();
        zzehuVar.a(new zzehr(zzehuVar, zzehwVar));
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void b(Throwable th) {
    }
}
