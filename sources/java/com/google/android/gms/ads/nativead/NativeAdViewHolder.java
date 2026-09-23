package com.google.android.gms.ads.nativead;

import android.os.RemoteException;
import android.view.View;
import androidx.annotation.NonNull;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbki;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;

@Deprecated
/* loaded from: classes.dex */
public final class NativeAdViewHolder {

    @NonNull
    public static final WeakHashMap zza = new WeakHashMap();

    /* renamed from: a, reason: collision with root package name */
    public final zzbki f3207a;
    public final WeakReference b;

    public NativeAdViewHolder(@NonNull View view, @NonNull Map<String, View> map, @NonNull Map<String, View> map2) {
        HashMap hashMap;
        HashMap hashMap2;
        Preconditions.checkNotNull(view, "ContainerView must not be null");
        if (view instanceof NativeAdView) {
            zzo.zzf("The provided containerView is of type of NativeAdView, which cannot be usedwith NativeAdViewHolder.");
            return;
        }
        WeakHashMap weakHashMap = zza;
        if (weakHashMap.get(view) != null) {
            zzo.zzf("The provided containerView is already in use with another NativeAdViewHolder.");
            return;
        }
        weakHashMap.put(view, this);
        this.b = new WeakReference(view);
        if (map == null) {
            hashMap = new HashMap();
        } else {
            hashMap = new HashMap(map);
        }
        if (map2 == null) {
            hashMap2 = new HashMap();
        } else {
            hashMap2 = new HashMap(map2);
        }
        this.f3207a = zzbb.zzb().zzf(view, hashMap, hashMap2);
    }

    public final void setClickConfirmingView(@NonNull View view) {
        try {
            this.f3207a.zzd(new ObjectWrapper(view));
        } catch (RemoteException e) {
            zzo.zzg("Unable to call setClickConfirmingView on delegate", e);
        }
    }

    public void setNativeAd(@NonNull NativeAd nativeAd) {
        View view;
        IObjectWrapper a2 = nativeAd.a();
        WeakReference weakReference = this.b;
        if (weakReference != null) {
            view = (View) weakReference.get();
        } else {
            view = null;
        }
        if (view == null) {
            zzo.zzi("NativeAdViewHolder.setNativeAd containerView doesn't exist, returning");
            return;
        }
        WeakHashMap weakHashMap = zza;
        if (!weakHashMap.containsKey(view)) {
            weakHashMap.put(view, this);
        }
        zzbki zzbkiVar = this.f3207a;
        if (zzbkiVar != null) {
            try {
                zzbkiVar.zzb(a2);
            } catch (RemoteException e) {
                zzo.zzg("Unable to call setNativeAd on delegate", e);
            }
        }
    }

    public void unregisterNativeAd() {
        View view;
        zzbki zzbkiVar = this.f3207a;
        if (zzbkiVar != null) {
            try {
                zzbkiVar.zzc();
            } catch (RemoteException e) {
                zzo.zzg("Unable to call unregisterNativeAd on delegate", e);
            }
        }
        WeakReference weakReference = this.b;
        if (weakReference != null) {
            view = (View) weakReference.get();
        } else {
            view = null;
        }
        if (view != null) {
            zza.remove(view);
        }
    }
}
