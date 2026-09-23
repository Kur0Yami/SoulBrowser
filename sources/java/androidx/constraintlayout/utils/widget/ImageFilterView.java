package androidx.constraintlayout.utils.widget;

import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.ImageView;
import androidx.annotation.RequiresApi;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatImageView;

/* loaded from: classes.dex */
public class ImageFilterView extends AppCompatImageView {
    public Drawable h;
    public float i;
    public float j;
    public float k;
    public float l;
    public float m;
    public float n;
    public float o;

    /* renamed from: androidx.constraintlayout.utils.widget.ImageFilterView$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 extends ViewOutlineProvider {
        @Override // android.view.ViewOutlineProvider
        public final void getOutline(View view, Outline outline) {
            throw null;
        }
    }

    /* renamed from: androidx.constraintlayout.utils.widget.ImageFilterView$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass2 extends ViewOutlineProvider {
        @Override // android.view.ViewOutlineProvider
        public final void getOutline(View view, Outline outline) {
            throw null;
        }
    }

    /* loaded from: classes.dex */
    public static class ImageMatrix {
    }

    private void setOverlay(boolean z) {
    }

    public final void c() {
        float f;
        float f2;
        float f3;
        float f4;
        if (Float.isNaN(this.l) && Float.isNaN(this.m) && Float.isNaN(this.n) && Float.isNaN(this.o)) {
            return;
        }
        float f5 = 0.0f;
        if (Float.isNaN(this.l)) {
            f = 0.0f;
        } else {
            f = this.l;
        }
        if (Float.isNaN(this.m)) {
            f2 = 0.0f;
        } else {
            f2 = this.m;
        }
        if (Float.isNaN(this.n)) {
            f3 = 1.0f;
        } else {
            f3 = this.n;
        }
        if (!Float.isNaN(this.o)) {
            f5 = this.o;
        }
        Matrix matrix = new Matrix();
        matrix.reset();
        float intrinsicWidth = getDrawable().getIntrinsicWidth();
        float intrinsicHeight = getDrawable().getIntrinsicHeight();
        float width = getWidth();
        float height = getHeight();
        if (intrinsicWidth * height < intrinsicHeight * width) {
            f4 = width / intrinsicWidth;
        } else {
            f4 = height / intrinsicHeight;
        }
        float f6 = f3 * f4;
        matrix.postScale(f6, f6);
        float f7 = intrinsicWidth * f6;
        float f8 = f6 * intrinsicHeight;
        matrix.postTranslate(((((width - f7) * f) + width) - f7) * 0.5f, ((((height - f8) * f2) + height) - f8) * 0.5f);
        matrix.postRotate(f5, width / 2.0f, height / 2.0f);
        setImageMatrix(matrix);
        setScaleType(ImageView.ScaleType.MATRIX);
    }

    public final void d() {
        if (Float.isNaN(this.l) && Float.isNaN(this.m) && Float.isNaN(this.n) && Float.isNaN(this.o)) {
            setScaleType(ImageView.ScaleType.FIT_CENTER);
        } else {
            c();
        }
    }

    public float getBrightness() {
        throw null;
    }

    public float getContrast() {
        throw null;
    }

    public float getCrossfade() {
        return this.i;
    }

    public float getImagePanX() {
        return this.l;
    }

    public float getImagePanY() {
        return this.m;
    }

    public float getImageRotate() {
        return this.o;
    }

    public float getImageZoom() {
        return this.n;
    }

    public float getRound() {
        return this.k;
    }

    public float getRoundPercent() {
        return this.j;
    }

    public float getSaturation() {
        throw null;
    }

    public float getWarmth() {
        throw null;
    }

    @Override // android.view.View
    public final void layout(int i, int i2, int i3, int i4) {
        super.layout(i, i2, i3, i4);
        c();
    }

    public void setAltImageResource(int i) {
        this.h = AppCompatResources.a(getContext(), i).mutate();
        throw null;
    }

    public void setBrightness(float f) {
        throw null;
    }

    public void setContrast(float f) {
        throw null;
    }

    public void setCrossfade(float f) {
        this.i = f;
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        if (this.h != null && drawable != null) {
            drawable.mutate();
            throw null;
        }
        super.setImageDrawable(drawable);
    }

    public void setImagePanX(float f) {
        this.l = f;
        d();
    }

    public void setImagePanY(float f) {
        this.m = f;
        d();
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageResource(int i) {
        if (this.h == null) {
            super.setImageResource(i);
        } else {
            AppCompatResources.a(getContext(), i).mutate();
            throw null;
        }
    }

    public void setImageRotate(float f) {
        this.o = f;
        d();
    }

    public void setImageZoom(float f) {
        this.n = f;
        d();
    }

    @RequiresApi
    public void setRound(float f) {
        boolean z;
        if (Float.isNaN(f)) {
            this.k = f;
            float f2 = this.j;
            this.j = -1.0f;
            setRoundPercent(f2);
            return;
        }
        if (this.k != f) {
            z = true;
        } else {
            z = false;
        }
        this.k = f;
        if (f == 0.0f) {
            setClipToOutline(false);
            if (z) {
                invalidateOutline();
                return;
            }
            return;
        }
        setClipToOutline(true);
        getWidth();
        getHeight();
        throw null;
    }

    @RequiresApi
    public void setRoundPercent(float f) {
        boolean z;
        if (this.j != f) {
            z = true;
        } else {
            z = false;
        }
        this.j = f;
        if (f == 0.0f) {
            setClipToOutline(false);
            if (z) {
                invalidateOutline();
                return;
            }
            return;
        }
        setClipToOutline(true);
        Math.min(getWidth(), getHeight());
        throw null;
    }

    public void setSaturation(float f) {
        throw null;
    }

    public void setWarmth(float f) {
        throw null;
    }
}
