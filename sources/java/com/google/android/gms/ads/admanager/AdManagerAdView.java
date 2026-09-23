package com.google.android.gms.ads.admanager;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresPermission;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.BaseAdView;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzbx;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzbii;
import com.google.android.gms.internal.ads.zzbxv;

/* loaded from: classes.dex */
public final class AdManagerAdView extends BaseAdView {
    public AdManagerAdView(@NonNull Context context) {
        super(context);
        Preconditions.checkNotNull(context, "Context cannot be null");
    }

    @Nullable
    public AdSize[] getAdSizes() {
        return this.f2941c.zzd();
    }

    @Nullable
    public AppEventListener getAppEventListener() {
        return this.f2941c.zzf();
    }

    @NonNull
    public VideoController getVideoController() {
        return this.f2941c.zzy();
    }

    @Nullable
    public VideoOptions getVideoOptions() {
        return this.f2941c.zzB();
    }

    @RequiresPermission
    public void loadAd(@NonNull final AdManagerAdRequest adManagerAdRequest) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzbgk.a(getContext());
        if (((Boolean) zzbii.f.c()).booleanValue()) {
            if (((Boolean) zzbd.zzc().a(zzbgk.Ac)).booleanValue()) {
                com.google.android.gms.ads.internal.util.client.zzb.zzb.execute(new Runnable() { // from class: com.google.android.gms.ads.admanager.zza
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        AdManagerAdRequest adManagerAdRequest2 = adManagerAdRequest;
                        AdManagerAdView adManagerAdView = AdManagerAdView.this;
                        adManagerAdView.getClass();
                        try {
                            adManagerAdView.f2941c.zzg(adManagerAdRequest2.zza());
                        } catch (IllegalStateException e) {
                            zzbxv.c(adManagerAdView.getContext()).a("AdManagerAdView.loadAd", e);
                        }
                    }
                });
                return;
            }
        }
        this.f2941c.zzg(adManagerAdRequest.zza());
    }

    public void recordManualImpression() {
        this.f2941c.zzi();
    }

    public void setAdSizes(@NonNull AdSize... adSizeArr) {
        if (adSizeArr != null && adSizeArr.length > 0) {
            this.f2941c.zzn(adSizeArr);
            return;
        }
        throw new IllegalArgumentException("The supported ad sizes must contain at least one valid ad size.");
    }

    public void setAppEventListener(@Nullable AppEventListener appEventListener) {
        this.f2941c.zzp(appEventListener);
    }

    public void setManualImpressionsEnabled(boolean z) {
        this.f2941c.zzq(z);
    }

    public void setVideoOptions(@NonNull VideoOptions videoOptions) {
        this.f2941c.zzA(videoOptions);
    }

    public final boolean zza(zzbx zzbxVar) {
        return this.f2941c.zzC(zzbxVar);
    }

    public AdManagerAdView(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        Preconditions.checkNotNull(context, "Context cannot be null");
    }

    public AdManagerAdView(@NonNull Context context, @NonNull AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, (Object) null);
        Preconditions.checkNotNull(context, "Context cannot be null");
    }
}
