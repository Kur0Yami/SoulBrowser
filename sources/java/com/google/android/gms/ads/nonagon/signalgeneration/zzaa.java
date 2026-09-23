package com.google.android.gms.ads.nonagon.signalgeneration;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzcdo;
import com.google.android.gms.internal.ads.zzdwy;
import com.google.android.gms.internal.ads.zzdxj;
import com.google.android.gms.internal.ads.zzfic;
import com.google.android.gms.internal.ads.zzfik;
import com.google.android.gms.internal.ads.zzfnt;
import j$.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public final class zzaa {
    public static boolean zza(zzfic zzficVar) {
        return zzg(zzficVar.f7383a.f7378a) != 1;
    }

    public static String zzb(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return "unspecified";
        }
        switch (str.hashCode()) {
            case 1743582862:
                if (str.equals("requester_type_0")) {
                    return "0";
                }
                return str;
            case 1743582863:
                if (str.equals("requester_type_1")) {
                    return "1";
                }
                return str;
            case 1743582864:
                if (str.equals("requester_type_2")) {
                    return "2";
                }
                return str;
            case 1743582865:
                if (str.equals("requester_type_3")) {
                    return "3";
                }
                return str;
            case 1743582866:
                if (str.equals("requester_type_4")) {
                    return "4";
                }
                return str;
            case 1743582867:
                if (str.equals("requester_type_5")) {
                    return "5";
                }
                return str;
            case 1743582868:
                if (str.equals("requester_type_6")) {
                    return "6";
                }
                return str;
            case 1743582869:
                if (str.equals("requester_type_7")) {
                    return "7";
                }
                return str;
            case 1743582870:
                if (str.equals("requester_type_8")) {
                    return "8";
                }
                return str;
            default:
                return str;
        }
    }

    @Nullable
    public static String zzc(com.google.android.gms.ads.internal.client.zzm zzmVar) {
        Bundle bundle;
        if (zzmVar != null && (bundle = zzmVar.zzc) != null) {
            return bundle.getString("query_info_type");
        }
        return "unspecified";
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static zzfnt zzd(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle("com.google.ads.mediation.admob.AdMobAdapter");
        if (bundle2 != null) {
            bundle = bundle2;
        }
        String string = bundle.getString("query_info_type");
        boolean isEmpty = TextUtils.isEmpty(string);
        zzfnt zzfntVar = zzfnt.SCAR_REQUEST_TYPE_UNSPECIFIED;
        if (isEmpty) {
            return zzfntVar;
        }
        switch (string.hashCode()) {
            case 1743582862:
                if (string.equals("requester_type_0")) {
                    return zzfnt.SCAR_REQUEST_TYPE_ADMOB;
                }
                return zzfntVar;
            case 1743582863:
                if (string.equals("requester_type_1")) {
                    return zzfnt.SCAR_REQUEST_TYPE_INBOUND_MEDIATION;
                }
                return zzfntVar;
            case 1743582864:
                if (string.equals("requester_type_2")) {
                    return zzfnt.SCAR_REQUEST_TYPE_GBID;
                }
                return zzfntVar;
            case 1743582865:
                if (string.equals("requester_type_3")) {
                    return zzfnt.SCAR_REQUEST_TYPE_GOLDENEYE;
                }
                return zzfntVar;
            case 1743582866:
                if (string.equals("requester_type_4")) {
                    return zzfnt.SCAR_REQUEST_TYPE_YAVIN;
                }
                return zzfntVar;
            case 1743582867:
                if (string.equals("requester_type_5")) {
                    return zzfnt.SCAR_REQUEST_TYPE_UNITY;
                }
                return zzfntVar;
            case 1743582868:
                if (string.equals("requester_type_6")) {
                    return zzfnt.SCAR_REQUEST_TYPE_PAW;
                }
                return zzfntVar;
            case 1743582869:
                if (string.equals("requester_type_7")) {
                    return zzfnt.SCAR_REQUEST_TYPE_GUILDER;
                }
                return zzfntVar;
            case 1743582870:
                if (string.equals("requester_type_8")) {
                    return zzfnt.SCAR_REQUEST_TYPE_GAM_S2S;
                }
                return zzfntVar;
            default:
                return zzfntVar;
        }
    }

    public static void zze(final zzdxj zzdxjVar, @Nullable zzdwy zzdwyVar, final String str, final Pair... pairArr) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.M7)).booleanValue()) {
            return;
        }
        zzcdo.f5068a.execute(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzz
            @Override // java.lang.Runnable
            public final void run() {
                zzdxj zzdxjVar2 = zzdxj.this;
                zzdxjVar2.getClass();
                ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(zzdxjVar2.f6237a);
                if (!TextUtils.isEmpty("action")) {
                    String str2 = str;
                    if (!TextUtils.isEmpty(str2)) {
                        concurrentHashMap.put("action", str2);
                    }
                }
                int i = 0;
                while (true) {
                    Pair[] pairArr2 = pairArr;
                    if (i < pairArr2.length) {
                        Pair pair = pairArr2[i];
                        String str3 = (String) pair.first;
                        String str4 = (String) pair.second;
                        if (!TextUtils.isEmpty(str3) && !TextUtils.isEmpty(str4)) {
                            concurrentHashMap.put(str3, str4);
                        }
                        i++;
                    } else {
                        zzdxjVar2.a(concurrentHashMap, false);
                        return;
                    }
                }
            }
        });
    }

    public static int zzg(zzfik zzfikVar) {
        if (zzfikVar.s) {
            return 2;
        }
        com.google.android.gms.ads.internal.client.zzm zzmVar = zzfikVar.d;
        com.google.android.gms.ads.internal.client.zzc zzcVar = zzmVar.zzs;
        if (zzcVar == null && zzmVar.zzx == null) {
            return 1;
        }
        if (zzcVar == null || zzmVar.zzx == null) {
            return zzcVar != null ? 3 : 4;
        }
        return 5;
    }
}
