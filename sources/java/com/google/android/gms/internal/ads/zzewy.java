package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzewy implements zzezv {

    /* renamed from: a, reason: collision with root package name */
    public final Integer f7038a;

    public zzewy(Integer num) {
        this.f7038a = num;
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* synthetic */ void a(Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        zzczm zzczmVar = (zzczm) obj;
        Integer num = this.f7038a;
        if (num != null) {
            zzczmVar.f5627a.putInt("dspct", Math.min(num.intValue(), 20));
        }
    }
}
