package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzbvu extends zzbwd {

    /* renamed from: c, reason: collision with root package name */
    public final Map f4932c;
    public final Activity d;
    public final String e;
    public final long f;
    public final long g;
    public final String h;
    public final String i;

    /* JADX WARN: Removed duplicated region for block: B:6:0x003e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzbvu(com.google.android.gms.internal.ads.zzcir r3, java.util.Map r4) {
        /*
            r2 = this;
            java.lang.String r0 = "createCalendarEvent"
            r2.<init>(r3, r0)
            r2.f4932c = r4
            android.app.Activity r3 = r3.zzj()
            r2.d = r3
            java.lang.String r3 = "description"
            java.lang.String r3 = r2.f(r3)
            r2.e = r3
            java.lang.String r3 = "summary"
            java.lang.String r3 = r2.f(r3)
            r2.h = r3
            java.lang.String r3 = "start_ticks"
            java.lang.Object r3 = r4.get(r3)
            java.lang.String r3 = (java.lang.String) r3
            r0 = -1
            if (r3 != 0) goto L2b
        L29:
            r3 = r0
            goto L2f
        L2b:
            long r3 = java.lang.Long.parseLong(r3)     // Catch: java.lang.NumberFormatException -> L29
        L2f:
            r2.f = r3
            java.lang.String r3 = "end_ticks"
            java.util.Map r4 = r2.f4932c
            java.lang.Object r3 = r4.get(r3)
            java.lang.String r3 = (java.lang.String) r3
            if (r3 != 0) goto L3e
            goto L42
        L3e:
            long r0 = java.lang.Long.parseLong(r3)     // Catch: java.lang.NumberFormatException -> L42
        L42:
            r2.g = r0
            java.lang.String r3 = "location"
            java.lang.String r3 = r2.f(r3)
            r2.i = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbvu.<init>(com.google.android.gms.internal.ads.zzcir, java.util.Map):void");
    }

    public final String f(String str) {
        Map map = this.f4932c;
        if (TextUtils.isEmpty((CharSequence) map.get(str))) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        return (String) map.get(str);
    }
}
