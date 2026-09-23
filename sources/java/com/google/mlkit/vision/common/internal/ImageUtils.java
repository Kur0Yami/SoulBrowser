package com.google.mlkit.vision.common.internal;

import android.graphics.Matrix;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.GmsLogger;

@KeepForSdk
/* loaded from: classes3.dex */
public class ImageUtils {

    /* renamed from: a, reason: collision with root package name */
    public static final ImageUtils f12810a;

    static {
        new GmsLogger("MLKitImageUtils", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        f12810a = new ImageUtils();
    }

    private ImageUtils() {
    }

    @KeepForSdk
    public static ImageUtils getInstance() {
        return f12810a;
    }

    @KeepForSdk
    public Matrix getUprightRotationMatrix(int width, int height, int rotation) {
        if (rotation == 0) {
            return null;
        }
        Matrix matrix = new Matrix();
        matrix.postTranslate((-width) / 2.0f, (-height) / 2.0f);
        matrix.postRotate(rotation * 90.0f);
        if ((rotation % 2) != 0) {
            matrix.postTranslate(height / 2.0f, width / 2.0f);
        } else {
            matrix.postTranslate(width / 2.0f, height / 2.0f);
        }
        return matrix;
    }
}
