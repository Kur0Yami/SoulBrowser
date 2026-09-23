package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class zzeiz {

    /* renamed from: a, reason: collision with root package name */
    public final Context f6549a;
    public final VersionInfoParcel b;

    /* renamed from: c, reason: collision with root package name */
    public final zzfhr f6550c;
    public final zzcir d;
    public final zzdxe e;
    public zzfrt f;

    public zzeiz(Context context, VersionInfoParcel versionInfoParcel, zzfhr zzfhrVar, zzcir zzcirVar, zzdxe zzdxeVar) {
        this.f6549a = context;
        this.b = versionInfoParcel;
        this.f6550c = zzfhrVar;
        this.d = zzcirVar;
        this.e = zzdxeVar;
    }

    public final synchronized boolean a() {
        zzcir zzcirVar;
        String str;
        zzfhr zzfhrVar = this.f6550c;
        if (zzfhrVar.T) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.e6)).booleanValue()) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.h6)).booleanValue() && (zzcirVar = this.d) != null) {
                    if (this.f != null) {
                        int i = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzi("Omid javascript session service already started for ad.");
                        return false;
                    }
                    if (!com.google.android.gms.ads.internal.zzt.zzu().zza(this.f6549a)) {
                        int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzi("Unable to initialize omid.");
                        return false;
                    }
                    zzfin zzfinVar = zzfhrVar.V;
                    zzfinVar.getClass();
                    if (zzfinVar.f7392a.optBoolean((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.j6), true)) {
                        zzfrt h = com.google.android.gms.ads.internal.zzt.zzu().h(this.b, zzcirVar.zzD());
                        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.i6)).booleanValue()) {
                            zzdxe zzdxeVar = this.e;
                            if (h != null) {
                                str = "1";
                            } else {
                                str = "0";
                            }
                            zzdxd a2 = zzdxeVar.a();
                            a2.b("omid_js_session_success", str);
                            a2.c();
                        }
                        if (h == null) {
                            int i3 = com.google.android.gms.ads.internal.util.zze.zza;
                            com.google.android.gms.ads.internal.util.client.zzo.zzi("Unable to create javascript session service.");
                            return false;
                        }
                        int i4 = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzh("Created omid javascript session service.");
                        this.f = h;
                        zzcirVar.g0(this);
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final synchronized void b() {
        zzcir zzcirVar;
        try {
            zzfrt zzfrtVar = this.f;
            if (zzfrtVar != null && (zzcirVar = this.d) != null) {
                ArrayList zzF = zzcirVar.zzF();
                int size = zzF.size();
                int i = 0;
                while (i < size) {
                    Object obj = zzF.get(i);
                    i++;
                    com.google.android.gms.ads.internal.zzt.zzu().a(zzfrtVar, (View) obj);
                }
                zzcirVar.S("onSdkLoaded", zzgvd.k);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void c() {
        zzcir zzcirVar;
        if (this.f != null && (zzcirVar = this.d) != null) {
            zzcirVar.S("onSdkImpression", zzgvd.k);
        }
    }
}
