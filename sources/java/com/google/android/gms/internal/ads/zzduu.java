package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.mediation.admob.AdMobAdapter;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzduu {

    /* renamed from: a, reason: collision with root package name */
    public final zzfjg f6166a;
    public final zzdur b;

    public zzduu(zzfjg zzfjgVar, zzdur zzdurVar) {
        this.f6166a = zzfjgVar;
        this.b = zzdurVar;
    }

    public final zzfji a(JSONObject jSONObject, String str) {
        zzbtc a2;
        zzdur zzdurVar = this.b;
        try {
            if ("com.google.ads.mediation.admob.AdMobAdapter".equals(str)) {
                a2 = new zzbua(new AdMobAdapter());
            } else if ("com.google.ads.mediation.admob.AdMobCustomTabsAdapter".equals(str)) {
                a2 = new zzbua(new zzbvr());
            } else {
                zzbsz zzbszVar = (zzbsz) this.f6166a.f7411c.get();
                if (zzbszVar != null) {
                    if ("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str) || "com.google.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
                        try {
                            String string = jSONObject.getString("class_name");
                            if (zzbszVar.zzc(string)) {
                                a2 = zzbszVar.a("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter");
                            } else if (zzbszVar.i(string)) {
                                a2 = zzbszVar.a(string);
                            } else {
                                a2 = zzbszVar.a("com.google.ads.mediation.customevent.CustomEventAdapter");
                            }
                        } catch (JSONException e) {
                            int i = com.google.android.gms.ads.internal.util.zze.zza;
                            com.google.android.gms.ads.internal.util.client.zzo.zzg("Invalid custom event.", e);
                        }
                    }
                    a2 = zzbszVar.a(str);
                } else {
                    int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzi("Unexpected call to adapter creator.");
                    throw new RemoteException();
                }
            }
            zzfji zzfjiVar = new zzfji(a2);
            zzdurVar.a(str, zzfjiVar);
            return zzfjiVar;
        } catch (Throwable th) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ia)).booleanValue()) {
                zzdurVar.a(str, null);
            }
            throw new Exception(th);
        }
    }

    public final zzbuy b(String str) {
        zzbsz zzbszVar = (zzbsz) this.f6166a.f7411c.get();
        if (zzbszVar != null) {
            zzbuy zze = zzbszVar.zze(str);
            zzdur zzdurVar = this.b;
            synchronized (zzdurVar) {
                if (zzdurVar.f6164a.containsKey(str)) {
                    return zze;
                }
                try {
                    zzdurVar.f6164a.put(str, new zzduq(str, zze.zzf(), zze.zzg(), true));
                    return zze;
                } catch (Throwable unused) {
                    return zze;
                }
            }
        }
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzi("Unexpected call to adapter creator.");
        throw new RemoteException();
    }
}
