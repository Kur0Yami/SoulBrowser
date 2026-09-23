package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzfqq implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long f7573c;
    public final /* synthetic */ com.google.android.gms.ads.internal.client.zzea f;
    public final /* synthetic */ zzfqy g;

    public zzfqq(zzfqy zzfqyVar, long j, com.google.android.gms.ads.internal.client.zzea zzeaVar) {
        this.f7573c = j;
        this.f = zzeaVar;
        this.g = zzfqyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        zzfqy zzfqyVar = this.g;
        zzfqd zzfqdVar = zzfqyVar.r;
        if (zzfqdVar != null) {
            zzfqk zzfqkVar = zzfqyVar.t;
            com.google.android.gms.ads.internal.client.zzea zzeaVar = this.f;
            if (!(zzeaVar instanceof zzdad)) {
                str = null;
            } else {
                str = ((zzdad) zzeaVar).h;
            }
            String str2 = str;
            zzfqdVar.g("paa", "pano_ts", this.f7573c, zzfqyVar.e.zzd, zzfqyVar.q(), str2, zzfqkVar, zzfqyVar.f());
        }
    }
}
