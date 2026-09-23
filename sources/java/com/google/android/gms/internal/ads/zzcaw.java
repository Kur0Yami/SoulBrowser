package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzcaw extends zzcab {

    /* renamed from: c, reason: collision with root package name */
    public final String f5002c;
    public final int f;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzcaw(com.google.android.gms.ads.rewarded.RewardItem r2) {
        /*
            r1 = this;
            if (r2 == 0) goto L7
            java.lang.String r0 = r2.getType()
            goto L9
        L7:
            java.lang.String r0 = ""
        L9:
            if (r2 == 0) goto L10
            int r2 = r2.getAmount()
            goto L11
        L10:
            r2 = 1
        L11:
            r1.<init>(r0, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcaw.<init>(com.google.android.gms.ads.rewarded.RewardItem):void");
    }

    @Override // com.google.android.gms.internal.ads.zzcac
    public final String zze() {
        return this.f5002c;
    }

    @Override // com.google.android.gms.internal.ads.zzcac
    public final int zzf() {
        return this.f;
    }

    public zzcaw(String str, int i) {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
        this.f5002c = str;
        this.f = i;
    }
}
