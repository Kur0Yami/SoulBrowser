package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.util.JsonReader;
import com.google.android.gms.ads.RequestConfiguration;
import j$.util.Objects;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzfhr {
    public final zzcbh A;
    public final List A0;
    public final String B;
    public final boolean B0;
    public final JSONObject C;
    public final List C0;
    public final JSONObject D;
    public final boolean D0;
    public final String E;
    public final int E0;
    public final String F;
    public final Bundle F0;
    public final String G;
    public final int G0;
    public final String H;
    public final String I;
    public final boolean J;
    public final boolean K;
    public final boolean L;
    public final boolean M;
    public final boolean N;
    public final boolean O;
    public final boolean P;
    public final int Q;
    public final int R;
    public final boolean S;
    public final boolean T;
    public final String U;
    public final zzfin V;
    public final boolean W;
    public final boolean X;
    public final int Y;
    public final String Z;

    /* renamed from: a, reason: collision with root package name */
    public final List f7367a;
    public final int a0;
    public final int b;
    public final String b0;

    /* renamed from: c, reason: collision with root package name */
    public final List f7368c;
    public final boolean c0;
    public final List d;
    public final zzbxe d0;
    public final int e;
    public final com.google.android.gms.ads.internal.client.zzt e0;
    public final List f;
    public final String f0;
    public final List g;
    public final boolean g0;
    public final List h;
    public final JSONObject h0;
    public final List i;
    public final boolean i0;
    public final String j;
    public final JSONObject j0;
    public final String k;
    public final boolean k0;
    public final zzbzy l;
    public final String l0;
    public final List m;
    public final boolean m0;
    public final List n;
    public final String n0;
    public final List o;
    public final String o0;
    public final List p;
    public final String p0;
    public final int q;
    public final boolean q0;
    public final List r;
    public final boolean r0;
    public final zzfhw s;
    public final int s0;
    public final List t;
    public final String t0;
    public final List u;
    public final List u0;
    public final JSONObject v;
    public final boolean v0;
    public final String w;
    public final Map w0;
    public final String x;
    public final com.google.android.gms.ads.internal.util.client.zzv x0;
    public final String y;
    public final com.google.android.gms.ads.internal.util.client.zzw y0;
    public final String z;
    public final double z0;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:8:0x00f3. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v19, types: [com.google.android.gms.internal.ads.zzgta, com.google.android.gms.internal.ads.zzgsx] */
    /* JADX WARN: Type inference failed for: r11v22, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r11v91, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r12v79, types: [com.google.android.gms.internal.ads.zzgta, com.google.android.gms.internal.ads.zzgsx] */
    /* JADX WARN: Type inference failed for: r7v25, types: [java.util.List] */
    public zzfhr(JsonReader jsonReader) {
        String str;
        List list;
        List list2;
        List list3;
        List list4;
        List list5;
        List list6;
        List list7;
        List list8;
        List list9;
        List list10;
        zzdyi zzdyiVar;
        List list11 = Collections.EMPTY_LIST;
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        JSONObject jSONObject4 = new JSONObject();
        JSONObject jSONObject5 = new JSONObject();
        JSONObject jSONObject6 = new JSONObject();
        zzgvs zzgvsVar = zzgtd.f;
        zzgtd zzgtdVar = zzguy.i;
        HashMap hashMap = new HashMap();
        Bundle bundle = new Bundle();
        jsonReader.beginObject();
        List list12 = list11;
        List list13 = list12;
        List list14 = list13;
        List list15 = list14;
        JSONObject jSONObject7 = jSONObject;
        JSONObject jSONObject8 = jSONObject2;
        JSONObject jSONObject9 = jSONObject3;
        JSONObject jSONObject10 = jSONObject4;
        JSONObject jSONObject11 = jSONObject5;
        JSONObject jSONObject12 = jSONObject6;
        zzgtd zzgtdVar2 = zzgtdVar;
        zzgtd zzgtdVar3 = zzgtdVar2;
        zzgtd zzgtdVar4 = zzgtdVar3;
        HashMap hashMap2 = hashMap;
        Bundle bundle2 = bundle;
        String str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        String str3 = str2;
        String str4 = str3;
        String str5 = str4;
        String str6 = str5;
        String str7 = str6;
        String str8 = str7;
        String str9 = str8;
        String str10 = str9;
        String str11 = str10;
        String str12 = str11;
        String str13 = str12;
        String str14 = str13;
        String str15 = str14;
        String str16 = str15;
        String str17 = str16;
        String str18 = str17;
        String str19 = str18;
        String str20 = str19;
        String str21 = str20;
        double d = 0.0d;
        int i = 0;
        int i2 = 0;
        zzbzy zzbzyVar = null;
        int i3 = 0;
        zzfhw zzfhwVar = null;
        zzcbh zzcbhVar = null;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        int i4 = -1;
        int i5 = 0;
        boolean z8 = false;
        boolean z9 = false;
        boolean z10 = false;
        int i6 = 0;
        int i7 = -1;
        boolean z11 = false;
        zzbxe zzbxeVar = null;
        com.google.android.gms.ads.internal.client.zzt zztVar = null;
        boolean z12 = false;
        boolean z13 = false;
        boolean z14 = false;
        String str22 = null;
        boolean z15 = false;
        boolean z16 = false;
        boolean z17 = false;
        boolean z18 = false;
        int i8 = 0;
        boolean z19 = false;
        com.google.android.gms.ads.internal.util.client.zzv zzvVar = null;
        com.google.android.gms.ads.internal.util.client.zzw zzwVar = null;
        int i9 = 2;
        boolean z20 = false;
        boolean z21 = false;
        int i10 = -1;
        List list16 = list15;
        List list17 = list16;
        List list18 = list17;
        List list19 = list18;
        List list20 = list19;
        List list21 = list20;
        List list22 = list21;
        List list23 = list22;
        List list24 = list23;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName == null) {
                str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            } else {
                str = nextName;
            }
            String str23 = "id";
            switch (str.hashCode()) {
                case -2138196627:
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    String str24 = str;
                    list5 = list12;
                    if (str24.equals("ad_source_instance_name")) {
                        str16 = jsonReader.nextString();
                        list12 = list5;
                        list24 = list4;
                        list22 = list2;
                        list21 = list;
                        list23 = list3;
                    }
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case -1980587809:
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    String str25 = str;
                    list5 = list12;
                    if (str25.equals("debug_signals")) {
                        jSONObject8 = com.google.android.gms.ads.internal.util.zzbp.zzd(jsonReader);
                        list12 = list5;
                        list24 = list4;
                        list22 = list2;
                        list21 = list;
                        list23 = list3;
                    }
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case -1965512151:
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    String str26 = str;
                    list5 = list12;
                    if (str26.equals("omid_settings")) {
                        jSONObject10 = com.google.android.gms.ads.internal.util.zzbp.zzd(jsonReader);
                        list12 = list5;
                        list24 = list4;
                        list22 = list2;
                        list21 = list;
                        list23 = list3;
                    }
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case -1964744830:
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    String str27 = str;
                    list5 = list12;
                    if (str27.equals("offline_ad_config")) {
                        if (((Boolean) zzbgk.O9.f()).booleanValue()) {
                            zzwVar = com.google.android.gms.ads.internal.util.client.zzw.zzd(com.google.android.gms.ads.internal.util.zzbp.zzd(jsonReader));
                        } else {
                            jsonReader.skipValue();
                        }
                        list12 = list5;
                        list24 = list4;
                        list22 = list2;
                        list21 = list;
                        list23 = list3;
                    }
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case -1871425831:
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    String str28 = str;
                    list5 = list12;
                    if (str28.equals("recursive_server_response_data")) {
                        str19 = jsonReader.nextString();
                        list12 = list5;
                        list24 = list4;
                        list22 = list2;
                        list21 = list;
                        list23 = list3;
                    }
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case -1843156475:
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    String str29 = str;
                    list5 = list12;
                    if (str29.equals("is_consent")) {
                        z18 = jsonReader.nextBoolean();
                        list12 = list5;
                        list24 = list4;
                        list22 = list2;
                        list21 = list;
                        list23 = list3;
                    }
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case -1840512279:
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    String str30 = str;
                    list5 = list12;
                    if (str30.equals("presentation_urls")) {
                        zzgtdVar3 = com.google.android.gms.ads.internal.util.zzbp.zzb(jsonReader);
                        list12 = list5;
                        list24 = list4;
                        list22 = list2;
                        list21 = list;
                        list23 = list3;
                    }
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case -1828733410:
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    String str31 = str;
                    list5 = list12;
                    if (str31.equals("network_ping_config")) {
                        if (((Boolean) zzbgk.M9.f()).booleanValue()) {
                            zzvVar = com.google.android.gms.ads.internal.util.client.zzv.zzb(com.google.android.gms.ads.internal.util.zzbp.zzd(jsonReader));
                        } else {
                            jsonReader.skipValue();
                        }
                        list12 = list5;
                        list24 = list4;
                        list22 = list2;
                        list21 = list;
                        list23 = list3;
                    }
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case -1812055556:
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    String str32 = str;
                    list5 = list12;
                    if (str32.equals("play_prewarm_options")) {
                        JSONObject zzd = com.google.android.gms.ads.internal.util.zzbp.zzd(jsonReader);
                        zzbxeVar = new zzbxe(zzd.optString("prefetch_url", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), zzd.optBoolean("enable_prewarming", false), zzd.optBoolean("skip_offline_notification_flow", false));
                        list12 = list5;
                        list24 = list4;
                        list22 = list2;
                        list21 = list;
                        list23 = list3;
                    }
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case -1785028569:
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    String str33 = str;
                    list5 = list12;
                    if (str33.equals("parallel_key")) {
                        str21 = jsonReader.nextString();
                        list12 = list5;
                        list24 = list4;
                        list22 = list2;
                        list21 = list;
                        list23 = list3;
                    }
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case -1776946669:
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    String str34 = str;
                    list5 = list12;
                    if (str34.equals("ad_source_name")) {
                        str14 = jsonReader.nextString();
                        list12 = list5;
                        list24 = list4;
                        list22 = list2;
                        list21 = list;
                        list23 = list3;
                    }
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case -1662989631:
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    String str35 = str;
                    list5 = list12;
                    if (str35.equals("is_interscroller")) {
                        z12 = jsonReader.nextBoolean();
                        list12 = list5;
                        list24 = list4;
                        list22 = list2;
                        list21 = list;
                        list23 = list3;
                    }
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case -1620552059:
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    String str36 = str;
                    list5 = list12;
                    if (str36.equals("preload_sort_type")) {
                        int nextInt = jsonReader.nextInt();
                        int[] iArr = {1, 2, 3};
                        int i11 = 0;
                        while (true) {
                            if (i11 < 3) {
                                int i12 = iArr[i11];
                                int i13 = i12 - 1;
                                if (i12 != 0) {
                                    if (i13 == nextInt) {
                                        i9 = i12;
                                    } else {
                                        i11++;
                                    }
                                } else {
                                    throw null;
                                }
                            } else {
                                i9 = 2;
                            }
                        }
                        list12 = list5;
                        list24 = list4;
                        list22 = list2;
                        list21 = list;
                        list23 = list3;
                    } else {
                        jsonReader.skipValue();
                        list12 = list5;
                        list24 = list4;
                        list22 = list2;
                        list21 = list;
                        list23 = list3;
                    }
                case -1620470467:
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    String str37 = str;
                    list5 = list12;
                    if (str37.equals("backend_query_id")) {
                        str11 = jsonReader.nextString();
                        list12 = list5;
                        list24 = list4;
                        list22 = list2;
                        list21 = list;
                        list23 = list3;
                    }
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case -1550155393:
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    String str38 = str;
                    list5 = list12;
                    if (str38.equals("nofill_urls")) {
                        list3 = com.google.android.gms.ads.internal.util.zzbp.zzb(jsonReader);
                        list12 = list5;
                        list24 = list4;
                        list22 = list2;
                        list21 = list;
                        list23 = list3;
                    }
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case -1440104884:
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    String str39 = str;
                    list5 = list12;
                    if (str39.equals("is_custom_close_blocked")) {
                        z6 = jsonReader.nextBoolean();
                        list12 = list5;
                        list24 = list4;
                        list22 = list2;
                        list21 = list;
                        list23 = list3;
                    }
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case -1439500848:
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    String str40 = str;
                    list5 = list12;
                    if (str40.equals("orientation")) {
                        String nextString = jsonReader.nextString();
                        if ("landscape".equalsIgnoreCase(nextString)) {
                            i4 = 6;
                        } else if ("portrait".equalsIgnoreCase(nextString)) {
                            i4 = 7;
                        } else {
                            i4 = -1;
                        }
                        list12 = list5;
                        list24 = list4;
                        list22 = list2;
                        list21 = list;
                        list23 = list3;
                    }
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case -1428969291:
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    String str41 = str;
                    list5 = list12;
                    if (str41.equals("enable_omid")) {
                        z8 = jsonReader.nextBoolean();
                        list12 = list5;
                        list24 = list4;
                        list22 = list2;
                        list21 = list;
                        list23 = list3;
                    }
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case -1406227629:
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    String str42 = str;
                    list5 = list12;
                    if (str42.equals("buffer_click_url_as_ready_to_ping")) {
                        z16 = jsonReader.nextBoolean();
                        list12 = list5;
                        list24 = list4;
                        list22 = list2;
                        list21 = list;
                        list23 = list3;
                    }
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case -1403779768:
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    String str43 = str;
                    list5 = list12;
                    if (str43.equals("showable_impression_type")) {
                        i6 = jsonReader.nextInt();
                        list12 = list5;
                        list24 = list4;
                        list22 = list2;
                        list21 = list;
                        list23 = list3;
                    }
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case -1375413093:
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    String str44 = str;
                    list5 = list12;
                    if (str44.equals("ad_cover")) {
                        jSONObject11 = com.google.android.gms.ads.internal.util.zzbp.zzd(jsonReader);
                        list12 = list5;
                        list24 = list4;
                        list22 = list2;
                        list21 = list;
                        list23 = list3;
                    }
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case -1360811658:
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    String str45 = str;
                    list5 = list12;
                    if (str45.equals("ad_sizes")) {
                        list15 = zzfhs.a(jsonReader);
                        list12 = list5;
                        list24 = list4;
                        list22 = list2;
                        list21 = list;
                        list23 = list3;
                    }
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case -1306015996:
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    String str46 = str;
                    list5 = list12;
                    if (str46.equals("adapters")) {
                        list14 = com.google.android.gms.ads.internal.util.zzbp.zzb(jsonReader);
                        list12 = list5;
                        list24 = list4;
                        list22 = list2;
                        list21 = list;
                        list23 = list3;
                    }
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case -1303332046:
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    String str47 = str;
                    list5 = list12;
                    if (str47.equals("test_mode_enabled")) {
                        z5 = jsonReader.nextBoolean();
                        list12 = list5;
                        list24 = list4;
                        list22 = list2;
                        list21 = list;
                        list23 = list3;
                    }
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case -1289032093:
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    String str48 = str;
                    list5 = list12;
                    if (str48.equals("extras")) {
                        jSONObject9 = com.google.android.gms.ads.internal.util.zzbp.zzd(jsonReader);
                        list12 = list5;
                        list24 = list4;
                        list22 = list2;
                        list21 = list;
                        list23 = list3;
                    }
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case -1240082064:
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    String str49 = str;
                    list5 = list12;
                    if (str49.equals("ad_event_value")) {
                        zztVar = com.google.android.gms.ads.internal.client.zzt.zza(com.google.android.gms.ads.internal.util.zzbp.zzd(jsonReader));
                        list12 = list5;
                        list24 = list4;
                        list22 = list2;
                        list21 = list;
                        list23 = list3;
                    }
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case -1234181075:
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    String str50 = str;
                    list5 = list12;
                    if (str50.equals("allow_pub_rendered_attribution")) {
                        z = jsonReader.nextBoolean();
                        list12 = list5;
                        list24 = list4;
                        list22 = list2;
                        list21 = list;
                        list23 = list3;
                    }
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case -1168140544:
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    String str51 = str;
                    list5 = list12;
                    if (str51.equals("presentation_error_urls")) {
                        list24 = com.google.android.gms.ads.internal.util.zzbp.zzb(jsonReader);
                        list12 = list5;
                        list22 = list2;
                        list21 = list;
                        list23 = list3;
                    }
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case -1152230954:
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    String str52 = str;
                    list5 = list12;
                    if (str52.equals("ad_type")) {
                        String nextString2 = jsonReader.nextString();
                        if ("banner".equals(nextString2)) {
                            i = 1;
                        } else if ("interstitial".equals(nextString2)) {
                            i = 2;
                        } else if ("native_express".equals(nextString2)) {
                            i = 3;
                        } else if ("native".equals(nextString2)) {
                            i = 4;
                        } else if ("rewarded".equals(nextString2)) {
                            i = 5;
                        } else if ("app_open_ad".equals(nextString2)) {
                            i = 6;
                        } else if ("rewarded_interstitial".equals(nextString2)) {
                            i = 7;
                        } else {
                            i = 0;
                        }
                        list12 = list5;
                        list24 = list4;
                        list22 = list2;
                        list21 = list;
                        list23 = list3;
                    }
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case -1146534047:
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    String str53 = str;
                    list5 = list12;
                    if (str53.equals("is_scroll_aware")) {
                        z10 = jsonReader.nextBoolean();
                        list12 = list5;
                        list24 = list4;
                        list22 = list2;
                        list21 = list;
                        list23 = list3;
                    }
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case -1115838944:
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    String str54 = str;
                    list5 = list12;
                    if (str54.equals("fill_urls")) {
                        list22 = com.google.android.gms.ads.internal.util.zzbp.zzb(jsonReader);
                        list12 = list5;
                        list24 = list4;
                        list21 = list;
                        list23 = list3;
                    }
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case -1081936678:
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    String str55 = str;
                    list5 = list12;
                    if (str55.equals("allocation_id")) {
                        str4 = jsonReader.nextString();
                        list12 = list5;
                        list24 = list4;
                        list22 = list2;
                        list21 = list;
                        list23 = list3;
                    }
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case -1078050970:
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    String str56 = str;
                    list5 = list12;
                    if (str56.equals("video_complete_urls")) {
                        list21 = com.google.android.gms.ads.internal.util.zzbp.zzb(jsonReader);
                        list12 = list5;
                        list24 = list4;
                        list22 = list2;
                        list23 = list3;
                    }
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case -1051269058:
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    String str57 = str;
                    list5 = list12;
                    if (str57.equals("active_view")) {
                        str7 = com.google.android.gms.ads.internal.util.zzbp.zzd(jsonReader).toString();
                        list12 = list5;
                        list24 = list4;
                        list22 = list2;
                        list21 = list;
                        list23 = list3;
                    }
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case -982608540:
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    String str58 = str;
                    list5 = list12;
                    if (str58.equals("valid_from_timestamp")) {
                        str3 = jsonReader.nextString();
                        list12 = list5;
                        list24 = list4;
                        list22 = list2;
                        list21 = list;
                        list23 = list3;
                    }
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case -972056451:
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    String str59 = str;
                    list5 = list12;
                    if (str59.equals("ad_source_instance_id")) {
                        str17 = jsonReader.nextString();
                        list12 = list5;
                        list24 = list4;
                        list22 = list2;
                        list21 = list;
                        list23 = list3;
                    }
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case -776859333:
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    String str60 = str;
                    list5 = list12;
                    if (str60.equals("click_urls")) {
                        list16 = com.google.android.gms.ads.internal.util.zzbp.zzb(jsonReader);
                        list12 = list5;
                        list24 = list4;
                        list22 = list2;
                        list21 = list;
                        list23 = list3;
                    }
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case -652881372:
                    if (str.equals("on_device_storage_configs")) {
                        if (((Boolean) zzbgk.K8.f()).booleanValue()) {
                            zzgvs zzgvsVar2 = zzgtd.f;
                            ?? zzgsxVar = new zzgsx(4);
                            jsonReader.beginArray();
                            while (jsonReader.hasNext()) {
                                zzgtd zzgtdVar5 = zzguy.i;
                                jsonReader.beginObject();
                                Long l = null;
                                while (jsonReader.hasNext()) {
                                    zzgtd zzgtdVar6 = zzgtdVar5;
                                    String nextName2 = jsonReader.nextName();
                                    if (Objects.equals(nextName2, str23)) {
                                        l = Long.valueOf(jsonReader.nextLong());
                                        zzgtdVar5 = zzgtdVar6;
                                    } else {
                                        String str61 = str23;
                                        if (Objects.equals(nextName2, "event_types")) {
                                            ?? zzgsxVar2 = new zzgsx(4);
                                            jsonReader.beginArray();
                                            while (jsonReader.hasNext()) {
                                                zzgsxVar2.c(Integer.valueOf(jsonReader.nextInt()));
                                            }
                                            jsonReader.endArray();
                                            zzgtdVar5 = zzgsxVar2.f();
                                        } else {
                                            jsonReader.skipValue();
                                            zzgtdVar5 = zzgtdVar6;
                                        }
                                        str23 = str61;
                                    }
                                }
                                zzgtd zzgtdVar7 = zzgtdVar5;
                                String str62 = str23;
                                jsonReader.endObject();
                                if (l == null || zzgtdVar7.isEmpty()) {
                                    list6 = list21;
                                    list7 = list22;
                                    list8 = list23;
                                    list9 = list24;
                                    list10 = list12;
                                    zzdyiVar = null;
                                } else {
                                    list8 = list23;
                                    list9 = list24;
                                    long longValue = l.longValue();
                                    zzguy zzguyVar = (zzguy) zzgtdVar7;
                                    list10 = list12;
                                    int i14 = zzguyVar.h;
                                    list7 = list22;
                                    int[] iArr2 = new int[i14];
                                    list6 = list21;
                                    for (int i15 = 0; i15 < i14; i15++) {
                                        iArr2[i15] = ((Integer) zzguyVar.get(i15)).intValue();
                                    }
                                    zzdyiVar = new zzdyi(longValue, iArr2);
                                }
                                if (zzdyiVar != null) {
                                    zzgsxVar.c(zzdyiVar);
                                }
                                list12 = list10;
                                str23 = str62;
                                list23 = list8;
                                list24 = list9;
                                list22 = list7;
                                list21 = list6;
                            }
                            list = list21;
                            list3 = list23;
                            jsonReader.endArray();
                            zzgtdVar4 = zzgsxVar.f();
                            list21 = list;
                            list23 = list3;
                        } else {
                            list = list21;
                            list2 = list22;
                            list3 = list23;
                            list4 = list24;
                            list5 = list12;
                            jsonReader.skipValue();
                            list12 = list5;
                            list24 = list4;
                            list22 = list2;
                            list21 = list;
                            list23 = list3;
                        }
                    }
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    list5 = list12;
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                    break;
                case -570101180:
                    if (str.equals("late_load_urls")) {
                        list3 = list23;
                        zzgtdVar2 = com.google.android.gms.ads.internal.util.zzbp.zzb(jsonReader);
                        list23 = list3;
                    }
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    list5 = list12;
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case -544216775:
                    if (str.equals("safe_browsing")) {
                        JSONObject zzd2 = com.google.android.gms.ads.internal.util.zzbp.zzd(jsonReader);
                        list3 = list23;
                        zzcbhVar = new zzcbh(zzd2.optString("click_string", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), zzd2.optString("report_url", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), zzd2.optBoolean("rendered_ad_enabled", false), zzd2.optBoolean("non_malicious_reporting_enabled", false), com.google.android.gms.ads.internal.util.zzbp.zza(zzd2.optJSONArray("allowed_headers"), null), zzd2.optBoolean("protection_enabled", false), zzd2.optBoolean("malicious_reporting_enabled", false), com.google.android.gms.ads.internal.util.zzbp.zza(zzd2.optJSONArray("webview_permissions"), null));
                        list23 = list3;
                    }
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    list5 = list12;
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case -437057161:
                    if (str.equals("imp_urls")) {
                        list17 = com.google.android.gms.ads.internal.util.zzbp.zzb(jsonReader);
                        list3 = list23;
                        list23 = list3;
                    }
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    list5 = list12;
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case -404433734:
                    if (str.equals("rtb_native_required_assets")) {
                        list3 = list23;
                        jSONObject12 = com.google.android.gms.ads.internal.util.zzbp.zzd(jsonReader);
                        list23 = list3;
                    }
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    list5 = list12;
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case -404326515:
                    if (str.equals("render_timeout_ms")) {
                        i5 = jsonReader.nextInt();
                        list3 = list23;
                        list23 = list3;
                    }
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    list5 = list12;
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case -397704715:
                    if (str.equals("ad_close_time_ms")) {
                        i7 = jsonReader.nextInt();
                        list3 = list23;
                        list23 = list3;
                    }
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    list5 = list12;
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case -388807511:
                    if (str.equals("content_url")) {
                        str22 = jsonReader.nextString();
                        list3 = list23;
                        list23 = list3;
                    }
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    list5 = list12;
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case -369773488:
                    if (str.equals("is_close_button_enabled")) {
                        jsonReader.nextBoolean();
                        list = list21;
                        list2 = list22;
                        list3 = list23;
                        list4 = list24;
                        list5 = list12;
                        list12 = list5;
                        list24 = list4;
                        list22 = list2;
                        list21 = list;
                        list23 = list3;
                    }
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    list5 = list12;
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case -213449460:
                    if (str.equals("force_disable_hardware_acceleration")) {
                        z15 = jsonReader.nextBoolean();
                        list3 = list23;
                        list23 = list3;
                    }
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    list5 = list12;
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case -213424028:
                    if (str.equals("watermark")) {
                        str10 = jsonReader.nextString();
                        list3 = list23;
                        list23 = list3;
                    }
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    list5 = list12;
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case -180214626:
                    if (str.equals("native_required_asset_viewability")) {
                        z14 = jsonReader.nextBoolean();
                        list3 = list23;
                        list23 = list3;
                    }
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    list5 = list12;
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case -154616268:
                    if (str.equals("is_offline_ad")) {
                        z13 = jsonReader.nextBoolean();
                        list3 = list23;
                        list23 = list3;
                    }
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    list5 = list12;
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case -29338502:
                    if (str.equals("allow_custom_click_gesture")) {
                        z3 = jsonReader.nextBoolean();
                        list3 = list23;
                        list23 = list3;
                    }
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    list5 = list12;
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case 3107:
                    if (!str.equals("ad")) {
                        list = list21;
                        list2 = list22;
                        list3 = list23;
                        list4 = list24;
                        list5 = list12;
                        jsonReader.skipValue();
                        list12 = list5;
                        list24 = list4;
                        list22 = list2;
                        list21 = list;
                        list23 = list3;
                    } else {
                        list3 = list23;
                        zzfhwVar = new zzfhw(jsonReader);
                        list23 = list3;
                    }
                case 3355:
                    if (str.equals("id")) {
                        str5 = jsonReader.nextString();
                        list3 = list23;
                        list23 = list3;
                    }
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    list5 = list12;
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case 3076010:
                    if (str.equals("data")) {
                        list3 = list23;
                        jSONObject7 = com.google.android.gms.ads.internal.util.zzbp.zzd(jsonReader);
                        list23 = list3;
                    }
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    list5 = list12;
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case 37109963:
                    if (str.equals("request_id")) {
                        str18 = jsonReader.nextString();
                        list3 = list23;
                        list23 = list3;
                    }
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    list5 = list12;
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case 63195984:
                    if (str.equals("render_test_label")) {
                        z4 = jsonReader.nextBoolean();
                        list3 = list23;
                        list23 = list3;
                    }
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    list5 = list12;
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case 107433883:
                    if (str.equals("qdata")) {
                        str6 = jsonReader.nextString();
                        list3 = list23;
                        list23 = list3;
                    }
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    list5 = list12;
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case 230323073:
                    if (str.equals("ad_load_urls")) {
                        list18 = com.google.android.gms.ads.internal.util.zzbp.zzb(jsonReader);
                        list3 = list23;
                        list23 = list3;
                    }
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    list5 = list12;
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case 418392395:
                    if (str.equals("is_closable_area_disabled")) {
                        z7 = jsonReader.nextBoolean();
                        list3 = list23;
                        list23 = list3;
                    }
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    list5 = list12;
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case 542250332:
                    if (str.equals("consent_form_action_identifier")) {
                        i8 = jsonReader.nextInt();
                        list3 = list23;
                        list23 = list3;
                    }
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    list5 = list12;
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case 549176928:
                    if (str.equals("presentation_error_timeout_ms")) {
                        i3 = jsonReader.nextInt();
                        list3 = list23;
                        list23 = list3;
                    }
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    list5 = list12;
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case 597473788:
                    if (str.equals("debug_dialog_string")) {
                        str8 = jsonReader.nextString();
                        list3 = list23;
                        list23 = list3;
                    }
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    list5 = list12;
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case 639133141:
                    if (str.equals("response_info_extras_override")) {
                        if (((Boolean) zzbgk.E7.f()).booleanValue()) {
                            try {
                                Bundle zzl = com.google.android.gms.ads.internal.util.zzbp.zzl(com.google.android.gms.ads.internal.util.zzbp.zzd(jsonReader));
                                if (zzl != null) {
                                    bundle2 = zzl;
                                }
                                list3 = list23;
                            } catch (IllegalStateException unused) {
                                jsonReader.skipValue();
                            }
                            list23 = list3;
                        } else {
                            jsonReader.skipValue();
                        }
                        list = list21;
                        list2 = list22;
                        list3 = list23;
                        list4 = list24;
                        list5 = list12;
                        list12 = list5;
                        list24 = list4;
                        list22 = list2;
                        list21 = list;
                        list23 = list3;
                    }
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    list5 = list12;
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case 754887508:
                    if (str.equals("container_sizes")) {
                        list3 = list23;
                        list13 = zzfhs.a(jsonReader);
                        list23 = list3;
                    }
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    list5 = list12;
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case 791122864:
                    if (str.equals("impression_type")) {
                        int nextInt2 = jsonReader.nextInt();
                        if (nextInt2 != 0 && nextInt2 != 1 && nextInt2 != 3 && nextInt2 != 4) {
                            i2 = 0;
                        } else {
                            i2 = nextInt2;
                        }
                        list3 = list23;
                        list23 = list3;
                    }
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    list5 = list12;
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case 805095541:
                    if (str.equals("analytics_event_name_to_parameters_map")) {
                        if (((Boolean) zzbgk.I0.f()).booleanValue()) {
                            list3 = list23;
                            hashMap2 = com.google.android.gms.ads.internal.util.zzbp.zzc(jsonReader);
                            list23 = list3;
                        } else {
                            jsonReader.skipValue();
                            list = list21;
                            list2 = list22;
                            list3 = list23;
                            list4 = list24;
                            list5 = list12;
                            list12 = list5;
                            list24 = list4;
                            list22 = list2;
                            list21 = list;
                            list23 = list3;
                        }
                    }
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    list5 = list12;
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case 1010584092:
                    if (str.equals("transaction_id")) {
                        str2 = jsonReader.nextString();
                        list3 = list23;
                        list23 = list3;
                    }
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    list5 = list12;
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case 1100650276:
                    if (str.equals("rewards")) {
                        zzbzyVar = zzbzy.F(com.google.android.gms.ads.internal.util.zzbp.zze(jsonReader));
                        list3 = list23;
                        list23 = list3;
                    }
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    list5 = list12;
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case 1141602460:
                    if (str.equals("adapter_response_info_key")) {
                        str20 = jsonReader.nextString();
                        list3 = list23;
                        list23 = list3;
                    }
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    list5 = list12;
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case 1186014765:
                    if (str.equals("cache_hit_urls")) {
                        com.google.android.gms.ads.internal.util.zzbp.zzb(jsonReader);
                        list = list21;
                        list2 = list22;
                        list3 = list23;
                        list4 = list24;
                        list5 = list12;
                        list12 = list5;
                        list24 = list4;
                        list22 = list2;
                        list21 = list;
                        list23 = list3;
                    }
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    list5 = list12;
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case 1303622534:
                    if (str.equals("preload_sort_value")) {
                        list3 = list23;
                        d = jsonReader.nextDouble();
                        list23 = list3;
                    }
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    list5 = list12;
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case 1321720943:
                    if (str.equals("allow_pub_owned_ad_view")) {
                        z2 = jsonReader.nextBoolean();
                        list3 = list23;
                        list23 = list3;
                    }
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    list5 = list12;
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case 1422388341:
                    if (str.equals("is_collapsible")) {
                        z17 = jsonReader.nextBoolean();
                        list3 = list23;
                        list23 = list3;
                    }
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    list5 = list12;
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case 1437255331:
                    if (str.equals("ad_source_id")) {
                        str15 = jsonReader.nextString();
                        list3 = list23;
                        list23 = list3;
                    }
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    list5 = list12;
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case 1556932485:
                    if (str.equals("post_click_lifecycle_monitoring_duration_ms")) {
                        if (((Boolean) zzbgk.je.f()).booleanValue()) {
                            i10 = jsonReader.nextInt();
                            list3 = list23;
                            list23 = list3;
                        } else {
                            jsonReader.skipValue();
                            list = list21;
                            list2 = list22;
                            list3 = list23;
                            list4 = list24;
                            list5 = list12;
                            list12 = list5;
                            list24 = list4;
                            list22 = list2;
                            list21 = list;
                            list23 = list3;
                        }
                    }
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    list5 = list12;
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case 1565514205:
                    if (str.equals("adapter_only_third_party_impression")) {
                        z21 = jsonReader.nextBoolean();
                        list3 = list23;
                        list23 = list3;
                    }
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    list5 = list12;
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case 1637553475:
                    if (str.equals("bid_response")) {
                        str9 = jsonReader.nextString();
                        list3 = list23;
                        list23 = list3;
                    }
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    list5 = list12;
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case 1638957285:
                    if (str.equals("video_start_urls")) {
                        list19 = com.google.android.gms.ads.internal.util.zzbp.zzb(jsonReader);
                        list3 = list23;
                        list23 = list3;
                    }
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    list5 = list12;
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case 1686319423:
                    if (str.equals("ad_network_class_name")) {
                        str13 = jsonReader.nextString();
                        list3 = list23;
                        list23 = list3;
                    }
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    list5 = list12;
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case 1688341040:
                    if (str.equals("video_reward_urls")) {
                        list20 = com.google.android.gms.ads.internal.util.zzbp.zzb(jsonReader);
                        list3 = list23;
                        list23 = list3;
                    }
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    list5 = list12;
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case 1799285870:
                    if (str.equals("use_third_party_container_height")) {
                        z11 = jsonReader.nextBoolean();
                        list3 = list23;
                        list23 = list3;
                    }
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    list5 = list12;
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case 1839650832:
                    if (str.equals("renderers")) {
                        list11 = com.google.android.gms.ads.internal.util.zzbp.zzb(jsonReader);
                        list3 = list23;
                        list23 = list3;
                    }
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    list5 = list12;
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case 1875425491:
                    if (str.equals("is_analytics_logging_enabled")) {
                        z9 = jsonReader.nextBoolean();
                        list3 = list23;
                        list23 = list3;
                    }
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    list5 = list12;
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case 2068142375:
                    if (str.equals("rule_line_external_id")) {
                        str12 = jsonReader.nextString();
                        list3 = list23;
                        list23 = list3;
                    }
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    list5 = list12;
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case 2072888499:
                    if (str.equals("manual_tracking_urls")) {
                        list3 = list23;
                        list12 = com.google.android.gms.ads.internal.util.zzbp.zzb(jsonReader);
                        list23 = list3;
                    }
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    list5 = list12;
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case 2075506442:
                    if (str.equals("render_serially")) {
                        z19 = jsonReader.nextBoolean();
                        list3 = list23;
                        list23 = list3;
                    }
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    list5 = list12;
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                case 2117205836:
                    if (str.equals("flow_control")) {
                        z20 = jsonReader.nextBoolean();
                        list3 = list23;
                        list23 = list3;
                    }
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    list5 = list12;
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
                default:
                    list = list21;
                    list2 = list22;
                    list3 = list23;
                    list4 = list24;
                    list5 = list12;
                    jsonReader.skipValue();
                    list12 = list5;
                    list24 = list4;
                    list22 = list2;
                    list21 = list;
                    list23 = list3;
            }
        }
        jsonReader.endObject();
        this.f7367a = list11;
        this.b = i;
        this.f7368c = list16;
        this.d = list17;
        this.f = list18;
        this.e = i2;
        this.g = list19;
        this.h = list20;
        this.i = list21;
        this.j = str2;
        this.k = str3;
        this.l = zzbzyVar;
        this.m = list22;
        this.n = list23;
        this.o = list24;
        this.p = list12;
        this.q = i3;
        this.r = list13;
        this.s = zzfhwVar;
        this.t = list14;
        this.u = list15;
        this.w = str4;
        this.v = jSONObject7;
        this.x = str5;
        this.y = str6;
        this.z = str7;
        this.A = zzcbhVar;
        this.B = str8;
        this.C = jSONObject8;
        this.D = jSONObject9;
        this.J = z;
        this.K = z2;
        this.L = z3;
        this.M = z4;
        this.N = z5;
        this.O = z6;
        this.P = z7;
        this.Q = i4;
        this.R = i5;
        this.T = z8;
        this.U = str9;
        this.V = new zzfin(jSONObject10);
        this.W = z9;
        this.X = z10;
        this.Y = i6;
        this.Z = str10;
        this.a0 = i7;
        this.b0 = str11;
        this.c0 = z11;
        this.d0 = zzbxeVar;
        this.e0 = zztVar;
        this.f0 = str12;
        this.g0 = z12;
        this.h0 = jSONObject11;
        this.E = str13;
        this.F = str14;
        this.G = str15;
        this.H = str16;
        this.I = str17;
        this.i0 = z13;
        this.j0 = jSONObject12;
        this.k0 = z14;
        this.l0 = str22;
        this.m0 = z15;
        this.S = z16;
        this.n0 = str18;
        this.o0 = str19;
        this.p0 = str20;
        this.q0 = z17;
        this.r0 = z18;
        this.s0 = i8;
        this.u0 = zzgtdVar2;
        this.t0 = str21;
        this.v0 = z19;
        this.w0 = hashMap2;
        this.x0 = zzvVar;
        this.y0 = zzwVar;
        this.z0 = d;
        this.G0 = i9;
        this.A0 = zzgtdVar3;
        this.B0 = z20;
        this.C0 = zzgtdVar4;
        this.D0 = z21;
        this.E0 = i10;
        this.F0 = bundle2;
    }

    public static String a(int i) {
        switch (i) {
            case 1:
                return "BANNER";
            case 2:
                return "INTERSTITIAL";
            case 3:
                return "NATIVE_EXPRESS";
            case 4:
                return "NATIVE";
            case 5:
                return "REWARDED";
            case 6:
                return "APP_OPEN_AD";
            case 7:
                return "REWARDED_INTERSTITIAL";
            default:
                return "UNKNOWN";
        }
    }

    public final boolean b() {
        return this.i0 || this.y0 != null;
    }
}
