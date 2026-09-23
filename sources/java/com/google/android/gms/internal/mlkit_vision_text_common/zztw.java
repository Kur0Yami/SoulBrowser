package com.google.android.gms.internal.mlkit_vision_text_common;

/* loaded from: classes3.dex */
public final /* synthetic */ class zztw implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzuc f11416c;
    public final /* synthetic */ zztr f;
    public final /* synthetic */ zzov g;
    public final /* synthetic */ String h;

    public /* synthetic */ zztw(zzuc zzucVar, zztr zztrVar, zzov zzovVar, String str) {
        this.f11416c = zzucVar;
        this.f = zztrVar;
        this.g = zzovVar;
        this.h = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x003a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r5v1, types: [com.google.android.gms.internal.mlkit_vision_text_common.zzsr, java.lang.Object] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r11 = this;
            com.google.android.gms.internal.mlkit_vision_text_common.zzuc r0 = r11.f11416c
            com.google.android.gms.internal.mlkit_vision_text_common.zztr r1 = r11.f
            com.google.android.gms.internal.mlkit_vision_text_common.zzov r2 = r11.g
            java.lang.String r3 = r11.h
            r1.a(r2)
            r2 = r1
            com.google.android.gms.internal.mlkit_vision_text_common.zzuf r2 = (com.google.android.gms.internal.mlkit_vision_text_common.zzuf) r2
            com.google.android.gms.internal.mlkit_vision_text_common.zzow r4 = r2.f11425a
            com.google.android.gms.internal.mlkit_vision_text_common.zzoy r5 = new com.google.android.gms.internal.mlkit_vision_text_common.zzoy
            r5.<init>(r4)
            com.google.android.gms.internal.mlkit_vision_text_common.zzst r4 = r5.f11394a
            if (r4 == 0) goto L28
            java.lang.String r4 = r4.d
            boolean r5 = com.google.android.gms.internal.mlkit_vision_text_common.zzy.b(r4)
            if (r5 != 0) goto L28
            java.lang.Object r4 = com.google.android.gms.common.internal.Preconditions.checkNotNull(r4)
            java.lang.String r4 = (java.lang.String) r4
            goto L2a
        L28:
            java.lang.String r4 = "NA"
        L2a:
            com.google.android.gms.internal.mlkit_vision_text_common.zzsr r5 = new com.google.android.gms.internal.mlkit_vision_text_common.zzsr
            r5.<init>()
            java.lang.String r6 = r0.f11421a
            r5.f11407a = r6
            java.lang.String r6 = r0.b
            r5.b = r6
            java.lang.Class<com.google.android.gms.internal.mlkit_vision_text_common.zzuc> r6 = com.google.android.gms.internal.mlkit_vision_text_common.zzuc.class
            monitor-enter(r6)
            com.google.android.gms.internal.mlkit_vision_text_common.zzbk r7 = com.google.android.gms.internal.mlkit_vision_text_common.zzuc.k     // Catch: java.lang.Throwable -> L66
            if (r7 == 0) goto L40
            monitor-exit(r6)
            goto L6f
        L40:
            android.content.res.Resources r7 = android.content.res.Resources.getSystem()     // Catch: java.lang.Throwable -> L66
            android.content.res.Configuration r7 = r7.getConfiguration()     // Catch: java.lang.Throwable -> L66
            androidx.core.os.LocaleListCompat r7 = androidx.core.os.ConfigurationCompat.a(r7)     // Catch: java.lang.Throwable -> L66
            com.google.android.gms.internal.mlkit_vision_text_common.zzbh r8 = new com.google.android.gms.internal.mlkit_vision_text_common.zzbh     // Catch: java.lang.Throwable -> L66
            r8.<init>()     // Catch: java.lang.Throwable -> L66
            r9 = 0
        L52:
            int r10 = r7.e()     // Catch: java.lang.Throwable -> L66
            if (r9 >= r10) goto L68
            java.util.Locale r10 = r7.c(r9)     // Catch: java.lang.Throwable -> L66
            java.lang.String r10 = com.google.mlkit.common.sdkinternal.CommonUtils.b(r10)     // Catch: java.lang.Throwable -> L66
            r8.a(r10)     // Catch: java.lang.Throwable -> L66
            int r9 = r9 + 1
            goto L52
        L66:
            r0 = move-exception
            goto Laa
        L68:
            com.google.android.gms.internal.mlkit_vision_text_common.zzbk r7 = r8.b()     // Catch: java.lang.Throwable -> L66
            com.google.android.gms.internal.mlkit_vision_text_common.zzuc.k = r7     // Catch: java.lang.Throwable -> L66
            monitor-exit(r6)
        L6f:
            r5.e = r7
            java.lang.Boolean r6 = java.lang.Boolean.TRUE
            r5.h = r6
            r5.d = r4
            r5.f11408c = r3
            com.google.android.gms.tasks.Task r3 = r0.f
            boolean r3 = r3.p()
            if (r3 == 0) goto L8a
            com.google.android.gms.tasks.Task r3 = r0.f
            java.lang.Object r3 = r3.m()
            java.lang.String r3 = (java.lang.String) r3
            goto L90
        L8a:
            com.google.mlkit.common.sdkinternal.SharedPrefManager r3 = r0.d
            java.lang.String r3 = r3.a()
        L90:
            r5.f = r3
            r3 = 10
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            r5.j = r3
            int r3 = r0.h
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            r5.k = r3
            r2.b = r5
            com.google.android.gms.internal.mlkit_vision_text_common.zztv r0 = r0.f11422c
            r0.a(r1)
            return
        Laa:
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L66
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_vision_text_common.zztw.run():void");
    }
}
