package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzeys implements zzezv {

    /* renamed from: a, reason: collision with root package name */
    public final zzfzf f7097a;
    public final zzfzf b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f7098c;
    public final boolean d;
    public final boolean e = false;
    public final boolean f;

    public zzeys(zzfzf zzfzfVar, zzfzf zzfzfVar2, boolean z, boolean z2, boolean z3) {
        this.f7097a = zzfzfVar;
        this.b = zzfzfVar2;
        this.f7098c = z;
        this.d = z2;
        this.f = z3;
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* synthetic */ void a(Object obj) {
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0046, code lost:
    
        if (r7 <= 0) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0048, code lost:
    
        r1.putString("paidv1_id_android", r6);
        r1.putLong("paidv1_creation_time_android", r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0064, code lost:
    
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(com.google.android.gms.internal.ads.zzbgk.Q3)).booleanValue() == false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x007a, code lost:
    
        r4 = r9.b;
        r5 = r4.f7743a;
        r6 = r4.b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0080, code lost:
    
        if (r5 == null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0084, code lost:
    
        if (r6 <= 0) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0086, code lost:
    
        r1.putString("paidv2_id_android", r5);
        r1.putLong("paidv2_creation_time_android", r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0090, code lost:
    
        r1.putBoolean("paidv2_pub_option_android", r9.f7098c);
        r1.putBoolean("paidv2_user_option_android", r9.d);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0078, code lost:
    
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(com.google.android.gms.internal.ads.zzbgk.S3)).booleanValue() != false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x003a, code lost:
    
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(com.google.android.gms.internal.ads.zzbgk.R3)).booleanValue() != false) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0026, code lost:
    
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(com.google.android.gms.internal.ads.zzbgk.P3)).booleanValue() == false) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x003c, code lost:
    
        r5 = r9.f7097a;
        r6 = r5.f7743a;
        r7 = r5.b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0042, code lost:
    
        if (r6 == null) goto L17;
     */
    @Override // com.google.android.gms.internal.ads.zzezv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(java.lang.Object r10) {
        /*
            r9 = this;
            com.google.android.gms.internal.ads.zzczm r10 = (com.google.android.gms.internal.ads.zzczm) r10
            android.os.Bundle r10 = r10.f5627a
            boolean r0 = r9.e
            if (r0 == 0) goto La
            goto La7
        La:
            java.lang.String r0 = "pii"
            android.os.Bundle r1 = com.google.android.gms.internal.ads.zzfiz.a(r0, r10)
            r2 = 0
            boolean r4 = r9.f
            if (r4 != 0) goto L28
            com.google.android.gms.internal.ads.zzbgb r5 = com.google.android.gms.internal.ads.zzbgk.P3
            com.google.android.gms.internal.ads.zzbgi r6 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r5 = r6.a(r5)
            java.lang.Boolean r5 = (java.lang.Boolean) r5
            boolean r5 = r5.booleanValue()
            if (r5 != 0) goto L3c
        L28:
            if (r4 == 0) goto L52
            com.google.android.gms.internal.ads.zzbgb r5 = com.google.android.gms.internal.ads.zzbgk.R3
            com.google.android.gms.internal.ads.zzbgi r6 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r5 = r6.a(r5)
            java.lang.Boolean r5 = (java.lang.Boolean) r5
            boolean r5 = r5.booleanValue()
            if (r5 == 0) goto L52
        L3c:
            com.google.android.gms.internal.ads.zzfzf r5 = r9.f7097a
            java.lang.String r6 = r5.f7743a
            long r7 = r5.b
            if (r6 == 0) goto L52
            int r5 = (r7 > r2 ? 1 : (r7 == r2 ? 0 : -1))
            if (r5 <= 0) goto L52
            java.lang.String r5 = "paidv1_id_android"
            r1.putString(r5, r6)
            java.lang.String r5 = "paidv1_creation_time_android"
            r1.putLong(r5, r7)
        L52:
            if (r4 != 0) goto L66
            com.google.android.gms.internal.ads.zzbgb r5 = com.google.android.gms.internal.ads.zzbgk.Q3
            com.google.android.gms.internal.ads.zzbgi r6 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r5 = r6.a(r5)
            java.lang.Boolean r5 = (java.lang.Boolean) r5
            boolean r5 = r5.booleanValue()
            if (r5 != 0) goto L7a
        L66:
            if (r4 == 0) goto L9e
            com.google.android.gms.internal.ads.zzbgb r4 = com.google.android.gms.internal.ads.zzbgk.S3
            com.google.android.gms.internal.ads.zzbgi r5 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r4 = r5.a(r4)
            java.lang.Boolean r4 = (java.lang.Boolean) r4
            boolean r4 = r4.booleanValue()
            if (r4 == 0) goto L9e
        L7a:
            com.google.android.gms.internal.ads.zzfzf r4 = r9.b
            java.lang.String r5 = r4.f7743a
            long r6 = r4.b
            if (r5 == 0) goto L90
            int r2 = (r6 > r2 ? 1 : (r6 == r2 ? 0 : -1))
            if (r2 <= 0) goto L90
            java.lang.String r2 = "paidv2_id_android"
            r1.putString(r2, r5)
            java.lang.String r2 = "paidv2_creation_time_android"
            r1.putLong(r2, r6)
        L90:
            boolean r2 = r9.f7098c
            java.lang.String r3 = "paidv2_pub_option_android"
            r1.putBoolean(r3, r2)
            boolean r2 = r9.d
            java.lang.String r3 = "paidv2_user_option_android"
            r1.putBoolean(r3, r2)
        L9e:
            boolean r2 = r1.isEmpty()
            if (r2 != 0) goto La7
            r10.putBundle(r0, r1)
        La7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzeys.zza(java.lang.Object):void");
    }

    public zzeys(boolean z) {
        this.f = z;
    }
}
