package com.android.billingclient.api;

import com.google.android.gms.internal.play_billing.zzje;

/* loaded from: classes.dex */
public final /* synthetic */ class zzcm implements com.google.android.gms.internal.play_billing.zzr {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzcv f2052a;
    public final /* synthetic */ int b;

    public /* synthetic */ zzcm(zzcv zzcvVar, int i) {
        this.f2052a = zzcvVar;
        this.b = i;
    }

    public final String a(com.google.android.gms.internal.play_billing.zzp zzpVar) {
        String str;
        zzcv zzcvVar = this.f2052a;
        int i = this.b;
        try {
            if (zzcvVar.F != null) {
                com.google.android.gms.internal.play_billing.zzay zzayVar = zzcvVar.F;
                String packageName = zzcvVar.D.getPackageName();
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            if (i != 5) {
                                if (i != 6) {
                                    str = "QUERY_PRODUCT_DETAILS_ASYNC";
                                } else {
                                    str = "START_CONNECTION";
                                }
                            } else {
                                str = "IS_FEATURE_SUPPORTED";
                            }
                        } else {
                            str = "CONSUME_ASYNC";
                        }
                    } else {
                        str = "ACKNOWLEDGE_PURCHASE";
                    }
                } else {
                    str = "LAUNCH_BILLING_FLOW";
                }
                zzayVar.u0(packageName, str, new zzcs(zzpVar));
                return "billingOverrideService.getBillingOverride";
            }
            throw null;
        } catch (Exception e) {
            zzcvVar.N(zzje.BILLING_OVERRIDE_SERVICE_CALL_EXCEPTION, 28, zzdb.r);
            com.google.android.gms.internal.play_billing.zzc.j("BillingClientTesting", "An error occurred while retrieving billing override.", e);
            zzpVar.a(0);
            return "billingOverrideService.getBillingOverride";
        }
    }
}
