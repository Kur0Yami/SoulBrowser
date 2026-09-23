package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.appcompat.R;
import androidx.core.view.ViewCompat;

/* loaded from: classes.dex */
class AppCompatSeekBarHelper extends AppCompatProgressBarHelper {
    public final AppCompatSeekBar d;
    public Drawable e;
    public ColorStateList f;
    public PorterDuff.Mode g;
    public boolean h;
    public boolean i;

    public AppCompatSeekBarHelper(AppCompatSeekBar appCompatSeekBar) {
        super(appCompatSeekBar);
        this.f = null;
        this.g = null;
        this.h = false;
        this.i = false;
        this.d = appCompatSeekBar;
    }

    @Override // androidx.appcompat.widget.AppCompatProgressBarHelper
    public final void a(AttributeSet attributeSet, int i) {
        super.a(attributeSet, i);
        AppCompatSeekBar appCompatSeekBar = this.d;
        TintTypedArray e = TintTypedArray.e(appCompatSeekBar.getContext(), attributeSet, R.styleable.AppCompatSeekBar, i);
        TypedArray typedArray = e.b;
        ViewCompat.y(appCompatSeekBar, appCompatSeekBar.getContext(), R.styleable.AppCompatSeekBar, attributeSet, e.b, i);
        Drawable c2 = e.c(R.styleable.AppCompatSeekBar_android_thumb);
        if (c2 != null) {
            appCompatSeekBar.setThumb(c2);
        }
        Drawable b = e.b(R.styleable.AppCompatSeekBar_tickMark);
        Drawable drawable = this.e;
        if (drawable != null) {
            drawable.setCallback(null);
        }
        this.e = b;
        if (b != null) {
            b.setCallback(appCompatSeekBar);
            b.setLayoutDirection(appCompatSeekBar.getLayoutDirection());
            if (b.isStateful()) {
                b.setState(appCompatSeekBar.getDrawableState());
            }
            c();
        }
        appCompatSeekBar.invalidate();
        if (typedArray.hasValue(R.styleable.AppCompatSeekBar_tickMarkTintMode)) {
            this.g = DrawableUtils.c(typedArray.getInt(R.styleable.AppCompatSeekBar_tickMarkTintMode, -1), this.g);
            this.i = true;
        }
        if (typedArray.hasValue(R.styleable.AppCompatSeekBar_tickMarkTint)) {
            this.f = e.a(R.styleable.AppCompatSeekBar_tickMarkTint);
            this.h = true;
        }
        e.f();
        c();
    }

    public final void c() {
        Drawable drawable = this.e;
        if (drawable != null) {
            if (this.h || this.i) {
                Drawable mutate = drawable.mutate();
                this.e = mutate;
                if (this.h) {
                    mutate.setTintList(this.f);
                }
                if (this.i) {
                    this.e.setTintMode(this.g);
                }
                if (this.e.isStateful()) {
                    this.e.setState(this.d.getDrawableState());
                }
            }
        }
    }

    public final void d(Canvas canvas) {
        int i;
        if (this.e != null) {
            int max = this.d.getMax();
            int i2 = 1;
            if (max > 1) {
                int intrinsicWidth = this.e.getIntrinsicWidth();
                int intrinsicHeight = this.e.getIntrinsicHeight();
                if (intrinsicWidth >= 0) {
                    i = intrinsicWidth / 2;
                } else {
                    i = 1;
                }
                if (intrinsicHeight >= 0) {
                    i2 = intrinsicHeight / 2;
                }
                this.e.setBounds(-i, -i2, i, i2);
                float width = ((r0.getWidth() - r0.getPaddingLeft()) - r0.getPaddingRight()) / max;
                int save = canvas.save();
                canvas.translate(r0.getPaddingLeft(), r0.getHeight() / 2);
                for (int i3 = 0; i3 <= max; i3++) {
                    this.e.draw(canvas);
                    canvas.translate(width, 0.0f);
                }
                canvas.restoreToCount(save);
            }
        }
    }
}
