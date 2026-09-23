package androidx.viewpager.widget;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DrawableRes;

/* loaded from: classes.dex */
public class PagerTabStrip extends PagerTitleStrip {
    public int h;
    public boolean i;
    public boolean j;
    public float k;
    public float l;

    /* renamed from: androidx.viewpager.widget.PagerTabStrip$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            throw null;
        }
    }

    /* renamed from: androidx.viewpager.widget.PagerTabStrip$2, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass2 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            throw null;
        }
    }

    @Override // androidx.viewpager.widget.PagerTitleStrip
    public final void b(float f) {
        getHeight();
        throw null;
    }

    public boolean getDrawFullUnderline() {
        return this.i;
    }

    @Override // androidx.viewpager.widget.PagerTitleStrip
    public int getMinHeight() {
        return Math.max(super.getMinHeight(), 0);
    }

    @ColorInt
    public int getTabIndicatorColor() {
        return this.h;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        getHeight();
        throw null;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0 && this.j) {
            return false;
        }
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        if (action != 0) {
            if (action != 1) {
                if (action == 2) {
                    float f = 0;
                    if (Math.abs(x - this.k) > f || Math.abs(y - this.l) > f) {
                        this.j = true;
                        return true;
                    }
                }
                return true;
            }
            throw null;
        }
        this.k = x;
        this.l = y;
        this.j = false;
        return true;
    }

    @Override // android.view.View
    public void setBackgroundColor(@ColorInt int i) {
        super.setBackgroundColor(i);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundResource(@DrawableRes int i) {
        super.setBackgroundResource(i);
    }

    public void setDrawFullUnderline(boolean z) {
        this.i = z;
        invalidate();
    }

    @Override // android.view.View
    public final void setPadding(int i, int i2, int i3, int i4) {
        if (i4 < 0) {
            i4 = 0;
        }
        super.setPadding(i, i2, i3, i4);
    }

    public void setTabIndicatorColor(@ColorInt int i) {
        this.h = i;
        throw null;
    }

    public void setTabIndicatorColorResource(@ColorRes int i) {
        setTabIndicatorColor(getContext().getColor(i));
    }

    @Override // androidx.viewpager.widget.PagerTitleStrip
    public void setTextSpacing(int i) {
        if (i < 0) {
            i = 0;
        }
        super.setTextSpacing(i);
    }
}
