package com.android.billingclient.api;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.internal.play_billing.zziv;
import com.google.android.gms.internal.play_billing.zzix;
import com.google.android.gms.internal.play_billing.zziz;
import com.google.android.gms.internal.play_billing.zzjb;
import com.google.android.gms.internal.play_billing.zzjc;
import com.google.android.gms.internal.play_billing.zzje;
import com.google.android.gms.internal.play_billing.zzjg;
import com.google.android.gms.internal.play_billing.zzjj;
import com.google.android.gms.internal.play_billing.zzkm;
import com.google.android.gms.internal.play_billing.zzko;
import com.google.android.gms.internal.play_billing.zzks;
import com.google.android.gms.internal.play_billing.zzkt;
import com.google.android.gms.internal.play_billing.zzkv;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbv implements ServiceConnection {

    /* renamed from: c, reason: collision with root package name */
    public final BillingClientStateListener f2045c;
    public final com.google.android.gms.internal.play_billing.zzbl f;
    public final com.google.android.gms.internal.play_billing.zzbl g;
    public final /* synthetic */ BillingClientImpl h;

    public zzbv(BillingClientImpl billingClientImpl, BillingClientStateListener billingClientStateListener) {
        this.h = billingClientImpl;
        com.google.android.gms.internal.play_billing.zzbo zzboVar = billingClientImpl.C;
        this.f = new com.google.android.gms.internal.play_billing.zzbl(zzboVar);
        this.g = new com.google.android.gms.internal.play_billing.zzbl(zzboVar);
        this.f2045c = billingClientStateListener;
    }

    public final void a() {
        synchronized (this.h.f1993a) {
            com.google.android.gms.internal.play_billing.zzbl zzblVar = this.f;
            zzblVar.f11455c = 0L;
            zzblVar.b = false;
            zzblVar.a();
        }
    }

    public final Long b(boolean z) {
        try {
            if (z) {
                synchronized (this.h.f1993a) {
                    try {
                        com.google.android.gms.internal.play_billing.zzbl zzblVar = this.f;
                        if (!zzblVar.b) {
                            return null;
                        }
                        long a2 = zzblVar.f11454a.a();
                        if (zzblVar.b) {
                            zzblVar.b = false;
                            long j = (a2 - zzblVar.d) + zzblVar.f11455c;
                            zzblVar.f11455c = j;
                            return Long.valueOf(TimeUnit.MILLISECONDS.convert(j, TimeUnit.NANOSECONDS));
                        }
                        throw new IllegalStateException("This stopwatch is already stopped.");
                    } finally {
                    }
                }
            }
            synchronized (this.h.f1993a) {
                try {
                    com.google.android.gms.internal.play_billing.zzbl zzblVar2 = this.g;
                    if (!zzblVar2.b) {
                        return null;
                    }
                    long a3 = zzblVar2.f11454a.a();
                    if (zzblVar2.b) {
                        zzblVar2.b = false;
                        long j2 = (a3 - zzblVar2.d) + zzblVar2.f11455c;
                        zzblVar2.f11455c = j2;
                        return Long.valueOf(TimeUnit.MILLISECONDS.convert(j2, TimeUnit.NANOSECONDS));
                    }
                    throw new IllegalStateException("This stopwatch is already stopped.");
                } finally {
                }
            }
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.j("BillingClient", "Exception getting connection establishment duration.", th);
            return null;
        }
        com.google.android.gms.internal.play_billing.zzc.j("BillingClient", "Exception getting connection establishment duration.", th);
        return null;
    }

    public final void c(BillingResult billingResult, zzje zzjeVar, String str, boolean z) {
        try {
            zzjc q = zzjg.q();
            int i = billingResult.f2001a;
            q.e();
            zzjg.v((zzjg) q.f, i);
            String str2 = billingResult.f2002c;
            q.e();
            zzjg.s((zzjg) q.f, str2);
            q.g(zzjeVar);
            if (str != null) {
                q.e();
                zzjg.r((zzjg) q.f, str);
            }
            Long b = b(z);
            BillingClientImpl billingClientImpl = this.h;
            if (z) {
                zzkt q2 = zzkv.q();
                q2.g(false);
                q2.h();
                if (b != null) {
                    long longValue = b.longValue();
                    q2.e();
                    zzkv.t((zzkv) q2.f, longValue);
                }
                zziv t = zzix.t();
                t.g(q);
                t.i(6);
                t.h(q2);
                billingClientImpl.u((zzix) t.c());
                return;
            }
            zzkm q3 = zzko.q();
            q3.e();
            zzko.r((zzko) q3.f, (zzjg) q.c());
            if (b != null) {
                long longValue2 = b.longValue();
                q3.e();
                zzko.s((zzko) q3.f, longValue2);
            }
            billingClientImpl.h.j((zzko) q3.c());
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.j("BillingClient", "Unable to log.", th);
        }
    }

    public final void d(BillingResult billingResult) {
        BillingClientImpl billingClientImpl = this.h;
        synchronized (billingClientImpl.f1993a) {
            try {
                if (billingClientImpl.b == 3) {
                    return;
                }
                try {
                    this.f2045c.d(billingResult);
                } catch (Throwable th) {
                    com.google.android.gms.internal.play_billing.zzc.j("BillingClient", "Exception while calling onBillingSetupFinished.", th);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onBindingDied(ComponentName componentName) {
        com.google.android.gms.internal.play_billing.zzc.i("BillingClient", "Billing service died.");
        try {
            BillingClientImpl billingClientImpl = this.h;
            if (BillingClientImpl.p(billingClientImpl)) {
                zzdh zzdhVar = billingClientImpl.h;
                zziv t = zzix.t();
                t.i(6);
                zzjc q = zzjg.q();
                q.g(zzje.BINDING_DIED);
                t.g(q);
                zzkt q2 = zzkv.q();
                q2.g(false);
                q2.h();
                t.h(q2);
                zzdhVar.a((zzix) t.c());
            } else {
                billingClientImpl.h.i(zzjj.q());
            }
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.j("BillingClient", "Unable to log.", th);
        }
        BillingClientImpl billingClientImpl2 = this.h;
        synchronized (billingClientImpl2.f1993a) {
            if (billingClientImpl2.b != 3 && billingClientImpl2.b != 0) {
                billingClientImpl2.x(0);
                billingClientImpl2.A();
                try {
                    this.f2045c.e();
                } catch (Throwable th2) {
                    com.google.android.gms.internal.play_billing.zzc.j("BillingClient", "Exception while calling onBillingServiceDisconnected.", th2);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v4, types: [com.google.android.gms.internal.play_billing.zzap] */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r10v8 */
    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        ?? zzasVar;
        com.google.android.gms.internal.play_billing.zzc.h("BillingClient", "Billing service connected.");
        BillingClientImpl billingClientImpl = this.h;
        synchronized (billingClientImpl.f1993a) {
            try {
                if (billingClientImpl.b == 3) {
                    return;
                }
                int i = com.google.android.gms.internal.play_billing.zzao.f11444c;
                if (iBinder == null) {
                    zzasVar = 0;
                } else {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.android.vending.billing.IInAppBillingService");
                    if (queryLocalInterface instanceof com.google.android.gms.internal.play_billing.zzap) {
                        zzasVar = (com.google.android.gms.internal.play_billing.zzap) queryLocalInterface;
                    } else {
                        zzasVar = new com.google.android.gms.internal.play_billing.zzas(iBinder, "com.android.vending.billing.IInAppBillingService");
                    }
                }
                billingClientImpl.i = zzasVar;
                if (BillingClientImpl.j(new Callable() { // from class: com.android.billingclient.api.zzbt
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        boolean z;
                        Bundle bundle;
                        com.google.android.gms.internal.play_billing.zzap zzapVar;
                        zzje zzjeVar;
                        String str;
                        BillingResult billingResult;
                        BillingResult billingResult2;
                        boolean z2;
                        boolean z3;
                        boolean z4;
                        boolean z5;
                        boolean z6;
                        boolean z7;
                        boolean z8;
                        boolean z9;
                        boolean z10;
                        boolean z11;
                        boolean z12;
                        boolean z13;
                        int T0;
                        int T02;
                        zzbv zzbvVar = zzbv.this;
                        BillingClientImpl billingClientImpl2 = zzbvVar.h;
                        synchronized (billingClientImpl2.f1993a) {
                            try {
                                if (billingClientImpl2.b == 3) {
                                    return null;
                                }
                                if (billingClientImpl2.b == 1) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                if (!TextUtils.isEmpty(null)) {
                                    bundle = new Bundle();
                                    bundle.putString("accountName", null);
                                    com.google.android.gms.internal.play_billing.zzc.b(billingClientImpl2.B.longValue(), billingClientImpl2.f1994c, billingClientImpl2.d, bundle);
                                } else {
                                    bundle = null;
                                }
                                zzje zzjeVar2 = zzje.REASON_UNSPECIFIED;
                                synchronized (billingClientImpl2.f1993a) {
                                    zzapVar = billingClientImpl2.i;
                                }
                                if (zzapVar == null) {
                                    BillingClientImpl billingClientImpl3 = zzbvVar.h;
                                    billingClientImpl3.x(0);
                                    zzje zzjeVar3 = zzje.SERVICE_RESET_TO_NULL;
                                    BillingResult billingResult3 = zzdb.j;
                                    billingClientImpl3.w(billingResult3, zzjeVar3);
                                    zzbvVar.d(billingResult3);
                                    return null;
                                }
                                BillingClientImpl billingClientImpl4 = zzbvVar.h;
                                String packageName = billingClientImpl4.g.getPackageName();
                                int i2 = 3;
                                int i3 = 27;
                                while (true) {
                                    if (i3 >= 3) {
                                        try {
                                            com.google.android.gms.internal.play_billing.zzc.h("BillingClient", "trying subs apiVersion: " + i3);
                                            if (bundle == null) {
                                                T02 = zzapVar.i2(i3, packageName, "subs");
                                            } else {
                                                T02 = zzapVar.T0(i3, bundle, packageName, "subs");
                                            }
                                            i2 = T02;
                                            if (i2 == 0) {
                                                com.google.android.gms.internal.play_billing.zzc.h("BillingClient", "highestLevelSupportedForSubs: " + i3);
                                                break;
                                            }
                                            i3--;
                                        } catch (Exception e) {
                                            com.google.android.gms.internal.play_billing.zzc.j("BillingClient", "Exception while checking if billing is supported; try to reconnect", e);
                                            boolean z14 = e instanceof DeadObjectException;
                                            if (z14) {
                                                zzjeVar = zzje.IS_BILLING_SUPPORTED_DEAD_OBJECT_EXCEPTION;
                                            } else if (e instanceof RemoteException) {
                                                zzjeVar = zzje.IS_BILLING_SUPPORTED_REMOTE_EXCEPTION;
                                            } else if (e instanceof SecurityException) {
                                                zzjeVar = zzje.IS_BILLING_SUPPORTED_SECURITY_EXCEPTION;
                                            } else {
                                                zzjeVar = zzje.IS_BILLING_SUPPORTED_SERVICE_CALL_EXCEPTION;
                                            }
                                            if (zzjeVar.equals(zzje.IS_BILLING_SUPPORTED_SERVICE_CALL_EXCEPTION)) {
                                                str = zzcx.a(e);
                                            } else {
                                                str = null;
                                            }
                                            zzbvVar.h.x(0);
                                            if (z14) {
                                                billingResult = zzdb.j;
                                            } else {
                                                billingResult = zzdb.h;
                                            }
                                            zzbvVar.c(billingResult, zzjeVar, str, z);
                                            if (z14) {
                                                billingResult2 = zzdb.j;
                                            } else {
                                                billingResult2 = zzdb.h;
                                            }
                                            zzbvVar.d(billingResult2);
                                        }
                                    } else {
                                        i3 = 0;
                                        break;
                                    }
                                }
                                if (i3 >= 3) {
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                                billingClientImpl4.k = z2;
                                if (i3 < 3) {
                                    zzjeVar2 = zzje.SUBSCRIPTIONS_NOT_SUPPORTED;
                                    com.google.android.gms.internal.play_billing.zzc.h("BillingClient", "In-app billing API does not support subscription on this device.");
                                }
                                int i4 = 27;
                                while (true) {
                                    if (i4 < 3) {
                                        break;
                                    }
                                    com.google.android.gms.internal.play_billing.zzc.h("BillingClient", "trying inapp apiVersion: " + i4);
                                    if (bundle == null) {
                                        T0 = zzapVar.i2(i4, packageName, "inapp");
                                    } else {
                                        T0 = zzapVar.T0(i4, bundle, packageName, "inapp");
                                    }
                                    i2 = T0;
                                    if (i2 == 0) {
                                        billingClientImpl4.l = i4;
                                        com.google.android.gms.internal.play_billing.zzc.h("BillingClient", "mHighestLevelSupportedForInApp: " + i4);
                                        break;
                                    }
                                    i4--;
                                }
                                int i5 = billingClientImpl4.l;
                                billingClientImpl4.l = i5;
                                if (i5 >= 26) {
                                    z3 = true;
                                } else {
                                    z3 = false;
                                }
                                billingClientImpl4.w = z3;
                                if (i5 >= 24) {
                                    z4 = true;
                                } else {
                                    z4 = false;
                                }
                                billingClientImpl4.v = z4;
                                if (i5 >= 21) {
                                    z5 = true;
                                } else {
                                    z5 = false;
                                }
                                billingClientImpl4.u = z5;
                                if (i5 >= 20) {
                                    z6 = true;
                                } else {
                                    z6 = false;
                                }
                                billingClientImpl4.t = z6;
                                if (i5 >= 19) {
                                    z7 = true;
                                } else {
                                    z7 = false;
                                }
                                billingClientImpl4.s = z7;
                                if (i5 >= 17) {
                                    z8 = true;
                                } else {
                                    z8 = false;
                                }
                                billingClientImpl4.r = z8;
                                if (i5 >= 16) {
                                    z9 = true;
                                } else {
                                    z9 = false;
                                }
                                billingClientImpl4.q = z9;
                                if (i5 >= 15) {
                                    z10 = true;
                                } else {
                                    z10 = false;
                                }
                                billingClientImpl4.p = z10;
                                if (i5 >= 14) {
                                    z11 = true;
                                } else {
                                    z11 = false;
                                }
                                billingClientImpl4.o = z11;
                                if (i5 >= 9) {
                                    z12 = true;
                                } else {
                                    z12 = false;
                                }
                                billingClientImpl4.n = z12;
                                if (i5 >= 6) {
                                    z13 = true;
                                } else {
                                    z13 = false;
                                }
                                billingClientImpl4.m = z13;
                                if (i5 < 3) {
                                    zzjeVar2 = zzje.ONE_TIME_PRODUCT_NOT_SUPPORTED;
                                    com.google.android.gms.internal.play_billing.zzc.i("BillingClient", "In-app billing API version 3 is not supported on this device.");
                                }
                                BillingClientImpl.o(billingClientImpl4, i2);
                                if (i2 != 0) {
                                    BillingResult billingResult4 = zzdb.b;
                                    zzbvVar.c(billingResult4, zzjeVar2, null, z);
                                    zzbvVar.d(billingResult4);
                                    return null;
                                }
                                try {
                                    Long b = zzbvVar.b(z);
                                    if (z) {
                                        zziz r = zzjb.r();
                                        r.e();
                                        zzjb.q((zzjb) r.f, 6);
                                        zzkt q = zzkv.q();
                                        q.g(false);
                                        q.h();
                                        if (b != null) {
                                            long longValue = b.longValue();
                                            q.e();
                                            zzkv.t((zzkv) q.f, longValue);
                                        }
                                        BillingClientImpl billingClientImpl5 = zzbvVar.h;
                                        r.e();
                                        zzjb.v((zzjb) r.f, (zzkv) q.c());
                                        billingClientImpl5.v((zzjb) r.c());
                                    } else {
                                        zzkm q2 = zzko.q();
                                        zzjc q3 = zzjg.q();
                                        q3.e();
                                        zzjg.v((zzjg) q3.f, 0);
                                        q2.e();
                                        zzko.r((zzko) q2.f, (zzjg) q3.c());
                                        if (b != null) {
                                            long longValue2 = b.longValue();
                                            q2.e();
                                            zzko.s((zzko) q2.f, longValue2);
                                        }
                                        zzbvVar.h.h.j((zzko) q2.c());
                                    }
                                } catch (Throwable th) {
                                    com.google.android.gms.internal.play_billing.zzc.j("BillingClient", "Unable to log.", th);
                                }
                                zzbvVar.d(zzdb.i);
                                return null;
                            } finally {
                            }
                        }
                    }
                }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzbu
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzbv zzbvVar = zzbv.this;
                        BillingClientImpl billingClientImpl2 = zzbvVar.h;
                        billingClientImpl2.x(0);
                        BillingResult billingResult = zzdb.k;
                        billingClientImpl2.w(billingResult, zzje.EXECUTE_ASYNC_TIMEOUT);
                        zzbvVar.d(billingResult);
                    }
                }, billingClientImpl.q(), billingClientImpl.i()) == null) {
                    BillingResult t = billingClientImpl.t();
                    billingClientImpl.w(t, zzje.MISSING_RESULT_FROM_EXECUTE_ASYNC);
                    d(t);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        com.google.android.gms.internal.play_billing.zzc.i("BillingClient", "Billing service disconnected.");
        try {
            BillingClientImpl billingClientImpl = this.h;
            if (BillingClientImpl.p(billingClientImpl)) {
                zzdh zzdhVar = billingClientImpl.h;
                zziv t = zzix.t();
                t.i(6);
                zzjc q = zzjg.q();
                q.g(zzje.SERVICE_DISCONNECTED);
                t.g(q);
                zzkt q2 = zzkv.q();
                q2.g(false);
                q2.h();
                t.h(q2);
                zzdhVar.a((zzix) t.c());
            } else {
                billingClientImpl.h.k(zzks.q());
            }
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.j("BillingClient", "Unable to log.", th);
        }
        BillingClientImpl billingClientImpl2 = this.h;
        synchronized (billingClientImpl2.f1993a) {
            try {
                com.google.android.gms.internal.play_billing.zzbl zzblVar = this.g;
                zzblVar.f11455c = 0L;
                zzblVar.b = false;
                zzblVar.a();
                if (billingClientImpl2.b != 3) {
                    billingClientImpl2.x(0);
                    try {
                        this.f2045c.e();
                    } catch (Throwable th2) {
                        com.google.android.gms.internal.play_billing.zzc.j("BillingClient", "Exception while calling onBillingServiceDisconnected.", th2);
                    }
                }
            } finally {
            }
        }
    }
}
