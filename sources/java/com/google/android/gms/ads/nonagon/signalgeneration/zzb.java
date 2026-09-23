package com.google.android.gms.ads.nonagon.signalgeneration;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.work.impl.workers.a;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzdwm;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzb {

    /* renamed from: a, reason: collision with root package name */
    public final Context f3246a;
    public final zzd b;

    /* renamed from: c, reason: collision with root package name */
    public final long f3247c;
    public final ScheduledExecutorService d;
    public final PackageInfo e;

    public zzb(Context context, long j, PackageInfo packageInfo, zzd zzdVar, ScheduledExecutorService scheduledExecutorService) {
        this.f3246a = context;
        this.f3247c = j;
        this.e = packageInfo;
        this.b = zzdVar;
        this.d = scheduledExecutorService;
    }

    public static final void b(Bundle bundle, zzdwm zzdwmVar) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.z8)).booleanValue()) {
            return;
        }
        a.z(zzdwmVar.f6209c, bundle);
    }

    public static final void c(int i, Bundle bundle) {
        bundle.putBoolean("sod_h", false);
        bundle.putInt("cmr", i - 1);
    }

    public static String zzc(@Nullable String str) {
        if (str == null) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        return com.google.android.gms.ads.internal.util.zzs.zzl(str, "f8L7o2HxjA4p9Z1nQw3E5r6T8yU2iCv0B9kM4sD1f7G3hJ5lK2z0X9cW8vQ6b5N3m1Rg8F2o0Lp7A1e9I4u3Y2t0H8x6W5v4Z1n9Q2w7E3r5T8y6U1i0C9vB8k7M4s3D1f2G0h9J5l8K4z7X3cW2v1Q0b9N8m6A5r4F3o2Lp1E0u9I8y7Y6t5H4x3W2v1Z0n9Q8w7E6r5T4y3U2i1C0v9B8k7M6s5D4f3G2h1J0l9K8z7X6cW5v4Q3b2N1m0Rg9F8o7Lp6A5e4I3u2Y1t0H8x7W6v5Z4n3Q2w1E0r9T8y7U6i5C4v3B2k1M0s9D8f7G6h5J4l3K2z1X0cW9v8Q7b6N5m4A3r2F1o0Lp9E8u7I6y5T4h3W2v1Z0n0Q9w8E7r6T5y4U3i2C1v0B9k8M7s6D5f4G3h2J1l0K9z8X7cW6v5Q4b3N2m1R0g9F8o7L6p5A4e3I2u1Y0t9H8x7W6v5Z4n3Q2w1E0r9T8y7U6i5C4v3B2k1M0s9D8f7G6h5J4l3K2z1X0cW9v8Q7b6N5m4A3r2F1o0Lp9E8u7I6y5T4h3W2");
    }

    public final boolean a() {
        if (this.b.zzj().size() >= ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.y8)).intValue()) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(@androidx.annotation.Nullable java.lang.String r6, @androidx.annotation.Nullable com.google.android.gms.ads.nonagon.signalgeneration.zzbj r7) {
        /*
            r5 = this;
            boolean r0 = android.text.TextUtils.isEmpty(r6)
            if (r0 != 0) goto L7a
            boolean r0 = r5.a()
            if (r0 == 0) goto Ld
            goto L7a
        Ld:
            org.json.JSONObject r0 = new org.json.JSONObject
            r0.<init>()
            org.json.JSONObject r1 = new org.json.JSONObject     // Catch: org.json.JSONException -> L3d
            r1.<init>()     // Catch: org.json.JSONException -> L3d
            java.lang.String r2 = "params"
            java.lang.String r3 = r7.zza     // Catch: org.json.JSONException -> L3d
            r1.put(r2, r3)     // Catch: org.json.JSONException -> L3d
            java.lang.String r2 = "signal_dictionary"
            com.google.android.gms.ads.internal.util.client.zzf r3 = com.google.android.gms.ads.internal.client.zzbb.zza()     // Catch: org.json.JSONException -> L3d
            android.os.Bundle r4 = r7.zzf     // Catch: org.json.JSONException -> L3d
            org.json.JSONObject r3 = r3.zzm(r4)     // Catch: org.json.JSONException -> L3d
            r1.put(r2, r3)     // Catch: org.json.JSONException -> L3d
            java.lang.String r2 = "sr"
            r0.put(r2, r1)     // Catch: org.json.JSONException -> L3d
            java.lang.String r7 = r7.zzc     // Catch: org.json.JSONException -> L3d
            boolean r1 = android.text.TextUtils.isEmpty(r7)     // Catch: org.json.JSONException -> L3d
            if (r1 == 0) goto L3f
            java.lang.String r7 = ""
            goto L6f
        L3d:
            r7 = move-exception
            goto L62
        L3f:
            java.lang.String r7 = zzc(r7)     // Catch: org.json.JSONException -> L3d
            java.nio.charset.Charset r1 = java.nio.charset.StandardCharsets.UTF_8     // Catch: org.json.JSONException -> L3d
            byte[] r7 = r7.getBytes(r1)     // Catch: org.json.JSONException -> L3d
            r1 = 10
            java.lang.String r7 = android.util.Base64.encodeToString(r7, r1)     // Catch: org.json.JSONException -> L3d
            java.lang.String r1 = "rs"
            r0.put(r1, r7)     // Catch: org.json.JSONException -> L3d
            java.lang.String r7 = "ts_ms"
            com.google.android.gms.common.util.Clock r1 = com.google.android.gms.ads.internal.zzt.zzk()     // Catch: org.json.JSONException -> L3d
            long r1 = r1.currentTimeMillis()     // Catch: org.json.JSONException -> L3d
            r0.put(r7, r1)     // Catch: org.json.JSONException -> L3d
            goto L6b
        L62:
            java.lang.String r1 = "DiskCachingManager.createStringToWrite"
            com.google.android.gms.internal.ads.zzcda r2 = com.google.android.gms.ads.internal.zzt.zzh()
            r2.f(r1, r7)
        L6b:
            java.lang.String r7 = r0.toString()
        L6f:
            boolean r0 = android.text.TextUtils.isEmpty(r7)
            if (r0 != 0) goto L7a
            com.google.android.gms.ads.nonagon.signalgeneration.zzd r0 = r5.b
            r0.zza(r6, r7)
        L7a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.nonagon.signalgeneration.zzb.zza(java.lang.String, com.google.android.gms.ads.nonagon.signalgeneration.zzbj):void");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:21|22|23|(1:25)(4:32|33|34|(3:38|(1:43)(2:40|(1:42))|30))|26|27|29|30|19) */
    /* JADX WARN: Multi-variable type inference failed */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.ads.nonagon.signalgeneration.zzbj zzb(com.google.android.gms.internal.ads.zzccn r23, final com.google.android.gms.ads.nonagon.signalgeneration.zzau r24, android.os.Bundle r25) {
        /*
            Method dump skipped, instructions count: 681
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.nonagon.signalgeneration.zzb.zzb(com.google.android.gms.internal.ads.zzccn, com.google.android.gms.ads.nonagon.signalgeneration.zzau, android.os.Bundle):com.google.android.gms.ads.nonagon.signalgeneration.zzbj");
    }
}
