package com.google.android.gms.internal.ads;

import android.os.Build;
import java.util.HashMap;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
final /* synthetic */ class zzfcq implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzfcq f7225a = new Object();

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Object call() {
        HashMap hashMap = new HashMap();
        String str = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.r0);
        if (str != null && !str.isEmpty()) {
            if (Build.VERSION.SDK_INT >= ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.s0)).intValue()) {
                for (String str2 : str.split(",", -1)) {
                    hashMap.put(str2, com.google.android.gms.ads.internal.util.zzch.zza(str2));
                }
            }
        }
        return new zzfcs(hashMap);
    }
}
