package com.google.android.gms.internal.ads;

import android.location.Location;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.mediation.NativeMediationAdRequest;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class zzbuf implements NativeMediationAdRequest {

    /* renamed from: a, reason: collision with root package name */
    public final Date f4907a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final Set f4908c;
    public final boolean d;
    public final Location e;
    public final int f;
    public final zzbjn g;
    public final boolean i;
    public final ArrayList h = new ArrayList();
    public final HashMap j = new HashMap();

    public zzbuf(Date date, int i, HashSet hashSet, Location location, boolean z, int i2, zzbjn zzbjnVar, List list, boolean z2) {
        this.f4907a = date;
        this.b = i;
        this.f4908c = hashSet;
        this.e = location;
        this.d = z;
        this.f = i2;
        this.g = zzbjnVar;
        this.i = z2;
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                if (str.startsWith("custom:")) {
                    String[] split2 = str.split(":", 3);
                    if (split2.length == 3) {
                        String str2 = split2[2];
                        if ("true".equals(str2)) {
                            this.j.put(split2[1], Boolean.TRUE);
                        } else if ("false".equals(str2)) {
                            this.j.put(split2[1], Boolean.FALSE);
                        }
                    }
                } else {
                    this.h.add(str);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final float getAdVolume() {
        return com.google.android.gms.ads.internal.client.zzex.zzb().zzg();
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final Date getBirthday() {
        return this.f4907a;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final int getGender() {
        return this.b;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final Set getKeywords() {
        return this.f4908c;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final Location getLocation() {
        return this.e;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final NativeAdOptions getNativeAdOptions() {
        NativeAdOptions.Builder builder = new NativeAdOptions.Builder();
        zzbjn zzbjnVar = this.g;
        if (zzbjnVar == null) {
            return builder.build();
        }
        int i = zzbjnVar.f4743c;
        if (i != 2) {
            if (i != 3) {
                if (i == 4) {
                    builder.setRequestCustomMuteThisAd(zzbjnVar.k);
                    builder.setMediaAspectRatio(zzbjnVar.l);
                }
                builder.setReturnUrlsForImageAssets(zzbjnVar.f);
                builder.setImageOrientation(zzbjnVar.g);
                builder.setRequestMultipleImages(zzbjnVar.h);
                return builder.build();
            }
            com.google.android.gms.ads.internal.client.zzga zzgaVar = zzbjnVar.j;
            if (zzgaVar != null) {
                builder.setVideoOptions(new VideoOptions(zzgaVar));
            }
        }
        builder.setAdChoicesPlacement(zzbjnVar.i);
        builder.setReturnUrlsForImageAssets(zzbjnVar.f);
        builder.setImageOrientation(zzbjnVar.g);
        builder.setRequestMultipleImages(zzbjnVar.h);
        return builder.build();
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final com.google.android.gms.ads.nativead.NativeAdOptions getNativeAdRequestOptions() {
        return zzbjn.F(this.g);
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean isAdMuted() {
        return com.google.android.gms.ads.internal.client.zzex.zzb().zzi();
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final boolean isDesignedForFamilies() {
        return this.i;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final boolean isTesting() {
        return this.d;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean isUnifiedNativeAdRequested() {
        if (this.h.contains("6")) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final int taggedForChildDirectedTreatment() {
        return this.f;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean zza() {
        if (this.h.contains("3")) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final Map zzb() {
        return this.j;
    }
}
