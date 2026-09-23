package com.google.android.gms.ads.nativead;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzaz;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzbkc;

/* loaded from: classes.dex */
public final class NativeAdView extends FrameLayout {

    /* renamed from: c, reason: collision with root package name */
    public final FrameLayout f3206c;
    public final zzbkc f;

    public NativeAdView(@NonNull Context context) {
        super(context);
        this.f3206c = c(context);
        this.f = d();
    }

    public final View a(String str) {
        zzbkc zzbkcVar = this.f;
        if (zzbkcVar != null) {
            try {
                IObjectWrapper zzc = zzbkcVar.zzc(str);
                if (zzc != null) {
                    return (View) ObjectWrapper.f2(zzc);
                }
            } catch (RemoteException e) {
                zzo.zzg("Unable to call getAssetView on delegate", e);
            }
        }
        return null;
    }

    @Override // android.view.ViewGroup
    public final void addView(@NonNull View view, int i, @NonNull ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        super.bringChildToFront(this.f3206c);
    }

    public final void b(View view, String str) {
        zzbkc zzbkcVar = this.f;
        if (zzbkcVar == null) {
            return;
        }
        try {
            zzbkcVar.zzb(str, new ObjectWrapper(view));
        } catch (RemoteException e) {
            zzo.zzg("Unable to call setAssetView on delegate", e);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void bringChildToFront(@NonNull View view) {
        super.bringChildToFront(view);
        FrameLayout frameLayout = this.f3206c;
        if (frameLayout != view) {
            super.bringChildToFront(frameLayout);
        }
    }

    public final FrameLayout c(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(frameLayout);
        return frameLayout;
    }

    public final zzbkc d() {
        if (isInEditMode()) {
            return null;
        }
        zzaz zzb = zzbb.zzb();
        FrameLayout frameLayout = this.f3206c;
        return zzb.zze(frameLayout.getContext(), this, frameLayout);
    }

    public void destroy() {
        zzbkc zzbkcVar = this.f;
        if (zzbkcVar == null) {
            return;
        }
        try {
            zzbkcVar.zze();
        } catch (RemoteException e) {
            zzo.zzg("Unable to destroy native ad view", e);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(@NonNull MotionEvent motionEvent) {
        zzbkc zzbkcVar = this.f;
        if (zzbkcVar != null) {
            if (((Boolean) zzbd.zzc().a(zzbgk.Sc)).booleanValue()) {
                try {
                    zzbkcVar.zzdC(new ObjectWrapper(motionEvent));
                } catch (RemoteException e) {
                    zzo.zzg("Unable to call handleTouchEvent on delegate", e);
                }
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Nullable
    public AdChoicesView getAdChoicesView() {
        View a2 = a("3011");
        if (a2 instanceof AdChoicesView) {
            return (AdChoicesView) a2;
        }
        return null;
    }

    @Nullable
    public final View getAdvertiserView() {
        return a("3005");
    }

    @Nullable
    public final View getBodyView() {
        return a("3004");
    }

    @Nullable
    public final View getCallToActionView() {
        return a("3002");
    }

    @Nullable
    public final View getHeadlineView() {
        return a("3001");
    }

    @Nullable
    public final View getIconView() {
        return a("3003");
    }

    @Nullable
    public final View getImageView() {
        return a("3008");
    }

    @Nullable
    public final MediaView getMediaView() {
        View a2 = a("3010");
        if (a2 instanceof MediaView) {
            return (MediaView) a2;
        }
        if (a2 != null) {
            zzo.zzd("View is not an instance of MediaView");
            return null;
        }
        return null;
    }

    @Nullable
    public final View getPriceView() {
        return a("3007");
    }

    @Nullable
    public final View getStarRatingView() {
        return a("3009");
    }

    @Nullable
    public final View getStoreView() {
        return a("3006");
    }

    @Override // android.view.View
    public final void onVisibilityChanged(@NonNull View view, int i) {
        super.onVisibilityChanged(view, i);
        zzbkc zzbkcVar = this.f;
        if (zzbkcVar == null) {
            return;
        }
        try {
            zzbkcVar.zzf(new ObjectWrapper(view), i);
        } catch (RemoteException e) {
            zzo.zzg("Unable to call onVisibilityChanged on delegate", e);
        }
    }

    @Override // android.view.ViewGroup
    public final void removeAllViews() {
        super.removeAllViews();
        addView(this.f3206c);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(@NonNull View view) {
        if (this.f3206c == view) {
            return;
        }
        super.removeView(view);
    }

    public void setAdChoicesView(@Nullable AdChoicesView adChoicesView) {
        b(adChoicesView, "3011");
    }

    public final void setAdvertiserView(@Nullable View view) {
        b(view, "3005");
    }

    public final void setBodyView(@Nullable View view) {
        b(view, "3004");
    }

    public final void setCallToActionView(@Nullable View view) {
        b(view, "3002");
    }

    public final void setClickConfirmingView(@Nullable View view) {
        zzbkc zzbkcVar = this.f;
        if (zzbkcVar == null) {
            return;
        }
        try {
            zzbkcVar.zzg(new ObjectWrapper(view));
        } catch (RemoteException e) {
            zzo.zzg("Unable to call setClickConfirmingView on delegate", e);
        }
    }

    public final void setHeadlineView(@Nullable View view) {
        b(view, "3001");
    }

    public final void setIconView(@Nullable View view) {
        b(view, "3003");
    }

    public final void setImageView(@Nullable View view) {
        b(view, "3008");
    }

    public final void setMediaView(@Nullable MediaView mediaView) {
        b(mediaView, "3010");
        if (mediaView == null) {
            return;
        }
        zzb zzbVar = new zzb(this);
        synchronized (mediaView) {
            mediaView.g = zzbVar;
            if (mediaView.f) {
                zzbVar.a(mediaView.f3200c);
            }
        }
        mediaView.a(new zza(this));
    }

    public void setNativeAd(@NonNull NativeAd nativeAd) {
        zzbkc zzbkcVar = this.f;
        if (zzbkcVar == null) {
            return;
        }
        try {
            zzbkcVar.zzd(nativeAd.a());
        } catch (RemoteException e) {
            zzo.zzg("Unable to call setNativeAd on delegate", e);
        }
    }

    public final void setPriceView(@Nullable View view) {
        b(view, "3007");
    }

    public final void setStarRatingView(@Nullable View view) {
        b(view, "3009");
    }

    public final void setStoreView(@Nullable View view) {
        b(view, "3006");
    }

    public NativeAdView(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f3206c = c(context);
        this.f = d();
    }

    public NativeAdView(@NonNull Context context, @NonNull AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f3206c = c(context);
        this.f = d();
    }

    public NativeAdView(@NonNull Context context, @NonNull AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f3206c = c(context);
        this.f = d();
    }
}
