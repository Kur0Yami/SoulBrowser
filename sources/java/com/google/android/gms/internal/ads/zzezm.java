package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.api.client.http.HttpMethods;

/* loaded from: classes.dex */
public final class zzezm implements zzezv {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f7129a;
    public final boolean b;

    /* renamed from: c, reason: collision with root package name */
    public final String f7130c;
    public final boolean d;
    public final int e;
    public final int f;
    public final int g;
    public final String h;

    public zzezm(boolean z, boolean z2, String str, boolean z3, int i, int i2, int i3, String str2) {
        this.f7129a = z;
        this.b = z2;
        this.f7130c = str;
        this.d = z3;
        this.e = i;
        this.f = i2;
        this.g = i3;
        this.h = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        Bundle bundle = ((zzczm) obj).b;
        bundle.putString("js", this.f7130c);
        bundle.putInt("target_api", this.e);
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        Bundle bundle = ((zzczm) obj).f5627a;
        bundle.putString("js", this.f7130c);
        bundle.putBoolean("is_nonagon", true);
        bundle.putString("extra_caps", (String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.B4));
        bundle.putInt("target_api", this.e);
        bundle.putInt("dv", this.f);
        bundle.putInt("lv", this.g);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.N6)).booleanValue()) {
            String str = this.h;
            if (!TextUtils.isEmpty(str)) {
                bundle.putString("ev", str);
            }
        }
        Bundle a2 = zzfiz.a("sdk_env", bundle);
        a2.putBoolean("mf", ((Boolean) zzbik.g.c()).booleanValue());
        a2.putBoolean("instant_app", this.f7129a);
        a2.putBoolean("lite", this.b);
        a2.putBoolean("is_privileged_process", this.d);
        bundle.putBundle("sdk_env", a2);
        Bundle a3 = zzfiz.a("build_meta", a2);
        a3.putString("cl", "829525209");
        a3.putString("rapid_rc", "dev");
        a3.putString("rapid_rollup", HttpMethods.HEAD);
        a2.putBundle("build_meta", a3);
    }
}
