package com.google.android.gms.ads;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresPermission;
import com.google.android.gms.ads.admanager.AppEventListener;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzen;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzbii;
import com.google.android.gms.internal.ads.zzbxv;

/* loaded from: classes.dex */
public abstract class BaseAdView extends ViewGroup {

    /* renamed from: c, reason: collision with root package name */
    public final zzen f2941c;

    public BaseAdView(Context context) {
        super(context);
        this.f2941c = new zzen(this, 0);
    }

    public void destroy() {
        zzbgk.a(getContext());
        if (((Boolean) zzbii.e.c()).booleanValue()) {
            if (((Boolean) zzbd.zzc().a(zzbgk.xc)).booleanValue()) {
                com.google.android.gms.ads.internal.util.client.zzb.zzb.execute(new Runnable() { // from class: com.google.android.gms.ads.zzg
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        BaseAdView baseAdView = BaseAdView.this;
                        try {
                            baseAdView.f2941c.zza();
                        } catch (IllegalStateException e) {
                            zzbxv.c(baseAdView.getContext()).a("BaseAdView.destroy", e);
                        }
                    }
                });
                return;
            }
        }
        this.f2941c.zza();
    }

    @NonNull
    public AdListener getAdListener() {
        return this.f2941c.zzb();
    }

    @Nullable
    public AdSize getAdSize() {
        return this.f2941c.zzc();
    }

    @NonNull
    public String getAdUnitId() {
        return this.f2941c.zze();
    }

    @Nullable
    public OnPaidEventListener getOnPaidEventListener() {
        return this.f2941c.zzx();
    }

    public long getPlacementId() {
        return this.f2941c.zzv();
    }

    @Nullable
    public ResponseInfo getResponseInfo() {
        return this.f2941c.zzt();
    }

    public boolean isCollapsible() {
        return this.f2941c.zzr();
    }

    public boolean isLoading() {
        return this.f2941c.zzs();
    }

    @RequiresPermission
    public void loadAd(@NonNull final AdRequest adRequest) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzbgk.a(getContext());
        if (((Boolean) zzbii.f.c()).booleanValue()) {
            if (((Boolean) zzbd.zzc().a(zzbgk.Ac)).booleanValue()) {
                com.google.android.gms.ads.internal.util.client.zzb.zzb.execute(new Runnable() { // from class: com.google.android.gms.ads.zzd
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        AdRequest adRequest2 = adRequest;
                        BaseAdView baseAdView = BaseAdView.this;
                        try {
                            baseAdView.f2941c.zzg(adRequest2.f2935a);
                        } catch (IllegalStateException e) {
                            zzbxv.c(baseAdView.getContext()).a("BaseAdView.loadAd", e);
                        }
                    }
                });
                return;
            }
        }
        this.f2941c.zzg(adRequest.f2935a);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View childAt = getChildAt(0);
        if (childAt != null && childAt.getVisibility() != 8) {
            int measuredWidth = childAt.getMeasuredWidth();
            int measuredHeight = childAt.getMeasuredHeight();
            int i5 = ((i3 - i) - measuredWidth) / 2;
            int i6 = ((i4 - i2) - measuredHeight) / 2;
            childAt.layout(i5, i6, measuredWidth + i5, measuredHeight + i6);
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        AdSize adSize;
        int i3;
        int i4 = 0;
        View childAt = getChildAt(0);
        if (childAt != null && childAt.getVisibility() != 8) {
            measureChild(childAt, i, i2);
            i4 = childAt.getMeasuredWidth();
            i3 = childAt.getMeasuredHeight();
        } else {
            try {
                adSize = getAdSize();
            } catch (NullPointerException e) {
                zzo.zzg("Unable to retrieve ad size.", e);
                adSize = null;
            }
            if (adSize != null) {
                Context context = getContext();
                int widthInPixels = adSize.getWidthInPixels(context);
                i3 = adSize.getHeightInPixels(context);
                i4 = widthInPixels;
            } else {
                i3 = 0;
            }
        }
        setMeasuredDimension(View.resolveSize(Math.max(i4, getSuggestedMinimumWidth()), i), View.resolveSize(Math.max(i3, getSuggestedMinimumHeight()), i2));
    }

    public void pause() {
        zzbgk.a(getContext());
        if (((Boolean) zzbii.g.c()).booleanValue()) {
            if (((Boolean) zzbd.zzc().a(zzbgk.yc)).booleanValue()) {
                com.google.android.gms.ads.internal.util.client.zzb.zzb.execute(new Runnable() { // from class: com.google.android.gms.ads.zze
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        BaseAdView baseAdView = BaseAdView.this;
                        try {
                            baseAdView.f2941c.zzh();
                        } catch (IllegalStateException e) {
                            zzbxv.c(baseAdView.getContext()).a("BaseAdView.pause", e);
                        }
                    }
                });
                return;
            }
        }
        this.f2941c.zzh();
    }

    public void resume() {
        zzbgk.a(getContext());
        if (((Boolean) zzbii.h.c()).booleanValue()) {
            if (((Boolean) zzbd.zzc().a(zzbgk.wc)).booleanValue()) {
                com.google.android.gms.ads.internal.util.client.zzb.zzb.execute(new Runnable() { // from class: com.google.android.gms.ads.zzf
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        BaseAdView baseAdView = BaseAdView.this;
                        try {
                            baseAdView.f2941c.zzj();
                        } catch (IllegalStateException e) {
                            zzbxv.c(baseAdView.getContext()).a("BaseAdView.resume", e);
                        }
                    }
                });
                return;
            }
        }
        this.f2941c.zzj();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setAdListener(@NonNull AdListener adListener) {
        zzen zzenVar = this.f2941c;
        zzenVar.zzk(adListener);
        if (adListener == 0) {
            zzenVar.zzl(null);
            return;
        }
        if (adListener instanceof com.google.android.gms.ads.internal.client.zza) {
            zzenVar.zzl((com.google.android.gms.ads.internal.client.zza) adListener);
        }
        if (adListener instanceof AppEventListener) {
            zzenVar.zzp((AppEventListener) adListener);
        }
    }

    public void setAdSize(@NonNull AdSize adSize) {
        this.f2941c.zzm(adSize);
    }

    public void setAdUnitId(@NonNull String str) {
        this.f2941c.zzo(str);
    }

    public void setOnPaidEventListener(@Nullable OnPaidEventListener onPaidEventListener) {
        this.f2941c.zzu(onPaidEventListener);
    }

    public void setPlacementId(long j) {
        this.f2941c.zzw(j);
    }

    public BaseAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2941c = new zzen(this, attributeSet, false, 0);
    }

    public BaseAdView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i);
        this.f2941c = new zzen(this, attributeSet, false, 0);
    }

    public BaseAdView(Context context, AttributeSet attributeSet, int i, Object obj) {
        super(context, attributeSet, i);
        this.f2941c = new zzen(this, attributeSet, true, 0);
    }

    public BaseAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        this.f2941c = new zzen(this, attributeSet, true);
    }
}
