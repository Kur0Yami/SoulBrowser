package com.android.billingclient.api;

import androidx.core.util.Consumer;
import com.google.android.gms.internal.play_billing.zzje;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
final class zzcr implements com.google.android.gms.internal.play_billing.zzcv {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Consumer f2058a;
    public final /* synthetic */ Runnable b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzcv f2059c;
    public final /* synthetic */ int d;

    public zzcr(zzcv zzcvVar, int i, Consumer consumer, Runnable runnable) {
        this.d = i;
        this.f2058a = consumer;
        this.b = runnable;
        this.f2059c = zzcvVar;
    }

    @Override // com.google.android.gms.internal.play_billing.zzcv
    public final void a(Object obj) {
        Integer num = (Integer) obj;
        if (num.intValue() > 0) {
            int intValue = num.intValue();
            zzcv zzcvVar = this.f2059c;
            zzcvVar.getClass();
            BillingResult a2 = zzdb.a(intValue, "Billing override value was set by a license tester.");
            zzcvVar.N(zzje.LICENSE_TESTER_BILLING_OVERRIDE, this.d, a2);
            this.f2058a.accept(a2);
            return;
        }
        this.b.run();
    }

    @Override // com.google.android.gms.internal.play_billing.zzcv
    public final void b(Throwable th) {
        boolean z = th instanceof TimeoutException;
        zzcv zzcvVar = this.f2059c;
        if (z) {
            zzcvVar.N(zzje.BILLING_OVERRIDE_SERVICE_CALL_TIMEOUT, 28, zzdb.r);
            com.google.android.gms.internal.play_billing.zzc.j("BillingClientTesting", "Asynchronous call to Billing Override Service timed out.", th);
        } else {
            zzcvVar.N(zzje.BILLING_OVERRIDE_SERVICE_CALL_EXCEPTION, 28, zzdb.r);
            com.google.android.gms.internal.play_billing.zzc.j("BillingClientTesting", "An error occurred while retrieving billing override.", th);
        }
        this.b.run();
    }
}
