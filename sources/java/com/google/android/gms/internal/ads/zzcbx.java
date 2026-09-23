package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.common.util.Clock;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class zzcbx {

    /* renamed from: a, reason: collision with root package name */
    public static zzcbx f5032a;

    /* JADX WARN: Type inference failed for: r2v0, types: [com.google.android.gms.internal.ads.zzcbr, java.lang.Object] */
    public static synchronized zzcbx b(Context context) {
        synchronized (zzcbx.class) {
            try {
                zzcbx zzcbxVar = f5032a;
                if (zzcbxVar != null) {
                    return zzcbxVar;
                }
                Context applicationContext = context.getApplicationContext();
                zzbgk.a(applicationContext);
                com.google.android.gms.ads.internal.util.zzj i = com.google.android.gms.ads.internal.zzt.zzh().i();
                i.zza(applicationContext);
                ?? obj = new Object();
                applicationContext.getClass();
                obj.f5024a = applicationContext;
                Clock zzk = com.google.android.gms.ads.internal.zzt.zzk();
                zzk.getClass();
                obj.b = zzk;
                obj.f5025c = i;
                obj.d = com.google.android.gms.ads.internal.zzt.zzD();
                zzcbx a2 = obj.a();
                f5032a = a2;
                zzcbl zzcblVar = (zzcbl) ((zzcbs) a2).f5026c.zzb();
                SharedPreferences sharedPreferences = zzcblVar.b;
                sharedPreferences.registerOnSharedPreferenceChangeListener(zzcblVar);
                zzcblVar.onSharedPreferenceChanged(sharedPreferences, "gad_has_consent_for_cookies");
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.f1)).booleanValue()) {
                    zzcblVar.onSharedPreferenceChanged(sharedPreferences, "IABTCF_TCString");
                } else {
                    zzcblVar.onSharedPreferenceChanged(sharedPreferences, "IABTCF_PurposeConsents");
                }
                final zzccc zzcccVar = (zzccc) ((zzcbs) f5032a).e.zzb();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Z0)).booleanValue()) {
                    com.google.android.gms.ads.internal.zzt.zzc();
                    final Map zzz = com.google.android.gms.ads.internal.util.zzs.zzz((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.a1));
                    Iterator it = zzz.keySet().iterator();
                    while (it.hasNext()) {
                        zzcccVar.b((String) it.next());
                    }
                    zzcccVar.a(new zzcca() { // from class: com.google.android.gms.internal.ads.zzccb
                        @Override // com.google.android.gms.internal.ads.zzcca
                        public final void B(String str, String str2) {
                            zzccc zzcccVar2 = zzccc.this;
                            zzcccVar2.getClass();
                            Map map = zzz;
                            if (map.containsKey(str) && ((Set) map.get(str)).contains(str2)) {
                                zzcbp zzcbpVar = zzcccVar2.d;
                                zzcbpVar.b.a(-1, zzcbpVar.f5022a.currentTimeMillis());
                            }
                        }
                    });
                }
                return f5032a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract zzcbp a();
}
