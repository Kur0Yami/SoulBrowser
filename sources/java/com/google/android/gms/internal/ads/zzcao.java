package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;
import com.google.android.gms.ads.rewarded.ServerSideVerificationOptions;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class zzcao extends RewardedAd {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicReference f4995a;
    public final zzcaf b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f4996c;
    public final zzcax d;
    public OnAdMetadataChangedListener e;
    public OnPaidEventListener f;
    public FullScreenContentCallback g;
    public final long h;
    public final AtomicLong i;

    /* JADX WARN: Type inference failed for: r3v3, types: [com.google.android.gms.internal.ads.zzcah, com.google.android.gms.internal.ads.zzcax] */
    public zzcao(Context context, zzcaf zzcafVar) {
        this.h = System.currentTimeMillis();
        this.i = new AtomicLong();
        this.f4996c = context.getApplicationContext();
        this.f4995a = new AtomicReference();
        this.b = zzcafVar;
        this.d = new zzcah();
    }

    public final void a(com.google.android.gms.ads.internal.client.zzek zzekVar, RewardedAdLoadCallback rewardedAdLoadCallback) {
        try {
            zzcaf zzcafVar = this.b;
            if (zzcafVar != null) {
                zzekVar.zzp(this.h);
                zzcafVar.zzc(com.google.android.gms.ads.internal.client.zzq.zza.zza(this.f4996c, zzekVar), new zzcas(rewardedAdLoadCallback, this));
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final Bundle getAdMetadata() {
        try {
            zzcaf zzcafVar = this.b;
            if (zzcafVar != null) {
                return zzcafVar.zzg();
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
        return new Bundle();
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final String getAdUnitId() {
        String str;
        String str2;
        AtomicReference atomicReference = this.f4995a;
        if (atomicReference.get() != null) {
            return (String) atomicReference.get();
        }
        synchronized (this) {
            try {
                str = this.b.zzn();
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
                str = null;
            }
            if (str == null) {
                this.f4995a.set(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
            } else {
                this.f4995a.set(str);
            }
            str2 = (String) this.f4995a.get();
        }
        return str2;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final FullScreenContentCallback getFullScreenContentCallback() {
        return this.g;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final OnAdMetadataChangedListener getOnAdMetadataChangedListener() {
        return this.e;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final OnPaidEventListener getOnPaidEventListener() {
        return this.f;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final long getPlacementId() {
        long j;
        AtomicLong atomicLong = this.i;
        long j2 = 0;
        if (atomicLong.get() != 0) {
            return atomicLong.get();
        }
        synchronized (this) {
            try {
                zzcaf zzcafVar = this.b;
                if (zzcafVar != null) {
                    j2 = zzcafVar.zzq();
                }
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
            }
            AtomicLong atomicLong2 = this.i;
            atomicLong2.set(j2);
            j = atomicLong2.get();
        }
        return j;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final ResponseInfo getResponseInfo() {
        com.google.android.gms.ads.internal.client.zzea zzeaVar = null;
        try {
            zzcaf zzcafVar = this.b;
            if (zzcafVar != null) {
                zzeaVar = zzcafVar.zzm();
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
        return ResponseInfo.zzc(zzeaVar);
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final RewardItem getRewardItem() {
        zzcac zzcacVar;
        try {
            zzcaf zzcafVar = this.b;
            if (zzcafVar != null) {
                zzcacVar = zzcafVar.zzl();
            } else {
                zzcacVar = null;
            }
            if (zzcacVar == null) {
                return RewardItem.DEFAULT_REWARD;
            }
            return new zzcap(zzcacVar);
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
            return RewardItem.DEFAULT_REWARD;
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void setFullScreenContentCallback(FullScreenContentCallback fullScreenContentCallback) {
        this.g = fullScreenContentCallback;
        this.d.f5003c = fullScreenContentCallback;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void setImmersiveMode(boolean z) {
        try {
            zzcaf zzcafVar = this.b;
            if (zzcafVar != null) {
                zzcafVar.zzp(z);
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void setOnAdMetadataChangedListener(OnAdMetadataChangedListener onAdMetadataChangedListener) {
        try {
            this.e = onAdMetadataChangedListener;
            zzcaf zzcafVar = this.b;
            if (zzcafVar != null) {
                zzcafVar.zzf(new com.google.android.gms.ads.internal.client.zzfr(onAdMetadataChangedListener));
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void setOnPaidEventListener(OnPaidEventListener onPaidEventListener) {
        try {
            this.f = onPaidEventListener;
            zzcaf zzcafVar = this.b;
            if (zzcafVar != null) {
                zzcafVar.zzo(new com.google.android.gms.ads.internal.client.zzfs(onPaidEventListener));
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void setPlacementId(long j) {
        try {
            zzcaf zzcafVar = this.b;
            if (zzcafVar != null) {
                zzcafVar.zzr(j);
                this.i.set(j);
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void setServerSideVerificationOptions(ServerSideVerificationOptions serverSideVerificationOptions) {
        if (serverSideVerificationOptions != null) {
            try {
                zzcaf zzcafVar = this.b;
                if (zzcafVar != null) {
                    zzcafVar.zzh(new zzcat(serverSideVerificationOptions));
                }
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void show(Activity activity, OnUserEarnedRewardListener onUserEarnedRewardListener) {
        zzcax zzcaxVar = this.d;
        zzcaxVar.f = onUserEarnedRewardListener;
        if (activity == null) {
            com.google.android.gms.ads.internal.util.client.zzo.zzi("The activity for show is null, will proceed with show using the context provided when loading the ad.");
        }
        try {
            zzcaf zzcafVar = this.b;
            if (zzcafVar != null) {
                zzcafVar.zze(zzcaxVar);
                zzcafVar.zzb(new ObjectWrapper(activity));
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    public zzcao(Context context, String str) {
        this(context, str, com.google.android.gms.ads.internal.client.zzbb.zzb().zzg(context, str, new zzbsv()));
    }

    /* JADX WARN: Type inference failed for: r3v3, types: [com.google.android.gms.internal.ads.zzcah, com.google.android.gms.internal.ads.zzcax] */
    public zzcao(Context context, String str, zzcaf zzcafVar) {
        this.h = System.currentTimeMillis();
        this.i = new AtomicLong();
        this.f4996c = context.getApplicationContext();
        this.f4995a = new AtomicReference(str);
        this.b = zzcafVar;
        this.d = new zzcah();
    }
}
