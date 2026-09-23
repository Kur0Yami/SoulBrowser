package com.bumptech.glide.integration.webp.decoder;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.Gravity;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import com.bumptech.glide.integration.webp.decoder.WebpFrameLoader;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.util.Preconditions;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class WebpDrawable extends Drawable implements WebpFrameLoader.FrameCallback, Animatable, Animatable2Compat {

    /* renamed from: c, reason: collision with root package name */
    public final WebpState f2137c;
    public boolean f;
    public boolean g;
    public boolean h;
    public boolean i = true;
    public int j;
    public final int k;
    public boolean l;
    public Paint m;
    public Rect n;

    /* loaded from: classes.dex */
    public static class WebpState extends Drawable.ConstantState {

        /* renamed from: a, reason: collision with root package name */
        public final BitmapPool f2138a;
        public final WebpFrameLoader b;

        public WebpState(BitmapPool bitmapPool, WebpFrameLoader webpFrameLoader) {
            this.f2138a = bitmapPool;
            this.b = webpFrameLoader;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            return new WebpDrawable(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            return new WebpDrawable(this);
        }
    }

    public WebpDrawable(WebpState webpState) {
        int loopCount;
        this.k = -1;
        this.f2137c = webpState;
        WebpDecoder webpDecoder = webpState.b.f2142a;
        if (webpDecoder.b.getLoopCount() == 0) {
            loopCount = 0;
        } else {
            loopCount = webpDecoder.b.getLoopCount();
        }
        this.k = loopCount != 0 ? loopCount : -1;
    }

    @Override // com.bumptech.glide.integration.webp.decoder.WebpFrameLoader.FrameCallback
    public final void a() {
        int i;
        Object callback = getCallback();
        while (callback instanceof Drawable) {
            callback = ((Drawable) callback).getCallback();
        }
        if (callback == null) {
            stop();
            invalidateSelf();
            return;
        }
        invalidateSelf();
        WebpFrameLoader.DelayTarget delayTarget = this.f2137c.b.i;
        if (delayTarget != null) {
            i = delayTarget.i;
        } else {
            i = -1;
        }
        if (i == r0.f2142a.b.getFrameCount() - 1) {
            this.j++;
        }
        int i2 = this.k;
        if (i2 != -1 && this.j >= i2) {
            stop();
        }
    }

    public final void b() {
        Preconditions.a("You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request.", !this.h);
        WebpState webpState = this.f2137c;
        if (webpState.b.f2142a.b.getFrameCount() == 1) {
            invalidateSelf();
            return;
        }
        if (!this.f) {
            this.f = true;
            WebpFrameLoader webpFrameLoader = webpState.b;
            ArrayList arrayList = webpFrameLoader.f2143c;
            if (!webpFrameLoader.j) {
                if (!arrayList.contains(this)) {
                    boolean isEmpty = arrayList.isEmpty();
                    arrayList.add(this);
                    if (isEmpty && !webpFrameLoader.f) {
                        webpFrameLoader.f = true;
                        webpFrameLoader.j = false;
                        webpFrameLoader.a();
                    }
                    invalidateSelf();
                    return;
                }
                throw new IllegalStateException("Cannot subscribe twice in a row");
            }
            throw new IllegalStateException("Cannot subscribe to a cleared frame loader");
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Bitmap bitmap;
        if (this.h) {
            return;
        }
        if (this.l) {
            int intrinsicWidth = getIntrinsicWidth();
            int intrinsicHeight = getIntrinsicHeight();
            Rect bounds = getBounds();
            if (this.n == null) {
                this.n = new Rect();
            }
            Gravity.apply(119, intrinsicWidth, intrinsicHeight, bounds, this.n);
            this.l = false;
        }
        WebpFrameLoader webpFrameLoader = this.f2137c.b;
        WebpFrameLoader.DelayTarget delayTarget = webpFrameLoader.i;
        if (delayTarget != null) {
            bitmap = delayTarget.k;
        } else {
            bitmap = webpFrameLoader.l;
        }
        if (this.n == null) {
            this.n = new Rect();
        }
        Rect rect = this.n;
        if (this.m == null) {
            this.m = new Paint(2);
        }
        canvas.drawBitmap(bitmap, (Rect) null, rect, this.m);
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.f2137c;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.f2137c.b.p;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.f2137c.b.o;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        return this.f;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.l = true;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        if (this.m == null) {
            this.m = new Paint(2);
        }
        this.m.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        if (this.m == null) {
            this.m = new Paint(2);
        }
        this.m.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        Preconditions.a("Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View's visibility.", !this.h);
        this.i = z;
        if (!z) {
            this.f = false;
            WebpFrameLoader webpFrameLoader = this.f2137c.b;
            ArrayList arrayList = webpFrameLoader.f2143c;
            arrayList.remove(this);
            if (arrayList.isEmpty()) {
                webpFrameLoader.f = false;
            }
        } else if (this.g) {
            b();
        }
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        this.g = true;
        this.j = 0;
        if (this.i) {
            b();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        this.g = false;
        this.f = false;
        WebpFrameLoader webpFrameLoader = this.f2137c.b;
        ArrayList arrayList = webpFrameLoader.f2143c;
        arrayList.remove(this);
        if (arrayList.isEmpty()) {
            webpFrameLoader.f = false;
        }
    }
}
