package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbsh implements zzcdv {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzcdt f4872a;
    public final /* synthetic */ zzbrl b;

    public zzbsh(zzbrl zzbrlVar, zzbsj zzbsjVar, zzcdt zzcdtVar) {
        this.f4872a = zzcdtVar;
        this.b = zzbrlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcdv
    public final void zza() {
        com.google.android.gms.ads.internal.util.zze.zza("callJs > getEngine: Promise rejected");
        this.f4872a.b(new Exception("Unable to obtain a JavascriptEngine."));
        this.b.d();
    }
}
