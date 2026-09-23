package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.util.Clock;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class zzfpe {

    /* renamed from: a, reason: collision with root package name */
    public final zzemr f7525a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final String f7526c;
    public final String d;
    public final Context e;
    public final zzfid f;
    public final zzfie g;
    public final Clock h;
    public final zzayq i;

    public zzfpe(zzemr zzemrVar, VersionInfoParcel versionInfoParcel, String str, String str2, Context context, zzfid zzfidVar, zzfie zzfieVar, Clock clock, zzayq zzayqVar) {
        this.f7525a = zzemrVar;
        this.b = versionInfoParcel.afmaVersion;
        this.f7526c = str;
        this.d = str2;
        this.e = context;
        this.f = zzfidVar;
        this.g = zzfieVar;
        this.h = clock;
        this.i = zzayqVar;
    }

    public static String c(String str, String str2, String str3) {
        if (true == TextUtils.isEmpty(str3)) {
            str3 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        return str.replaceAll(str2, str3);
    }

    public final ArrayList a(zzfic zzficVar, zzfhr zzfhrVar, List list) {
        return b(zzficVar, zzfhrVar, false, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, list, null, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x0158, code lost:
    
        if (r7 == false) goto L54;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.ArrayList b(com.google.android.gms.internal.ads.zzfic r19, com.google.android.gms.internal.ads.zzfhr r20, boolean r21, java.lang.String r22, java.lang.String r23, java.util.List r24, com.google.android.gms.internal.ads.zzcze r25, com.google.android.gms.internal.ads.zzcdb r26) {
        /*
            Method dump skipped, instructions count: 413
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfpe.b(com.google.android.gms.internal.ads.zzfic, com.google.android.gms.internal.ads.zzfhr, boolean, java.lang.String, java.lang.String, java.util.List, com.google.android.gms.internal.ads.zzcze, com.google.android.gms.internal.ads.zzcdb):java.util.ArrayList");
    }
}
