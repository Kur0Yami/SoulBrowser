package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;

/* loaded from: classes.dex */
public final class zzeaf {

    /* renamed from: a, reason: collision with root package name */
    public final zzdzp f6307a;
    public final zzdur b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f6308c = new Object();
    public final ArrayList d = new ArrayList();
    public boolean e;

    public zzeaf(zzdzp zzdzpVar, zzdur zzdurVar) {
        this.f6307a = zzdzpVar;
        this.b = zzdurVar;
    }

    public final JSONArray a() {
        JSONArray jSONArray = new JSONArray();
        synchronized (this.f6308c) {
            try {
                if (!this.e) {
                    zzdzp zzdzpVar = this.f6307a;
                    if (zzdzpVar.b) {
                        b(zzdzpVar.b());
                    } else {
                        zzead zzeadVar = new zzead(this);
                        zzdzp zzdzpVar2 = this.f6307a;
                        zzdzpVar2.getClass();
                        zzdzpVar2.e.f5072c.k(new zzdzo(zzdzpVar2, zzeadVar), zzdzpVar2.j);
                        return jSONArray;
                    }
                }
                ArrayList arrayList = this.d;
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    jSONArray.put(((zzeae) obj).a());
                }
                return jSONArray;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(List list) {
        String str;
        boolean z;
        String str2;
        zzbvn zzbvnVar;
        zzduq b;
        zzbvn zzbvnVar2;
        synchronized (this.f6308c) {
            try {
                if (this.e) {
                    return;
                }
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    zzbpm zzbpmVar = (zzbpm) it.next();
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ha)).booleanValue()) {
                        zzduq b2 = this.b.b(zzbpmVar.f4820c);
                        if (b2 != null && (zzbvnVar2 = b2.f6163c) != null) {
                            str = zzbvnVar2.toString();
                        }
                        str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                    } else {
                        str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                    }
                    String str3 = str;
                    if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ia)).booleanValue() || (b = this.b.b(zzbpmVar.f4820c)) == null || !b.d) {
                        z = false;
                    } else {
                        z = true;
                    }
                    ArrayList arrayList = this.d;
                    String str4 = zzbpmVar.f4820c;
                    zzduq b3 = this.b.b(str4);
                    if (b3 != null && (zzbvnVar = b3.b) != null) {
                        str2 = zzbvnVar.toString();
                        arrayList.add(new zzeae(str4, str3, str2, zzbpmVar.f ? 1 : 0, zzbpmVar.h, zzbpmVar.g, z));
                    }
                    str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                    arrayList.add(new zzeae(str4, str3, str2, zzbpmVar.f ? 1 : 0, zzbpmVar.h, zzbpmVar.g, z));
                }
                this.e = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
