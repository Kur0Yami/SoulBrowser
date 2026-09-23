package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbfp;

/* loaded from: classes.dex */
public final class zzdtm implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzdab f6129a;

    public zzdtm(zzdab zzdabVar) {
        this.f6129a = zzdabVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        if (this.f6129a.a().p.f7377a == 3) {
            return zzbfp.zza.EnumC0010zza.REWARDED_INTERSTITIAL;
        }
        return zzbfp.zza.EnumC0010zza.REWARD_BASED_VIDEO_AD;
    }
}
