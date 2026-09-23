package com.mycompany.app.web;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefZone;

/* loaded from: classes3.dex */
public class WebTabGridItem extends FrameLayout {

    /* renamed from: c, reason: collision with root package name */
    public final int f19547c;
    public final int f;
    public Paint g;
    public RectF h;
    public float i;
    public Paint j;
    public RectF k;
    public float l;
    public TabGridListener m;

    /* loaded from: classes3.dex */
    public interface TabGridListener {
        void a();
    }

    public WebTabGridItem(Context context) {
        super(context);
        this.f19547c = MainApp.F1;
        if (PrefZone.C == 0) {
            int i = MainApp.q1;
            this.f = i;
            this.l = i;
            setOutlineProvider(new ViewOutlineProvider() { // from class: com.mycompany.app.web.WebTabGridItem.1
                @Override // android.view.ViewOutlineProvider
                public final void getOutline(View view, Outline outline) {
                    if (outline == null) {
                        return;
                    }
                    WebTabGridItem webTabGridItem = WebTabGridItem.this;
                    int i2 = webTabGridItem.f;
                    outline.setRoundRect(i2, i2, webTabGridItem.getWidth() - webTabGridItem.f, webTabGridItem.getHeight() - webTabGridItem.f, webTabGridItem.f19547c);
                }
            });
            setClipToOutline(true);
            return;
        }
        this.f = 0;
        this.l = 0.0f;
    }

    public final void a(int i, int i2, boolean z) {
        if (i != 0) {
            if (this.j == null) {
                Paint paint = new Paint();
                this.j = paint;
                paint.setAntiAlias(true);
                this.j.setStyle(Paint.Style.STROKE);
            }
            this.j.setColor(i);
            float f = i2;
            this.j.setStrokeWidth(f);
            float f2 = f / 2.0f;
            if (PrefZone.C != 0 && !z) {
                this.l = f2;
                this.k = null;
            } else {
                this.i = this.f19547c - MainUtil.G(getContext(), 1.0f);
                if (PrefZone.C == 0) {
                    this.l = MainApp.q1 + f2;
                } else {
                    this.l = f2;
                }
                if (this.k == null) {
                    this.k = new RectF();
                }
                RectF rectF = this.k;
                float f3 = this.l;
                rectF.set(f3, f3, getWidth() - this.l, getHeight() - this.l);
            }
        } else {
            this.j = null;
            this.k = null;
        }
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        Paint paint;
        RectF rectF = this.h;
        if (rectF != null && (paint = this.g) != null) {
            canvas.drawRect(rectF, paint);
        }
        super.dispatchDraw(canvas);
        Paint paint2 = this.j;
        if (paint2 != null) {
            RectF rectF2 = this.k;
            if (rectF2 != null) {
                float f = this.i;
                canvas.drawRoundRect(rectF2, f, f, paint2);
            } else {
                canvas.drawLine(MainApp.E1, getHeight() - this.l, getWidth() - MainApp.E1, getHeight() - this.l, this.j);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        TabGridListener tabGridListener;
        if (motionEvent.getActionMasked() == 0 && (tabGridListener = this.m) != null) {
            tabGridListener.a();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        RectF rectF = this.k;
        if (rectF != null) {
            float f = this.l;
            rectF.set(f, f, i - f, i2 - f);
        }
        if (this.h != null) {
            int G = this.f + ((int) MainUtil.G(getContext(), 32.0f)) + this.f19547c;
            RectF rectF2 = this.h;
            int i5 = this.f;
            rectF2.set(i5, i5, i - i5, G);
        }
    }

    public void setHeadColor(int i) {
        if (i != 0) {
            if (this.g == null) {
                Paint paint = new Paint();
                this.g = paint;
                paint.setStyle(Paint.Style.FILL);
            }
            this.g.setColor(i);
            if (this.h == null) {
                this.h = new RectF();
            }
            int G = this.f + ((int) MainUtil.G(getContext(), 32.0f)) + this.f19547c;
            RectF rectF = this.h;
            int i2 = this.f;
            rectF.set(i2, i2, getWidth() - this.f, G);
        } else {
            this.g = null;
            this.h = null;
        }
        invalidate();
    }

    public void setListener(TabGridListener tabGridListener) {
        this.m = tabGridListener;
    }
}
