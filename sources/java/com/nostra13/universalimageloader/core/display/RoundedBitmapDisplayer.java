package com.nostra13.universalimageloader.core.display;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import com.nostra13.universalimageloader.core.imageaware.ImageAware;
import com.nostra13.universalimageloader.core.imageaware.ImageViewAware;
import com.nostra13.universalimageloader.core.imageaware.ViewAware;

/* loaded from: classes3.dex */
public class RoundedBitmapDisplayer implements BitmapDisplayer {

    /* loaded from: classes3.dex */
    public static class RoundedDrawable extends Drawable {

        /* renamed from: a, reason: collision with root package name */
        public final float f21003a;
        public final RectF b = new RectF();

        /* renamed from: c, reason: collision with root package name */
        public final RectF f21004c;
        public final BitmapShader d;
        public final Paint e;

        public RoundedDrawable(Bitmap bitmap) {
            float f = 0;
            this.f21003a = f;
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
            this.d = bitmapShader;
            this.f21004c = new RectF(f, f, bitmap.getWidth(), bitmap.getHeight());
            Paint paint = new Paint();
            this.e = paint;
            paint.setAntiAlias(true);
            paint.setShader(bitmapShader);
        }

        @Override // android.graphics.drawable.Drawable
        public final void draw(Canvas canvas) {
            float f = this.f21003a;
            canvas.drawRoundRect(this.b, f, f, this.e);
        }

        @Override // android.graphics.drawable.Drawable
        public final int getOpacity() {
            return -3;
        }

        @Override // android.graphics.drawable.Drawable
        public void onBoundsChange(Rect rect) {
            super.onBoundsChange(rect);
            float f = 0;
            float width = rect.width();
            float height = rect.height();
            RectF rectF = this.b;
            rectF.set(f, f, width, height);
            Matrix matrix = new Matrix();
            matrix.setRectToRect(this.f21004c, rectF, Matrix.ScaleToFit.FILL);
            this.d.setLocalMatrix(matrix);
        }

        @Override // android.graphics.drawable.Drawable
        public final void setAlpha(int i) {
            this.e.setAlpha(i);
        }

        @Override // android.graphics.drawable.Drawable
        public final void setColorFilter(ColorFilter colorFilter) {
            this.e.setColorFilter(colorFilter);
        }
    }

    @Override // com.nostra13.universalimageloader.core.display.BitmapDisplayer
    public void a(Bitmap bitmap, ImageAware imageAware) {
        if (imageAware instanceof ImageViewAware) {
            ((ViewAware) imageAware).f(new RoundedDrawable(bitmap));
            return;
        }
        throw new IllegalArgumentException("ImageAware should wrap ImageView. ImageViewAware is expected.");
    }
}
