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
public class CircleBitmapDisplayer implements BitmapDisplayer {

    /* loaded from: classes3.dex */
    public static class CircleDrawable extends Drawable {

        /* renamed from: a, reason: collision with root package name */
        public float f21001a;
        public final RectF b = new RectF();

        /* renamed from: c, reason: collision with root package name */
        public final RectF f21002c;
        public final BitmapShader d;
        public final Paint e;
        public final Paint f;
        public float g;

        public CircleDrawable(Bitmap bitmap) {
            this.f21001a = Math.min(bitmap.getWidth(), bitmap.getHeight()) / 2;
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
            this.d = bitmapShader;
            this.f21002c = new RectF(0.0f, 0.0f, bitmap.getWidth(), bitmap.getHeight());
            Paint paint = new Paint();
            this.e = paint;
            paint.setAntiAlias(true);
            paint.setShader(bitmapShader);
            paint.setFilterBitmap(true);
            this.f = null;
            this.g = this.f21001a - 0.0f;
        }

        @Override // android.graphics.drawable.Drawable
        public final void draw(Canvas canvas) {
            float f = this.f21001a;
            canvas.drawCircle(f, f, f, this.e);
            Paint paint = this.f;
            if (paint != null) {
                float f2 = this.f21001a;
                canvas.drawCircle(f2, f2, this.g, paint);
            }
        }

        @Override // android.graphics.drawable.Drawable
        public final int getOpacity() {
            return -3;
        }

        @Override // android.graphics.drawable.Drawable
        public final void onBoundsChange(Rect rect) {
            super.onBoundsChange(rect);
            float width = rect.width();
            float height = rect.height();
            RectF rectF = this.b;
            rectF.set(0.0f, 0.0f, width, height);
            float min = Math.min(rect.width(), rect.height()) / 2;
            this.f21001a = min;
            this.g = min - 0.0f;
            Matrix matrix = new Matrix();
            matrix.setRectToRect(this.f21002c, rectF, Matrix.ScaleToFit.FILL);
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
    public final void a(Bitmap bitmap, ImageAware imageAware) {
        if (imageAware instanceof ImageViewAware) {
            ((ViewAware) imageAware).f(new CircleDrawable(bitmap));
            return;
        }
        throw new IllegalArgumentException("ImageAware should wrap ImageView. ImageViewAware is expected.");
    }
}
