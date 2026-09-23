package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.Clock;
import com.google.common.util.concurrent.ListenableFuture;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzcrx implements zzbck, zzdbf, com.google.android.gms.ads.internal.overlay.zzr, zzdbe {

    /* renamed from: c, reason: collision with root package name */
    public final zzcrs f5420c;
    public final zzcrt f;
    public final zzbsr h;
    public final Executor i;
    public final Clock j;
    public final HashSet g = new HashSet();
    public final AtomicBoolean k = new AtomicBoolean(false);
    public final zzcrw l = new zzcrw();
    public boolean m = false;
    public WeakReference n = new WeakReference(this);

    public zzcrx(zzbso zzbsoVar, zzcrt zzcrtVar, Executor executor, zzcrs zzcrsVar, Clock clock) {
        this.f5420c = zzcrsVar;
        zzbrz zzbrzVar = zzbsc.f4867a;
        zzbsoVar.a();
        this.h = new zzbsr(zzbsoVar.b);
        this.f = zzcrtVar;
        this.i = executor;
        this.j = clock;
    }

    @Override // com.google.android.gms.internal.ads.zzbck
    public final synchronized void Q(zzbcj zzbcjVar) {
        zzcrw zzcrwVar = this.l;
        zzcrwVar.f5418a = zzbcjVar.j;
        zzcrwVar.e = zzbcjVar;
        a();
    }

    public final synchronized void a() {
        try {
            if (this.n.get() != null) {
                if (!this.m && this.k.get()) {
                    try {
                        zzcrw zzcrwVar = this.l;
                        zzcrwVar.f5419c = this.j.elapsedRealtime();
                        final JSONObject a2 = this.f.a(zzcrwVar);
                        Iterator it = this.g.iterator();
                        while (it.hasNext()) {
                            final zzcir zzcirVar = (zzcir) it.next();
                            this.i.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcrv
                                @Override // java.lang.Runnable
                                public final /* synthetic */ void run() {
                                    JSONObject jSONObject = a2;
                                    String obj = jSONObject.toString();
                                    String q = android.support.v4.media.a.q(new StringBuilder(obj.length() + 31), "Calling AFMA_updateActiveView(", obj, ")");
                                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                                    com.google.android.gms.ads.internal.util.client.zzo.zzd(q);
                                    zzcirVar.f(jSONObject, "AFMA_updateActiveView");
                                }
                            });
                        }
                        zzbsr zzbsrVar = this.h;
                        zzbsrVar.getClass();
                        zzcdr.b(zzgym.h(zzbsrVar.f4884a, new zzbsq(zzbsrVar, a2), zzcdo.g), "ActiveViewListener.callActiveViewJs");
                        return;
                    } catch (Exception e) {
                        com.google.android.gms.ads.internal.util.zze.zzb("Failed to call ActiveViewJS", e);
                        return;
                    }
                }
                return;
            }
            f();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdbf
    public final synchronized void b(Context context) {
        this.l.d = "u";
        a();
        g();
        this.m = true;
    }

    public final synchronized void f() {
        g();
        this.m = true;
    }

    public final void g() {
        Iterator it = this.g.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            final String str = "/untrackActiveViewUnit";
            final String str2 = "/updateActiveView";
            zzcrs zzcrsVar = this.f5420c;
            if (hasNext) {
                zzcir zzcirVar = (zzcir) it.next();
                zzcirVar.o0("/updateActiveView", zzcrsVar.e);
                zzcirVar.o0("/untrackActiveViewUnit", zzcrsVar.f);
            } else {
                zzbso zzbsoVar = zzcrsVar.b;
                final zzbnn zzbnnVar = zzcrsVar.e;
                ListenableFuture listenableFuture = zzbsoVar.b;
                zzgpr zzgprVar = new zzgpr() { // from class: com.google.android.gms.internal.ads.zzbsm
                    @Override // com.google.android.gms.internal.ads.zzgpr
                    public final /* synthetic */ Object apply(Object obj) {
                        zzbrs zzbrsVar = (zzbrs) obj;
                        zzbrsVar.U(str2, zzbnnVar);
                        return zzbrsVar;
                    }
                };
                zzgyw zzgywVar = zzcdo.g;
                ListenableFuture i = zzgym.i(listenableFuture, zzgprVar, zzgywVar);
                zzbsoVar.b = i;
                final zzbnn zzbnnVar2 = zzcrsVar.f;
                zzbsoVar.b = zzgym.i(i, new zzgpr() { // from class: com.google.android.gms.internal.ads.zzbsm
                    @Override // com.google.android.gms.internal.ads.zzgpr
                    public final /* synthetic */ Object apply(Object obj) {
                        zzbrs zzbrsVar = (zzbrs) obj;
                        zzbrsVar.U(str, zzbnnVar2);
                        return zzbrsVar;
                    }
                }, zzgywVar);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdbe
    public final synchronized void n() {
        if (this.k.compareAndSet(false, true)) {
            zzcrs zzcrsVar = this.f5420c;
            zzbso zzbsoVar = zzcrsVar.b;
            final String str = "/updateActiveView";
            final zzbnn zzbnnVar = zzcrsVar.e;
            zzbsoVar.a();
            ListenableFuture listenableFuture = zzbsoVar.b;
            zzgxu zzgxuVar = new zzgxu() { // from class: com.google.android.gms.internal.ads.zzbsl
                @Override // com.google.android.gms.internal.ads.zzgxu
                public final /* synthetic */ ListenableFuture zza(Object obj) {
                    zzbrs zzbrsVar = (zzbrs) obj;
                    zzbrsVar.i0(str, zzbnnVar);
                    return zzgym.a(zzbrsVar);
                }
            };
            zzgyw zzgywVar = zzcdo.g;
            zzbsoVar.b = zzgym.h(listenableFuture, zzgxuVar, zzgywVar);
            final String str2 = "/untrackActiveViewUnit";
            final zzbnn zzbnnVar2 = zzcrsVar.f;
            zzbsoVar.a();
            zzbsoVar.b = zzgym.h(zzbsoVar.b, new zzgxu() { // from class: com.google.android.gms.internal.ads.zzbsl
                @Override // com.google.android.gms.internal.ads.zzgxu
                public final /* synthetic */ ListenableFuture zza(Object obj) {
                    zzbrs zzbrsVar = (zzbrs) obj;
                    zzbrsVar.i0(str2, zzbnnVar2);
                    return zzgym.a(zzbrsVar);
                }
            }, zzgywVar);
            zzcrsVar.d = this;
            a();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdbf
    public final synchronized void q(Context context) {
        this.l.b = false;
        a();
    }

    @Override // com.google.android.gms.internal.ads.zzdbf
    public final synchronized void zza(Context context) {
        this.l.b = true;
        a();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdS() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdT(int i) {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdo() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdp() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdq() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdv() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final synchronized void zzdw() {
        this.l.b = true;
        a();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final synchronized void zzdx() {
        this.l.b = false;
        a();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdy() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdz() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzh() {
    }
}
