package com.google.android.gms.ads.nativead;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbjk;
import com.google.android.gms.internal.ads.zzbjm;
import com.google.android.gms.internal.ads.zzbks;

/* loaded from: classes.dex */
public class MediaView extends FrameLayout {

    /* renamed from: c, reason: collision with root package name */
    public MediaContent f3200c;
    public boolean f;
    public zzbjk g;
    public ImageView.ScaleType h;
    public boolean i;
    public zzbjm j;

    public MediaView(@NonNull Context context) {
        super(context);
    }

    public final synchronized void a(zzbjm zzbjmVar) {
        this.j = zzbjmVar;
        if (this.i) {
            ((zza) zzbjmVar).a(this.h);
        }
    }

    @Nullable
    public MediaContent getMediaContent() {
        return this.f3200c;
    }

    public void setImageScaleType(@NonNull ImageView.ScaleType scaleType) {
        this.i = true;
        this.h = scaleType;
        zzbjm zzbjmVar = this.j;
        if (zzbjmVar != null) {
            zzbjmVar.a(scaleType);
        }
    }

    public void setMediaContent(@Nullable MediaContent mediaContent) {
        boolean q;
        this.f = true;
        this.f3200c = mediaContent;
        zzbjk zzbjkVar = this.g;
        if (zzbjkVar != null) {
            ((zzb) zzbjkVar).a(mediaContent);
        }
        if (mediaContent != null) {
            try {
                zzbks zzb = mediaContent.zzb();
                if (zzb != null) {
                    if (mediaContent.hasVideoContent()) {
                        q = zzb.zzn(new ObjectWrapper(this));
                    } else {
                        if (mediaContent.zza()) {
                            q = zzb.q(new ObjectWrapper(this));
                        }
                        removeAllViews();
                    }
                    if (q) {
                        return;
                    }
                    removeAllViews();
                }
            } catch (RemoteException e) {
                removeAllViews();
                zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
            }
        }
    }

    public MediaView(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MediaView(@NonNull Context context, @NonNull AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public MediaView(@NonNull Context context, @NonNull AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }
}
