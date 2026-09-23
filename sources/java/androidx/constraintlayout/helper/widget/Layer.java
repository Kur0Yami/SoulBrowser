package androidx.constraintlayout.helper.widget;

import android.view.View;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;

/* loaded from: classes.dex */
public class Layer extends ConstraintHelper {
    public float A;
    public float m;
    public float n;
    public float o;
    public ConstraintLayout p;
    public float q;
    public float r;
    public float s;
    public float t;
    public float u;
    public float v;
    public float w;
    public float x;
    public View[] y;
    public float z;

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public final void f(ConstraintLayout constraintLayout) {
        e(constraintLayout);
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public final void k() {
        o();
        this.s = Float.NaN;
        this.t = Float.NaN;
        ConstraintWidget constraintWidget = ((ConstraintLayout.LayoutParams) getLayoutParams()).p0;
        constraintWidget.K(0);
        constraintWidget.H(0);
        n();
        layout(((int) this.w) - getPaddingLeft(), ((int) this.x) - getPaddingTop(), getPaddingRight() + ((int) this.u), getPaddingBottom() + ((int) this.v));
        p();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public final void l(ConstraintLayout constraintLayout) {
        this.p = constraintLayout;
        float rotation = getRotation();
        if (rotation == 0.0f) {
            if (!Float.isNaN(this.o)) {
                this.o = rotation;
                return;
            }
            return;
        }
        this.o = rotation;
    }

    public final void n() {
        if (this.p != null) {
            if (!Float.isNaN(this.s) && !Float.isNaN(this.t)) {
                return;
            }
            if (!Float.isNaN(this.m) && !Float.isNaN(this.n)) {
                this.t = this.n;
                this.s = this.m;
                return;
            }
            View[] h = h(this.p);
            int left = h[0].getLeft();
            int top = h[0].getTop();
            int right = h[0].getRight();
            int bottom = h[0].getBottom();
            for (int i = 0; i < this.f; i++) {
                View view = h[i];
                left = Math.min(left, view.getLeft());
                top = Math.min(top, view.getTop());
                right = Math.max(right, view.getRight());
                bottom = Math.max(bottom, view.getBottom());
            }
            this.u = right;
            this.v = bottom;
            this.w = left;
            this.x = top;
            if (Float.isNaN(this.m)) {
                this.s = (left + right) / 2;
            } else {
                this.s = this.m;
            }
            if (Float.isNaN(this.n)) {
                this.t = (top + bottom) / 2;
            } else {
                this.t = this.n;
            }
        }
    }

    public final void o() {
        int i;
        if (this.p != null && (i = this.f) != 0) {
            View[] viewArr = this.y;
            if (viewArr == null || viewArr.length != i) {
                this.y = new View[i];
            }
            for (int i2 = 0; i2 < this.f; i2++) {
                this.y[i2] = this.p.b(this.f576c[i2]);
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.p = (ConstraintLayout) getParent();
        int visibility = getVisibility();
        float elevation = getElevation();
        for (int i = 0; i < this.f; i++) {
            View b = this.p.b(this.f576c[i]);
            if (b != null) {
                b.setVisibility(visibility);
                if (elevation > 0.0f) {
                    b.setTranslationZ(b.getTranslationZ() + elevation);
                }
            }
        }
    }

    public final void p() {
        double radians;
        if (this.p != null) {
            if (this.y == null) {
                o();
            }
            n();
            if (Float.isNaN(this.o)) {
                radians = 0.0d;
            } else {
                radians = Math.toRadians(this.o);
            }
            float sin = (float) Math.sin(radians);
            float cos = (float) Math.cos(radians);
            float f = this.q;
            float f2 = f * cos;
            float f3 = this.r;
            float f4 = (-f3) * sin;
            float f5 = f * sin;
            float f6 = f3 * cos;
            for (int i = 0; i < this.f; i++) {
                View view = this.y[i];
                int right = (view.getRight() + view.getLeft()) / 2;
                int bottom = (view.getBottom() + view.getTop()) / 2;
                float f7 = right - this.s;
                float f8 = bottom - this.t;
                float f9 = (((f4 * f8) + (f2 * f7)) - f7) + this.z;
                float f10 = (((f6 * f8) + (f7 * f5)) - f8) + this.A;
                view.setTranslationX(f9);
                view.setTranslationY(f10);
                view.setScaleY(this.r);
                view.setScaleX(this.q);
                if (!Float.isNaN(this.o)) {
                    view.setRotation(this.o);
                }
            }
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        d();
    }

    @Override // android.view.View
    public void setPivotX(float f) {
        this.m = f;
        p();
    }

    @Override // android.view.View
    public void setPivotY(float f) {
        this.n = f;
        p();
    }

    @Override // android.view.View
    public void setRotation(float f) {
        this.o = f;
        p();
    }

    @Override // android.view.View
    public void setScaleX(float f) {
        this.q = f;
        p();
    }

    @Override // android.view.View
    public void setScaleY(float f) {
        this.r = f;
        p();
    }

    @Override // android.view.View
    public void setTranslationX(float f) {
        this.z = f;
        p();
    }

    @Override // android.view.View
    public void setTranslationY(float f) {
        this.A = f;
        p();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        d();
    }
}
