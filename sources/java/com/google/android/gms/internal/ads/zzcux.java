package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import androidx.collection.SimpleArrayMap;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class zzcux implements zzdby, zzdbe {

    /* renamed from: c, reason: collision with root package name */
    public final Context f5492c;
    public final zzcir f;
    public final zzfhr g;
    public final VersionInfoParcel h;
    public zzejb i;
    public boolean j;
    public final zzeiz k;

    public zzcux(Context context, zzcir zzcirVar, zzfhr zzfhrVar, VersionInfoParcel versionInfoParcel, zzeiz zzeizVar) {
        this.f5492c = context;
        this.f = zzcirVar;
        this.g = zzfhrVar;
        this.h = versionInfoParcel;
        this.k = zzeizVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.util.Map, androidx.collection.SimpleArrayMap] */
    public final synchronized void a() {
        zzcir zzcirVar;
        String str;
        zzeiy zzeiyVar;
        zzeiy zzeiyVar2;
        zzeix zzeixVar;
        try {
            zzfhr zzfhrVar = this.g;
            if (zzfhrVar.T && (zzcirVar = this.f) != 0) {
                if (com.google.android.gms.ads.internal.zzt.zzu().zza(this.f5492c)) {
                    VersionInfoParcel versionInfoParcel = this.h;
                    int i = versionInfoParcel.buddyApkVersion;
                    int i2 = versionInfoParcel.clientJarVersion;
                    StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 1 + String.valueOf(i2).length());
                    sb.append(i);
                    sb.append(".");
                    sb.append(i2);
                    String sb2 = sb.toString();
                    zzfin zzfinVar = zzfhrVar.V;
                    if (zzfinVar.a() - 1 != 1) {
                        str = "javascript";
                    } else {
                        str = null;
                    }
                    String str2 = str;
                    if (zzfinVar.a() == 1) {
                        zzeixVar = zzeix.VIDEO;
                        zzeiyVar2 = zzeiy.DEFINED_BY_JAVASCRIPT;
                    } else {
                        int i3 = zzfhrVar.e;
                        zzeix zzeixVar2 = zzeix.HTML_DISPLAY;
                        if (i3 == 1) {
                            zzeiyVar = zzeiy.ONE_PIXEL;
                        } else {
                            zzeiyVar = zzeiy.BEGIN_TO_RENDER;
                        }
                        zzeiyVar2 = zzeiyVar;
                        zzeixVar = zzeixVar2;
                    }
                    zzejb f = com.google.android.gms.ads.internal.zzt.zzu().f(zzcirVar.zzD(), zzeixVar, zzeiyVar2, sb2, str2, zzfhrVar.l0);
                    this.i = f;
                    if (f != null) {
                        zzfrl zzfrlVar = f.f6553a;
                        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.g6)).booleanValue()) {
                            com.google.android.gms.ads.internal.zzt.zzu().e(zzfrlVar, zzcirVar.zzD());
                            ArrayList zzF = zzcirVar.zzF();
                            int size = zzF.size();
                            int i4 = 0;
                            while (i4 < size) {
                                Object obj = zzF.get(i4);
                                i4++;
                                com.google.android.gms.ads.internal.zzt.zzu().i(zzfrlVar, (View) obj);
                            }
                        } else {
                            com.google.android.gms.ads.internal.zzt.zzu().e(zzfrlVar, zzcirVar.zzE());
                        }
                        zzcirVar.O(this.i);
                        com.google.android.gms.ads.internal.zzt.zzu().b(zzfrlVar);
                        this.j = true;
                        zzcirVar.S("onSdkLoaded", new SimpleArrayMap(0));
                    }
                }
            }
        } finally {
        }
    }

    public final boolean b() {
        zzfrt zzfrtVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.h6)).booleanValue()) {
            zzeiz zzeizVar = this.k;
            synchronized (zzeizVar) {
                zzfrtVar = zzeizVar.f;
            }
            if (zzfrtVar != null) {
                return true;
            }
            return false;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.Map, androidx.collection.SimpleArrayMap] */
    @Override // com.google.android.gms.internal.ads.zzdbe
    public final synchronized void n() {
        zzcir zzcirVar;
        if (b()) {
            this.k.c();
            return;
        }
        if (!this.j) {
            a();
        }
        if (this.g.T && this.i != null && (zzcirVar = this.f) != 0) {
            zzcirVar.S("onSdkImpression", new SimpleArrayMap(0));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdby
    public final synchronized void zzg() {
        if (b()) {
            this.k.b();
        } else {
            if (this.j) {
                return;
            }
            a();
        }
    }
}
