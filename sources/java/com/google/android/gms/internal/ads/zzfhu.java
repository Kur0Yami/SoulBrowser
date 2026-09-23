package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.util.JsonReader;
import android.util.JsonToken;
import com.google.android.gms.ads.RequestConfiguration;
import j$.util.Objects;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzfhu {

    /* renamed from: a, reason: collision with root package name */
    public final List f7372a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final int f7373c;
    public final int d;
    public final String e;
    public final int f;
    public final long g;
    public final boolean h;
    public final String i;
    public final zzfht j;
    public final Bundle k;
    public final String l;
    public final String m;
    public final String n;
    public final JSONObject o;
    public final JSONObject p;
    public final String q;
    public final int r;
    public final long s;
    public final long t;

    /* JADX WARN: Type inference failed for: r7v30, types: [com.google.android.gms.internal.ads.zzfht, java.lang.Object] */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    public zzfhu(JsonReader jsonReader) {
        String str;
        long j;
        List list = Collections.EMPTY_LIST;
        Bundle bundle = new Bundle();
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        jsonReader.beginObject();
        String str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        int i = 0;
        String str3 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        String str4 = str3;
        String str5 = str4;
        String str6 = str5;
        String str7 = str6;
        String str8 = str7;
        String str9 = str8;
        boolean z = false;
        zzfht zzfhtVar = null;
        long j2 = -1;
        long j3 = -1;
        long j4 = 0;
        int i2 = -1;
        int i3 = 1;
        int i4 = 0;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (Objects.equals(nextName, "nofill_urls")) {
                list = com.google.android.gms.ads.internal.util.zzbp.zzb(jsonReader);
            } else if ("refresh_interval".equals(nextName)) {
                i = jsonReader.nextInt();
            } else if (Objects.equals(nextName, "refresh_load_delay_time_interval")) {
                i2 = jsonReader.nextInt();
            } else if ("gws_query_id".equals(nextName)) {
                str3 = jsonReader.nextString();
            } else if ("analytics_query_ad_event_id".equals(nextName)) {
                str4 = jsonReader.nextString();
            } else if ("is_idless".equals(nextName)) {
                z = jsonReader.nextBoolean();
            } else if ("response_code".equals(nextName)) {
                i4 = jsonReader.nextInt();
            } else if ("latency".equals(nextName)) {
                j4 = jsonReader.nextLong();
            } else {
                str = str2;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.y9)).booleanValue() && "public_error".equals(nextName) && jsonReader.peek() == JsonToken.BEGIN_OBJECT) {
                    ?? obj = new Object();
                    jsonReader.beginObject();
                    String str10 = str;
                    while (jsonReader.hasNext()) {
                        String nextName2 = jsonReader.nextName();
                        int hashCode = nextName2.hashCode();
                        long j5 = j2;
                        if (hashCode != -1724546052) {
                            if (hashCode == 3059181 && nextName2.equals("code")) {
                                jsonReader.nextInt();
                            }
                            jsonReader.skipValue();
                        } else {
                            if (nextName2.equals("description")) {
                                str10 = jsonReader.nextString();
                            }
                            jsonReader.skipValue();
                        }
                        j2 = j5;
                    }
                    jsonReader.endObject();
                    obj.f7371a = str10;
                    zzfhtVar = obj;
                } else {
                    long j6 = j2;
                    if ("bidding_data".equals(nextName)) {
                        str5 = jsonReader.nextString();
                    } else {
                        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Mb)).booleanValue() && Objects.equals(nextName, "topics_should_record_observation")) {
                            jsonReader.nextBoolean();
                        } else if ("adapter_response_replacement_key".equals(nextName)) {
                            str9 = jsonReader.nextString();
                        } else if ("response_info_extras".equals(nextName)) {
                            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.D7)).booleanValue()) {
                                try {
                                    try {
                                        Bundle zzl = com.google.android.gms.ads.internal.util.zzbp.zzl(com.google.android.gms.ads.internal.util.zzbp.zzd(jsonReader));
                                        if (zzl != null) {
                                            bundle = zzl;
                                        }
                                    } catch (IOException | JSONException unused) {
                                    }
                                } catch (IllegalStateException unused2) {
                                    jsonReader.skipValue();
                                }
                            } else {
                                jsonReader.skipValue();
                            }
                        } else if ("adRequestPostBody".equals(nextName)) {
                            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ea)).booleanValue()) {
                                str7 = jsonReader.nextString();
                            } else {
                                jsonReader.skipValue();
                            }
                        } else if ("adRequestUrl".equals(nextName)) {
                            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ea)).booleanValue()) {
                                str6 = jsonReader.nextString();
                            } else {
                                jsonReader.skipValue();
                            }
                        } else {
                            zzbgb zzbgbVar = zzbgk.Fa;
                            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).booleanValue() && Objects.equals(nextName, "adResponseBody")) {
                                str8 = jsonReader.nextString();
                            } else if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).booleanValue() && Objects.equals(nextName, "adResponseHeaders")) {
                                jSONObject = com.google.android.gms.ads.internal.util.zzbp.zzd(jsonReader);
                            } else if (Objects.equals(nextName, "max_parallel_renderers")) {
                                i3 = Math.max(1, jsonReader.nextInt());
                            } else {
                                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Na)).booleanValue() && Objects.equals(nextName, "inspector_ad_transaction_extras")) {
                                    jSONObject2 = com.google.android.gms.ads.internal.util.zzbp.zzd(jsonReader);
                                } else {
                                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.J2)).booleanValue() && Objects.equals(nextName, "latency_extras")) {
                                        try {
                                            Bundle zzl2 = com.google.android.gms.ads.internal.util.zzbp.zzl(com.google.android.gms.ads.internal.util.zzbp.zzd(jsonReader));
                                            if (zzl2 != null) {
                                                double d = zzl2.getDouble("start_time");
                                                if (d <= 9.223372036854776E18d && d >= -9.223372036854776E18d) {
                                                    j = (long) d;
                                                } else {
                                                    j = -1;
                                                }
                                                long j7 = j;
                                                try {
                                                    double d2 = zzl2.getDouble("end_time");
                                                    if (d2 <= 9.223372036854776E18d && d2 >= -9.223372036854776E18d) {
                                                        j2 = (long) d2;
                                                    } else {
                                                        j2 = -1;
                                                    }
                                                    j3 = j7;
                                                } catch (IOException | JSONException unused3) {
                                                    j3 = j7;
                                                } catch (IllegalStateException unused4) {
                                                    j3 = j7;
                                                    jsonReader.skipValue();
                                                    j2 = j6;
                                                    str2 = str;
                                                }
                                            }
                                        } catch (IllegalStateException unused5) {
                                        }
                                    } else {
                                        jsonReader.skipValue();
                                    }
                                }
                            }
                        }
                    }
                    j2 = j6;
                }
                str2 = str;
            }
            str = str2;
            str2 = str;
        }
        long j8 = j2;
        jsonReader.endObject();
        this.f7372a = list;
        this.f7373c = i;
        if (((Boolean) zzbiq.d.c()).booleanValue()) {
            this.d = -1;
        } else {
            zzbhu zzbhuVar = zzbhy.f4696a;
            if (((Long) zzbhuVar.c()).longValue() > -1) {
                this.d = ((Long) zzbhuVar.c()).intValue();
            } else {
                this.d = i2;
            }
        }
        this.b = str3;
        this.e = str4;
        this.f = i4;
        this.g = j4;
        this.j = zzfhtVar;
        this.h = z;
        this.i = str5;
        this.k = bundle;
        this.l = str6;
        this.m = str7;
        this.n = str8;
        this.o = jSONObject;
        this.p = jSONObject2;
        this.q = str9;
        zzbhu zzbhuVar2 = zzbio.f4721a;
        this.r = ((Long) zzbhuVar2.c()).longValue() > 0 ? ((Long) zzbhuVar2.c()).intValue() : i3;
        this.s = j3;
        this.t = j8;
    }
}
