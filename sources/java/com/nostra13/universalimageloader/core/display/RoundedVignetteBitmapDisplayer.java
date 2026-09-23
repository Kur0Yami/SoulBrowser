package com.nostra13.universalimageloader.core.display;

import android.graphics.Bitmap;
import android.graphics.ComposeShader;
import android.graphics.Matrix;
import android.graphics.PorterDuff;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import com.nostra13.universalimageloader.core.display.RoundedBitmapDisplayer;
import com.nostra13.universalimageloader.core.imageaware.ImageAware;
import com.nostra13.universalimageloader.core.imageaware.ImageViewAware;
import com.nostra13.universalimageloader.core.imageaware.ViewAware;

/* loaded from: classes3.dex */
public class RoundedVignetteBitmapDisplayer extends RoundedBitmapDisplayer {

    /* loaded from: classes3.dex */
    public static class RoundedVignetteDrawable extends RoundedBitmapDisplayer.RoundedDrawable {
        @Override // com.nostra13.universalimageloader.core.display.RoundedBitmapDisplayer.RoundedDrawable, android.graphics.drawable.Drawable
        public final void onBoundsChange(Rect rect) {
            super.onBoundsChange(rect);
            RectF rectF = this.b;
            RadialGradient radialGradient = new RadialGradient(rectF.centerX(), (rectF.centerY() * 1.0f) / 0.7f, 1.3f * rectF.centerX(), new int[]{0, 0, 2130706432}, new float[]{0.0f, 0.7f, 1.0f}, Shader.TileMode.CLAMP);
            Matrix matrix = new Matrix();
            matrix.setScale(1.0f, 0.7f);
            radialGradient.setLocalMatrix(matrix);
            this.e.setShader(new ComposeShader(this.d, radialGradient, PorterDuff.Mode.SRC_OVER));
        }
    }

    @Override // com.nostra13.universalimageloader.core.display.RoundedBitmapDisplayer, com.nostra13.universalimageloader.core.display.BitmapDisplayer
    public final void a(Bitmap bitmap, ImageAware imageAware) {
        if (imageAware instanceof ImageViewAware) {
            ((ViewAware) imageAware).f(new RoundedBitmapDisplayer.RoundedDrawable(bitmap));
            return;
        }
        throw new IllegalArgumentException("ImageAware should wrap ImageView. ImageViewAware is expected.");
    }
}
