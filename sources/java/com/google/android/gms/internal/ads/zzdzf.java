package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import j$.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzdzf implements zzgyj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzdzp f6275a;

    public zzdzf(zzdzp zzdzpVar) {
        Objects.requireNonNull(zzdzpVar);
        this.f6275a = zzdzpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final /* synthetic */ void a(Object obj) {
        final String str = (String) obj;
        synchronized (this) {
            zzdzp zzdzpVar = this.f6275a;
            zzdzpVar.f6286c = true;
            zzdzpVar.d("com.google.android.gms.ads.MobileAds", (int) (com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime() - zzdzpVar.d), RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, true);
            zzdzpVar.i.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdze
                /* JADX WARN: Removed duplicated region for block: B:40:0x0184 A[EXC_TOP_SPLITTER, SYNTHETIC] */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void run() {
                    /*
                        Method dump skipped, instructions count: 466
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdze.run():void");
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void b(Throwable th) {
        synchronized (this) {
            zzdzp zzdzpVar = this.f6275a;
            zzdzpVar.f6286c = true;
            zzdzpVar.d("com.google.android.gms.ads.MobileAds", (int) (com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime() - zzdzpVar.d), "Internal Error.", false);
            zzdzpVar.e.b(new Exception());
        }
    }
}
