package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class zzeze implements zzezv {

    /* renamed from: a, reason: collision with root package name */
    public final String f7116a;
    public final Bundle b;

    /* renamed from: c, reason: collision with root package name */
    public final String f7117c;

    public zzeze(String str, Bundle bundle, String str2) {
        this.f7116a = str;
        this.b = bundle;
        this.f7117c = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* synthetic */ void a(Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        Bundle bundle = ((zzczm) obj).f5627a;
        bundle.putString("rtb", this.f7116a);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.a5)).booleanValue()) {
            String str = this.f7117c;
            if (!str.isEmpty()) {
                bundle.putString("cld_status", str);
            }
        }
        Bundle bundle2 = this.b;
        if (!bundle2.isEmpty()) {
            bundle.putBundle("adapter_initialization_status", bundle2);
        }
    }
}
