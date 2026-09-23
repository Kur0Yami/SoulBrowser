package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.mediation.NativeAdMapper;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public final class zzbue extends zzbtn {

    /* renamed from: c, reason: collision with root package name */
    public final NativeAdMapper f4906c;

    public zzbue(NativeAdMapper nativeAdMapper) {
        this.f4906c = nativeAdMapper;
    }

    @Override // com.google.android.gms.internal.ads.zzbto
    public final void q1(IObjectWrapper iObjectWrapper) {
        this.f4906c.untrackView((View) ObjectWrapper.f2(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzbto
    public final void t(IObjectWrapper iObjectWrapper) {
        this.f4906c.handleClick((View) ObjectWrapper.f2(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzbto
    public final void t0(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        HashMap hashMap = (HashMap) ObjectWrapper.f2(iObjectWrapper2);
        HashMap hashMap2 = (HashMap) ObjectWrapper.f2(iObjectWrapper3);
        this.f4906c.trackViews((View) ObjectWrapper.f2(iObjectWrapper), hashMap, hashMap2);
    }

    @Override // com.google.android.gms.internal.ads.zzbto
    public final float zzA() {
        return this.f4906c.getDuration();
    }

    @Override // com.google.android.gms.internal.ads.zzbto
    public final float zzB() {
        return this.f4906c.getCurrentTime();
    }

    @Override // com.google.android.gms.internal.ads.zzbto
    public final void zzC() {
        this.f4906c.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzbto
    public final String zze() {
        return this.f4906c.getHeadline();
    }

    @Override // com.google.android.gms.internal.ads.zzbto
    public final List zzf() {
        List<NativeAd.Image> images = this.f4906c.getImages();
        ArrayList arrayList = new ArrayList();
        if (images != null) {
            for (NativeAd.Image image : images) {
                arrayList.add(new zzbjj(image.getDrawable(), image.getUri(), image.getScale(), image.zza(), image.zzb(), null));
            }
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzbto
    public final String zzg() {
        return this.f4906c.getBody();
    }

    @Override // com.google.android.gms.internal.ads.zzbto
    public final zzbjy zzh() {
        NativeAd.Image icon = this.f4906c.getIcon();
        if (icon != null) {
            return new zzbjj(icon.getDrawable(), icon.getUri(), icon.getScale(), icon.zza(), icon.zzb(), null);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbto
    public final String zzi() {
        return this.f4906c.getCallToAction();
    }

    @Override // com.google.android.gms.internal.ads.zzbto
    public final String zzj() {
        return this.f4906c.getAdvertiser();
    }

    @Override // com.google.android.gms.internal.ads.zzbto
    public final double zzk() {
        NativeAdMapper nativeAdMapper = this.f4906c;
        if (nativeAdMapper.getStarRating() != null) {
            return nativeAdMapper.getStarRating().doubleValue();
        }
        return -1.0d;
    }

    @Override // com.google.android.gms.internal.ads.zzbto
    public final String zzl() {
        return this.f4906c.getStore();
    }

    @Override // com.google.android.gms.internal.ads.zzbto
    public final String zzm() {
        return this.f4906c.getPrice();
    }

    @Override // com.google.android.gms.internal.ads.zzbto
    public final com.google.android.gms.ads.internal.client.zzed zzn() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbto
    public final zzbjr zzo() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbto
    public final IObjectWrapper zzp() {
        View adChoicesContent = this.f4906c.getAdChoicesContent();
        if (adChoicesContent == null) {
            return null;
        }
        return new ObjectWrapper(adChoicesContent);
    }

    @Override // com.google.android.gms.internal.ads.zzbto
    public final IObjectWrapper zzq() {
        View zza = this.f4906c.zza();
        if (zza == null) {
            return null;
        }
        return new ObjectWrapper(zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbto
    public final IObjectWrapper zzr() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbto
    public final Bundle zzs() {
        return this.f4906c.getExtras();
    }

    @Override // com.google.android.gms.internal.ads.zzbto
    public final boolean zzt() {
        return this.f4906c.getOverrideImpressionRecording();
    }

    @Override // com.google.android.gms.internal.ads.zzbto
    public final boolean zzu() {
        return this.f4906c.getOverrideClickHandling();
    }

    @Override // com.google.android.gms.internal.ads.zzbto
    public final void zzv() {
        this.f4906c.recordImpression();
    }

    @Override // com.google.android.gms.internal.ads.zzbto
    public final float zzz() {
        return this.f4906c.getMediaContentAspectRatio();
    }
}
