package com.google.android.gms.ads;

import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresPermission;
import com.google.android.gms.ads.admanager.AdManagerAdRequest;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.OnAdManagerAdViewLoadedListener;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzbq;
import com.google.android.gms.ads.internal.client.zzbt;
import com.google.android.gms.ads.internal.client.zzek;
import com.google.android.gms.ads.internal.client.zzfi;
import com.google.android.gms.ads.internal.client.zzga;
import com.google.android.gms.ads.internal.client.zzq;
import com.google.android.gms.ads.internal.client.zzr;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.ads.nativead.NativeAdOptions;
import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzbii;
import com.google.android.gms.internal.ads.zzbjn;
import com.google.android.gms.internal.ads.zzbly;
import com.google.android.gms.internal.ads.zzbma;
import com.google.android.gms.internal.ads.zzbmb;
import com.google.android.gms.internal.ads.zzbsv;
import com.google.android.gms.internal.ads.zzbwl;
import com.google.android.gms.internal.ads.zzbwn;

/* loaded from: classes.dex */
public class AdLoader {

    /* renamed from: a, reason: collision with root package name */
    public final zzq f2932a;
    public final Context b;

    /* renamed from: c, reason: collision with root package name */
    public final zzbq f2933c;

    /* loaded from: classes.dex */
    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        public final Context f2934a;
        public final zzbt b;

        public Builder(@NonNull Context context, @NonNull String str) {
            Context context2 = (Context) Preconditions.checkNotNull(context, "context cannot be null");
            zzbt zzc = zzbb.zzb().zzc(context, str, new zzbsv());
            this.f2934a = context2;
            this.b = zzc;
        }

        @NonNull
        public AdLoader build() {
            Context context = this.f2934a;
            try {
                return new AdLoader(context, this.b.zze(), zzq.zza);
            } catch (RemoteException e) {
                zzo.zzg("Failed to build AdLoader.", e);
                return new AdLoader(context, new zzfi().zzb(), zzq.zza);
            }
        }

        @NonNull
        public Builder forAdManagerAdView(@NonNull OnAdManagerAdViewLoadedListener onAdManagerAdViewLoadedListener, @NonNull AdSize... adSizeArr) {
            if (adSizeArr != null && adSizeArr.length > 0) {
                try {
                    this.b.zzk(new zzbma(onAdManagerAdViewLoadedListener), new zzr(this.f2934a, adSizeArr));
                    return this;
                } catch (RemoteException e) {
                    zzo.zzj("Failed to add Google Ad Manager banner ad listener", e);
                    return this;
                }
            }
            throw new IllegalArgumentException("The supported ad sizes must contain at least one valid ad size.");
        }

        @NonNull
        public Builder forCustomFormatAd(@NonNull String str, @NonNull NativeCustomFormatAd.OnCustomFormatAdLoadedListener onCustomFormatAdLoadedListener, @Nullable NativeCustomFormatAd.OnCustomClickListener onCustomClickListener) {
            zzbwl zzbwlVar = new zzbwl(onCustomFormatAdLoadedListener, onCustomClickListener);
            try {
                this.b.zzi(str, zzbwlVar.a(), zzbwlVar.b());
                return this;
            } catch (RemoteException e) {
                zzo.zzj("Failed to add custom format ad listener", e);
                return this;
            }
        }

        @NonNull
        public Builder forNativeAd(@NonNull NativeAd.OnNativeAdLoadedListener onNativeAdLoadedListener) {
            try {
                this.b.zzm(new zzbwn(onNativeAdLoadedListener));
                return this;
            } catch (RemoteException e) {
                zzo.zzj("Failed to add google native ad listener", e);
                return this;
            }
        }

        @NonNull
        public Builder withAdListener(@NonNull AdListener adListener) {
            try {
                this.b.zzf(new com.google.android.gms.ads.internal.client.zzg(adListener));
                return this;
            } catch (RemoteException e) {
                zzo.zzj("Failed to set AdListener.", e);
                return this;
            }
        }

        @NonNull
        public Builder withAdManagerAdViewOptions(@NonNull AdManagerAdViewOptions adManagerAdViewOptions) {
            try {
                this.b.zzp(adManagerAdViewOptions);
                return this;
            } catch (RemoteException e) {
                zzo.zzj("Failed to specify Ad Manager banner ad options", e);
                return this;
            }
        }

