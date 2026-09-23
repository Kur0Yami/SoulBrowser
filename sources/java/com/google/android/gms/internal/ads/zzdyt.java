package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.JsonReader;
import com.google.android.gms.ads.RequestConfiguration;
import j$.util.Objects;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzdyt extends zzbop {
    public final zzdyw f;
    public final zzdyr g;
    public final HashMap h = new HashMap();

    public zzdyt(zzdyw zzdywVar, zzdyr zzdyrVar) {
        this.f = zzdywVar;
        this.g = zzdyrVar;
    }

    public static com.google.android.gms.ads.internal.client.zzm c5(Map map) {
        com.google.android.gms.ads.internal.client.zzn zznVar = new com.google.android.gms.ads.internal.client.zzn();
        String str = (String) map.get("ad_request");
        if (str == null) {
            return zznVar.zza();
        }
        JsonReader jsonReader = new JsonReader(new StringReader(Uri.decode(str)));
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                switch (nextName.hashCode()) {
                    case -1289032093:
                        if (!nextName.equals("extras")) {
                            break;
                        } else {
                            jsonReader.beginObject();
                            Bundle bundle = new Bundle();
                            while (jsonReader.hasNext()) {
                                bundle.putString(jsonReader.nextName(), jsonReader.nextString());
                            }
                            jsonReader.endObject();
                            zznVar.zzb(bundle);
                            break;
                        }
                    case -839117230:
                        if (!nextName.equals("isTestDevice")) {
                            break;
                        } else {
                            zznVar.zzd(jsonReader.nextBoolean());
                            break;
                        }
                    case -733436947:
                        if (!nextName.equals("tagForUnderAgeOfConsent")) {
                            break;
                        } else if (jsonReader.nextBoolean()) {
                            zznVar.zzf(1);
                            break;
                        } else {
                            zznVar.zzf(0);
                            break;
                        }
                    case -99890337:
                        if (!nextName.equals("httpTimeoutMillis")) {
                            break;
                        } else {
                            zznVar.zzh(jsonReader.nextInt());
                            break;
                        }
                    case 523149226:
                        if (!nextName.equals("keywords")) {
                            break;
                        } else {
                            jsonReader.beginArray();
                            ArrayList arrayList = new ArrayList();
                            while (jsonReader.hasNext()) {
                                arrayList.add(jsonReader.nextString());
                            }
                            jsonReader.endArray();
                            zznVar.zzc(arrayList);
                            break;
                        }
                    case 597632527:
                        if (!nextName.equals("maxAdContentRating")) {
                            break;
                        } else {
                            String nextString = jsonReader.nextString();
                            if (!RequestConfiguration.zza.contains(nextString)) {
                                break;
                            } else {
                                zznVar.zzg(nextString);
                                break;
                            }
                        }
                    case 1411582723:
                        if (!nextName.equals("tagForChildDirectedTreatment")) {
                            break;
                        } else if (jsonReader.nextBoolean()) {
                            zznVar.zze(1);
                            break;
                        } else {
                            zznVar.zze(0);
                            break;
                        }
                }
                jsonReader.skipValue();
            }
            jsonReader.endObject();
        } catch (IOException unused) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzd("Ad Request json was malformed, parsing ended early.");
        }
        com.google.android.gms.ads.internal.client.zzm zza = zznVar.zza();
        Bundle bundle2 = zza.zzm;
        Bundle bundle3 = bundle2.getBundle("com.google.ads.mediation.admob.AdMobAdapter");
        if (bundle3 == null) {
            bundle3 = zza.zzc;
            bundle2.putBundle("com.google.ads.mediation.admob.AdMobAdapter", bundle3);
        }
        return new com.google.android.gms.ads.internal.client.zzm(zza.zza, zza.zzb, bundle3, zza.zzd, zza.zze, zza.zzf, zza.zzg, zza.zzh, zza.zzi, zza.zzj, zza.zzk, zza.zzl, bundle2, zza.zzn, zza.zzo, zza.zzp, zza.zzq, zza.zzr, zza.zzs, zza.zzt, zza.zzu, zza.zzv, zza.zzw, zza.zzx, zza.zzy, zza.zzz, zza.zzA);
    }

    @Override // com.google.android.gms.internal.ads.zzboq
    public final void zze(String str) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.nb)).booleanValue()) {
            return;
        }
        com.google.android.gms.ads.internal.util.zze.zza("Received H5 gmsg: ".concat(String.valueOf(str)));
        Uri parse = Uri.parse(str);
        com.google.android.gms.ads.internal.zzt.zzc();
        Map zzV = com.google.android.gms.ads.internal.util.zzs.zzV(parse);
        String str2 = (String) zzV.get("action");
        if (TextUtils.isEmpty(str2)) {
            com.google.android.gms.ads.internal.util.client.zzo.zzd("H5 gmsg did not contain an action");
            return;
        }
        int hashCode = str2.hashCode();
        HashMap hashMap = this.h;
        zzdyr zzdyrVar = this.g;
        if (hashCode != 579053441) {
            if (hashCode == 871091088) {
                String str3 = "initialize";
                if (str2.equals("initialize")) {
                    hashMap.clear();
                    zzdyrVar.getClass();
                    zzdyrVar.b(new zzdyq(str3));
                    return;
                }
            }
        } else if (str2.equals("dispose_all")) {
            Iterator it = hashMap.values().iterator();
            while (it.hasNext()) {
                ((zzdyn) it.next()).zzc();
            }
            hashMap.clear();
            return;
        }
        String str4 = (String) zzV.get("obj_id");
        try {
            Objects.requireNonNull(str4);
            long parseLong = Long.parseLong(str4);
            int hashCode2 = str2.hashCode();
            String str5 = "rewarded";
            String str6 = "interstitial";
            String str7 = "creation";
            zzdyw zzdywVar = this.f;
            switch (hashCode2) {
                case -1790951212:
                    if (str2.equals("show_interstitial_ad")) {
                        zzdyn zzdynVar = (zzdyn) hashMap.get(Long.valueOf(parseLong));
                        if (zzdynVar == null) {
                            com.google.android.gms.ads.internal.util.client.zzo.zzd("Could not show H5 ad, object ID does not exist");
                            zzdyrVar.getClass();
                            zzdyq zzdyqVar = new zzdyq(str6);
                            zzdyqVar.f6263a = Long.valueOf(parseLong);
                            zzdyqVar.f6264c = "onNativeAdObjectNotAvailable";
                            zzdyrVar.b(zzdyqVar);
                            return;
                        }
                        zzdynVar.zzb();
                        return;
                    }
                    break;
                case -1266374734:
                    if (str2.equals("show_rewarded_ad")) {
                        zzdyn zzdynVar2 = (zzdyn) hashMap.get(Long.valueOf(parseLong));
                        if (zzdynVar2 == null) {
                            com.google.android.gms.ads.internal.util.client.zzo.zzd("Could not show H5 ad, object ID does not exist");
                            zzdyrVar.getClass();
                            zzdyq zzdyqVar2 = new zzdyq(str5);
                            zzdyqVar2.f6263a = Long.valueOf(parseLong);
                            zzdyqVar2.f6264c = "onNativeAdObjectNotAvailable";
                            zzdyrVar.b(zzdyqVar2);
                            return;
                        }
                        zzdynVar2.zzb();
                        return;
                    }
                    break;
                case -257098725:
                    if (str2.equals("load_rewarded_ad")) {
                        zzdyn zzdynVar3 = (zzdyn) hashMap.get(Long.valueOf(parseLong));
                        if (zzdynVar3 == null) {
                            com.google.android.gms.ads.internal.util.client.zzo.zzd("Could not load H5 ad, object ID does not exist");
                            zzdyrVar.getClass();
                            zzdyq zzdyqVar3 = new zzdyq(str5);
                            zzdyqVar3.f6263a = Long.valueOf(parseLong);
                            zzdyqVar3.f6264c = "onNativeAdObjectNotAvailable";
                            zzdyrVar.b(zzdyqVar3);
                            return;
                        }
                        zzdynVar3.a(c5(zzV));
                        return;
                    }
                    break;
                case 393881811:
                    if (str2.equals("create_interstitial_ad")) {
                        if (hashMap.size() >= ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.ob)).intValue()) {
                            com.google.android.gms.ads.internal.util.client.zzo.zzi("Could not create H5 ad, too many existing objects");
                            zzdyrVar.a(parseLong);
                            return;
                        }
                        Long valueOf = Long.valueOf(parseLong);
                        if (hashMap.containsKey(valueOf)) {
                            com.google.android.gms.ads.internal.util.client.zzo.zzd("Could not create H5 ad, object ID already exists");
                            zzdyrVar.a(parseLong);
                            return;
                        }
                        String str8 = (String) zzV.get("ad_unit");
                        if (TextUtils.isEmpty(str8)) {
                            com.google.android.gms.ads.internal.util.client.zzo.zzi("Could not create H5 ad, missing ad unit id");
                            zzdyrVar.a(parseLong);
                            return;
                        }
                        zzcni zzcniVar = (zzcni) zzdywVar.zzc();
                        zzcniVar.c(parseLong);
                        zzcniVar.b(str8);
                        zzcnj zzcnjVar = (zzcnj) zzcniVar.a();
                        long longValue = zzcnjVar.f5303a.longValue();
                        zzcnl zzcnlVar = zzcnjVar.d;
                        hashMap.put(valueOf, new zzdyy(longValue, zzcnlVar.f5307a, new zzdyr(zzcnlVar.b), zzcnjVar.f5304c, zzcnjVar.b));
                        zzdyrVar.getClass();
                        zzdyq zzdyqVar4 = new zzdyq(str7);
                        zzdyqVar4.f6263a = Long.valueOf(parseLong);
                        zzdyqVar4.f6264c = "nativeObjectCreated";
                        zzdyrVar.b(zzdyqVar4);
                        StringBuilder sb = new StringBuilder(String.valueOf(parseLong).length() + 39 + str8.length());
                        a.j(sb, "Created H5 interstitial #", parseLong, " with ad unit ");
                        sb.append(str8);
                        com.google.android.gms.ads.internal.util.zze.zza(sb.toString());
                        return;
                    }
                    break;
                case 585513149:
                    if (str2.equals("load_interstitial_ad")) {
                        zzdyn zzdynVar4 = (zzdyn) hashMap.get(Long.valueOf(parseLong));
                        if (zzdynVar4 == null) {
                            com.google.android.gms.ads.internal.util.client.zzo.zzd("Could not load H5 ad, object ID does not exist");
                            zzdyrVar.getClass();
                            zzdyq zzdyqVar5 = new zzdyq(str6);
                            zzdyqVar5.f6263a = Long.valueOf(parseLong);
                            zzdyqVar5.f6264c = "onNativeAdObjectNotAvailable";
                            zzdyrVar.b(zzdyqVar5);
                            return;
                        }
                        zzdynVar4.a(c5(zzV));
                        return;
                    }
                    break;
                case 1671767583:
                    if (str2.equals("dispose")) {
                        Long valueOf2 = Long.valueOf(parseLong);
                        zzdyn zzdynVar5 = (zzdyn) hashMap.get(valueOf2);
                        if (zzdynVar5 == null) {
                            com.google.android.gms.ads.internal.util.client.zzo.zzd("Could not dispose H5 ad, object ID does not exist");
                            return;
                        }
                        zzdynVar5.zzc();
                        hashMap.remove(valueOf2);
                        StringBuilder sb2 = new StringBuilder(String.valueOf(parseLong).length() + 16);
                        sb2.append("Disposed H5 ad #");
                        sb2.append(parseLong);
                        com.google.android.gms.ads.internal.util.zze.zza(sb2.toString());
                        return;
                    }
                    break;
                case 2109237041:
                    if (str2.equals("create_rewarded_ad")) {
                        if (hashMap.size() >= ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.ob)).intValue()) {
                            com.google.android.gms.ads.internal.util.client.zzo.zzi("Could not create H5 ad, too many existing objects");
                            zzdyrVar.a(parseLong);
                            return;
                        }
                        Long valueOf3 = Long.valueOf(parseLong);
                        if (hashMap.containsKey(valueOf3)) {
                            com.google.android.gms.ads.internal.util.client.zzo.zzd("Could not create H5 ad, object ID already exists");
                            zzdyrVar.a(parseLong);
                            return;
                        }
                        String str9 = (String) zzV.get("ad_unit");
                        if (TextUtils.isEmpty(str9)) {
                            com.google.android.gms.ads.internal.util.client.zzo.zzi("Could not create H5 ad, missing ad unit id");
                            zzdyrVar.a(parseLong);
                            return;
                        }
                        zzcni zzcniVar2 = (zzcni) zzdywVar.zzc();
                        zzcniVar2.c(parseLong);
                        zzcniVar2.b(str9);
                        zzcnj zzcnjVar2 = (zzcnj) zzcniVar2.a();
                        long longValue2 = zzcnjVar2.f5303a.longValue();
                        zzcnl zzcnlVar2 = zzcnjVar2.d;
                        hashMap.put(valueOf3, new zzdzc(longValue2, zzcnlVar2.f5307a, new zzdyr(zzcnlVar2.b), zzcnjVar2.f5304c, zzcnjVar2.b));
                        zzdyrVar.getClass();
                        zzdyq zzdyqVar6 = new zzdyq(str7);
                        zzdyqVar6.f6263a = Long.valueOf(parseLong);
                        zzdyqVar6.f6264c = "nativeObjectCreated";
                        zzdyrVar.b(zzdyqVar6);
                        StringBuilder sb3 = new StringBuilder(String.valueOf(parseLong).length() + 35 + str9.length());
                        a.j(sb3, "Created H5 rewarded #", parseLong, " with ad unit ");
                        sb3.append(str9);
                        com.google.android.gms.ads.internal.util.zze.zza(sb3.toString());
                        return;
                    }
                    break;
            }
            com.google.android.gms.ads.internal.util.client.zzo.zzd("H5 gmsg contained invalid action: ".concat(str2));
        } catch (NullPointerException | NumberFormatException unused) {
            com.google.android.gms.ads.internal.util.client.zzo.zzd("H5 gmsg did not contain a valid object id: ".concat(String.valueOf(str4)));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzboq
    public final void zzf() {
        this.h.clear();
    }
}
