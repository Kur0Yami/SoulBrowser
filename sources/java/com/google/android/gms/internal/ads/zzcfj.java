package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzcfj {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f5105a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f5106c;
    public final int d;
    public final int e;
    public final int f;
    public final int g;
    public final int h;
    public final boolean i;
    public final boolean j;
    public final boolean k;
    public final boolean l;
    public final long m;
    public final long n;

    /* JADX WARN: Removed duplicated region for block: B:15:0x00c0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00a5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzcfj(java.lang.String r4) {
        /*
            r3 = this;
            r3.<init>()
            r0 = 0
            if (r4 == 0) goto Lc
            org.json.JSONObject r1 = new org.json.JSONObject     // Catch: org.json.JSONException -> Lc
            r1.<init>(r4)     // Catch: org.json.JSONException -> Lc
            r0 = r1
        Lc:
            java.lang.String r4 = "aggressive_media_codec_release"
            com.google.android.gms.internal.ads.zzbgb r1 = com.google.android.gms.internal.ads.zzbgk.q0
            boolean r4 = a(r0, r4, r1)
            r3.f5105a = r4
            java.lang.String r4 = "byte_buffer_precache_limit"
            com.google.android.gms.internal.ads.zzbgb r1 = com.google.android.gms.internal.ads.zzbgk.m
            int r4 = b(r0, r4, r1)
            r3.b = r4
            java.lang.String r4 = "exo_cache_buffer_size"
            com.google.android.gms.internal.ads.zzbgb r1 = com.google.android.gms.internal.ads.zzbgk.w
            int r4 = b(r0, r4, r1)
            r3.f5106c = r4
            java.lang.String r4 = "exo_connect_timeout_millis"
            com.google.android.gms.internal.ads.zzbgb r1 = com.google.android.gms.internal.ads.zzbgk.i
            int r4 = b(r0, r4, r1)
            r3.d = r4
            java.lang.String r4 = "exo_player_version"
            com.google.android.gms.internal.ads.zzbgb r1 = com.google.android.gms.internal.ads.zzbgk.h
            if (r0 == 0) goto L3e
            r0.getString(r4)     // Catch: org.json.JSONException -> L3e
            goto L48
        L3e:
            com.google.android.gms.internal.ads.zzbgi r4 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r4 = r4.a(r1)
            java.lang.String r4 = (java.lang.String) r4
        L48:
            java.lang.String r4 = "exo_read_timeout_millis"
            com.google.android.gms.internal.ads.zzbgb r1 = com.google.android.gms.internal.ads.zzbgk.j
            int r4 = b(r0, r4, r1)
            r3.e = r4
            java.lang.String r4 = "load_check_interval_bytes"
            com.google.android.gms.internal.ads.zzbgb r1 = com.google.android.gms.internal.ads.zzbgk.k
            int r4 = b(r0, r4, r1)
            r3.f = r4
            java.lang.String r4 = "player_precache_limit"
            com.google.android.gms.internal.ads.zzbgb r1 = com.google.android.gms.internal.ads.zzbgk.l
            int r4 = b(r0, r4, r1)
            r3.g = r4
            java.lang.String r4 = "socket_receive_buffer_size"
            com.google.android.gms.internal.ads.zzbgb r1 = com.google.android.gms.internal.ads.zzbgk.n
            int r4 = b(r0, r4, r1)
            r3.h = r4
            java.lang.String r4 = "use_cache_data_source"
            com.google.android.gms.internal.ads.zzbgb r1 = com.google.android.gms.internal.ads.zzbgk.g5
            boolean r4 = a(r0, r4, r1)
            r3.i = r4
            java.lang.String r4 = "min_retry_count"
            com.google.android.gms.internal.ads.zzbgb r1 = com.google.android.gms.internal.ads.zzbgk.o
            b(r0, r4, r1)
            java.lang.String r4 = "treat_load_exception_as_non_fatal"
            com.google.android.gms.internal.ads.zzbgb r1 = com.google.android.gms.internal.ads.zzbgk.q
            boolean r4 = a(r0, r4, r1)
            r3.j = r4
            java.lang.String r4 = "enable_multiple_video_playback"
            com.google.android.gms.internal.ads.zzbgb r1 = com.google.android.gms.internal.ads.zzbgk.v2
            boolean r4 = a(r0, r4, r1)
            r3.k = r4
            java.lang.String r4 = "use_range_http_data_source"
            com.google.android.gms.internal.ads.zzbgb r1 = com.google.android.gms.internal.ads.zzbgk.x2
            boolean r4 = a(r0, r4, r1)
            r3.l = r4
            java.lang.String r4 = "range_http_data_source_high_water_mark"
            com.google.android.gms.internal.ads.zzbgb r1 = com.google.android.gms.internal.ads.zzbgk.y2
            if (r0 == 0) goto Laa
            long r1 = r0.getLong(r4)     // Catch: org.json.JSONException -> Laa
            goto Lb8
        Laa:
            com.google.android.gms.internal.ads.zzbgi r4 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r4 = r4.a(r1)
            java.lang.Long r4 = (java.lang.Long) r4
            long r1 = r4.longValue()
        Lb8:
            r3.m = r1
            java.lang.String r4 = "range_http_data_source_low_water_mark"
            com.google.android.gms.internal.ads.zzbgb r1 = com.google.android.gms.internal.ads.zzbgk.z2
            if (r0 == 0) goto Lc5
            long r0 = r0.getLong(r4)     // Catch: org.json.JSONException -> Lc5
            goto Ld3
        Lc5:
            com.google.android.gms.internal.ads.zzbgi r4 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r4 = r4.a(r1)
            java.lang.Long r4 = (java.lang.Long) r4
            long r0 = r4.longValue()
        Ld3:
            r3.n = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcfj.<init>(java.lang.String):void");
    }

    public static final boolean a(JSONObject jSONObject, String str, zzbgb zzbgbVar) {
        boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).booleanValue();
        if (jSONObject != null) {
            try {
                return jSONObject.getBoolean(str);
            } catch (JSONException unused) {
            }
        }
        return booleanValue;
    }

    public static final int b(JSONObject jSONObject, String str, zzbgb zzbgbVar) {
        if (jSONObject != null) {
            try {
                return jSONObject.getInt(str);
            } catch (JSONException unused) {
            }
        }
        return ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).intValue();
    }
}
