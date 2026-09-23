package com.android.billingclient.api;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.media.a;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingFlowParams;
import com.android.billingclient.api.ProductDetails;
import com.android.billingclient.api.QueryProductDetailsParams;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.internal.play_billing.zziv;
import com.google.android.gms.internal.play_billing.zzix;
import com.google.android.gms.internal.play_billing.zziz;
import com.google.android.gms.internal.play_billing.zzjb;
import com.google.android.gms.internal.play_billing.zzje;
import com.google.android.gms.internal.play_billing.zzjl;
import com.google.android.gms.internal.play_billing.zzjq;
import com.google.android.gms.internal.play_billing.zzjs;
import com.google.android.gms.internal.play_billing.zzkt;
import com.google.android.gms.internal.play_billing.zzkv;
import com.mycompany.app.help.PayHelper;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class BillingClientImpl extends BillingClient {
    public ExecutorService A;
    public final Long B;
    public final com.google.android.gms.internal.play_billing.zzbo C;

    /* renamed from: c, reason: collision with root package name */
    public final String f1994c;
    public final String d;
    public volatile zzaa f;
    public final Context g;
    public final zzdh h;
    public volatile com.google.android.gms.internal.play_billing.zzap i;
    public volatile zzbv j;
    public boolean k;
    public boolean m;
    public boolean n;
    public boolean o;
    public boolean p;
    public boolean q;
    public boolean r;
    public boolean s;
    public boolean t;
    public boolean u;
    public boolean v;
    public boolean w;
    public final PendingPurchasesParams x;
    public final boolean y;
    public volatile BillingClientStateListener z;

    /* renamed from: a, reason: collision with root package name */
    public final Object f1993a = new Object();
    public volatile int b = 0;
    public final Handler e = new Handler(Looper.getMainLooper());
    public int l = 0;

    public BillingClientImpl(PendingPurchasesParams pendingPurchasesParams, Context context, PurchasesUpdatedListener purchasesUpdatedListener, BillingClient.Builder builder) {
        long nextLong = new Random().nextLong();
        this.B = Long.valueOf(nextLong);
        this.C = com.google.android.gms.internal.play_billing.zzbd.f11449a;
        this.f1994c = "8.2.0";
        String l = l();
        this.d = l;
        this.g = context.getApplicationContext();
        zzjq A = zzjs.A();
        A.e();
        zzjs.y((zzjs) A.f);
        if (l != null) {
            A.e();
            zzjs.z((zzjs) A.f, l);
        }
        String packageName = this.g.getPackageName();
        A.e();
        zzjs.r((zzjs) A.f, packageName);
        A.e();
        zzjs.E((zzjs) A.f, nextLong);
        A.e();
        zzjs.x((zzjs) A.f);
        int i = Build.VERSION.SDK_INT;
        A.e();
        zzjs.B((zzjs) A.f, i);
        A.g();
        D(A, context);
        try {
            int i2 = this.g.getPackageManager().getPackageInfo(this.g.getPackageName(), 0).versionCode;
            A.e();
            zzjs.C((zzjs) A.f, i2);
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.j("BillingClient", "Error getting app version code.", th);
        }
        this.h = new zzdh(this.g, (zzjs) A.c());
        if (purchasesUpdatedListener == null) {
            com.google.android.gms.internal.play_billing.zzc.i("BillingClient", "Billing client should have a valid listener but the provided is null.");
        }
        this.f = new zzaa(this.g, purchasesUpdatedListener, this.h);
        this.x = pendingPurchasesParams;
        this.y = false;
        this.g.getPackageName();
    }

    public static final void D(zzjq zzjqVar, Context context) {
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            if (activityManager != null) {
                ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
                activityManager.getMemoryInfo(memoryInfo);
                int i = (int) (memoryInfo.totalMem / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED);
                zzjqVar.e();
                zzjs.w((zzjs) zzjqVar.f, i);
                String str = Build.BRAND;
                zzjqVar.e();
                zzjs.s((zzjs) zzjqVar.f);
                String str2 = Build.MODEL;
                zzjqVar.e();
                zzjs.v((zzjs) zzjqVar.f);
                String str3 = Build.MANUFACTURER;
                zzjqVar.e();
                zzjs.u((zzjs) zzjqVar.f);
                String str4 = Build.FINGERPRINT;
                zzjqVar.e();
                zzjs.t((zzjs) zzjqVar.f);
            }
        } catch (RuntimeException e) {
            com.google.android.gms.internal.play_billing.zzc.j("BillingClient", "Runtime error while populating device info.", e);
        }
    }

    public static Future j(Callable callable, long j, final Runnable runnable, Handler handler, ExecutorService executorService) {
        try {
            final Future submit = executorService.submit(callable);
            handler.postDelayed(new Runnable() { // from class: com.android.billingclient.api.zzay
                @Override // java.lang.Runnable
                public final void run() {
                    Future future = submit;
                    if (!future.isDone() && !future.isCancelled()) {
                        future.cancel(true);
                        com.google.android.gms.internal.play_billing.zzc.i("BillingClient", "Async task is taking too long, cancel it!");
                        Runnable runnable2 = runnable;
                        if (runnable2 != null) {
                            runnable2.run();
                        }
                    }
                }
            }, (long) (j * 0.95d));
            return submit;
        } catch (Exception e) {
            com.google.android.gms.internal.play_billing.zzc.j("BillingClient", "Async task throws exception!", e);
            return null;
        }
    }

    public static String l() {
        try {
            return (String) Class.forName("com.android.billingclient.ktx.BuildConfig").getField("VERSION_NAME").get(null);
        } catch (Exception unused) {
            return null;
        }
    }

    public static void o(BillingClientImpl billingClientImpl, int i) {
        zzaa zzaaVar;
        if (i == 0) {
            synchronized (billingClientImpl.f1993a) {
                try {
                    if (billingClientImpl.b == 3) {
                        return;
                    }
                    billingClientImpl.x(2);
                    if (billingClientImpl.f != null) {
                        zzaaVar = billingClientImpl.f;
                    } else {
                        zzaaVar = null;
                    }
                    if (zzaaVar != null) {
                        boolean z = billingClientImpl.u;
                        zzz zzzVar = zzaaVar.d;
                        IntentFilter intentFilter = new IntentFilter("com.android.vending.billing.PURCHASES_UPDATED");
                        IntentFilter intentFilter2 = new IntentFilter("com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED");
                        intentFilter2.addAction("com.android.vending.billing.ALTERNATIVE_BILLING");
                        zzaaVar.f = z;
                        zzz zzzVar2 = zzaaVar.e;
                        Context context = zzaaVar.f2022a;
                        zzzVar2.a(context, intentFilter2);
                        if (zzaaVar.f) {
                            zzzVar.b(context, intentFilter);
                            return;
                        } else {
                            zzzVar.a(context, intentFilter);
                            return;
                        }
                    }
                    return;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        billingClientImpl.x(0);
    }

    public static /* bridge */ /* synthetic */ boolean p(BillingClientImpl billingClientImpl) {
        boolean z;
        synchronized (billingClientImpl.f1993a) {
            z = true;
            if (billingClientImpl.b != 1) {
                z = false;
            }
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void A() {
        synchronized (this.f1993a) {
            if (this.j != null) {
                try {
                    this.g.unbindService(this.j);
                } catch (Throwable th) {
                    try {
                        com.google.android.gms.internal.play_billing.zzc.j("BillingClient", "There was an exception while unbinding service!", th);
                        this.i = null;
                        this.j = null;
                    } finally {
                        this.i = null;
                        this.j = null;
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean B() {
        long j;
        long j2;
        long max;
        com.google.android.gms.internal.play_billing.zzbl zzblVar = new com.google.android.gms.internal.play_billing.zzbl(this.C);
        zzblVar.a();
        long j3 = 30000;
        int i = 1;
        long j4 = 30000;
        while (i <= 3) {
            try {
                max = Math.max(0L, j4);
            } catch (Exception e) {
                if (e instanceof InterruptedException) {
                    Thread.currentThread().interrupt();
                }
                com.google.android.gms.internal.play_billing.zzc.j("BillingClient", "Error during reconnection attempt: ", e);
            }
            if (max <= 0) {
                com.google.android.gms.internal.play_billing.zzc.i("BillingClient", "No time remaining for reconnection attempt.");
                return C();
            }
            com.google.android.gms.internal.play_billing.zzc.h("BillingClient", "Already connected or not opted into auto reconnection.");
            int i2 = ((BillingResult) com.google.android.gms.internal.play_billing.zzcx.a(zzdb.i).get(max, TimeUnit.MILLISECONDS)).f2001a;
            if (i2 == 0) {
                com.google.android.gms.internal.play_billing.zzc.h("BillingClient", "Reconnection succeeded with result: " + i2);
                return C();
            }
            com.google.android.gms.internal.play_billing.zzc.i("BillingClient", "Reconnection failed with result: " + i2);
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            boolean z = zzblVar.b;
            com.google.android.gms.internal.play_billing.zzbo zzboVar = zzblVar.f11454a;
            if (z) {
                j = (zzboVar.a() - zzblVar.d) + zzblVar.f11455c;
            } else {
                j = zzblVar.f11455c;
            }
            TimeUnit timeUnit2 = TimeUnit.NANOSECONDS;
            long convert = j3 - timeUnit.convert(j, timeUnit2);
            long j5 = j3;
            long pow = ((long) Math.pow(2.0d, i - 1)) * 1000;
            if (convert < pow) {
                com.google.android.gms.internal.play_billing.zzc.i("BillingClient", "Reconnection failed due to timeout limit reached.");
                return C();
            }
            if (i < 3 && pow > 0) {
                try {
                    Thread.sleep(pow);
                    if (zzblVar.b) {
                        j2 = (zzboVar.a() - zzblVar.d) + zzblVar.f11455c;
                    } else {
                        j2 = zzblVar.f11455c;
                    }
                    j4 = j5 - timeUnit.convert(j2, timeUnit2);
                } catch (InterruptedException e2) {
                    Thread.currentThread().interrupt();
                    com.google.android.gms.internal.play_billing.zzc.j("BillingClient", "Error sleeping during reconnection attempt: ", e2);
                }
            } else {
                j4 = convert;
            }
            i++;
            j3 = j5;
        }
        com.google.android.gms.internal.play_billing.zzc.i("BillingClient", "Max retries reached.");
        return C();
    }

    public final boolean C() {
        boolean z;
        synchronized (this.f1993a) {
            try {
                z = false;
                if (this.b == 2 && this.i != null && this.j != null) {
                    z = true;
                }
            } finally {
            }
        }
        return z;
    }

    public final zzdv E(BillingResult billingResult, zzje zzjeVar, String str, Exception exc) {
        H(zzjeVar, 9, billingResult, zzcx.a(exc));
        com.google.android.gms.internal.play_billing.zzc.j("BillingClient", str, exc);
        return new zzdv(billingResult, null);
    }

    public final void F(zzje zzjeVar, int i, BillingResult billingResult) {
        try {
            int i2 = zzcx.f2062a;
            u(zzcx.b(zzjeVar, i, billingResult, null, zzjl.BROADCAST_ACTION_UNSPECIFIED));
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.j("BillingClient", "Unable to log.", th);
        }
    }

    public final void G(zzje zzjeVar, BillingResult billingResult, long j) {
        try {
            int i = zzcx.f2062a;
            try {
                this.h.e(zzcx.b(zzjeVar, 2, billingResult, null, zzjl.BROADCAST_ACTION_UNSPECIFIED), this.l, j);
            } catch (Throwable th) {
                com.google.android.gms.internal.play_billing.zzc.j("BillingClient", "Unable to log.", th);
            }
        } catch (Throwable th2) {
            com.google.android.gms.internal.play_billing.zzc.j("BillingClient", "Unable to log.", th2);
        }
    }

    public final void H(zzje zzjeVar, int i, BillingResult billingResult, String str) {
        try {
            int i2 = zzcx.f2062a;
            u(zzcx.b(zzjeVar, i, billingResult, str, zzjl.BROADCAST_ACTION_UNSPECIFIED));
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.j("BillingClient", "Unable to log.", th);
        }
    }

    public final void I(zzje zzjeVar, BillingResult billingResult, long j, boolean z) {
        try {
            int i = zzcx.f2062a;
            try {
                this.h.f(zzcx.b(zzjeVar, 2, billingResult, null, zzjl.BROADCAST_ACTION_UNSPECIFIED), this.l, j, z);
            } catch (Throwable th) {
                com.google.android.gms.internal.play_billing.zzc.j("BillingClient", "Unable to log.", th);
            }
        } catch (Throwable th2) {
            com.google.android.gms.internal.play_billing.zzc.j("BillingClient", "Unable to log.", th2);
        }
    }

    public final void J(zzje zzjeVar, BillingResult billingResult, String str, long j, boolean z) {
        try {
            int i = zzcx.f2062a;
            try {
                this.h.f(zzcx.b(zzjeVar, 2, billingResult, str, zzjl.BROADCAST_ACTION_UNSPECIFIED), this.l, j, z);
            } catch (Throwable th) {
                com.google.android.gms.internal.play_billing.zzc.j("BillingClient", "Unable to log.", th);
            }
        } catch (Throwable th2) {
            com.google.android.gms.internal.play_billing.zzc.j("BillingClient", "Unable to log.", th2);
        }
    }

    public final void K(final BillingResult billingResult) {
        if (Thread.interrupted()) {
            return;
        }
        this.e.post(new Runnable() { // from class: com.android.billingclient.api.zzam
            @Override // java.lang.Runnable
            public final void run() {
                BillingClientImpl billingClientImpl = BillingClientImpl.this;
                BillingResult billingResult2 = billingResult;
                if (billingClientImpl.f.b != null) {
                    billingClientImpl.f.b.b(billingResult2, null);
                } else {
                    com.google.android.gms.internal.play_billing.zzc.i("BillingClient", "No valid listener is set in BroadcastManager");
                }
            }
        });
    }

    @Override // com.android.billingclient.api.BillingClient
    public void a(final AcknowledgePurchaseParams acknowledgePurchaseParams, final AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener) {
        if (j(new Callable() { // from class: com.android.billingclient.api.zzai
            @Override // java.util.concurrent.Callable
            public final Object call() {
                com.google.android.gms.internal.play_billing.zzap zzapVar;
                BillingClientImpl billingClientImpl = BillingClientImpl.this;
                AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener2 = acknowledgePurchaseResponseListener;
                AcknowledgePurchaseParams acknowledgePurchaseParams2 = acknowledgePurchaseParams;
                try {
                    if (!billingClientImpl.B()) {
                        billingClientImpl.F(zzje.SERVICE_CONNECTION_NOT_READY, 3, zzdb.j);
                        return null;
                    }
                    if (TextUtils.isEmpty(acknowledgePurchaseParams2.f1990a)) {
                        com.google.android.gms.internal.play_billing.zzc.i("BillingClient", "Please provide a valid purchase token.");
                        billingClientImpl.F(zzje.EMPTY_PURCHASE_TOKEN, 3, zzdb.g);
                        return null;
                    }
                    if (!billingClientImpl.n) {
                        billingClientImpl.F(zzje.API_VERSION_NOT_V9, 3, zzdb.f2064a);
                        return null;
                    }
                    synchronized (billingClientImpl.f1993a) {
                        zzapVar = billingClientImpl.i;
                    }
                    if (zzapVar == null) {
                        billingClientImpl.m(acknowledgePurchaseResponseListener2, zzdb.j, zzje.SERVICE_RESET_TO_NULL, null);
                        return null;
                    }
                    String packageName = billingClientImpl.g.getPackageName();
                    String str = acknowledgePurchaseParams2.f1990a;
                    String str2 = billingClientImpl.f1994c;
                    String str3 = billingClientImpl.d;
                    long longValue = billingClientImpl.B.longValue();
                    int i = com.google.android.gms.internal.play_billing.zzc.f11463a;
                    Bundle bundle = new Bundle();
                    com.google.android.gms.internal.play_billing.zzc.b(longValue, str2, str3, bundle);
                    Bundle Y = zzapVar.Y(packageName, bundle, str);
                    zzdb.a(com.google.android.gms.internal.play_billing.zzc.a("BillingClient", Y), com.google.android.gms.internal.play_billing.zzc.f("BillingClient", Y));
                    return null;
                } catch (DeadObjectException e) {
                    billingClientImpl.m(acknowledgePurchaseResponseListener2, zzdb.j, zzje.ACKNOWLEDGE_PURCHASE_SERVICE_CALL_EXCEPTION, e);
                    return null;
                } catch (Exception e2) {
                    billingClientImpl.m(acknowledgePurchaseResponseListener2, zzdb.h, zzje.ACKNOWLEDGE_PURCHASE_SERVICE_CALL_EXCEPTION, e2);
                    return null;
                }
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzaj
            @Override // java.lang.Runnable
            public final void run() {
                BillingResult billingResult = zzdb.k;
                BillingClientImpl.this.F(zzje.EXECUTE_ASYNC_TIMEOUT, 3, billingResult);
                acknowledgePurchaseResponseListener.c(billingResult);
            }
        }, q(), i()) == null) {
            F(zzje.MISSING_RESULT_FROM_EXECUTE_ASYNC, 3, t());
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public void b(final ConsumeParams consumeParams, final ConsumeResponseListener consumeResponseListener) {
        if (j(new Callable() { // from class: com.android.billingclient.api.zzaz
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Exception exc;
                DeadObjectException deadObjectException;
                com.google.android.gms.internal.play_billing.zzap zzapVar;
                String str;
                int i;
                String f;
                BillingClientImpl billingClientImpl = BillingClientImpl.this;
                ConsumeResponseListener consumeResponseListener2 = consumeResponseListener;
                ConsumeParams consumeParams2 = consumeParams;
                if (!billingClientImpl.B()) {
                    billingClientImpl.F(zzje.SERVICE_CONNECTION_NOT_READY, 4, zzdb.j);
                    return null;
                }
                String str2 = "Error consuming purchase with token. Response code: ";
                String str3 = consumeParams2.f2005a;
                try {
                    com.google.android.gms.internal.play_billing.zzc.h("BillingClient", "Consuming purchase with token: " + str3);
                    synchronized (billingClientImpl.f1993a) {
                        try {
                            try {
                                zzapVar = billingClientImpl.i;
                            } catch (Throwable th) {
                                th = th;
                                while (true) {
                                    try {
                                        break;
                                    } catch (Throwable th2) {
                                        th = th2;
                                    }
                                }
                                throw th;
                            }
                        } catch (DeadObjectException e) {
                            e = e;
                        } catch (Exception e2) {
                            e = e2;
                        }
                    }
                    if (zzapVar == null) {
                        try {
                            str2 = str3;
                        } catch (DeadObjectException e3) {
                            e = e3;
                            str = str3;
                            deadObjectException = e;
                            str2 = str;
                            billingClientImpl.n(consumeResponseListener2, str2, zzdb.j, zzje.CONSUME_PURCHASE_SERVICE_CALL_EXCEPTION, "Error consuming purchase!", deadObjectException);
                            return null;
                        } catch (Exception e4) {
                            e = e4;
                            str = str3;
                            exc = e;
                            str2 = str;
                            billingClientImpl.n(consumeResponseListener2, str2, zzdb.h, zzje.CONSUME_PURCHASE_SERVICE_CALL_EXCEPTION, "Error consuming purchase!", exc);
                            return null;
                        }
                        try {
                            billingClientImpl.n(consumeResponseListener2, str2, zzdb.j, zzje.SERVICE_RESET_TO_NULL, "Service has been reset to null.", null);
                            return null;
                        } catch (DeadObjectException e5) {
                            e = e5;
                            deadObjectException = e;
                            billingClientImpl.n(consumeResponseListener2, str2, zzdb.j, zzje.CONSUME_PURCHASE_SERVICE_CALL_EXCEPTION, "Error consuming purchase!", deadObjectException);
                            return null;
                        } catch (Exception e6) {
                            e = e6;
                            exc = e;
                            billingClientImpl.n(consumeResponseListener2, str2, zzdb.h, zzje.CONSUME_PURCHASE_SERVICE_CALL_EXCEPTION, "Error consuming purchase!", exc);
                            return null;
                        }
                    }
                    str = str3;
                    try {
                        if (billingClientImpl.n) {
                            try {
                                String packageName = billingClientImpl.g.getPackageName();
                                boolean z = billingClientImpl.n;
                                String str4 = billingClientImpl.f1994c;
                                String str5 = billingClientImpl.d;
                                long longValue = billingClientImpl.B.longValue();
                                Bundle bundle = new Bundle();
                                if (z) {
                                    com.google.android.gms.internal.play_billing.zzc.b(longValue, str4, str5, bundle);
                                }
                                Bundle P0 = zzapVar.P0(packageName, bundle, str);
                                i = P0.getInt("RESPONSE_CODE");
                                f = com.google.android.gms.internal.play_billing.zzc.f("BillingClient", P0);
                            } catch (DeadObjectException e7) {
                                e = e7;
                                deadObjectException = e;
                                str2 = str;
                                billingClientImpl.n(consumeResponseListener2, str2, zzdb.j, zzje.CONSUME_PURCHASE_SERVICE_CALL_EXCEPTION, "Error consuming purchase!", deadObjectException);
                                return null;
                            } catch (Exception e8) {
                                e = e8;
                                exc = e;
                                str2 = str;
                                billingClientImpl.n(consumeResponseListener2, str2, zzdb.h, zzje.CONSUME_PURCHASE_SERVICE_CALL_EXCEPTION, "Error consuming purchase!", exc);
                                return null;
                            }
                        } else {
                            i = zzapVar.B(billingClientImpl.g.getPackageName(), str);
                            f = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                        }
                        BillingResult a2 = zzdb.a(i, f);
                        if (i == 0) {
                            com.google.android.gms.internal.play_billing.zzc.h("BillingClient", "Successfully consumed purchase.");
                            return null;
                        }
                        int i2 = i;
                        billingClientImpl.n(consumeResponseListener2, str, a2, zzje.BILLING_RESULT_RECEIVED_FROM_PHONESKY, "Error consuming purchase with token. Response code: " + i2, null);
                        return null;
                    } catch (DeadObjectException e9) {
                        e = e9;
                        str2 = str;
                        deadObjectException = e;
                        billingClientImpl.n(consumeResponseListener2, str2, zzdb.j, zzje.CONSUME_PURCHASE_SERVICE_CALL_EXCEPTION, "Error consuming purchase!", deadObjectException);
                        return null;
                    } catch (Exception e10) {
                        e = e10;
                        str2 = str;
                        exc = e;
                        billingClientImpl.n(consumeResponseListener2, str2, zzdb.h, zzje.CONSUME_PURCHASE_SERVICE_CALL_EXCEPTION, "Error consuming purchase!", exc);
                        return null;
                    }
                } catch (DeadObjectException e11) {
                    e = e11;
                    str2 = str3;
                } catch (Exception e12) {
                    e = e12;
                    str2 = str3;
                }
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzba
            @Override // java.lang.Runnable
            public final void run() {
                BillingResult billingResult = zzdb.k;
                BillingClientImpl.this.F(zzje.EXECUTE_ASYNC_TIMEOUT, 4, billingResult);
                consumeResponseListener.f(billingResult, consumeParams.f2005a);
            }
        }, q(), i()) == null) {
            F(zzje.MISSING_RESULT_FROM_EXECUTE_ASYNC, 4, t());
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:(3:5|6|(1:8))|(2:10|11)|12|13|14|15|16) */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0054, code lost:
    
        r3 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0065, code lost:
    
        throw r3;
     */
    @Override // com.android.billingclient.api.BillingClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void c() {
        /*
            r6 = this;
            int r0 = com.android.billingclient.api.zzcx.f2062a     // Catch: java.lang.Throwable -> Le
            com.google.android.gms.internal.play_billing.zzjl r0 = com.google.android.gms.internal.play_billing.zzjl.BROADCAST_ACTION_UNSPECIFIED     // Catch: java.lang.Throwable -> Le
            r1 = 12
            com.google.android.gms.internal.play_billing.zzjb r0 = com.android.billingclient.api.zzcx.c(r1, r0)     // Catch: java.lang.Throwable -> Le
            r6.v(r0)     // Catch: java.lang.Throwable -> Le
            goto L16
        Le:
            r0 = move-exception
            java.lang.String r1 = "BillingClient"
            java.lang.String r2 = "Unable to log."
            com.google.android.gms.internal.play_billing.zzc.j(r1, r2, r0)
        L16:
            java.lang.Object r0 = r6.f1993a
            monitor-enter(r0)
            com.android.billingclient.api.zzaa r1 = r6.f     // Catch: java.lang.Throwable -> L2c
            if (r1 == 0) goto L34
            com.android.billingclient.api.zzaa r1 = r6.f     // Catch: java.lang.Throwable -> L2c
            com.android.billingclient.api.zzz r2 = r1.d     // Catch: java.lang.Throwable -> L2c
            android.content.Context r3 = r1.f2022a     // Catch: java.lang.Throwable -> L2c
            r2.c(r3)     // Catch: java.lang.Throwable -> L2c
            com.android.billingclient.api.zzz r1 = r1.e     // Catch: java.lang.Throwable -> L2c
            r1.c(r3)     // Catch: java.lang.Throwable -> L2c
            goto L34
        L2c:
            r1 = move-exception
            java.lang.String r2 = "BillingClient"
            java.lang.String r3 = "There was an exception while shutting down broadcast manager while ending connection!"
            com.google.android.gms.internal.play_billing.zzc.j(r2, r3, r1)     // Catch: java.lang.Throwable -> L52
        L34:
            java.lang.String r1 = "BillingClient"
            java.lang.String r2 = "Unbinding from service."
            com.google.android.gms.internal.play_billing.zzc.h(r1, r2)     // Catch: java.lang.Throwable -> L3f
            r6.A()     // Catch: java.lang.Throwable -> L3f
            goto L47
        L3f:
            r1 = move-exception
            java.lang.String r2 = "BillingClient"
            java.lang.String r3 = "There was an exception while unbinding from the service while ending connection!"
            com.google.android.gms.internal.play_billing.zzc.j(r2, r3, r1)     // Catch: java.lang.Throwable -> L52
        L47:
            r1 = 0
            r2 = 3
            r6.y()     // Catch: java.lang.Throwable -> L54
        L4c:
            r6.x(r2)     // Catch: java.lang.Throwable -> L52
            r6.z = r1     // Catch: java.lang.Throwable -> L52
            goto L5d
        L52:
            r1 = move-exception
            goto L66
        L54:
            r3 = move-exception
            java.lang.String r4 = "BillingClient"
            java.lang.String r5 = "There was an exception while shutting down the executor service while ending connection!"
            com.google.android.gms.internal.play_billing.zzc.j(r4, r5, r3)     // Catch: java.lang.Throwable -> L5f
            goto L4c
        L5d:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L52
            return
        L5f:
            r3 = move-exception
            r6.x(r2)     // Catch: java.lang.Throwable -> L52
            r6.z = r1     // Catch: java.lang.Throwable -> L52
            throw r3     // Catch: java.lang.Throwable -> L52
        L66:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L52
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.billingclient.api.BillingClientImpl.c():void");
    }

    @Override // com.android.billingclient.api.BillingClient
    public final boolean d() {
        return C();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v12, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v35, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v26 */
    /* JADX WARN: Type inference failed for: r6v27 */
    /* JADX WARN: Type inference failed for: r6v47 */
    @Override // com.android.billingclient.api.BillingClient
    public BillingResult e(Activity activity, final BillingFlowParams billingFlowParams) {
        Object obj;
        Object obj2;
        String str;
        long j;
        String str2;
        SkuDetails skuDetails;
        BillingResult billingResult;
        ProductDetails.OneTimePurchaseOfferDetails oneTimePurchaseOfferDetails;
        BillingResult billingResult2;
        com.google.android.gms.internal.play_billing.zzbw zzbwVar;
        BillingResult a2;
        long j2;
        boolean z;
        ?? r6;
        Future j3;
        long j4;
        boolean z2;
        long j5;
        boolean z3;
        long j6;
        zzje zzjeVar;
        zzje zzjeVar2;
        boolean z4;
        long j7;
        String str3;
        String str4;
        boolean z5;
        String str5;
        ArrayList arrayList;
        boolean z6;
        int i;
        long j8;
        long nextLong = new Random().nextLong();
        if (this.f != null && this.f.b != null) {
            try {
                if (Build.VERSION.SDK_INT < 29) {
                    j8 = 0;
                } else {
                    j8 = 3000;
                }
                com.google.android.gms.internal.play_billing.zzc.h("BillingClient", "Already connected or not opted into auto reconnection.");
                int i2 = ((BillingResult) com.google.android.gms.internal.play_billing.zzcx.a(zzdb.i).get(j8, TimeUnit.MILLISECONDS)).f2001a;
                if (i2 == 0) {
                    com.google.android.gms.internal.play_billing.zzc.h("BillingClient", "Reconnection succeeded with result: " + i2);
                } else {
                    com.google.android.gms.internal.play_billing.zzc.i("BillingClient", "Reconnection failed with result: " + i2);
                }
            } catch (Exception e) {
                if (e instanceof InterruptedException) {
                    Thread.currentThread().interrupt();
                }
                com.google.android.gms.internal.play_billing.zzc.j("BillingClient", "Error during reconnection attempt: ", e);
            }
            if (!C()) {
                zzje zzjeVar3 = zzje.SERVICE_CONNECTION_NOT_READY;
                BillingResult billingResult3 = zzdb.j;
                G(zzjeVar3, billingResult3, nextLong);
                K(billingResult3);
                return billingResult3;
            }
            synchronized (this.f1993a) {
                try {
                    if (this.j != null) {
                        this.j.getClass();
                    }
                } finally {
                }
            }
            ArrayList arrayList2 = new ArrayList();
            arrayList2.addAll(billingFlowParams.d);
            com.google.android.gms.internal.play_billing.zzbw zzbwVar2 = billingFlowParams.f1996c;
            Iterator it = arrayList2.iterator();
            if (it.hasNext()) {
                obj = it.next();
            } else {
                obj = null;
            }
            SkuDetails skuDetails2 = (SkuDetails) obj;
            Iterator it2 = zzbwVar2.iterator();
            if (it2.hasNext()) {
                obj2 = it2.next();
            } else {
                obj2 = null;
            }
            BillingFlowParams.ProductDetailsParams productDetailsParams = (BillingFlowParams.ProductDetailsParams) obj2;
            if (skuDetails2 == null) {
                ProductDetails productDetails = productDetailsParams.f1998a;
                long j9 = nextLong;
                String str6 = productDetails.f2007c;
                String str7 = productDetails.d;
                SkuDetails skuDetails3 = skuDetails2;
                if (str7.equals("subs") && !this.k) {
                    com.google.android.gms.internal.play_billing.zzc.i("BillingClient", "Current client doesn't support subscriptions.");
                    zzje zzjeVar4 = zzje.SUBSCRIPTIONS_NOT_SUPPORTED;
                    BillingResult billingResult4 = zzdb.l;
                    I(zzjeVar4, billingResult4, j9, false);
                    K(billingResult4);
                    return billingResult4;
                }
                billingFlowParams.b.getClass();
                if (!billingFlowParams.f1995a) {
                    com.google.android.gms.internal.play_billing.zzbw zzbwVar3 = billingFlowParams.f1996c;
                    if (zzbwVar3 != null) {
                        int size = zzbwVar3.size();
                        for (int i3 = 0; i3 < size; i3++) {
                            ((BillingFlowParams.ProductDetailsParams) zzbwVar3.get(i3)).getClass();
                        }
                    }
                } else if (!this.m) {
                    com.google.android.gms.internal.play_billing.zzc.i("BillingClient", "Current client doesn't support extra params for buy intent.");
                    zzje zzjeVar5 = zzje.EXTRA_PARAMS_NOT_SUPPORTED;
                    BillingResult billingResult5 = zzdb.f;
                    I(zzjeVar5, billingResult5, j9, false);
                    K(billingResult5);
                    return billingResult5;
                }
                if (arrayList2.size() > 1 && !this.q) {
                    com.google.android.gms.internal.play_billing.zzc.i("BillingClient", "Current client doesn't support multi-item purchases.");
                    zzje zzjeVar6 = zzje.MULTI_ITEM_NOT_SUPPORTED;
                    BillingResult billingResult6 = zzdb.m;
                    I(zzjeVar6, billingResult6, j9, false);
                    K(billingResult6);
                    return billingResult6;
                }
                if (!zzbwVar2.isEmpty() && !this.r) {
                    com.google.android.gms.internal.play_billing.zzc.i("BillingClient", "Current client doesn't support purchases with ProductDetails.");
                    zzje zzjeVar7 = zzje.PRODUCT_DETAILS_NOT_SUPPORTED;
                    BillingResult billingResult7 = zzdb.o;
                    I(zzjeVar7, billingResult7, j9, false);
                    K(billingResult7);
                    return billingResult7;
                }
                if (billingFlowParams.f1996c.isEmpty()) {
                    a2 = zzdb.i;
                    str = str6;
                    j = j9;
                } else {
                    BillingFlowParams.ProductDetailsParams productDetailsParams2 = (BillingFlowParams.ProductDetailsParams) billingFlowParams.f1996c.get(0);
                    int i4 = 1;
                    while (true) {
                        str = str6;
                        if (i4 < billingFlowParams.f1996c.size()) {
                            BillingFlowParams.ProductDetailsParams productDetailsParams3 = (BillingFlowParams.ProductDetailsParams) billingFlowParams.f1996c.get(i4);
                            j = j9;
                            if (!productDetailsParams3.f1998a.d.equals(productDetailsParams2.f1998a.d) && !productDetailsParams3.f1998a.d.equals("play_pass_subs")) {
                                a2 = zzdb.a(5, "All products should have same ProductType.");
                                break;
                            }
                            i4++;
                            str6 = str;
                            j9 = j;
                        } else {
                            j = j9;
                            ProductDetails productDetails2 = productDetailsParams2.f1998a;
                            String optString = productDetails2.b.optString("packageName");
                            HashMap hashMap = new HashMap();
                            HashSet hashSet = new HashSet();
                            com.google.android.gms.internal.play_billing.zzbw zzbwVar4 = billingFlowParams.f1996c;
                            int size2 = zzbwVar4.size();
                            str2 = str7;
                            int i5 = 0;
                            while (true) {
                                if (i5 < size2) {
                                    int i6 = size2;
                                    BillingFlowParams.ProductDetailsParams productDetailsParams4 = (BillingFlowParams.ProductDetailsParams) zzbwVar4.get(i5);
                                    productDetailsParams4.getClass();
                                    int i7 = i5;
                                    ProductDetails productDetails3 = productDetailsParams4.f1998a;
                                    skuDetails = skuDetails3;
                                    ArrayList arrayList3 = productDetails3.h;
                                    String str8 = productDetails3.f2007c;
                                    if (arrayList3 != null) {
                                        zzbwVar = zzbwVar4;
                                        if (productDetailsParams4.b == null) {
                                            billingResult = zzdb.a(5, a.C("offerToken is required for constructing ProductDetailsParams for subscriptions. Missing value for product id: ", str8));
                                            break;
                                        }
                                    } else {
                                        zzbwVar = zzbwVar4;
                                    }
                                    if (hashMap.containsKey(str8)) {
                                        billingResult = zzdb.a(5, a.l("ProductId can not be duplicated. Invalid product id: ", str8, "."));
                                        break;
                                    }
                                    hashMap.put(str8, productDetailsParams4);
                                    if (!productDetails2.d.equals("play_pass_subs") && !productDetails3.d.equals("play_pass_subs") && !optString.equals(productDetails3.b.optString("packageName"))) {
                                        billingResult = zzdb.a(5, "All products must have the same package name.");
                                        break;
                                    }
                                    i5 = i7 + 1;
                                    size2 = i6;
                                    skuDetails3 = skuDetails;
                                    zzbwVar4 = zzbwVar;
                                } else {
                                    skuDetails = skuDetails3;
                                    Iterator it3 = hashSet.iterator();
                                    while (true) {
                                        if (it3.hasNext()) {
                                            String str9 = (String) it3.next();
                                            if (hashMap.containsKey(str9)) {
                                                ((BillingFlowParams.ProductDetailsParams) hashMap.get(str9)).getClass();
                                                billingResult = zzdb.a(5, "OldProductId must not be one of the products to be purchased. Invalid old product id: " + str9 + ".");
                                                break;
                                            }
                                        } else {
                                            ArrayList arrayList4 = productDetails2.i;
                                            String str10 = productDetailsParams2.b;
                                            if (str10 != null && arrayList4 != null) {
                                                int size3 = arrayList4.size();
                                                int i8 = 0;
                                                while (true) {
                                                    if (i8 < size3) {
                                                        Object obj3 = arrayList4.get(i8);
                                                        i8++;
                                                        oneTimePurchaseOfferDetails = (ProductDetails.OneTimePurchaseOfferDetails) obj3;
                                                        if (str10.equals(oneTimePurchaseOfferDetails.b)) {
                                                            break;
                                                        }
                                                    } else {
                                                        oneTimePurchaseOfferDetails = null;
                                                        break;
                                                    }
                                                }
                                                if (oneTimePurchaseOfferDetails != null && oneTimePurchaseOfferDetails.e != null) {
                                                    billingResult = zzdb.a(5, "Both autoPayDetails and autoPayBalanceThreshold is required for constructing ProductDetailsParams for autopay.");
                                                }
                                            }
                                            billingResult = zzdb.i;
                                        }
                                    }
                                }
                            }
                            billingResult2 = billingResult;
                        }
                    }
                }
                billingResult2 = a2;
                str2 = str7;
                skuDetails = skuDetails3;
                if (billingResult2 != zzdb.i) {
                    I(zzje.INVALID_BILLING_FLOW_PARAMS, billingResult2, j, false);
                    K(billingResult2);
                    return billingResult2;
                }
                long j10 = j;
                if (this.m) {
                    boolean z7 = this.n;
                    this.x.getClass();
                    boolean z8 = this.y;
                    String str11 = this.f1994c;
                    String str12 = this.d;
                    long longValue = this.B.longValue();
                    this.g.getPackageName();
                    int i9 = com.google.android.gms.internal.play_billing.zzc.f11463a;
                    z = false;
                    final Bundle bundle = new Bundle();
                    com.google.android.gms.internal.play_billing.zzc.b(longValue, str11, str12, bundle);
                    bundle.putLong("billingClientTransactionId", j10);
                    billingFlowParams.b.getClass();
                    if (!TextUtils.isEmpty(null)) {
                        str4 = null;
                        bundle.putString("accountId", null);
                    } else {
                        str4 = null;
                    }
                    if (!TextUtils.isEmpty(str4)) {
                        bundle.putString("obfuscatedProfileId", str4);
                    }
                    if (!TextUtils.isEmpty(str4)) {
                        bundle.putStringArrayList("skusToReplace", new ArrayList<>(Arrays.asList(str4)));
                    }
                    billingFlowParams.b.getClass();
                    if (!TextUtils.isEmpty(str4)) {
                        billingFlowParams.b.getClass();
                        bundle.putString("oldSkuPurchaseToken", str4);
                    }
                    if (!TextUtils.isEmpty(str4)) {
                        bundle.putString("oldSkuPurchaseId", str4);
                    }
                    billingFlowParams.b.getClass();
                    if (!TextUtils.isEmpty(str4)) {
                        billingFlowParams.b.getClass();
                        bundle.putString("originalExternalTransactionId", str4);
                    }
                    if (!TextUtils.isEmpty(str4)) {
                        bundle.putString("paymentsPurchaseParams", str4);
                    }
                    if (z7) {
                        z5 = true;
                        bundle.putBoolean("enablePendingPurchases", true);
                    } else {
                        z5 = true;
                    }
                    if (z8) {
                        bundle.putBoolean("enableAlternativeBilling", z5);
                    }
                    ArrayList arrayList5 = new ArrayList();
                    Iterator it4 = billingFlowParams.f1996c.iterator();
                    while (it4.hasNext()) {
                        ((BillingFlowParams.ProductDetailsParams) it4.next()).getClass();
                    }
                    if (!arrayList5.isEmpty()) {
                        com.google.android.gms.internal.play_billing.zzds q = com.google.android.gms.internal.play_billing.zzdt.q();
                        q.e();
                        com.google.android.gms.internal.play_billing.zzdt.r((com.google.android.gms.internal.play_billing.zzdt) q.f, arrayList5);
                        bundle.putByteArray("subscriptionProductReplacementParamsList", ((com.google.android.gms.internal.play_billing.zzdt) q.c()).b());
                    }
                    if (!arrayList2.isEmpty()) {
                        ArrayList<String> arrayList6 = new ArrayList<>();
                        new ArrayList();
                        new ArrayList();
                        new ArrayList();
                        new ArrayList();
                        Iterator it5 = arrayList2.iterator();
                        if (!it5.hasNext()) {
                            if (!arrayList6.isEmpty()) {
                                bundle.putStringArrayList("skuDetailsTokens", arrayList6);
                            }
                            if (arrayList2.size() > 1) {
                                ArrayList<String> arrayList7 = new ArrayList<>(arrayList2.size() - 1);
                                ArrayList<String> arrayList8 = new ArrayList<>(arrayList2.size() - 1);
                                if (1 >= arrayList2.size()) {
                                    bundle.putStringArrayList("additionalSkus", arrayList7);
                                    bundle.putStringArrayList("additionalSkuTypes", arrayList8);
                                } else {
                                    ((SkuDetails) arrayList2.get(1)).getClass();
                                    throw null;
                                }
                            }
                            j2 = j10;
                        } else {
                            ((SkuDetails) it5.next()).getClass();
                            throw null;
                        }
                    } else {
                        ArrayList<String> arrayList9 = new ArrayList<>(zzbwVar2.size() - 1);
                        ArrayList<String> arrayList10 = new ArrayList<>(zzbwVar2.size() - 1);
                        ArrayList<String> arrayList11 = new ArrayList<>();
                        ArrayList<String> arrayList12 = new ArrayList<>();
                        ArrayList<String> arrayList13 = new ArrayList<>();
                        ArrayList<Integer> arrayList14 = new ArrayList<>();
                        int i10 = 0;
                        while (i10 < zzbwVar2.size()) {
                            BillingFlowParams.ProductDetailsParams productDetailsParams5 = (BillingFlowParams.ProductDetailsParams) zzbwVar2.get(i10);
                            ProductDetails productDetails4 = productDetailsParams5.f1998a;
                            long j11 = j10;
                            if (!productDetails4.f.isEmpty()) {
                                arrayList11.add(productDetails4.f);
                            }
                            String str13 = productDetailsParams5.b;
                            arrayList12.add(str13);
                            if (!TextUtils.isEmpty(str13) && (arrayList = productDetails4.i) != null && !arrayList.isEmpty()) {
                                int size4 = arrayList.size();
                                int i11 = 0;
                                while (i11 < size4) {
                                    Object obj4 = arrayList.get(i11);
                                    int i12 = i11 + 1;
                                    ArrayList arrayList15 = arrayList;
                                    ProductDetails.OneTimePurchaseOfferDetails oneTimePurchaseOfferDetails2 = (ProductDetails.OneTimePurchaseOfferDetails) obj4;
                                    if (!TextUtils.isEmpty(oneTimePurchaseOfferDetails2.d) && Objects.equals(oneTimePurchaseOfferDetails2.b, str13)) {
                                        str5 = oneTimePurchaseOfferDetails2.d;
                                        break;
                                    }
                                    i11 = i12;
                                    arrayList = arrayList15;
                                }
                            }
                            str5 = productDetails4.g;
                            if (!TextUtils.isEmpty(str5)) {
                                arrayList13.add(str5);
                            }
                            if (i10 > 0) {
                                arrayList9.add(((BillingFlowParams.ProductDetailsParams) zzbwVar2.get(i10)).f1998a.f2007c);
                                arrayList10.add(((BillingFlowParams.ProductDetailsParams) zzbwVar2.get(i10)).f1998a.d);
                            }
                            i10++;
                            j10 = j11;
                        }
                        j2 = j10;
                        bundle.putStringArrayList("SKU_OFFER_ID_TOKEN_LIST", arrayList12);
                        if (!arrayList14.isEmpty()) {
                            bundle.putIntegerArrayList("autoPayBalanceThresholdList", arrayList14);
                        }
                        if (!arrayList11.isEmpty()) {
                            bundle.putStringArrayList("skuDetailsTokens", arrayList11);
                        }
                        if (!arrayList13.isEmpty()) {
                            bundle.putStringArrayList("SKU_SERIALIZED_DOCID_LIST", arrayList13);
                        }
                        if (!arrayList9.isEmpty()) {
                            bundle.putStringArrayList("additionalSkus", arrayList9);
                            bundle.putStringArrayList("additionalSkuTypes", arrayList10);
                        }
                    }
                    if (bundle.containsKey("SKU_OFFER_ID_TOKEN_LIST") && !this.o) {
                        zzje zzjeVar8 = zzje.OFFER_ID_TOKEN_NOT_SUPPORTED;
                        BillingResult billingResult8 = zzdb.n;
                        I(zzjeVar8, billingResult8, j2, false);
                        K(billingResult8);
                        return billingResult8;
                    }
                    if (skuDetails == null) {
                        if (!TextUtils.isEmpty(productDetailsParams.f1998a.b.optString("packageName"))) {
                            bundle.putString("skuPackageName", productDetailsParams.f1998a.b.optString("packageName"));
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        if (!TextUtils.isEmpty(null)) {
                            bundle.putString("accountName", null);
                        }
                        Intent intent = activity.getIntent();
                        if (intent == null) {
                            com.google.android.gms.internal.play_billing.zzc.i("BillingClient", "Activity's intent is null.");
                        } else if (!TextUtils.isEmpty(intent.getStringExtra("PROXY_PACKAGE"))) {
                            String stringExtra = intent.getStringExtra("PROXY_PACKAGE");
                            bundle.putString("proxyPackage", stringExtra);
                            try {
                                bundle.putString("proxyPackageVersion", this.g.getPackageManager().getPackageInfo(stringExtra, 0).versionName);
                            } catch (PackageManager.NameNotFoundException unused) {
                                bundle.putString("proxyPackageVersion", "package not found");
                            }
                        }
                        if (this.r && !zzbwVar2.isEmpty()) {
                            i = 17;
                        } else if (this.p && z6) {
                            i = 15;
                        } else if (this.n) {
                            i = 9;
                        } else {
                            i = 6;
                        }
                        final int i13 = i;
                        final String str14 = str;
                        final ?? r4 = str2;
                        j3 = j(new Callable(i13, str14, r4, billingFlowParams, bundle) { // from class: com.android.billingclient.api.zzae
                            public final /* synthetic */ int b;

                            /* renamed from: c, reason: collision with root package name */
                            public final /* synthetic */ String f2025c;
                            public final /* synthetic */ String d;
                            public final /* synthetic */ Bundle e;

                            {
                                this.e = bundle;
                            }

                            @Override // java.util.concurrent.Callable
                            public final Object call() {
                                Bundle c2;
                                com.google.android.gms.internal.play_billing.zzap zzapVar;
                                BillingClientImpl billingClientImpl = BillingClientImpl.this;
                                int i14 = this.b;
                                String str15 = this.f2025c;
                                String str16 = this.d;
                                Bundle bundle2 = this.e;
                                try {
                                    synchronized (billingClientImpl.f1993a) {
                                        zzapVar = billingClientImpl.i;
                                    }
                                    if (zzapVar == null) {
                                        return com.google.android.gms.internal.play_billing.zzc.c(zzdb.j, zzje.SERVICE_RESET_TO_NULL);
                                    }
                                    return zzapVar.O(i14, billingClientImpl.g.getPackageName(), str15, str16, bundle2);
                                } catch (DeadObjectException e2) {
                                    BillingResult billingResult9 = zzdb.j;
                                    String a3 = zzcx.a(e2);
                                    c2 = com.google.android.gms.internal.play_billing.zzc.c(billingResult9, zzje.LAUNCH_BILLING_FLOW_EXCEPTION);
                                    if (a3 != null) {
                                        c2.putString("ADDITIONAL_LOG_DETAILS", a3);
                                    }
                                    return c2;
                                } catch (Exception e3) {
                                    BillingResult billingResult10 = zzdb.h;
                                    String a4 = zzcx.a(e3);
                                    c2 = com.google.android.gms.internal.play_billing.zzc.c(billingResult10, zzje.LAUNCH_BILLING_FLOW_EXCEPTION);
                                    if (a4 != null) {
                                        c2.putString("ADDITIONAL_LOG_DETAILS", a4);
                                    }
                                    return c2;
                                }
                            }
                        }, 5000L, null, this.e, i());
                        j4 = r4;
                        r6 = bundle;
                    } else {
                        throw null;
                    }
                } else {
                    j2 = j10;
                    z = false;
                    final String str15 = str;
                    final ?? r42 = str2;
                    r6 = 5000;
                    j3 = j(new Callable() { // from class: com.android.billingclient.api.zzaf
                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            Bundle c2;
                            com.google.android.gms.internal.play_billing.zzap zzapVar;
                            BillingClientImpl billingClientImpl = BillingClientImpl.this;
                            String str16 = str15;
                            String str17 = r42;
                            try {
                                synchronized (billingClientImpl.f1993a) {
                                    zzapVar = billingClientImpl.i;
                                }
                                if (zzapVar == null) {
                                    return com.google.android.gms.internal.play_billing.zzc.c(zzdb.j, zzje.SERVICE_RESET_TO_NULL);
                                }
                                return zzapVar.w4(billingClientImpl.g.getPackageName(), str16, str17);
                            } catch (DeadObjectException e2) {
                                BillingResult billingResult9 = zzdb.j;
                                String a3 = zzcx.a(e2);
                                c2 = com.google.android.gms.internal.play_billing.zzc.c(billingResult9, zzje.LAUNCH_BILLING_FLOW_EXCEPTION);
                                if (a3 != null) {
                                    c2.putString("ADDITIONAL_LOG_DETAILS", a3);
                                }
                                return c2;
                            } catch (Exception e3) {
                                BillingResult billingResult10 = zzdb.h;
                                String a4 = zzcx.a(e3);
                                c2 = com.google.android.gms.internal.play_billing.zzc.c(billingResult10, zzje.LAUNCH_BILLING_FLOW_EXCEPTION);
                                if (a4 != null) {
                                    c2.putString("ADDITIONAL_LOG_DETAILS", a4);
                                }
                                return c2;
                            }
                        }
                    }, 5000L, null, this.e, i());
                    j4 = r42;
                }
                try {
                    if (j3 == null) {
                        try {
                            zzje zzjeVar9 = zzje.MISSING_RESULT_FROM_EXECUTE_ASYNC;
                            BillingResult billingResult9 = zzdb.f2065c;
                            I(zzjeVar9, billingResult9, j2, z);
                            K(billingResult9);
                            return billingResult9;
                        } catch (CancellationException e2) {
                            e = e2;
                            z3 = z;
                            j6 = j2;
                            com.google.android.gms.internal.play_billing.zzc.j("BillingClient", "Time out while launching billing flow. Try to reconnect", e);
                            zzje zzjeVar10 = zzje.LAUNCH_BILLING_FLOW_TIMEOUT;
                            BillingResult billingResult10 = zzdb.k;
                            J(zzjeVar10, billingResult10, zzcx.a(e), j6, z3);
                            K(billingResult10);
                            return billingResult10;
                        } catch (TimeoutException e3) {
                            e = e3;
                            z3 = z;
                            j6 = j2;
                            com.google.android.gms.internal.play_billing.zzc.j("BillingClient", "Time out while launching billing flow. Try to reconnect", e);
                            zzje zzjeVar102 = zzje.LAUNCH_BILLING_FLOW_TIMEOUT;
                            BillingResult billingResult102 = zzdb.k;
                            J(zzjeVar102, billingResult102, zzcx.a(e), j6, z3);
                            K(billingResult102);
                            return billingResult102;
                        } catch (Exception e4) {
                            e = e4;
                            z2 = z;
                            j5 = j2;
                            com.google.android.gms.internal.play_billing.zzc.j("BillingClient", "Exception while launching billing flow. Try to reconnect", e);
                            zzje zzjeVar11 = zzje.LAUNCH_BILLING_FLOW_EXCEPTION;
                            BillingResult billingResult11 = zzdb.j;
                            J(zzjeVar11, billingResult11, zzcx.a(e), j5, z2);
                            K(billingResult11);
                            return billingResult11;
                        }
                    }
                    boolean z9 = z;
                    long j12 = j2;
                    Bundle bundle2 = (Bundle) j3.get(5000L, TimeUnit.MILLISECONDS);
                    int a3 = com.google.android.gms.internal.play_billing.zzc.a("BillingClient", bundle2);
                    String f = com.google.android.gms.internal.play_billing.zzc.f("BillingClient", bundle2);
                    if (a3 != 0) {
                        com.google.android.gms.internal.play_billing.zzc.i("BillingClient", "Unable to buy item, Error response code: " + a3);
                        BillingResult a4 = zzdb.a(a3, f);
                        try {
                            if (bundle2 == null) {
                                zzjeVar = zzje.REASON_UNSPECIFIED;
                            } else {
                                Object obj5 = bundle2.get("LOG_REASON");
                                if (obj5 == null) {
                                    zzjeVar = zzje.REASON_UNSPECIFIED;
                                } else if (obj5 instanceof Integer) {
                                    zzjeVar = zzje.a(((Integer) obj5).intValue());
                                } else {
                                    com.google.android.gms.internal.play_billing.zzc.i("BillingClient", "Unexpected type for bundle log reason: " + obj5.getClass().getName());
                                    zzjeVar = zzje.REASON_UNSPECIFIED;
                                }
                            }
                        } catch (Throwable th) {
                            com.google.android.gms.internal.play_billing.zzc.i("BillingClient", "Failed to get log reason from bundle: ".concat(String.valueOf(th.getMessage())));
                            zzjeVar = zzje.REASON_UNSPECIFIED;
                        }
                        if (zzjeVar == zzje.REASON_UNSPECIFIED) {
                            zzjeVar = zzje.BILLING_RESULT_RECEIVED_FROM_PHONESKY;
                        }
                        zzje zzjeVar12 = zzjeVar;
                        try {
                            if (bundle2 != null) {
                                try {
                                    String string = bundle2.getString("ADDITIONAL_LOG_DETAILS");
                                    zzjeVar2 = zzjeVar12;
                                    z4 = z9;
                                    j7 = j12;
                                    str3 = string;
                                } catch (Throwable th2) {
                                    com.google.android.gms.internal.play_billing.zzc.i("BillingClient", "Failed to get additional log details from bundle: ".concat(String.valueOf(th2.getMessage())));
                                }
                                J(zzjeVar2, a4, str3, j7, z4);
                                K(a4);
                                return a4;
                            }
                            J(zzjeVar2, a4, str3, j7, z4);
                            K(a4);
                            return a4;
                        } catch (CancellationException e5) {
                            e = e5;
                            j6 = j7;
                            z3 = z4;
                            com.google.android.gms.internal.play_billing.zzc.j("BillingClient", "Time out while launching billing flow. Try to reconnect", e);
                            zzje zzjeVar1022 = zzje.LAUNCH_BILLING_FLOW_TIMEOUT;
                            BillingResult billingResult1022 = zzdb.k;
                            J(zzjeVar1022, billingResult1022, zzcx.a(e), j6, z3);
                            K(billingResult1022);
                            return billingResult1022;
                        } catch (TimeoutException e6) {
                            e = e6;
                            j6 = j7;
                            z3 = z4;
                            com.google.android.gms.internal.play_billing.zzc.j("BillingClient", "Time out while launching billing flow. Try to reconnect", e);
                            zzje zzjeVar10222 = zzje.LAUNCH_BILLING_FLOW_TIMEOUT;
                            BillingResult billingResult10222 = zzdb.k;
                            J(zzjeVar10222, billingResult10222, zzcx.a(e), j6, z3);
                            K(billingResult10222);
                            return billingResult10222;
                        } catch (Exception e7) {
                            e = e7;
                            j5 = j7;
                            z2 = z4;
                            com.google.android.gms.internal.play_billing.zzc.j("BillingClient", "Exception while launching billing flow. Try to reconnect", e);
                            zzje zzjeVar112 = zzje.LAUNCH_BILLING_FLOW_EXCEPTION;
                            BillingResult billingResult112 = zzdb.j;
                            J(zzjeVar112, billingResult112, zzcx.a(e), j5, z2);
                            K(billingResult112);
                            return billingResult112;
                        }
                        zzjeVar2 = zzjeVar12;
                        z4 = z9;
                        j7 = j12;
                        str3 = null;
                    } else {
                        Intent intent2 = new Intent(activity, (Class<?>) ProxyBillingActivity.class);
                        intent2.putExtra("BUY_INTENT", (PendingIntent) bundle2.getParcelable("BUY_INTENT"));
                        intent2.putExtra("billingClientTransactionId", j12);
                        intent2.putExtra("wasServiceAutoReconnected", z9);
                        activity.startActivity(intent2);
                        return zzdb.i;
                    }
                } catch (CancellationException e8) {
                    e = e8;
                } catch (TimeoutException e9) {
                    e = e9;
                    j6 = j4;
                    z3 = r6;
                } catch (Exception e10) {
                    e = e10;
                }
            } else {
                throw null;
            }
        } else {
            zzje zzjeVar13 = zzje.MISSING_LISTENER;
            BillingResult billingResult12 = zzdb.q;
            G(zzjeVar13, billingResult12, nextLong);
            return billingResult12;
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public void f(final QueryProductDetailsParams queryProductDetailsParams, final ProductDetailsResponseListener productDetailsResponseListener) {
        if (j(new Callable() { // from class: com.android.billingclient.api.zzbe
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r10v1, types: [java.util.ArrayList] */
            /* JADX WARN: Type inference failed for: r12v0 */
            /* JADX WARN: Type inference failed for: r12v1, types: [int] */
            /* JADX WARN: Type inference failed for: r12v8 */
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzcf zzcfVar;
                int i;
                com.google.android.gms.internal.play_billing.zzap zzapVar;
                int i2;
                int i3;
                ArrayList arrayList;
                BillingClientImpl billingClientImpl = BillingClientImpl.this;
                ProductDetailsResponseListener productDetailsResponseListener2 = productDetailsResponseListener;
                QueryProductDetailsParams queryProductDetailsParams2 = queryProductDetailsParams;
                Exception exc = null;
                if (!billingClientImpl.B()) {
                    zzje zzjeVar = zzje.SERVICE_CONNECTION_NOT_READY;
                    BillingResult billingResult = zzdb.j;
                    billingClientImpl.F(zzjeVar, 7, billingResult);
                    productDetailsResponseListener2.a(billingResult, new QueryProductDetailsResult(com.google.android.gms.internal.play_billing.zzbw.t(), com.google.android.gms.internal.play_billing.zzbw.t()));
                    return null;
                }
                if (!billingClientImpl.r) {
                    com.google.android.gms.internal.play_billing.zzc.i("BillingClient", "Querying product details is not supported.");
                    zzje zzjeVar2 = zzje.PRODUCT_DETAILS_NOT_SUPPORTED;
                    BillingResult billingResult2 = zzdb.o;
                    billingClientImpl.F(zzjeVar2, 7, billingResult2);
                    productDetailsResponseListener2.a(billingResult2, new QueryProductDetailsResult(com.google.android.gms.internal.play_billing.zzbw.t(), com.google.android.gms.internal.play_billing.zzbw.t()));
                    return null;
                }
                ArrayList arrayList2 = new ArrayList();
                ArrayList arrayList3 = new ArrayList();
                String str = ((QueryProductDetailsParams.Product) queryProductDetailsParams2.f2013a.get(0)).b;
                com.google.android.gms.internal.play_billing.zzbw zzbwVar = queryProductDetailsParams2.f2013a;
                int size = zzbwVar.size();
                boolean z = false;
                int i4 = 0;
                while (true) {
                    if (i4 < size) {
                        int i5 = i4 + 20;
                        if (i5 > size) {
                            i = size;
                        } else {
                            i = i5;
                        }
                        ?? arrayList4 = new ArrayList(zzbwVar.subList(i4, i));
                        ArrayList<String> arrayList5 = new ArrayList<>();
                        int size2 = arrayList4.size();
                        for (?? r12 = z; r12 < size2; r12++) {
                            arrayList5.add(((QueryProductDetailsParams.Product) arrayList4.get(r12)).f2015a);
                        }
                        Bundle bundle = new Bundle();
                        bundle.putStringArrayList("ITEM_ID_LIST", arrayList5);
                        String str2 = billingClientImpl.f1994c;
                        bundle.putString("playBillingLibraryVersion", str2);
                        try {
                            synchronized (billingClientImpl.f1993a) {
                                zzapVar = billingClientImpl.i;
                            }
                            if (zzapVar == null) {
                                zzcfVar = billingClientImpl.r(zzdb.j, zzje.SERVICE_RESET_TO_NULL, "Service has been reset to null.", exc);
                                break;
                            }
                            if (billingClientImpl.s) {
                                billingClientImpl.x.getClass();
                            }
                            billingClientImpl.k();
                            billingClientImpl.k();
                            billingClientImpl.k();
                            billingClientImpl.k();
                            com.google.android.gms.internal.play_billing.zza zzaVar = new com.google.android.gms.internal.play_billing.zza(z);
                            if (true != billingClientImpl.t) {
                                i2 = 17;
                            } else {
                                i2 = 20;
                            }
                            com.google.android.gms.internal.play_billing.zzbw zzbwVar2 = zzbwVar;
                            ArrayList arrayList6 = arrayList4;
                            Bundle x4 = zzapVar.x4(i2, billingClientImpl.g.getPackageName(), str, bundle, com.google.android.gms.internal.play_billing.zzc.d(str2, billingClientImpl.d, arrayList4, zzaVar, billingClientImpl.B.longValue()));
                            if (x4 == null) {
                                zzcfVar = billingClientImpl.r(zzdb.p, zzje.NULL_BUNDLE_FROM_GET_SKU_DETAILS_SERVICE_CALL, "queryProductDetailsAsync got empty product details response.", null);
                                break;
                            }
                            if (!x4.containsKey("DETAILS_LIST")) {
                                int a2 = com.google.android.gms.internal.play_billing.zzc.a("BillingClient", x4);
                                String f = com.google.android.gms.internal.play_billing.zzc.f("BillingClient", x4);
                                if (a2 != 0) {
                                    zzcfVar = billingClientImpl.r(zzdb.a(a2, f), zzje.BILLING_RESULT_RECEIVED_FROM_PHONESKY, a.e(a2, "getSkuDetails() failed for queryProductDetailsAsync. Response code: "), null);
                                } else {
                                    zzcfVar = billingClientImpl.r(zzdb.a(6, f), zzje.MISSING_DETAILS_LIST_IN_GET_SKU_DETAILS_RESPONSE, "getSkuDetails() returned a bundle with neither an error nor a product detail list for queryProductDetailsAsync.", null);
                                }
                            } else {
                                ArrayList<String> stringArrayList = x4.getStringArrayList("DETAILS_LIST");
                                if (stringArrayList == null) {
                                    zzcfVar = billingClientImpl.r(zzdb.p, zzje.NULL_DETAILS_LIST_IN_GET_SKU_DETAILS_RESPONSE, "queryProductDetailsAsync got null response list", null);
                                    break;
                                }
                                ArrayList arrayList7 = new ArrayList();
                                int size3 = stringArrayList.size();
                                for (int i6 = 0; i6 < size3; i6++) {
                                    try {
                                        ProductDetails productDetails = new ProductDetails(stringArrayList.get(i6));
                                        com.google.android.gms.internal.play_billing.zzc.h("BillingClient", "Got product details: ".concat(productDetails.toString()));
                                        arrayList7.add(productDetails);
                                    } catch (JSONException e) {
                                        zzcfVar = billingClientImpl.r(zzdb.a(6, "Error trying to decode SkuDetails."), zzje.ERROR_DECODING_SKU_DETAILS, "Got a JSON exception trying to decode ProductDetails. \n Exception: ", e);
                                    }
                                }
                                ArrayList<String> stringArrayList2 = x4.getStringArrayList("UNFETCHED_PRODUCT_LIST");
                                new ArrayList();
                                try {
                                    ArrayList arrayList8 = new ArrayList();
                                    if (stringArrayList2 != null) {
                                        int size4 = stringArrayList2.size();
                                        int i7 = 0;
                                        while (i7 < size4) {
                                            String str3 = stringArrayList2.get(i7);
                                            i7++;
                                            UnfetchedProduct unfetchedProduct = new UnfetchedProduct(str3);
                                            com.google.android.gms.internal.play_billing.zzc.h("BillingClient", "Got unfetchedProduct: ".concat(unfetchedProduct.toString()));
                                            arrayList8.add(unfetchedProduct);
                                        }
                                    } else {
                                        int size5 = arrayList6.size();
                                        int i8 = 0;
                                        while (i8 < size5) {
                                            Object obj = arrayList6.get(i8);
                                            i8++;
                                            QueryProductDetailsParams.Product product = (QueryProductDetailsParams.Product) obj;
                                            int size6 = arrayList7.size();
                                            int i9 = 0;
                                            while (true) {
                                                if (i9 < size6) {
                                                    Object obj2 = arrayList7.get(i9);
                                                    i9++;
                                                    ProductDetails productDetails2 = (ProductDetails) obj2;
                                                    i3 = size5;
                                                    arrayList = arrayList6;
                                                    if (!product.f2015a.equals(productDetails2.f2007c) || !product.b.equals(productDetails2.d)) {
                                                        size5 = i3;
                                                        arrayList6 = arrayList;
                                                    }
                                                } else {
                                                    i3 = size5;
                                                    arrayList = arrayList6;
                                                    arrayList8.add(new UnfetchedProduct(new JSONObject().put("productId", product.f2015a).put("type", product.b).put("statusCode", 0).toString()));
                                                    break;
                                                }
                                            }
                                            size5 = i3;
                                            arrayList6 = arrayList;
                                        }
                                    }
                                    arrayList2.addAll(arrayList7);
                                    arrayList3.addAll(arrayList8);
                                    i4 = i5;
                                    zzbwVar = zzbwVar2;
                                    exc = null;
                                    z = false;
                                } catch (JSONException e2) {
                                    zzcfVar = billingClientImpl.r(zzdb.a(6, "Error trying to decode SkuDetails."), zzje.ERROR_DECODING_SKU_DETAILS, "Got a JSON exception trying to decode UnfetchedProduct. \n Exception: ", e2);
                                }
                            }
                        } catch (DeadObjectException e3) {
                            zzcfVar = billingClientImpl.r(zzdb.j, zzje.GET_SKU_DETAILS_SERVICE_CALL_EXCEPTION, "queryProductDetailsAsync got a remote exception (try to reconnect).", e3);
                        } catch (Exception e4) {
                            zzcfVar = billingClientImpl.r(zzdb.h, zzje.GET_SKU_DETAILS_SERVICE_CALL_EXCEPTION, "queryProductDetailsAsync got a remote exception (try to reconnect).", e4);
                        }
                    } else {
                        zzcfVar = new zzcf(0, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, arrayList2, arrayList3);
                        break;
                    }
                }
                productDetailsResponseListener2.a(zzdb.a(zzcfVar.f2047c, zzcfVar.d), new QueryProductDetailsResult(zzcfVar.f2046a, zzcfVar.b));
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzbf
            @Override // java.lang.Runnable
            public final void run() {
                BillingResult billingResult = zzdb.k;
                BillingClientImpl.this.F(zzje.EXECUTE_ASYNC_TIMEOUT, 7, billingResult);
                productDetailsResponseListener.a(billingResult, new QueryProductDetailsResult(com.google.android.gms.internal.play_billing.zzbw.t(), com.google.android.gms.internal.play_billing.zzbw.t()));
            }
        }, q(), i()) == null) {
            BillingResult t = t();
            F(zzje.MISSING_RESULT_FROM_EXECUTE_ASYNC, 7, t);
            productDetailsResponseListener.a(t, new QueryProductDetailsResult(com.google.android.gms.internal.play_billing.zzbw.t(), com.google.android.gms.internal.play_billing.zzbw.t()));
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public final void g(QueryPurchasesParams queryPurchasesParams, final PurchasesResponseListener purchasesResponseListener) {
        if (j(new zzbl(this, purchasesResponseListener, queryPurchasesParams.f2018a), 30000L, new Runnable() { // from class: com.android.billingclient.api.zzbi
            @Override // java.lang.Runnable
            public final void run() {
                BillingResult billingResult = zzdb.k;
                BillingClientImpl.this.F(zzje.EXECUTE_ASYNC_TIMEOUT, 9, billingResult);
                purchasesResponseListener.a(billingResult, com.google.android.gms.internal.play_billing.zzbw.t());
            }
        }, q(), i()) == null) {
            BillingResult t = t();
            F(zzje.MISSING_RESULT_FROM_EXECUTE_ASYNC, 9, t);
            purchasesResponseListener.a(t, com.google.android.gms.internal.play_billing.zzbw.t());
        }
    }

    @Override // com.android.billingclient.api.BillingClient
    public void h(PayHelper payHelper) {
        z(payHelper);
    }

    public final synchronized ExecutorService i() {
        try {
            if (this.A == null) {
                this.A = Executors.newFixedThreadPool(com.google.android.gms.internal.play_billing.zzc.f11463a, new zzbk(this));
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.A;
    }

    public final void k() {
        if (!TextUtils.isEmpty(null)) {
            return;
        }
        this.g.getPackageName();
    }

    public final void m(AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener, BillingResult billingResult, zzje zzjeVar, Exception exc) {
        com.google.android.gms.internal.play_billing.zzc.j("BillingClient", "Error in acknowledge purchase!", exc);
        H(zzjeVar, 3, billingResult, zzcx.a(exc));
    }

    public final void n(ConsumeResponseListener consumeResponseListener, String str, BillingResult billingResult, zzje zzjeVar, String str2, Exception exc) {
        com.google.android.gms.internal.play_billing.zzc.j("BillingClient", str2, exc);
        H(zzjeVar, 4, billingResult, zzcx.a(exc));
    }

    public final Handler q() {
        if (Looper.myLooper() == null) {
            return this.e;
        }
        return new Handler(Looper.myLooper());
    }

    public final zzcf r(BillingResult billingResult, zzje zzjeVar, String str, Exception exc) {
        com.google.android.gms.internal.play_billing.zzc.j("BillingClient", str, exc);
        H(zzjeVar, 7, billingResult, zzcx.a(exc));
        return new zzcf(billingResult.f2001a, billingResult.f2002c, new ArrayList(), new ArrayList());
    }

    public final BillingResult s() {
        com.google.android.gms.internal.play_billing.zzc.h("BillingClient", "Service connection is valid. No need to re-initialize.");
        zziz r = zzjb.r();
        r.e();
        zzjb.q((zzjb) r.f, 6);
        zzkt q = zzkv.q();
        q.e();
        zzkv.u((zzkv) q.f);
        q.g(false);
        q.h();
        r.e();
        zzjb.v((zzjb) r.f, (zzkv) q.c());
        v((zzjb) r.c());
        return zzdb.i;
    }

    public final BillingResult t() {
        int[] iArr = {0, 3};
        synchronized (this.f1993a) {
            for (int i = 0; i < 2; i++) {
                if (this.b == iArr[i]) {
                    return zzdb.j;
                }
            }
            return zzdb.h;
        }
    }

    public final void u(zzix zzixVar) {
        try {
            this.h.d(zzixVar, this.l);
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.j("BillingClient", "Unable to log.", th);
        }
    }

    public final void v(zzjb zzjbVar) {
        try {
            this.h.h(zzjbVar, this.l);
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.j("BillingClient", "Unable to log.", th);
        }
    }

    public final void w(BillingResult billingResult, zzje zzjeVar) {
        try {
            int i = zzcx.f2062a;
            zziv zzivVar = (zziv) zzcx.b(zzjeVar, 6, billingResult, null, zzjl.BROADCAST_ACTION_UNSPECIFIED).k();
            zzkt q = zzkv.q();
            q.g(false);
            q.h();
            zzivVar.h(q);
            u((zzix) zzivVar.c());
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.j("BillingClient", "Unable to log.", th);
        }
    }

    public final void x(int i) {
        String str;
        String str2;
        synchronized (this.f1993a) {
            try {
                if (this.b == 3) {
                    return;
                }
                int i2 = this.b;
                if (i2 != 0) {
                    if (i2 != 1) {
                        if (i2 != 2) {
                            str = "CLOSED";
                        } else {
                            str = "CONNECTED";
                        }
                    } else {
                        str = "CONNECTING";
                    }
                } else {
                    str = "DISCONNECTED";
                }
                if (i != 0) {
                    if (i != 1) {
                        if (i != 2) {
                            str2 = "CLOSED";
                        } else {
                            str2 = "CONNECTED";
                        }
                    } else {
                        str2 = "CONNECTING";
                    }
                } else {
                    str2 = "DISCONNECTED";
                }
                com.google.android.gms.internal.play_billing.zzc.h("BillingClient", "Setting clientState from " + str + " to " + str2);
                this.b = i;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized void y() {
        ExecutorService executorService = this.A;
        if (executorService != null) {
            executorService.shutdownNow();
            this.A = null;
        }
    }

    public final void z(BillingClientStateListener billingClientStateListener) {
        zzje zzjeVar;
        BillingResult billingResult;
        BillingResult billingResult2;
        synchronized (this.f1993a) {
            try {
                if (C()) {
                    billingResult = s();
                } else {
                    if (this.b == 1) {
                        com.google.android.gms.internal.play_billing.zzc.i("BillingClient", "Client is already in the process of connecting to billing service.");
                        zzje zzjeVar2 = zzje.BILLING_CLIENT_CONNECTING;
                        billingResult2 = zzdb.d;
                        w(billingResult2, zzjeVar2);
                    } else if (this.b == 3) {
                        com.google.android.gms.internal.play_billing.zzc.i("BillingClient", "Client was already closed and can't be reused. Please create another instance.");
                        zzje zzjeVar3 = zzje.BILLING_CLIENT_CLOSED;
                        billingResult2 = zzdb.j;
                        w(billingResult2, zzjeVar3);
                    } else {
                        x(1);
                        this.z = billingClientStateListener;
                        A();
                        com.google.android.gms.internal.play_billing.zzc.h("BillingClient", "Starting in-app billing setup.");
                        this.j = new zzbv(this, billingClientStateListener);
                        this.j.a();
                        Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
                        intent.setPackage("com.android.vending");
                        List<ResolveInfo> queryIntentServices = this.g.getPackageManager().queryIntentServices(intent, 0);
                        if (queryIntentServices != null && !queryIntentServices.isEmpty()) {
                            ServiceInfo serviceInfo = queryIntentServices.get(0).serviceInfo;
                            if (serviceInfo != null) {
                                String str = serviceInfo.packageName;
                                String str2 = serviceInfo.name;
                                if (Objects.equals(str, "com.android.vending") && str2 != null) {
                                    ComponentName componentName = new ComponentName(str, str2);
                                    Intent intent2 = new Intent(intent);
                                    intent2.setComponent(componentName);
                                    intent2.putExtra("playBillingLibraryVersion", this.f1994c);
                                    synchronized (this.f1993a) {
                                        try {
                                            if (this.b == 2) {
                                                billingResult = s();
                                            } else if (this.b != 1) {
                                                com.google.android.gms.internal.play_billing.zzc.i("BillingClient", "Client state no longer CONNECTING, returning service disconnected.");
                                                zzje zzjeVar4 = zzje.BILLING_CLIENT_TRANSITIONED_OUT_OF_CONNECTING;
                                                billingResult2 = zzdb.j;
                                                w(billingResult2, zzjeVar4);
                                            } else {
                                                zzbv zzbvVar = this.j;
                                                if (this.g.bindService(intent2, zzbvVar, 1)) {
                                                    com.google.android.gms.internal.play_billing.zzc.h("BillingClient", "Service was bonded successfully.");
                                                    billingResult = null;
                                                } else {
                                                    zzjeVar = zzje.BILLING_SERVICE_BLOCKED;
                                                    com.google.android.gms.internal.play_billing.zzc.i("BillingClient", "Connection to Billing service is blocked.");
                                                }
                                            }
                                        } finally {
                                        }
                                    }
                                } else {
                                    zzjeVar = zzje.INVALID_PHONESKY_PACKAGE;
                                    com.google.android.gms.internal.play_billing.zzc.i("BillingClient", "The device doesn't have valid Play Store.");
                                }
                            } else {
                                zzjeVar = zzje.INVALID_PHONESKY_PACKAGE;
                                com.google.android.gms.internal.play_billing.zzc.i("BillingClient", "The device doesn't have valid Play Store.");
                            }
                        } else {
                            zzjeVar = zzje.INTENT_SERVICE_NOT_FOUND;
                        }
                        x(0);
                        com.google.android.gms.internal.play_billing.zzc.h("BillingClient", "Billing service unavailable on device.");
                        billingResult = zzdb.b;
                        w(billingResult, zzjeVar);
                    }
                    billingResult = billingResult2;
                }
            } finally {
            }
        }
        if (billingResult != null) {
            billingClientStateListener.d(billingResult);
        }
    }

    public BillingClientImpl(PendingPurchasesParams pendingPurchasesParams, Context context, BillingClient.Builder builder) {
        long nextLong = new Random().nextLong();
        this.B = Long.valueOf(nextLong);
        this.C = com.google.android.gms.internal.play_billing.zzbd.f11449a;
        this.f1994c = "8.2.0";
        String l = l();
        this.d = l;
        this.g = context.getApplicationContext();
        zzjq A = zzjs.A();
        A.e();
        zzjs.y((zzjs) A.f);
        if (l != null) {
            A.e();
            zzjs.z((zzjs) A.f, l);
        }
        String packageName = this.g.getPackageName();
        A.e();
        zzjs.r((zzjs) A.f, packageName);
        A.e();
        zzjs.E((zzjs) A.f, nextLong);
        A.e();
        zzjs.x((zzjs) A.f);
        int i = Build.VERSION.SDK_INT;
        A.e();
        zzjs.B((zzjs) A.f, i);
        A.g();
        D(A, context);
        try {
            int i2 = this.g.getPackageManager().getPackageInfo(this.g.getPackageName(), 0).versionCode;
            A.e();
            zzjs.C((zzjs) A.f, i2);
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.j("BillingClient", "Error getting app version code.", th);
        }
        this.h = new zzdh(this.g, (zzjs) A.c());
        com.google.android.gms.internal.play_billing.zzc.i("BillingClient", "Billing client should have a valid listener but the provided is null.");
        this.f = new zzaa(this.g, null, this.h);
        this.x = pendingPurchasesParams;
        this.g.getPackageName();
    }
}
