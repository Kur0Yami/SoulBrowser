package com.google.android.gms.cast.framework.media;

import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.common.images.WebImage;

/* loaded from: classes.dex */
public class ImagePicker {

    /* renamed from: a, reason: collision with root package name */
    public final zzd f3498a = new zzi(this);

    public static WebImage a(MediaMetadata mediaMetadata) {
        if (mediaMetadata != null && mediaMetadata.G()) {
            return (WebImage) mediaMetadata.f3445c.get(0);
        }
        return null;
    }

    public WebImage b(MediaMetadata mediaMetadata, ImageHints imageHints) {
        int i = imageHints.f3497c;
        return a(mediaMetadata);
    }
}
