package com.google.android.gms.ads.internal.client;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.h5.OnH5AdsEventListener;
import com.google.android.gms.internal.ads.zzbkc;
import com.google.android.gms.internal.ads.zzbki;
import com.google.android.gms.internal.ads.zzblu;
import com.google.android.gms.internal.ads.zzblv;
import com.google.android.gms.internal.ads.zzboq;
import com.google.android.gms.internal.ads.zzbsz;
import com.google.android.gms.internal.ads.zzbwr;
import com.google.android.gms.internal.ads.zzbwv;
import com.google.android.gms.internal.ads.zzbwy;
import com.google.android.gms.internal.ads.zzbxx;
import com.google.android.gms.internal.ads.zzcaf;
import com.google.android.gms.internal.ads.zzcar;
import com.google.android.gms.internal.ads.zzccj;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class zzaz {

    /* renamed from: a, reason: collision with root package name */
    public final zzk f3001a;
    public final zzi b;

    /* renamed from: c, reason: collision with root package name */
    public final zzff f3002c;
    public final zzblu d;
    public final zzbwv e;
    public final zzblv f;
    public zzbxx g;
    public final zzl h;

    public zzaz(zzk zzkVar, zzi zziVar, zzff zzffVar, zzblu zzbluVar, zzcar zzcarVar, zzbwv zzbwvVar, zzblv zzblvVar, zzl zzlVar) {
        this.f3001a = zzkVar;
        this.b = zziVar;
        this.f3002c = zzffVar;
        this.d = zzbluVar;
        this.e = zzbwvVar;
        this.f = zzblvVar;
        this.h = zzlVar;
    }

    public static /* synthetic */ void a(Context context, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("action", "no_ads_fallback");
        bundle.putString("flow", str);
        zzbb.zza().zzh(context, zzbb.zzg().afmaVersion, "gmob-apps", bundle, true);
    }

    public final zzbx zza(Context context, zzr zzrVar, String str, zzbsz zzbszVar) {
        return (zzbx) new zzam(this, context, zzrVar, str, zzbszVar).d(context, false);
    }

    public final zzbx zzb(Context context, zzr zzrVar, String str, zzbsz zzbszVar) {
        return (zzbx) new zzao(this, context, zzrVar, str, zzbszVar).d(context, false);
    }

    public final zzbt zzc(Context context, String str, zzbsz zzbszVar) {
        return (zzbt) new zzaq(this, context, str, zzbszVar).d(context, false);
    }

    public final zzck zzd(Context context, zzbsz zzbszVar) {
        return (zzck) new zzas(this, context, zzbszVar).d(context, false);
    }

    public final zzbkc zze(Context context, FrameLayout frameLayout, FrameLayout frameLayout2) {
        return (zzbkc) new zzaw(this, frameLayout, frameLayout2, context).d(context, false);
    }

    public final zzbki zzf(View view, HashMap hashMap, HashMap hashMap2) {
        return (zzbki) new zzay(this, view, hashMap, hashMap2).d(view.getContext(), false);
    }

    public final zzcaf zzg(Context context, String str, zzbsz zzbszVar) {
        return (zzcaf) new zzaa(this, context, str, zzbszVar).d(context, false);
    }

    @Nullable
    public final zzbwy zzh(Activity activity) {
        zzac zzacVar = new zzac(this, activity);
        Intent intent = activity.getIntent();
        boolean z = false;
        if (!intent.hasExtra("com.google.android.gms.ads.internal.overlay.useClientJar")) {
            com.google.android.gms.ads.internal.util.client.zzo.zzf("useClientJar flag not found in activity intent extras.");
        } else {
            z = intent.getBooleanExtra("com.google.android.gms.ads.internal.overlay.useClientJar", false);
        }
        return (zzbwy) zzacVar.d(activity, z);
    }

    @Nullable
    public final zzdw zzi(Context context, zzbsz zzbszVar) {
        return (zzdw) new zzae(this, context, zzbszVar).d(context, false);
    }

    @Nullable
    public final zzccj zzj(Context context, zzbsz zzbszVar) {
        return (zzccj) new zzag(this, context, zzbszVar).d(context, false);
    }

    @Nullable
    public final zzbwr zzk(Context context, zzbsz zzbszVar) {
        return (zzbwr) new zzai(this, context, zzbszVar).d(context, false);
    }

    public final zzboq zzl(Context context, zzbsz zzbszVar, OnH5AdsEventListener onH5AdsEventListener) {
        return (zzboq) new zzak(this, context, zzbszVar, onH5AdsEventListener).d(context, false);
    }
}
