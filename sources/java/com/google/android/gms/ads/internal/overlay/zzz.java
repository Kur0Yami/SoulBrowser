package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzcdo;
import com.google.android.gms.internal.ads.zzcir;
import com.google.android.gms.internal.ads.zzgns;
import com.google.android.gms.internal.ads.zzgnt;
import com.google.android.gms.internal.ads.zzgnu;
import com.google.android.gms.internal.ads.zzgnv;
import com.google.android.gms.internal.ads.zzgoo;
import com.google.android.gms.internal.ads.zzgor;
import com.google.android.gms.internal.ads.zzgos;
import com.google.android.gms.internal.ads.zzgot;
import com.google.android.gms.internal.ads.zzgpg;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class zzz {
    public zzgor f;

    /* renamed from: c, reason: collision with root package name */
    public zzcir f3070c = null;
    public boolean e = false;

    /* renamed from: a, reason: collision with root package name */
    public String f3069a = null;
    public zzgnu d = null;
    public String b = null;

    public final void a(String str, String str2) {
        com.google.android.gms.ads.internal.util.zze.zza(str);
        if (this.f3070c != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("message", str);
            hashMap.put("action", str2);
            zzcdo.f.execute(new zzy(this, "onError", hashMap));
        }
    }

    public final zzgot b() {
        zzgos c2 = zzgot.c();
        if (((Boolean) zzbd.zzc().a(zzbgk.Qc)).booleanValue() && !TextUtils.isEmpty(this.b)) {
            c2.b(this.b);
        } else {
            String str = this.f3069a;
            if (str != null) {
                c2.a(str);
            } else {
                a("Missing session token and/or appId", "onLMDupdate");
            }
        }
        return c2.c();
    }

    public final synchronized void zza(@Nullable zzcir zzcirVar, Context context) {
        this.f3070c = zzcirVar;
        if (!zzb(context)) {
            a("Unable to bind", "on_play_store_bind");
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("action", "fetch_completed");
        zzcdo.f.execute(new zzy(this, "on_play_store_bind", hashMap));
    }

    public final synchronized boolean zzb(Context context) {
        if (!zzgpg.a(context)) {
            return false;
        }
        try {
            this.d = zzgnv.a(context);
        } catch (NullPointerException e) {
            com.google.android.gms.ads.internal.util.zze.zza("Error connecting LMD Overlay service");
            com.google.android.gms.ads.internal.zzt.zzh().f("LastMileDeliveryOverlay.bindLastMileDeliveryService", e);
        }
        if (this.d == null) {
            this.e = false;
            return false;
        }
        if (this.f == null) {
            this.f = new zzx(this);
        }
        this.e = true;
        return true;
    }

    public final void zzc(@Nullable zzcir zzcirVar, @Nullable zzgoo zzgooVar) {
        if (zzcirVar == null) {
            a("adWebview missing", "onLMDShow");
            return;
        }
        this.f3070c = zzcirVar;
        if (!this.e && !zzb(zzcirVar.getContext())) {
            a("LMDOverlay not bound", "on_play_store_bind");
            return;
        }
        if (((Boolean) zzbd.zzc().a(zzbgk.Qc)).booleanValue()) {
            this.b = zzgooVar.b();
        }
        if (this.f == null) {
            this.f = new zzx(this);
        }
        zzgnu zzgnuVar = this.d;
        if (zzgnuVar != null) {
            zzgnuVar.b(zzgooVar, this.f);
        }
    }

    public final void zzd() {
        zzgnu zzgnuVar;
        if (this.e && (zzgnuVar = this.d) != null) {
            zzgnuVar.c(b(), this.f);
            zzcdo.f.execute(new zzy(this, "onLMDOverlayExpand", new HashMap()));
        } else {
            com.google.android.gms.ads.internal.util.zze.zza("LastMileDelivery not connected");
        }
    }

    public final void zze() {
        zzgnu zzgnuVar;
        if (this.e && (zzgnuVar = this.d) != null) {
            zzgnuVar.a(b(), this.f);
            zzcdo.f.execute(new zzy(this, "onLMDOverlayCollapse", new HashMap()));
        } else {
            com.google.android.gms.ads.internal.util.zze.zza("LastMileDelivery not connected");
        }
    }

    public final void zzf() {
        zzgnu zzgnuVar;
        if (this.e && (zzgnuVar = this.d) != null) {
            zzgns c2 = zzgnt.c();
            if (((Boolean) zzbd.zzc().a(zzbgk.Qc)).booleanValue() && !TextUtils.isEmpty(this.b)) {
                c2.b(this.b);
            } else {
                String str = this.f3069a;
                if (str != null) {
                    c2.a(str);
                } else {
                    a("Missing session token and/or appId", "onLMDupdate");
                }
            }
            zzgnuVar.d(c2.c(), this.f);
            return;
        }
        com.google.android.gms.ads.internal.util.zze.zza("LastMileDelivery not connected");
    }
}
