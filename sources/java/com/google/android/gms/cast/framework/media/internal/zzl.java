package com.google.android.gms.cast.framework.media.internal;

import android.graphics.Bitmap;
import android.net.Uri;
import com.google.android.gms.common.images.WebImage;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzl {

    /* renamed from: a, reason: collision with root package name */
    public final Uri f3518a;
    public Bitmap b;

    public zzl(WebImage webImage) {
        Uri url;
        if (webImage == null) {
            url = null;
        } else {
            url = webImage.getUrl();
        }
        this.f3518a = url;
    }
}
