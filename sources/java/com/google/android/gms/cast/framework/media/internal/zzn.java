package com.google.android.gms.cast.framework.media.internal;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import com.google.android.gms.cast.internal.Logger;

/* loaded from: classes.dex */
final class zzn implements zza {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzs f3521a;

    public zzn(zzs zzsVar) {
        this.f3521a = zzsVar;
    }

    @Override // com.google.android.gms.cast.framework.media.internal.zza
    public final void a(Bitmap bitmap) {
        Logger logger = zzs.v;
        Bitmap bitmap2 = null;
        if (bitmap != null) {
            int width = bitmap.getWidth();
            float f = width;
            int i = (int) (((9.0f * f) / 16.0f) + 0.5f);
            float f2 = (i - r3) / 2.0f;
            RectF rectF = new RectF(0.0f, f2, f, bitmap.getHeight() + f2);
            Bitmap.Config config = bitmap.getConfig();
            if (config == null) {
                config = Bitmap.Config.ARGB_8888;
            }
            Bitmap createBitmap = Bitmap.createBitmap(width, i, config);
            new Canvas(createBitmap).drawBitmap(bitmap, (Rect) null, rectF, (Paint) null);
            bitmap2 = createBitmap;
        }
        this.f3521a.c(bitmap2, 0);
    }
}
