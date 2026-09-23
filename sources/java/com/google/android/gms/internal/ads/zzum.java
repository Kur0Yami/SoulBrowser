package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzum extends Exception {

    /* renamed from: c, reason: collision with root package name */
    public final String f9297c;
    public final zzuj f;
    public final String g;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzum(com.google.android.gms.internal.ads.zzv r11, com.google.android.gms.internal.ads.zzuu r12, int r13) {
        /*
            r10 = this;
            java.lang.String r0 = r11.toString()
            java.lang.String r1 = java.lang.String.valueOf(r13)
            int r1 = r1.length()
            int r2 = r0.length()
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            int r1 = r1 + 25
            int r1 = r1 + r2
            r3.<init>(r1)
            java.lang.String r1 = "Decoder init failed: ["
            r3.append(r1)
            r3.append(r13)
            java.lang.String r1 = "], "
            r3.append(r1)
            r3.append(r0)
            java.lang.String r5 = r3.toString()
            java.lang.String r7 = r11.m
            int r11 = java.lang.Math.abs(r13)
            java.lang.String r13 = java.lang.String.valueOf(r11)
            int r13 = r13.length()
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            int r13 = r13 + 60
            r0.<init>(r13)
            java.lang.String r13 = "androidx.media3.exoplayer.mediacodec.MediaCodecRenderer_neg_"
            java.lang.String r9 = androidx.work.impl.workers.a.r(r11, r13, r0)
            r8 = 0
            r4 = r10
            r6 = r12
            r4.<init>(r5, r6, r7, r8, r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzum.<init>(com.google.android.gms.internal.ads.zzv, com.google.android.gms.internal.ads.zzuu, int):void");
    }

    public zzum(String str, Throwable th, String str2, zzuj zzujVar, String str3) {
        super(str, th);
        this.f9297c = str2;
        this.f = zzujVar;
        this.g = str3;
    }
}
