package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
@Deprecated
/* loaded from: classes.dex */
public final class zzbgz {

    /* renamed from: a, reason: collision with root package name */
    public final LinkedList f4671a = new LinkedList();
    public final LinkedHashMap b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f4672c;

    public zzbgz(String str) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.b = linkedHashMap;
        this.f4672c = new Object();
        linkedHashMap.put("action", "make_wv");
        linkedHashMap.put("ad_format", str);
    }

    public final void a(zzbgw zzbgwVar, long j, String... strArr) {
        synchronized (this.f4672c) {
            this.f4671a.add(new zzbgw(j, strArr[0], zzbgwVar));
        }
    }

    public final zzbgy b() {
        zzbgy zzbgyVar;
        boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.u2)).booleanValue();
        StringBuilder sb = new StringBuilder();
        HashMap hashMap = new HashMap();
        synchronized (this.f4672c) {
            try {
                LinkedList<zzbgw> linkedList = this.f4671a;
                for (zzbgw zzbgwVar : linkedList) {
                    long j = zzbgwVar.f4667a;
                    String str = zzbgwVar.b;
                    zzbgw zzbgwVar2 = zzbgwVar.f4668c;
                    if (zzbgwVar2 != null && j > 0) {
                        long j2 = j - zzbgwVar2.f4667a;
                        sb.append(str);
                        sb.append('.');
                        sb.append(j2);
                        sb.append(',');
                        if (booleanValue) {
                            if (!hashMap.containsKey(Long.valueOf(zzbgwVar2.f4667a))) {
                                hashMap.put(Long.valueOf(zzbgwVar2.f4667a), new StringBuilder(str));
                            } else {
                                StringBuilder sb2 = (StringBuilder) hashMap.get(Long.valueOf(zzbgwVar2.f4667a));
                                sb2.append('+');
                                sb2.append(str);
                            }
                        }
                    }
                }
                linkedList.clear();
                String str2 = null;
                if (!TextUtils.isEmpty(null)) {
                    sb.append((String) null);
                } else if (sb.length() > 0) {
                    sb.setLength(sb.length() - 1);
                }
                StringBuilder sb3 = new StringBuilder();
                if (booleanValue) {
                    for (Map.Entry entry : hashMap.entrySet()) {
                        sb3.append((CharSequence) entry.getValue());
                        sb3.append('.');
                        sb3.append((((Long) entry.getKey()).longValue() - com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime()) + com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis());
                        sb3.append(',');
                    }
                    if (sb3.length() > 0) {
                        sb3.setLength(sb3.length() - 1);
                    }
                    str2 = sb3.toString();
                }
                zzbgyVar = new zzbgy(sb.toString(), str2);
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzbgyVar;
    }

    public final void c(String str, String str2) {
        zzbgp a2;
        if (!TextUtils.isEmpty(str2) && (a2 = com.google.android.gms.ads.internal.zzt.zzh().a()) != null) {
            synchronized (this.f4672c) {
                zzbgv zzbgvVar = (zzbgv) a2.f4664c.get(str);
                if (zzbgvVar == null) {
                    zzbgvVar = zzbgv.f4665a;
                }
                LinkedHashMap linkedHashMap = this.b;
                linkedHashMap.put(str, zzbgvVar.a((String) linkedHashMap.get(str), str2));
            }
        }
    }
}
