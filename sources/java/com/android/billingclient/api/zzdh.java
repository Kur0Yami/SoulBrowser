package com.android.billingclient.api;

import android.content.Context;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.cct.CCTDestination;
import com.google.android.datatransport.runtime.TransportRuntime;
import com.google.android.gms.internal.play_billing.zziv;
import com.google.android.gms.internal.play_billing.zzix;
import com.google.android.gms.internal.play_billing.zziz;
import com.google.android.gms.internal.play_billing.zzjb;
import com.google.android.gms.internal.play_billing.zzjj;
import com.google.android.gms.internal.play_billing.zzjq;
import com.google.android.gms.internal.play_billing.zzjs;
import com.google.android.gms.internal.play_billing.zzka;
import com.google.android.gms.internal.play_billing.zzkf;
import com.google.android.gms.internal.play_billing.zzkg;
import com.google.android.gms.internal.play_billing.zzki;
import com.google.android.gms.internal.play_billing.zzko;
import com.google.android.gms.internal.play_billing.zzks;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzdh implements zzcy {
    public zzjs b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdj f2067c;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.android.billingclient.api.zzdj, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object, com.google.android.datatransport.Transformer] */
    public zzdh(Context context, zzjs zzjsVar) {
        ?? obj = new Object();
        try {
            TransportRuntime.b(context);
            obj.b = TransportRuntime.a().c(CCTDestination.e).a("PLAY_BILLING_LIBRARY", new Encoding("proto"), new Object());
        } catch (Throwable unused) {
            obj.f2068a = true;
        }
        this.f2067c = obj;
        this.b = zzjsVar;
    }

    @Override // com.android.billingclient.api.zzcy
    public final void a(zzix zzixVar) {
        try {
            l(zzixVar, this.b);
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.j("BillingLogger", "Unable to log.", th);
        }
    }

    @Override // com.android.billingclient.api.zzcy
    public final void b(zzjb zzjbVar, long j, boolean z) {
        zzjs zzjsVar;
        try {
            zziz zzizVar = (zziz) zzjbVar.k();
            zzka zzkaVar = (zzka) zzjbVar.s().k();
            zzkaVar.e();
            zzkf.r((zzkf) zzkaVar.f, z);
            zzizVar.e();
            zzjb.u((zzjb) zzizVar.f, (zzkf) zzkaVar.c());
            zzjb zzjbVar2 = (zzjb) zzizVar.c();
            if (j == 0) {
                zzjsVar = this.b;
            } else {
                zzjq zzjqVar = (zzjq) this.b.k();
                zzjqVar.e();
                zzjs.F((zzjs) zzjqVar.f, j);
                zzjsVar = (zzjs) zzjqVar.c();
            }
            m(zzjbVar2, zzjsVar);
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.j("BillingLogger", "Unable to log.", th);
        }
    }

    @Override // com.android.billingclient.api.zzcy
    public final void c(zzix zzixVar, long j, boolean z) {
        zzjs zzjsVar;
        try {
            zziv zzivVar = (zziv) zzixVar.k();
            zzka zzkaVar = (zzka) zzixVar.v().k();
            zzkaVar.e();
            zzkf.r((zzkf) zzkaVar.f, z);
            zzivVar.e();
            zzix.q((zzix) zzivVar.f, (zzkf) zzkaVar.c());
            zzix zzixVar2 = (zzix) zzivVar.c();
            if (j == 0) {
                zzjsVar = this.b;
            } else {
                zzjq zzjqVar = (zzjq) this.b.k();
                zzjqVar.e();
                zzjs.F((zzjs) zzjqVar.f, j);
                zzjsVar = (zzjs) zzjqVar.c();
            }
            l(zzixVar2, zzjsVar);
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.j("BillingLogger", "Unable to log.", th);
        }
    }

    public final void d(zzix zzixVar, int i) {
        try {
            zzjq zzjqVar = (zzjq) this.b.k();
            zzjqVar.e();
            zzjs.D((zzjs) zzjqVar.f, i);
            this.b = (zzjs) zzjqVar.c();
            a(zzixVar);
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.j("BillingLogger", "Unable to log.", th);
        }
    }

    public final void e(zzix zzixVar, int i, long j) {
        try {
            zzjq zzjqVar = (zzjq) this.b.k();
            zzjqVar.e();
            zzjs.D((zzjs) zzjqVar.f, i);
            zzjs zzjsVar = (zzjs) zzjqVar.c();
            this.b = zzjsVar;
            if (j != 0) {
                zzjq zzjqVar2 = (zzjq) zzjsVar.k();
                zzjqVar2.e();
                zzjs.F((zzjs) zzjqVar2.f, j);
                zzjsVar = (zzjs) zzjqVar2.c();
            }
            l(zzixVar, zzjsVar);
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.j("BillingLogger", "Unable to log.", th);
        }
    }

    public final void f(zzix zzixVar, int i, long j, boolean z) {
        zzjs zzjsVar;
        try {
            zzjq zzjqVar = (zzjq) this.b.k();
            zzjqVar.e();
            zzjs.D((zzjs) zzjqVar.f, i);
            this.b = (zzjs) zzjqVar.c();
            zziv zzivVar = (zziv) zzixVar.k();
            zzka zzkaVar = (zzka) zzixVar.v().k();
            zzkaVar.e();
            zzkf.r((zzkf) zzkaVar.f, z);
            zzivVar.e();
            zzix.q((zzix) zzivVar.f, (zzkf) zzkaVar.c());
            zzix zzixVar2 = (zzix) zzivVar.c();
            if (j == 0) {
                zzjsVar = this.b;
            } else {
                zzjq zzjqVar2 = (zzjq) this.b.k();
                zzjqVar2.e();
                zzjs.F((zzjs) zzjqVar2.f, j);
                zzjsVar = (zzjs) zzjqVar2.c();
            }
            l(zzixVar2, zzjsVar);
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.j("BillingLogger", "Unable to log.", th);
        }
    }

    public final void g(zzjb zzjbVar) {
        try {
            m(zzjbVar, this.b);
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.j("BillingLogger", "Unable to log.", th);
        }
    }

    public final void h(zzjb zzjbVar, int i) {
        try {
            zzjq zzjqVar = (zzjq) this.b.k();
            zzjqVar.e();
            zzjs.D((zzjs) zzjqVar.f, i);
            this.b = (zzjs) zzjqVar.c();
            g(zzjbVar);
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.j("BillingLogger", "Unable to log.", th);
        }
    }

    public final void i(zzjj zzjjVar) {
        try {
            zzkg r = zzki.r();
            r.g(this.b);
            r.e();
            zzki.u((zzki) r.f, zzjjVar);
            this.f2067c.a((zzki) r.c());
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.j("BillingLogger", "Unable to log.", th);
        }
    }

    public final void j(zzko zzkoVar) {
        try {
            zzdj zzdjVar = this.f2067c;
            zzkg r = zzki.r();
            r.g(this.b);
            r.e();
            zzki.w((zzki) r.f, zzkoVar);
            zzdjVar.a((zzki) r.c());
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.j("BillingLogger", "Unable to log.", th);
        }
    }

    public final void k(zzks zzksVar) {
        if (zzksVar == null) {
            return;
        }
        try {
            zzkg r = zzki.r();
            r.g(this.b);
            r.e();
            zzki.q((zzki) r.f, zzksVar);
            this.f2067c.a((zzki) r.c());
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.j("BillingLogger", "Unable to log.", th);
        }
    }

    public final void l(zzix zzixVar, zzjs zzjsVar) {
        if (zzixVar == null) {
            return;
        }
        try {
            zzkg r = zzki.r();
            r.g(zzjsVar);
            r.e();
            zzki.s((zzki) r.f, zzixVar);
            this.f2067c.a((zzki) r.c());
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.j("BillingLogger", "Unable to log.", th);
        }
    }

    public final void m(zzjb zzjbVar, zzjs zzjsVar) {
        if (zzjbVar == null) {
            return;
        }
        try {
            zzkg r = zzki.r();
            r.g(zzjsVar);
            r.e();
            zzki.t((zzki) r.f, zzjbVar);
            this.f2067c.a((zzki) r.c());
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.j("BillingLogger", "Unable to log.", th);
        }
    }
}
