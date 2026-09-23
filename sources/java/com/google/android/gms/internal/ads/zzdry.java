package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.collection.SimpleArrayMap;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public final class zzdry extends zzbkr {

    /* renamed from: c, reason: collision with root package name */
    public final Context f6083c;
    public final zzdnm f;
    public zzdol g;
    public zzdnh h;

    public zzdry(Context context, zzdnm zzdnmVar, zzdol zzdolVar, zzdnh zzdnhVar) {
        super("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
        this.f6083c = context;
        this.f = zzdnmVar;
        this.g = zzdolVar;
        this.h = zzdnhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbks
    public final void H1(IObjectWrapper iObjectWrapper) {
        zzdnh zzdnhVar;
        Object f2 = ObjectWrapper.f2(iObjectWrapper);
        if ((f2 instanceof View) && this.f.u() != null && (zzdnhVar = this.h) != null) {
            zzdnhVar.h((View) f2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbks
    public final boolean l0() {
        zzdnh zzdnhVar = this.h;
        if (zzdnhVar != null && !zzdnhVar.p.c()) {
            return false;
        }
        zzdnm zzdnmVar = this.f;
        if (zzdnmVar.r() == null || zzdnmVar.p() != null) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzbks
    public final boolean q(IObjectWrapper iObjectWrapper) {
        zzdol zzdolVar;
        Object f2 = ObjectWrapper.f2(iObjectWrapper);
        if (!(f2 instanceof ViewGroup) || (zzdolVar = this.g) == null || !zzdolVar.c((ViewGroup) f2, false)) {
            return false;
        }
        this.f.q().t(new zzdrx(this));
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzbks
    public final String zze(String str) {
        SimpleArrayMap simpleArrayMap;
        zzdnm zzdnmVar = this.f;
        synchronized (zzdnmVar) {
            simpleArrayMap = zzdnmVar.w;
        }
        return (String) simpleArrayMap.get(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbks
    public final zzbjy zzf(String str) {
        SimpleArrayMap simpleArrayMap;
        zzdnm zzdnmVar = this.f;
        synchronized (zzdnmVar) {
            simpleArrayMap = zzdnmVar.v;
        }
        return (zzbjy) simpleArrayMap.get(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbks
    public final List zzg() {
        SimpleArrayMap simpleArrayMap;
        try {
            zzdnm zzdnmVar = this.f;
            synchronized (zzdnmVar) {
                simpleArrayMap = zzdnmVar.v;
            }
            SimpleArrayMap w = zzdnmVar.w();
            String[] strArr = new String[simpleArrayMap.g + w.g];
            int i = 0;
            for (int i2 = 0; i2 < simpleArrayMap.g; i2++) {
                strArr[i] = (String) simpleArrayMap.f(i2);
                i++;
            }
            for (int i3 = 0; i3 < w.g; i3++) {
                strArr[i] = (String) w.f(i3);
                i++;
            }
            return Arrays.asList(strArr);
        } catch (NullPointerException e) {
            com.google.android.gms.ads.internal.zzt.zzh().f("InternalNativeCustomTemplateAdShim.getAvailableAssetNames", e);
            return new ArrayList();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbks
    public final String zzh() {
        return this.f.o();
    }

    @Override // com.google.android.gms.internal.ads.zzbks
    public final void zzi(String str) {
        zzdnh zzdnhVar = this.h;
        if (zzdnhVar != null) {
            synchronized (zzdnhVar) {
                zzdnhVar.n.i(str);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbks
    public final void zzj() {
        zzdnh zzdnhVar = this.h;
        if (zzdnhVar != null) {
            synchronized (zzdnhVar) {
                if (zzdnhVar.y) {
                    return;
                }
                zzdnhVar.n.A();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbks
    public final void zzl() {
        zzdnh zzdnhVar = this.h;
        if (zzdnhVar != null) {
            zzdnhVar.q();
        }
        this.h = null;
        this.g = null;
    }

    @Override // com.google.android.gms.internal.ads.zzbks
    public final IObjectWrapper zzm() {
        return new ObjectWrapper(this.f6083c);
    }

    @Override // com.google.android.gms.internal.ads.zzbks
    public final boolean zzn(IObjectWrapper iObjectWrapper) {
        zzdol zzdolVar;
        Object f2 = ObjectWrapper.f2(iObjectWrapper);
        if ((f2 instanceof ViewGroup) && (zzdolVar = this.g) != null && zzdolVar.c((ViewGroup) f2, true)) {
            this.f.p().t(new zzdrx(this));
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.util.Map, androidx.collection.SimpleArrayMap] */
    @Override // com.google.android.gms.internal.ads.zzbks
    public final boolean zzp() {
        zzdnm zzdnmVar = this.f;
        zzejb u = zzdnmVar.u();
        if (u != null) {
            com.google.android.gms.ads.internal.zzt.zzu().b(u.f6553a);
            if (zzdnmVar.r() != null) {
                zzdnmVar.r().S("onSdkLoaded", new SimpleArrayMap(0));
                return true;
            }
            return true;
        }
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzi("Trying to start OMID session before creation.");
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbks
    public final void zzr() {
        String str;
        try {
            zzdnm zzdnmVar = this.f;
            synchronized (zzdnmVar) {
                str = zzdnmVar.y;
            }
            if (Objects.equals(str, "Google")) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzi("Illegal argument specified for omid partner name.");
            } else if (TextUtils.isEmpty(str)) {
                int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzi("Not starting OMID session. OM partner name has not been configured.");
            } else {
                zzdnh zzdnhVar = this.h;
                if (zzdnhVar != null) {
                    zzdnhVar.g(str, false);
                }
            }
        } catch (NullPointerException e) {
            com.google.android.gms.ads.internal.zzt.zzh().f("InternalNativeCustomTemplateAdShim.initializeDisplayOpenMeasurement", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbks
    public final zzbjv zzs() {
        zzbjv zzbjvVar;
        try {
            zzdnj zzdnjVar = this.h.F;
            synchronized (zzdnjVar) {
                zzbjvVar = zzdnjVar.f5937a;
            }
            return zzbjvVar;
        } catch (NullPointerException e) {
            com.google.android.gms.ads.internal.zzt.zzh().f("InternalNativeCustomTemplateAdShim.getMediaContent", e);
            return null;
        }
    }
}
