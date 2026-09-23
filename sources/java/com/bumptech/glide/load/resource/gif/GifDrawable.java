package com.bumptech.glide.load.resource.gif;

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
import com.bumptech.glide.load.resource.gif.GifFrameLoader;
import com.bumptech.glide.util.Preconditions;
import java.nio.ByteBuffer;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class GifDrawable extends Drawable implements GifFrameLoader.FrameCallback, Animatable, Animatable2Compat {

    /* renamed from: c, reason: collision with root package name */
    public final GifState f2402c;
    public boolean f;
    public boolean g;
    public boolean h;
    public int j;
    public boolean l;
    public Paint m;
    public Rect n;
    public boolean i = true;
    public final int k = -1;

    /* loaded from: classes.dex */
    public static final class GifState extends Drawable.ConstantState {

        /* renamed from: a, reason: collision with root package name */
        public final GifFrameLoader f2403a;

        public GifState(GifFrameLoader gifFrameLoader) {
            this.f2403a = gifFrameLoader;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            return new GifDrawable(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            return new GifDrawable(this);
        }
    }

    public GifDrawable(GifState gifState) {
        this.f2402c = gifState;
    }

    @Override // com.bumptech.glide.load.resource.gif.GifFrameLoader.FrameCallback
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
        GifFrameLoader.DelayTarget delayTarget = this.f2402c.f2403a.i;
        if (delayTarget != null) {
            i = delayTarget.i;
        } else {
            i = -1;
        }
        if (i == r0.f2404a.l.f2110c - 1) {
            this.j++;
        }
        int i2 = this.k;
        if (i2 != -1 && this.j >= i2) {
            stop();
        }
    }

    public final ByteBuffer b() {
        return this.f2402c.f2403a.f2404a.d.asReadOnlyBuffer();
    }

    public final Bitmap c() {
        return this.f2402c.f2403a.l;
    }

    public final void d() {
        Preconditions.a("You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request.", !this.h);
        GifFrameLoader gifFrameLoader = this.f2402c.f2403a;
        if (gifFrameLoader.f2404a.l.f2110c == 1) {
            invalidateSelf();
            return;
        }
        if (!this.f) {
            this.f = true;
            ArrayList arrayList = gifFrameLoader.f2405c;
            if (!gifFrameLoader.j) {
                if (!arrayList.contains(this)) {
                    boolean isEmpty = arrayList.isEmpty();
                    arrayList.add(this);
                    if (isEmpty && !gifFrameLoader.f) {
                        gifFrameLoader.f = true;
                        gifFrameLoader.j = false;
                        gifFrameLoader.a();
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
        GifFrameLoader gifFrameLoader = this.f2402c.f2403a;
        GifFrameLoader.DelayTarget delayTarget = gifFrameLoader.i;
        if (delayTarget != null) {
            bitmap = delayTarget.k;
        } else {
            bitmap = gifFrameLoader.l;
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
        return this.f2402c;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.f2402c.f2403a.q;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.f2402c.f2403a.p;
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
            GifFrameLoader gifFrameLoader = this.f2402c.f2403a;
            ArrayList arrayList = gifFrameLoader.f2405c;
            arrayList.remove(this);
            if (arrayList.isEmpty()) {
                gifFrameLoader.f = false;
            }
        } else if (this.g) {
            d();
        }
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        this.g = true;
        this.j = 0;
        if (this.i) {
            d();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        this.g = false;
        this.f = false;
        GifFrameLoader gifFrameLoader = this.f2402c.f2403a;
        ArrayList arrayList = gifFrameLoader.f2405c;
        arrayList.remove(this);
        if (arrayList.isEmpty()) {
            gifFrameLoader.f = false;
        }
    }
}
