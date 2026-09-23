package com.google.android.gms.internal.ads;

import android.text.TextUtils;

/* loaded from: classes.dex */
public final class zzfas implements zzezv {

    /* renamed from: a, reason: collision with root package name */
    public final String f7170a;
    public final int b;

    public /* synthetic */ zzfas(String str, int i) {
        this.f7170a = str;
        this.b = i;
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* synthetic */ void a(Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        zzczm zzczmVar = (zzczm) obj;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Mb)).booleanValue()) {
            String str = this.f7170a;
            if (!TextUtils.isEmpty(str)) {
                zzczmVar.f5627a.putString("topics", str);
            }
            int i = this.b;
            if (i != -1) {
                zzczmVar.f5627a.putInt("atps", i);
            }
        }
    }
}
