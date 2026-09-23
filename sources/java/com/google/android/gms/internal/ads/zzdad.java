package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.List;

/* loaded from: classes.dex */
public final class zzdad extends com.google.android.gms.ads.internal.client.zzdz {

    /* renamed from: c, reason: collision with root package name */
    public final String f5650c;
    public final String f;
    public final String g;
    public final String h;
    public final List i;
    public final long j;
    public final String k;
    public final zzejl l;
    public final Bundle m;
    public final double n;
    public final int o;

    /* JADX WARN: Code restructure failed: missing block: B:33:0x00b0, code lost:
    
        if (android.text.TextUtils.isEmpty(r3) != false) goto L42;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzdad(com.google.android.gms.internal.ads.zzfhr r3, java.lang.String r4, com.google.android.gms.internal.ads.zzejl r5, com.google.android.gms.internal.ads.zzfhu r6, java.lang.String r7) {
        /*
            r2 = this;
            r2.<init>()
            r0 = 0
            if (r3 != 0) goto L8
            r1 = r0
            goto La
        L8:
            java.lang.String r1 = r3.b0
        La:
            r2.f = r1
            r2.g = r7
            if (r6 != 0) goto L12
            r7 = r0
            goto L14
        L12:
            java.lang.String r7 = r6.b
        L14:
            r2.h = r7
            java.lang.String r7 = "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"
            boolean r7 = r7.equals(r4)
            if (r7 != 0) goto L26
            java.lang.String r7 = "com.google.ads.mediation.customevent.CustomEventAdapter"
            boolean r7 = r7.equals(r4)
            if (r7 == 0) goto L30
        L26:
            if (r3 == 0) goto L30
            org.json.JSONObject r7 = r3.v     // Catch: org.json.JSONException -> L30
            java.lang.String r1 = "class_name"
            java.lang.String r0 = r7.getString(r1)     // Catch: org.json.JSONException -> L30
        L30:
            if (r0 == 0) goto L33
            r4 = r0
        L33:
            r2.f5650c = r4
            java.util.List r4 = r5.f6561a
            r2.i = r4
            r2.l = r5
            if (r3 != 0) goto L40
            r4 = 0
            goto L42
        L40:
            double r4 = r3.z0
        L42:
            r2.n = r4
            if (r3 != 0) goto L48
            r4 = 2
            goto L4a
        L48:
            int r4 = r3.G0
        L4a:
            r2.o = r4
            com.google.android.gms.common.util.Clock r4 = com.google.android.gms.ads.internal.zzt.zzk()
            long r4 = r4.currentTimeMillis()
            r0 = 1000(0x3e8, double:4.94E-321)
            long r4 = r4 / r0
            r2.j = r4
            com.google.android.gms.internal.ads.zzbgb r4 = com.google.android.gms.internal.ads.zzbgk.D7
            com.google.android.gms.internal.ads.zzbgi r5 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r4 = r5.a(r4)
            java.lang.Boolean r4 = (java.lang.Boolean) r4
            boolean r4 = r4.booleanValue()
            if (r4 == 0) goto L72
            if (r6 == 0) goto L72
            android.os.Bundle r4 = r6.k
            r2.m = r4
            goto L79
        L72:
            android.os.Bundle r4 = new android.os.Bundle
            r4.<init>()
            r2.m = r4
        L79:
            com.google.android.gms.internal.ads.zzbgb r4 = com.google.android.gms.internal.ads.zzbgk.E7
            com.google.android.gms.internal.ads.zzbgi r5 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r4 = r5.a(r4)
            java.lang.Boolean r4 = (java.lang.Boolean) r4
            boolean r4 = r4.booleanValue()
            if (r4 == 0) goto L96
            if (r3 == 0) goto L96
            android.os.Bundle r3 = r3.F0
            android.os.Bundle r4 = r2.m
            if (r4 == 0) goto L96
            r4.putAll(r3)
        L96:
            com.google.android.gms.internal.ads.zzbgb r3 = com.google.android.gms.internal.ads.zzbgk.Ca
            com.google.android.gms.internal.ads.zzbgi r4 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r3 = r4.a(r3)
            java.lang.Boolean r3 = (java.lang.Boolean) r3
            boolean r3 = r3.booleanValue()
            if (r3 == 0) goto Lb2
            if (r6 == 0) goto Lb2
            java.lang.String r3 = r6.i
            boolean r4 = android.text.TextUtils.isEmpty(r3)
            if (r4 == 0) goto Lb4
        Lb2:
            java.lang.String r3 = ""
        Lb4:
            r2.k = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdad.<init>(com.google.android.gms.internal.ads.zzfhr, java.lang.String, com.google.android.gms.internal.ads.zzejl, com.google.android.gms.internal.ads.zzfhu, java.lang.String):void");
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final String zze() {
        return this.f5650c;
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final String zzf() {
        return this.f;
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final List zzg() {
        return this.i;
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final com.google.android.gms.ads.internal.client.zzv zzh() {
        zzejl zzejlVar = this.l;
        if (zzejlVar != null) {
            return zzejlVar.f;
        }
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final Bundle zzi() {
        return this.m;
    }

    @Override // com.google.android.gms.ads.internal.client.zzea
    public final String zzj() {
        return this.g;
    }
}
