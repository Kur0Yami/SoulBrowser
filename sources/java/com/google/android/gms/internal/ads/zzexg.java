package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzexg implements zzezv {

    /* renamed from: a, reason: collision with root package name */
    public final Boolean f7049a;

    public zzexg(Boolean bool) {
        this.f7049a = bool;
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* synthetic */ void a(Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        zzczm zzczmVar = (zzczm) obj;
        Boolean bool = this.f7049a;
        if (bool != null) {
            zzczmVar.f5627a.putBoolean("hw_accel", bool.booleanValue());
        }
    }
}
