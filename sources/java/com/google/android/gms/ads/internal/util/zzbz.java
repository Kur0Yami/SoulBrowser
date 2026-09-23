package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.google.android.gms.internal.ads.zzbgk;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class zzbz {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f3137a = new HashMap();
    public final ArrayList b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final Context f3138c;

    public zzbz(Context context) {
        this.f3138c = context;
    }

    public final synchronized void a(zzbx zzbxVar) {
        this.b.add(zzbxVar);
    }

    public final void zza() {
        SharedPreferences sharedPreferences;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Mb)).booleanValue()) {
            return;
        }
        com.google.android.gms.ads.internal.zzt.zzc();
        final Map zzz = zzs.zzz((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Rb));
        for (String str : zzz.keySet()) {
            synchronized (this) {
                try {
                    HashMap hashMap = this.f3137a;
                    if (!hashMap.containsKey(str)) {
                        if (Objects.equals(str, "__default__")) {
                            sharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.f3138c);
                        } else {
                            sharedPreferences = this.f3138c.getSharedPreferences(str, 0);
                        }
                        zzbw zzbwVar = new zzbw(this, str);
                        hashMap.put(str, zzbwVar);
                        sharedPreferences.registerOnSharedPreferenceChangeListener(zzbwVar);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        a(new zzbx() { // from class: com.google.android.gms.ads.internal.util.zzby
            @Override // com.google.android.gms.ads.internal.util.zzbx
            public final /* synthetic */ void zza(SharedPreferences sharedPreferences2, String str2, String str3) {
                Map map = zzz;
                if (map.containsKey(str2) && ((Set) map.get(str2)).contains(str3)) {
                    com.google.android.gms.ads.internal.zzt.zzh().i().zzy(false);
                }
            }
        });
    }
}
