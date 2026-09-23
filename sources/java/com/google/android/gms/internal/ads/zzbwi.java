package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.ads.MuteThisAdListener;
import com.google.android.gms.ads.MuteThisAdReason;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes.dex */
public final class zzbwi extends NativeAd {

    /* renamed from: a, reason: collision with root package name */
    public final zzbls f4946a;

    /* renamed from: c, reason: collision with root package name */
    public final zzbwh f4947c;
    public final zzbwf d;
    public final ArrayList b = new ArrayList();
    public final ArrayList e = new ArrayList();
    public final AtomicLong f = new AtomicLong();

    /* JADX WARN: Can't wrap try/catch for region: R(13:1|(3:2|3|(2:5|(5:8|(1:10)(1:17)|(3:12|13|14)(1:16)|15|6)))|(3:19|20|(2:22|(5:25|(1:27)(1:34)|(3:29|30|31)(1:33)|32|23)))|36|37|(7:39|40|41|42|(2:44|45)|47|48)|53|40|41|42|(0)|47|48) */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00b0, code lost:
    
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00b1, code lost:
    
        com.google.android.gms.ads.internal.util.client.zzo.zzg(com.google.android.gms.ads.RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, r6);
     */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00a3 A[Catch: RemoteException -> 0x00b0, TRY_LEAVE, TryCatch #1 {RemoteException -> 0x00b0, blocks: (B:42:0x009b, B:44:0x00a3), top: B:41:0x009b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzbwi(com.google.android.gms.internal.ads.zzbls r6) {
        /*
            r5 = this;
            java.lang.String r0 = ""
            r5.<init>()
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r5.b = r1
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r5.e = r1
            java.util.concurrent.atomic.AtomicLong r1 = new java.util.concurrent.atomic.AtomicLong
            r1.<init>()
            r5.f = r1
            r5.f4946a = r6
            r1 = 0
            java.util.List r6 = r6.zzf()     // Catch: android.os.RemoteException -> L3c
            if (r6 == 0) goto L4f
            java.util.Iterator r6 = r6.iterator()     // Catch: android.os.RemoteException -> L3c
        L27:
            boolean r2 = r6.hasNext()     // Catch: android.os.RemoteException -> L3c
            if (r2 == 0) goto L4f
            java.lang.Object r2 = r6.next()     // Catch: android.os.RemoteException -> L3c
            boolean r3 = r2 instanceof android.os.IBinder     // Catch: android.os.RemoteException -> L3c
            if (r3 == 0) goto L3e
            android.os.IBinder r2 = (android.os.IBinder) r2     // Catch: android.os.RemoteException -> L3c
            com.google.android.gms.internal.ads.zzbjy r2 = com.google.android.gms.internal.ads.zzbjx.c5(r2)     // Catch: android.os.RemoteException -> L3c
            goto L3f
        L3c:
            r6 = move-exception
            goto L4c
        L3e:
            r2 = r1
        L3f:
            if (r2 == 0) goto L27
            java.util.ArrayList r3 = r5.b     // Catch: android.os.RemoteException -> L3c
            com.google.android.gms.internal.ads.zzbwh r4 = new com.google.android.gms.internal.ads.zzbwh     // Catch: android.os.RemoteException -> L3c
            r4.<init>(r2)     // Catch: android.os.RemoteException -> L3c
            r3.add(r4)     // Catch: android.os.RemoteException -> L3c
            goto L27
        L4c:
            com.google.android.gms.ads.internal.util.client.zzo.zzg(r0, r6)
        L4f:
            com.google.android.gms.internal.ads.zzbls r6 = r5.f4946a     // Catch: android.os.RemoteException -> L70
            java.util.List r6 = r6.zzz()     // Catch: android.os.RemoteException -> L70
            if (r6 == 0) goto L83
            java.util.Iterator r6 = r6.iterator()     // Catch: android.os.RemoteException -> L70
        L5b:
            boolean r2 = r6.hasNext()     // Catch: android.os.RemoteException -> L70
            if (r2 == 0) goto L83
            java.lang.Object r2 = r6.next()     // Catch: android.os.RemoteException -> L70
            boolean r3 = r2 instanceof android.os.IBinder     // Catch: android.os.RemoteException -> L70
            if (r3 == 0) goto L72
            android.os.IBinder r2 = (android.os.IBinder) r2     // Catch: android.os.RemoteException -> L70
            com.google.android.gms.ads.internal.client.zzdj r2 = com.google.android.gms.ads.internal.client.zzdi.zzb(r2)     // Catch: android.os.RemoteException -> L70
            goto L73
        L70:
            r6 = move-exception
            goto L80
        L72:
            r2 = r1
        L73:
            if (r2 == 0) goto L5b
            java.util.ArrayList r3 = r5.e     // Catch: android.os.RemoteException -> L70
            com.google.android.gms.ads.internal.client.zzdk r4 = new com.google.android.gms.ads.internal.client.zzdk     // Catch: android.os.RemoteException -> L70
            r4.<init>(r2)     // Catch: android.os.RemoteException -> L70
            r3.add(r4)     // Catch: android.os.RemoteException -> L70
            goto L5b
        L80:
            com.google.android.gms.ads.internal.util.client.zzo.zzg(r0, r6)
        L83:
            com.google.android.gms.internal.ads.zzbls r6 = r5.f4946a     // Catch: android.os.RemoteException -> L91
            com.google.android.gms.internal.ads.zzbjy r6 = r6.zzh()     // Catch: android.os.RemoteException -> L91
            if (r6 == 0) goto L93
            com.google.android.gms.internal.ads.zzbwh r2 = new com.google.android.gms.internal.ads.zzbwh     // Catch: android.os.RemoteException -> L91
            r2.<init>(r6)     // Catch: android.os.RemoteException -> L91
            goto L99
        L91:
            r6 = move-exception
            goto L95
        L93:
            r2 = r1
            goto L99
        L95:
            com.google.android.gms.ads.internal.util.client.zzo.zzg(r0, r6)
            goto L93
        L99:
            r5.f4947c = r2
            com.google.android.gms.internal.ads.zzbls r6 = r5.f4946a     // Catch: android.os.RemoteException -> Lb0
            com.google.android.gms.internal.ads.zzbjr r6 = r6.zzq()     // Catch: android.os.RemoteException -> Lb0
            if (r6 == 0) goto Lb4
            com.google.android.gms.internal.ads.zzbwf r6 = new com.google.android.gms.internal.ads.zzbwf     // Catch: android.os.RemoteException -> Lb0
            com.google.android.gms.internal.ads.zzbls r2 = r5.f4946a     // Catch: android.os.RemoteException -> Lb0
            com.google.android.gms.internal.ads.zzbjr r2 = r2.zzq()     // Catch: android.os.RemoteException -> Lb0
            r6.<init>(r2)     // Catch: android.os.RemoteException -> Lb0
            r1 = r6
            goto Lb4
        Lb0:
            r6 = move-exception
            com.google.android.gms.ads.internal.util.client.zzo.zzg(r0, r6)
        Lb4:
            r5.d = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbwi.<init>(com.google.android.gms.internal.ads.zzbls):void");
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final /* bridge */ /* synthetic */ IObjectWrapper a() {
        try {
            return this.f4946a.zzu();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void cancelUnconfirmedClick() {
        try {
            this.f4946a.g();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Failed to cancelUnconfirmedClick", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void destroy() {
        try {
            this.f4946a.zzp();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void enableCustomClickGesture() {
        try {
            this.f4946a.zzD();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final NativeAd.AdChoicesInfo getAdChoicesInfo() {
        return this.d;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final String getAdvertiser() {
        try {
            return this.f4946a.zzj();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final String getBody() {
        try {
            return this.f4946a.zzg();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final String getCallToAction() {
        try {
            return this.f4946a.zzi();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final Bundle getExtras() {
        try {
            Bundle zzw = this.f4946a.zzw();
            if (zzw != null) {
                return zzw;
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
        }
        return new Bundle();
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final String getHeadline() {
        try {
            return this.f4946a.zze();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final NativeAd.Image getIcon() {
        return this.f4947c;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final List getImages() {
        return this.b;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final MediaContent getMediaContent() {
        try {
            zzbls zzblsVar = this.f4946a;
            if (zzblsVar.zzF() == null) {
                return null;
            }
            return new com.google.android.gms.ads.internal.client.zzfe(zzblsVar.zzF(), null);
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final List getMuteThisAdReasons() {
        return this.e;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final long getPlacementId() {
        long j;
        AtomicLong atomicLong = this.f;
        if (atomicLong.get() != 0) {
            return atomicLong.get();
        }
        synchronized (this) {
            try {
                try {
                    long m = this.f4946a.m();
                    AtomicLong atomicLong2 = this.f;
                    atomicLong2.set(m);
                    j = atomicLong2.get();
                } catch (RemoteException e) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzg("Failed to getPlacementId", e);
                    return 0L;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return j;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final String getPrice() {
        try {
            return this.f4946a.zzm();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final ResponseInfo getResponseInfo() {
        com.google.android.gms.ads.internal.client.zzea zzeaVar;
        try {
            zzeaVar = this.f4946a.zzH();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
            zzeaVar = null;
        }
        return ResponseInfo.zzb(zzeaVar);
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final Double getStarRating() {
        try {
            double zzk = this.f4946a.zzk();
            if (zzk == -1.0d) {
                return null;
            }
            return Double.valueOf(zzk);
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final String getStore() {
        try {
            return this.f4946a.zzl();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final boolean isCustomClickGestureEnabled() {
        try {
            return this.f4946a.x();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final boolean isCustomMuteThisAdEnabled() {
        try {
            return this.f4946a.zzA();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void muteThisAd(MuteThisAdReason muteThisAdReason) {
        zzbls zzblsVar = this.f4946a;
        try {
            try {
                if (zzblsVar.zzA()) {
                    if (muteThisAdReason == null) {
                        zzblsVar.l1(null);
                        return;
                    } else if (muteThisAdReason instanceof com.google.android.gms.ads.internal.client.zzdk) {
                        zzblsVar.l1(((com.google.android.gms.ads.internal.client.zzdk) muteThisAdReason).zza());
                        return;
                    } else {
                        com.google.android.gms.ads.internal.util.client.zzo.zzf("Use mute reason from UnifiedNativeAd.getMuteThisAdReasons() or null");
                        return;
                    }
                }
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
            }
            com.google.android.gms.ads.internal.util.client.zzo.zzf("Ad is not custom mute enabled");
        } catch (RemoteException e2) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e2);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void performClick(Bundle bundle) {
        try {
            this.f4946a.R3(bundle);
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void recordCustomClickGesture() {
        try {
            this.f4946a.zzE();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void recordEvent(Bundle bundle) {
        try {
            this.f4946a.N2(bundle);
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Failed to record native event", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final boolean recordImpression(Bundle bundle) {
        try {
            return this.f4946a.c3(bundle);
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void reportTouchEvent(Bundle bundle) {
        try {
            this.f4946a.A2(bundle);
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void setMuteThisAdListener(MuteThisAdListener muteThisAdListener) {
        try {
            this.f4946a.X2(new com.google.android.gms.ads.internal.client.zzdg(muteThisAdListener));
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void setOnPaidEventListener(OnPaidEventListener onPaidEventListener) {
        try {
            this.f4946a.h1(new com.google.android.gms.ads.internal.client.zzfs(onPaidEventListener));
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Failed to setOnPaidEventListener", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void setPlacementId(long j) {
        try {
            this.f4946a.N0(j);
            this.f.set(j);
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Failed to setPlacementId", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void setUnconfirmedClickListener(NativeAd.UnconfirmedClickListener unconfirmedClickListener) {
        try {
            this.f4946a.E1(new zzbwo(unconfirmedClickListener));
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Failed to setUnconfirmedClickListener", e);
        }
    }
}