        @NonNull
        public Builder withNativeAdOptions(@NonNull NativeAdOptions nativeAdOptions) {
            zzga zzgaVar;
            try {
                zzbt zzbtVar = this.b;
                boolean shouldReturnUrlsForImageAssets = nativeAdOptions.shouldReturnUrlsForImageAssets();
                boolean shouldRequestMultipleImages = nativeAdOptions.shouldRequestMultipleImages();
                int adChoicesPlacement = nativeAdOptions.getAdChoicesPlacement();
                if (nativeAdOptions.getVideoOptions() != null) {
                    zzgaVar = new zzga(nativeAdOptions.getVideoOptions());
                } else {
                    zzgaVar = null;
                }
                zzbtVar.zzj(new zzbjn(4, shouldReturnUrlsForImageAssets, -1, shouldRequestMultipleImages, adChoicesPlacement, zzgaVar, nativeAdOptions.zza(), nativeAdOptions.getMediaAspectRatio(), nativeAdOptions.zzb(), nativeAdOptions.zzc(), nativeAdOptions.zzd() - 1));
                return this;
            } catch (RemoteException e) {
                zzo.zzj("Failed to specify native ad options", e);
                return this;
            }
        }

        @Deprecated
        public final Builder zza(com.google.android.gms.ads.formats.zzg zzgVar) {
            try {
                this.b.zzm(new zzbmb(zzgVar));
                return this;
            } catch (RemoteException e) {
                zzo.zzj("Failed to add google native ad listener", e);
                return this;
            }
        }

        @Deprecated
        public final Builder zzb(String str, com.google.android.gms.ads.formats.zze zzeVar, @Nullable com.google.android.gms.ads.formats.zzd zzdVar) {
            zzbly zzblyVar = new zzbly(zzeVar, zzdVar);
            try {
                this.b.zzi(str, zzblyVar.a(), zzblyVar.b());
                return this;
            } catch (RemoteException e) {
                zzo.zzj("Failed to add custom template ad listener", e);
                return this;
            }
        }

        @NonNull
        @Deprecated
        public final Builder zzc(@NonNull com.google.android.gms.ads.formats.NativeAdOptions nativeAdOptions) {
            try {
                this.b.zzj(new zzbjn(nativeAdOptions));
                return this;
            } catch (RemoteException e) {
                zzo.zzj("Failed to specify native ad options", e);
                return this;
            }
        }
    }

    public AdLoader(Context context, zzbq zzbqVar, zzq zzqVar) {
        this.b = context;
        this.f2933c = zzbqVar;
        this.f2932a = zzqVar;
    }

    public final void a(final zzek zzekVar) {
        Context context = this.b;
        zzbgk.a(context);
        if (((Boolean) zzbii.f4712c.c()).booleanValue()) {
            if (((Boolean) zzbd.zzc().a(zzbgk.Ac)).booleanValue()) {
                com.google.android.gms.ads.internal.util.client.zzb.zzb.execute(new Runnable() { // from class: com.google.android.gms.ads.zza
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        AdLoader adLoader = AdLoader.this;
                        try {
                            adLoader.f2933c.zze(adLoader.f2932a.zza(adLoader.b, zzekVar));
                        } catch (RemoteException e) {
                            zzo.zzg("Failed to load ad.", e);
                        }
                    }
                });
                return;
            }
        }
        try {
            this.f2933c.zze(this.f2932a.zza(context, zzekVar));
        } catch (RemoteException e) {
            zzo.zzg("Failed to load ad.", e);
        }
    }

    public boolean isLoading() {
        try {
            return this.f2933c.zzg();
        } catch (RemoteException e) {
            zzo.zzj("Failed to check if ad is loading.", e);
            return false;
        }
    }

    @RequiresPermission
    public void loadAd(@NonNull AdRequest adRequest) {
        a(adRequest.f2935a);
    }

    @RequiresPermission
    public void loadAds(@NonNull AdRequest adRequest, int i) {
        try {
            this.f2933c.zzi(this.f2932a.zza(this.b, adRequest.f2935a), i);
        } catch (RemoteException e) {
            zzo.zzg("Failed to load ads.", e);
        }
    }

    public void loadAd(@NonNull AdManagerAdRequest adManagerAdRequest) {
        a(adManagerAdRequest.f2935a);
    }
}
