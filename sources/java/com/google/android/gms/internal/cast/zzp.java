package com.google.android.gms.internal.cast;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.MainThread;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.cast.internal.Logger;
import java.math.BigInteger;
import java.util.Map;

@MainThread
/* loaded from: classes.dex */
public final class zzp {
    public static final Logger d = new Logger("ApplicationAnalyticsUtils", null);
    public static final String e = "22.2.0";

    /* renamed from: a, reason: collision with root package name */
    public final String f9816a;
    public final Map b;

    /* renamed from: c, reason: collision with root package name */
    public final Map f9817c;

    public zzp(String str, Bundle bundle) {
        this.f9816a = str;
        this.b = zzaz.a("com.google.android.gms.cast.DICTIONARY_CAST_STATUS_CODES_TO_APP_SESSION_ERROR", bundle);
        this.f9817c = zzaz.a("com.google.android.gms.cast.DICTIONARY_CAST_STATUS_CODES_TO_APP_SESSION_CHANGE_REASON", bundle);
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.cast.zzqr a(com.google.android.gms.internal.cast.zzo r5, int r6) {
        /*
            r4 = this;
            com.google.android.gms.internal.cast.zzqq r5 = r4.b(r5)
            com.google.android.gms.internal.cast.zzqg r0 = r5.f()
            com.google.android.gms.internal.cast.zzqf r0 = com.google.android.gms.internal.cast.zzqg.o(r0)
            java.util.Map r1 = r4.f9817c
            if (r1 == 0) goto L2c
            java.lang.Integer r2 = java.lang.Integer.valueOf(r6)
            boolean r3 = r1.containsKey(r2)
            if (r3 != 0) goto L1b
            goto L2c
        L1b:
            java.lang.Object r1 = r1.get(r2)
            java.lang.Integer r1 = (java.lang.Integer) r1
            java.lang.Object r1 = com.google.android.gms.common.internal.Preconditions.checkNotNull(r1)
            java.lang.Integer r1 = (java.lang.Integer) r1
            int r1 = r1.intValue()
            goto L2e
        L2c:
            int r1 = r6 + 10000
        L2e:
            r0.c()
            com.google.android.gms.internal.cast.zzyd r2 = r0.f
            com.google.android.gms.internal.cast.zzqg r2 = (com.google.android.gms.internal.cast.zzqg) r2
            r2.t(r1)
            java.util.Map r1 = r4.b
            if (r1 == 0) goto L58
            java.lang.Integer r2 = java.lang.Integer.valueOf(r6)
            boolean r3 = r1.containsKey(r2)
            if (r3 != 0) goto L47
            goto L58
        L47:
            java.lang.Object r6 = r1.get(r2)
            java.lang.Integer r6 = (java.lang.Integer) r6
            java.lang.Object r6 = com.google.android.gms.common.internal.Preconditions.checkNotNull(r6)
            java.lang.Integer r6 = (java.lang.Integer) r6
            int r6 = r6.intValue()
            goto L5a
        L58:
            int r6 = r6 + 10000
        L5a:
            r0.c()
            com.google.android.gms.internal.cast.zzyd r1 = r0.f
            com.google.android.gms.internal.cast.zzqg r1 = (com.google.android.gms.internal.cast.zzqg) r1
            r1.u(r6)
            com.google.android.gms.internal.cast.zzyd r6 = r0.e()
            com.google.android.gms.internal.cast.zzqg r6 = (com.google.android.gms.internal.cast.zzqg) r6
            r5.g(r6)
            com.google.android.gms.internal.cast.zzyd r5 = r5.e()
            com.google.android.gms.internal.cast.zzqr r5 = (com.google.android.gms.internal.cast.zzqr) r5
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.cast.zzp.a(com.google.android.gms.internal.cast.zzo, int):com.google.android.gms.internal.cast.zzqr");
    }

    public final zzqq b(zzo zzoVar) {
        int i;
        long j;
        zzqq o = zzqr.o();
        long j2 = zzoVar.d;
        o.c();
        ((zzqr) o.f).q(j2);
        int i2 = zzoVar.e;
        zzoVar.e = i2 + 1;
        o.c();
        ((zzqr) o.f).w(i2);
        String str = zzoVar.f9802c;
        if (str != null) {
            o.c();
            ((zzqr) o.f).v(str);
        }
        zzur n = zzus.n();
        if (!TextUtils.isEmpty(zzoVar.h)) {
            String str2 = zzoVar.h;
            o.c();
            ((zzqr) o.f).r(str2);
            String str3 = zzoVar.h;
            n.c();
            ((zzus) n.f).o(str3);
        }
        if (!TextUtils.isEmpty(zzoVar.i)) {
            String str4 = zzoVar.i;
            n.c();
            ((zzus) n.f).p(str4);
        }
        if (!TextUtils.isEmpty(zzoVar.j)) {
            String str5 = zzoVar.j;
            n.c();
            ((zzus) n.f).q(str5);
        }
        if (!TextUtils.isEmpty(zzoVar.k)) {
            String str6 = zzoVar.k;
            n.c();
            ((zzus) n.f).r(str6);
        }
        if (!TextUtils.isEmpty(zzoVar.l)) {
            String str7 = zzoVar.l;
            n.c();
            ((zzus) n.f).s(str7);
        }
        if (!TextUtils.isEmpty(zzoVar.m)) {
            String str8 = zzoVar.m;
            n.c();
            ((zzus) n.f).t(str8);
        }
        int i3 = zzoVar.n;
        boolean z = true;
        if (i3 != 1) {
            i = 3;
            if (i3 != 2) {
                if (i3 != 3) {
                    i = 5;
                    if (i3 != 4) {
                        if (i3 != 5) {
                            i = 1;
                        } else {
                            i = 6;
                        }
                    }
                } else {
                    i = 4;
                }
            }
        } else {
            i = 2;
        }
        n.c();
        ((zzus) n.f).u(i);
        zzus zzusVar = (zzus) n.e();
        o.c();
        ((zzqr) o.f).B(zzusVar);
        zzqb n2 = zzqc.n();
        n2.c();
        ((zzqc) n2.f).p(e);
        n2.c();
        ((zzqc) n2.f).o(this.f9816a);
        zzqc zzqcVar = (zzqc) n2.e();
        o.c();
        ((zzqr) o.f).z(zzqcVar);
        zzqf n3 = zzqg.n();
        if (zzoVar.b != null) {
            zzro n4 = zzrp.n();
            String str9 = zzoVar.b;
            n4.c();
            ((zzrp) n4.f).o(str9);
            zzrp zzrpVar = (zzrp) n4.e();
            n3.c();
            ((zzqg) n3.f).q(zzrpVar);
        }
        n3.c();
        ((zzqg) n3.f).r(false);
        String str10 = zzoVar.f;
        if (str10 != null) {
            try {
                String replace = str10.replace("-", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                j = new BigInteger(replace.substring(0, Math.min(16, replace.length())), 16).longValue();
            } catch (NumberFormatException e2) {
                Object[] objArr = {str10};
                Logger logger = d;
                Log.w(logger.f3604a, logger.d("receiverSessionId %s is not valid for hash", objArr), e2);
                j = 0;
            }
            n3.c();
            ((zzqg) n3.f).s(j);
        }
        int i4 = zzoVar.g;
        n3.c();
        ((zzqg) n3.f).v(i4);
        if (zzoVar.f9801a.f != 2) {
            z = false;
        }
        n3.c();
        ((zzqg) n3.f).w(z);
        boolean z2 = zzoVar.o;
        n3.c();
        ((zzqg) n3.f).z(z2);
        o.c();
        ((zzqr) o.f).x((zzqg) n3.e());
        return o;
    }
}
