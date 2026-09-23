package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final /* synthetic */ class zzbne implements zzgpr {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzbne f4773a = new Object();

    @Override // com.google.android.gms.internal.ads.zzgpr
    public final /* synthetic */ Object apply(Object obj) {
        Throwable th = (Throwable) obj;
        zzbnn zzbnnVar = zzbnm.f4781a;
        if (((Boolean) zzbij.i.c()).booleanValue()) {
            com.google.android.gms.ads.internal.zzt.zzh().f("prepareClickUrl.attestation1", th);
            return "failure_click_attok";
        }
        return "failure_click_attok";
    }
}
