package com.android.billingclient.api;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import androidx.core.util.Consumer;
import com.android.billingclient.api.BillingClient;
import com.google.android.gms.internal.play_billing.zzix;
import com.google.android.gms.internal.play_billing.zzjb;
import com.google.android.gms.internal.play_billing.zzje;
import com.google.android.gms.internal.play_billing.zzjl;
import com.mycompany.app.help.PayHelper;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzcv extends BillingClientImpl {
    public final Context D;
    public volatile int E;
    public volatile com.google.android.gms.internal.play_billing.zzay F;
    public volatile zzct G;
    public volatile ScheduledExecutorService H;

    public zzcv(PendingPurchasesParams pendingPurchasesParams, Context context, BillingClient.Builder builder) {
        super(pendingPurchasesParams, context, builder);
        this.E = 0;
        this.D = context;
    }

    public final synchronized boolean L() {
        if (this.E == 2 && this.F != null) {
            if (this.G != null) {
                return true;
            }
        }
        return false;
    }

    public final com.google.android.gms.internal.play_billing.zzdc M(int i) {
        if (!L()) {
            com.google.android.gms.internal.play_billing.zzc.i("BillingClientTesting", "Billing Override Service is not ready.");
            N(zzje.BILLING_OVERRIDE_SERVICE_CONNECTION_NOT_READY, 28, zzdb.a(-1, "Billing Override Service connection is disconnected."));
            return com.google.android.gms.internal.play_billing.zzcx.a(0);
        }
        return com.google.android.gms.internal.play_billing.zzu.a(new zzcm(this, i));
    }

    public final void N(zzje zzjeVar, int i, BillingResult billingResult) {
        int i2 = zzcx.f2062a;
        zzix b = zzcx.b(zzjeVar, i, billingResult, null, zzjl.BROADCAST_ACTION_UNSPECIFIED);
        Objects.requireNonNull(b, "ApiFailure should not be null");
        this.h.a(b);
    }

    public final void O(int i) {
        int i2 = zzcx.f2062a;
        zzjb c2 = zzcx.c(i, zzjl.BROADCAST_ACTION_UNSPECIFIED);
        Objects.requireNonNull(c2, "ApiSuccess should not be null");
        this.h.g(c2);
    }

    public final void P(int i, Consumer consumer, Runnable runnable) {
        ScheduledExecutorService scheduledExecutorService;
        com.google.android.gms.internal.play_billing.zzdc M = M(i);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        synchronized (this) {
            try {
                if (this.H == null) {
                    this.H = Executors.newSingleThreadScheduledExecutor();
                }
                scheduledExecutorService = this.H;
            } catch (Throwable th) {
                throw th;
            }
        }
        com.google.android.gms.internal.play_billing.zzcx.c(com.google.android.gms.internal.play_billing.zzcx.b(M, scheduledExecutorService), new zzcr(this, i, consumer, runnable), i());
    }

    @Override // com.android.billingclient.api.BillingClientImpl, com.android.billingclient.api.BillingClient
    public final void a(final AcknowledgePurchaseParams acknowledgePurchaseParams, final AcknowledgePurchaseResponseListener acknowledgePurchaseResponseListener) {
        P(3, new Consumer() { // from class: com.android.billingclient.api.zzcn
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                AcknowledgePurchaseResponseListener.this.c((BillingResult) obj);
            }
        }, new Runnable() { // from class: com.android.billingclient.api.zzco
            @Override // java.lang.Runnable
            public final void run() {
                super/*com.android.billingclient.api.BillingClientImpl*/.a(acknowledgePurchaseParams, acknowledgePurchaseResponseListener);
            }
        });
    }

    @Override // com.android.billingclient.api.BillingClientImpl, com.android.billingclient.api.BillingClient
    public final void b(final ConsumeParams consumeParams, final ConsumeResponseListener consumeResponseListener) {
        P(4, new Consumer() { // from class: com.android.billingclient.api.zzck
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                String str = consumeParams.f2005a;
                consumeResponseListener.f((BillingResult) obj, str);
            }
        }, new Runnable() { // from class: com.android.billingclient.api.zzcl
            @Override // java.lang.Runnable
            public final void run() {
                super/*com.android.billingclient.api.BillingClientImpl*/.b(consumeParams, consumeResponseListener);
            }
        });
    }

    @Override // com.android.billingclient.api.BillingClientImpl, com.android.billingclient.api.BillingClient
    public final void c() {
        synchronized (this) {
            O(27);
            try {
                try {
                    if (this.G != null && this.F != null) {
                        com.google.android.gms.internal.play_billing.zzc.h("BillingClientTesting", "Unbinding from Billing Override Service.");
                        this.D.unbindService(this.G);
                        this.G = new zzct(this);
                    }
                    this.F = null;
                    if (this.H != null) {
                        this.H.shutdownNow();
                        this.H = null;
                    }
                } catch (RuntimeException e) {
                    com.google.android.gms.internal.play_billing.zzc.j("BillingClientTesting", "There was an exception while ending Billing Override Service connection!", e);
                }
                this.E = 3;
            } catch (Throwable th) {
                this.E = 3;
                throw th;
            }
        }
        super.c();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.android.billingclient.api.BillingClientImpl, com.android.billingclient.api.BillingClient
    public final BillingResult e(final Activity activity, final BillingFlowParams billingFlowParams) {
        Consumer consumer = new Consumer() { // from class: com.android.billingclient.api.zzcp
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                zzcv.this.K((BillingResult) obj);
            }
        };
        Callable callable = new Callable() { // from class: com.android.billingclient.api.zzcq
            @Override // java.util.concurrent.Callable
            public final Object call() {
                BillingResult e;
                e = super/*com.android.billingclient.api.BillingClientImpl*/.e(activity, billingFlowParams);
                return e;
            }
        };
        int i = 0;
        try {
            i = ((Integer) M(2).get(28500L, TimeUnit.MILLISECONDS)).intValue();
        } catch (TimeoutException e) {
            N(zzje.BILLING_OVERRIDE_SERVICE_CALL_TIMEOUT, 28, zzdb.r);
            com.google.android.gms.internal.play_billing.zzc.j("BillingClientTesting", "Asynchronous call to Billing Override Service timed out.", e);
        } catch (Exception e2) {
            if (e2 instanceof InterruptedException) {
                Thread.currentThread().interrupt();
            }
            N(zzje.BILLING_OVERRIDE_SERVICE_CALL_EXCEPTION, 28, zzdb.r);
            com.google.android.gms.internal.play_billing.zzc.j("BillingClientTesting", "An error occurred while retrieving billing override.", e2);
        }
        if (i > 0) {
            BillingResult a2 = zzdb.a(i, "Billing override value was set by a license tester.");
            N(zzje.LICENSE_TESTER_BILLING_OVERRIDE, 2, a2);
            consumer.accept(a2);
            return a2;
        }
        try {
            return (BillingResult) callable.call();
        } catch (Exception e3) {
            BillingResult billingResult = zzdb.h;
            N(zzje.BILLING_OVERRIDE_SERVICE_FALLBACK_ERROR, 2, billingResult);
            com.google.android.gms.internal.play_billing.zzc.j("BillingClientTesting", "An internal error occurred.", e3);
            return billingResult;
        }
    }

    @Override // com.android.billingclient.api.BillingClientImpl, com.android.billingclient.api.BillingClient
    public final void f(final QueryProductDetailsParams queryProductDetailsParams, final ProductDetailsResponseListener productDetailsResponseListener) {
        P(7, new Consumer() { // from class: com.android.billingclient.api.zzci
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                QueryProductDetailsResult queryProductDetailsResult = new QueryProductDetailsResult(new ArrayList(), new ArrayList());
                ProductDetailsResponseListener.this.a((BillingResult) obj, queryProductDetailsResult);
            }
        }, new Runnable() { // from class: com.android.billingclient.api.zzcj
            @Override // java.lang.Runnable
            public final void run() {
                super/*com.android.billingclient.api.BillingClientImpl*/.f(queryProductDetailsParams, productDetailsResponseListener);
            }
        });
    }

    @Override // com.android.billingclient.api.BillingClientImpl, com.android.billingclient.api.BillingClient
    public final void h(PayHelper payHelper) {
        synchronized (this) {
            if (L()) {
                com.google.android.gms.internal.play_billing.zzc.h("BillingClientTesting", "Billing Override Service connection is valid. No need to re-initialize.");
                O(26);
            } else if (this.E == 1) {
                com.google.android.gms.internal.play_billing.zzc.i("BillingClientTesting", "Client is already in the process of connecting to Billing Override Service.");
            } else if (this.E == 3) {
                com.google.android.gms.internal.play_billing.zzc.i("BillingClientTesting", "Billing Override Service Client was already closed and can't be reused. Please create another instance.");
                N(zzje.BILLING_CLIENT_CLOSED, 26, zzdb.a(-1, "Billing Override Service connection is disconnected."));
            } else {
                this.E = 1;
                com.google.android.gms.internal.play_billing.zzc.h("BillingClientTesting", "Starting Billing Override Service setup.");
                this.G = new zzct(this);
                Intent intent = new Intent("com.google.android.apps.play.billingtestcompanion.BillingOverrideService.BIND");
                intent.setPackage("com.google.android.apps.play.billingtestcompanion");
                Context context = this.D;
                List<ResolveInfo> queryIntentServices = context.getPackageManager().queryIntentServices(intent, 0);
                zzje zzjeVar = zzje.REASON_UNSPECIFIED;
                if (queryIntentServices != null && !queryIntentServices.isEmpty()) {
                    ServiceInfo serviceInfo = queryIntentServices.get(0).serviceInfo;
                    if (serviceInfo != null) {
                        String str = serviceInfo.packageName;
                        String str2 = serviceInfo.name;
                        if (Objects.equals(str, "com.google.android.apps.play.billingtestcompanion") && str2 != null) {
                            ComponentName componentName = new ComponentName(str, str2);
                            Intent intent2 = new Intent(intent);
                            intent2.setComponent(componentName);
                            if (context.bindService(intent2, this.G, 1)) {
                                com.google.android.gms.internal.play_billing.zzc.h("BillingClientTesting", "Billing Override Service was bonded successfully.");
                            } else {
                                zzjeVar = zzje.BILLING_SERVICE_BLOCKED;
                                com.google.android.gms.internal.play_billing.zzc.i("BillingClientTesting", "Connection to Billing Override Service is blocked.");
                            }
                        } else {
                            zzjeVar = zzje.BILLING_SERVICE_BLOCKED;
                            com.google.android.gms.internal.play_billing.zzc.i("BillingClientTesting", "The device doesn't have valid Play Billing Lab.");
                        }
                    }
                } else {
                    zzjeVar = zzje.INTENT_SERVICE_NOT_FOUND;
                }
                this.E = 0;
                com.google.android.gms.internal.play_billing.zzc.h("BillingClientTesting", "Billing Override Service unavailable on device.");
                N(zzjeVar, 26, zzdb.a(2, "Billing Override Service unavailable on device."));
            }
        }
        z(payHelper);
    }

    public zzcv(PendingPurchasesParams pendingPurchasesParams, Context context, PayHelper payHelper, BillingClient.Builder builder) {
        super(pendingPurchasesParams, context, payHelper, builder);
        this.E = 0;
        this.D = context;
    }
}
