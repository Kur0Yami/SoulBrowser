package com.android.billingclient.api;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.internal.play_billing.zziv;
import com.google.android.gms.internal.play_billing.zzix;
import com.google.android.gms.internal.play_billing.zziz;
import com.google.android.gms.internal.play_billing.zzjb;
import com.google.android.gms.internal.play_billing.zzjc;
import com.google.android.gms.internal.play_billing.zzje;
import com.google.android.gms.internal.play_billing.zzjg;
import com.google.android.gms.internal.play_billing.zzjl;

/* loaded from: classes.dex */
public final /* synthetic */ class zzcx {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f2062a = 0;

    static {
        int i = zzcy.f2063a;
    }

    public static String a(Exception exc) {
        if (exc == null) {
            return null;
        }
        try {
            String simpleName = exc.getClass().getSimpleName();
            String message = exc.getMessage();
            if (message == null) {
                message = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            String str = simpleName + ":" + message;
            int i = com.google.android.gms.internal.play_billing.zzc.f11463a;
            if (str.length() > 40) {
                return str.substring(0, 40);
            }
            return str;
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.j("BillingLogger", "Unable to get truncated exception info", th);
            return null;
        }
    }

    public static zzix b(zzje zzjeVar, int i, BillingResult billingResult, String str, zzjl zzjlVar) {
        try {
            zzjc q = zzjg.q();
            int i2 = billingResult.f2001a;
            q.e();
            zzjg.v((zzjg) q.f, i2);
            String str2 = billingResult.f2002c;
            q.e();
            zzjg.s((zzjg) q.f, str2);
            int i3 = billingResult.b;
            if (i3 != 0) {
                q.e();
                zzjg.t((zzjg) q.f, i3);
            }
            if (zzjeVar != null) {
                q.g(zzjeVar);
            }
            if (str != null) {
                q.e();
                zzjg.r((zzjg) q.f, str);
            }
            zziv t = zzix.t();
            t.g(q);
            t.i(i);
            if (!zzjlVar.equals(zzjl.BROADCAST_ACTION_UNSPECIFIED)) {
                t.e();
                zzix.w((zzix) t.f, zzjlVar);
            }
            return (zzix) t.c();
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.j("BillingLogger", "Unable to create logging payload", th);
            return null;
        }
    }

    public static zzjb c(int i, zzjl zzjlVar) {
        try {
            zziz r = zzjb.r();
            r.e();
            zzjb.q((zzjb) r.f, i);
            if (!zzjlVar.equals(zzjl.BROADCAST_ACTION_UNSPECIFIED)) {
                r.e();
                zzjb.t((zzjb) r.f, zzjlVar);
            }
            return (zzjb) r.c();
        } catch (Exception e) {
            com.google.android.gms.internal.play_billing.zzc.j("BillingLogger", "Unable to create logging payload", e);
            return null;
        }
    }
}
