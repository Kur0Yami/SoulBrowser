package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzecl implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzdab f6368a;

    public zzecl(zzdab zzdabVar) {
        this.f6368a = zzdabVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0031, code lost:
    
        if (android.text.TextUtils.isEmpty(r1) == false) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0047, code lost:
    
        if (android.text.TextUtils.isEmpty(r1) != false) goto L13;
     */
    @Override // com.google.android.gms.internal.ads.zzijv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* bridge */ /* synthetic */ java.lang.Object zzb() {
        /*
            r4 = this;
            com.google.android.gms.internal.ads.zzdab r0 = r4.f6368a
            com.google.android.gms.internal.ads.zzfik r0 = r0.a()
            com.google.android.gms.ads.internal.client.zzm r0 = r0.d
            com.google.android.gms.internal.ads.zzbgb r1 = com.google.android.gms.internal.ads.zzbgk.e8
            com.google.android.gms.internal.ads.zzbgi r2 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r1 = r2.a(r1)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            if (r1 == 0) goto L49
            java.lang.String r1 = r0.zzx
            boolean r2 = android.text.TextUtils.isEmpty(r1)
            java.lang.String r3 = "request_id"
            if (r2 != 0) goto L34
            org.json.JSONObject r2 = new org.json.JSONObject     // Catch: org.json.JSONException -> L34
            r2.<init>(r1)     // Catch: org.json.JSONException -> L34
            java.lang.String r1 = r2.getString(r3)     // Catch: org.json.JSONException -> L34
            boolean r2 = android.text.TextUtils.isEmpty(r1)     // Catch: org.json.JSONException -> L34
            if (r2 != 0) goto L34
            goto L59
        L34:
            com.google.android.gms.ads.internal.client.zzc r0 = r0.zzs
            if (r0 == 0) goto L49
            org.json.JSONObject r1 = new org.json.JSONObject     // Catch: org.json.JSONException -> L49
            java.lang.String r0 = r0.zza     // Catch: org.json.JSONException -> L49
            r1.<init>(r0)     // Catch: org.json.JSONException -> L49
            java.lang.String r1 = r1.getString(r3)     // Catch: org.json.JSONException -> L49
            boolean r0 = android.text.TextUtils.isEmpty(r1)     // Catch: org.json.JSONException -> L49
            if (r0 == 0) goto L59
        L49:
            java.util.Random r0 = com.google.android.gms.ads.internal.client.zzbb.zzh()
            int r0 = r0.nextInt()
            r1 = 2147483647(0x7fffffff, float:NaN)
            r0 = r0 & r1
            java.lang.String r1 = java.lang.String.valueOf(r0)
        L59:
            com.google.android.gms.internal.ads.zzijo.a(r1)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzecl.zzb():java.lang.Object");
    }
}
