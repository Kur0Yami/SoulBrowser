package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class zzfkn {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f7438a = new HashMap();

    public final zzfkm a(zzfkd zzfkdVar, Context context, zzfjv zzfjvVar, zzfks zzfksVar) {
        zzfkg zzfkgVar;
        HashMap hashMap = this.f7438a;
        zzfkm zzfkmVar = (zzfkm) hashMap.get(zzfkdVar);
        if (zzfkmVar == null) {
            if (zzfkdVar == zzfkd.f7431c) {
                int intValue = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.h7)).intValue();
                int intValue2 = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.n7)).intValue();
                int intValue3 = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.p7)).intValue();
                String str = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.r7);
                String str2 = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.j7);
                zzfkgVar = new zzfkg(context, zzfkdVar, intValue, intValue2, intValue3, str, str2);
            } else if (zzfkdVar == zzfkd.f) {
                int intValue4 = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.i7)).intValue();
                int intValue5 = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.o7)).intValue();
                int intValue6 = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.q7)).intValue();
                String str3 = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.s7);
                String str4 = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.k7);
                zzfkgVar = new zzfkg(context, zzfkdVar, intValue4, intValue5, intValue6, str3, str4);
            } else if (zzfkdVar == zzfkd.g) {
                int intValue7 = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.v7)).intValue();
                int intValue8 = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.x7)).intValue();
                int intValue9 = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.y7)).intValue();
                String str5 = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.t7);
                String str6 = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.u7);
                zzfkgVar = new zzfkg(context, zzfkdVar, intValue7, intValue8, intValue9, str5, str6);
            } else {
                zzfkgVar = null;
            }
            zzfka zzfkaVar = new zzfka(zzfkgVar);
            zzfkm zzfkmVar2 = new zzfkm(zzfkaVar, new zzfkv(zzfkaVar, zzfjvVar, zzfksVar));
            hashMap.put(zzfkdVar, zzfkmVar2);
            return zzfkmVar2;
        }
        return zzfkmVar;
    }
}
