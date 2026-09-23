package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import androidx.collection.SimpleArrayMap;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class zzdli implements zzdby, com.google.android.gms.ads.internal.overlay.zzr, zzdbe {

    /* renamed from: c, reason: collision with root package name */
    public final Context f5876c;
    public final zzcir f;
    public final zzfhr g;
    public final VersionInfoParcel h;
    public final zzeiz i;
    public zzejb j;

    public zzdli(Context context, zzcir zzcirVar, zzfhr zzfhrVar, VersionInfoParcel versionInfoParcel, zzeiz zzeizVar) {
        this.f5876c = context;
        this.f = zzcirVar;
        this.g = zzfhrVar;
        this.h = versionInfoParcel;
        this.i = zzeizVar;
    }

    public final boolean a() {
        zzfrt zzfrtVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.h6)).booleanValue()) {
            zzeiz zzeizVar = this.i;
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
    /* JADX WARN: Type inference failed for: r1v4, types: [java.util.Map, androidx.collection.SimpleArrayMap] */
    @Override // com.google.android.gms.internal.ads.zzdbe
    public final void n() {
        zzcir zzcirVar;
        if (a()) {
            this.i.c();
        } else if (this.j != null && (zzcirVar = this.f) != 0) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.k6)).booleanValue()) {
                zzcirVar.S("onSdkImpression", new SimpleArrayMap(0));
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdS() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdT(int i) {
        this.j = null;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdo() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdp() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdq() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdv() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdw() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdx() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdy() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdz() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.Map, androidx.collection.SimpleArrayMap] */
    @Override // com.google.android.gms.internal.ads.zzdby
    public final void zzg() {
        zzcir zzcirVar;
        String str;
        zzeiy zzeiyVar;
        zzeiy zzeiyVar2;
        zzeix zzeixVar;
        zzfhr zzfhrVar = this.g;
        if (zzfhrVar.T && (zzcirVar = this.f) != 0) {
            if (com.google.android.gms.ads.internal.zzt.zzu().zza(this.f5876c)) {
                if (a()) {
                    this.i.b();
                    return;
                }
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
                    if (zzfhrVar.Y == 2) {
                        zzeiyVar = zzeiy.UNSPECIFIED;
                    } else {
                        zzeiyVar = zzeiy.BEGIN_TO_RENDER;
                    }
                    zzeiyVar2 = zzeiyVar;
                    zzeixVar = zzeix.HTML_DISPLAY;
                }
                zzejb f = com.google.android.gms.ads.internal.zzt.zzu().f(zzcirVar.zzD(), zzeixVar, zzeiyVar2, sb2, str2, zzfhrVar.l0);
                this.j = f;
                if (f != null) {
                    zzfrl zzfrlVar = f.f6553a;
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.g6)).booleanValue()) {
                        com.google.android.gms.ads.internal.zzt.zzu().e(zzfrlVar, zzcirVar.zzD());
                        ArrayList zzF = zzcirVar.zzF();
                        int size = zzF.size();
                        int i3 = 0;
                        while (i3 < size) {
                            Object obj = zzF.get(i3);
                            i3++;
                            com.google.android.gms.ads.internal.zzt.zzu().i(zzfrlVar, (View) obj);
                        }
                    } else {
                        com.google.android.gms.ads.internal.zzt.zzu().e(zzfrlVar, zzcirVar.zzE());
                    }
                    zzcirVar.O(this.j);
                    com.google.android.gms.ads.internal.zzt.zzu().b(zzfrlVar);
                    zzcirVar.S("onSdkLoaded", new SimpleArrayMap(0));
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.util.Map, androidx.collection.SimpleArrayMap] */
    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzh() {
        zzcir zzcirVar;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.k6)).booleanValue() && (zzcirVar = this.f) != 0) {
            if (this.j != null || a()) {
                if (this.j != null) {
                    zzcirVar.S("onSdkImpression", new SimpleArrayMap(0));
                } else {
                    this.i.c();
                }
            }
        }
    }
}
