package com.google.android.gms.ads.nonagon.signalgeneration;

import android.util.Pair;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.query.QueryInfo;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;
import com.google.android.gms.internal.ads.zzbip;
import com.google.android.gms.internal.ads.zzdxj;

/* loaded from: classes.dex */
public final class zzp extends QueryInfoGenerationCallback {

    /* renamed from: a, reason: collision with root package name */
    public final zzo f3290a;
    public final zzdxj b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f3291c;
    public final int d;
    public final long e = com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis();
    public final Boolean f;

    public zzp(zzo zzoVar, boolean z, int i, @Nullable Boolean bool, zzdxj zzdxjVar) {
        this.f3290a = zzoVar;
        this.f3291c = z;
        this.d = i;
        this.f = bool;
        this.b = zzdxjVar;
    }

    @Override // com.google.android.gms.ads.query.QueryInfoGenerationCallback
    public final void onFailure(String str) {
        String str2;
        Pair pair = new Pair("sgf_reason", str);
        Pair pair2 = new Pair("se", "query_g");
        Pair pair3 = new Pair("ad_format", AdFormat.BANNER.name());
        Pair pair4 = new Pair("rtype", Integer.toString(6));
        Pair pair5 = new Pair("scar", "true");
        Pair pair6 = new Pair("lat_ms", Long.toString(com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis() - this.e));
        int i = this.d;
        Pair pair7 = new Pair("sgpc_rn", Integer.toString(i));
        Pair pair8 = new Pair("sgpc_lsu", String.valueOf(this.f));
        boolean z = this.f3291c;
        if (true != z) {
            str2 = "0";
        } else {
            str2 = "1";
        }
        zzaa.zze(this.b, null, "sgpcf", pair, pair2, pair3, pair4, pair5, pair6, pair7, pair8, new Pair("tpc", str2));
        this.f3290a.a(z, new zzq(null, str, ((Long) zzbip.h.c()).longValue() + com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis(), i));
    }

    @Override // com.google.android.gms.ads.query.QueryInfoGenerationCallback
    public final void onSuccess(QueryInfo queryInfo) {
        String str;
        Pair pair = new Pair("se", "query_g");
        Pair pair2 = new Pair("ad_format", AdFormat.BANNER.name());
        Pair pair3 = new Pair("rtype", Integer.toString(6));
        Pair pair4 = new Pair("scar", "true");
        Pair pair5 = new Pair("lat_ms", Long.toString(com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis() - this.e));
        int i = this.d;
        Pair pair6 = new Pair("sgpc_rn", Integer.toString(i));
        Pair pair7 = new Pair("sgpc_lsu", String.valueOf(this.f));
        boolean z = this.f3291c;
        if (true != z) {
            str = "0";
        } else {
            str = "1";
        }
        zzaa.zze(this.b, null, "sgpcs", pair, pair2, pair3, pair4, pair5, pair6, pair7, new Pair("tpc", str));
        this.f3290a.a(z, new zzq(queryInfo, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, ((Long) zzbip.h.c()).longValue() + com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis(), i));
    }
}
