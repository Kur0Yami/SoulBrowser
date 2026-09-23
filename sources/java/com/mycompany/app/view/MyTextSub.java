package com.mycompany.app.view;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.TextPaint;
import androidx.appcompat.widget.AppCompatTextView;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.setting.CastActivity;

/* loaded from: classes3.dex */
public class MyTextSub extends AppCompatTextView {
    public int l;
    public int m;
    public float n;
    public int o;

    public MyTextSub(CastActivity castActivity) {
        super(castActivity, null);
        this.l = 1;
        this.m = 2;
        this.n = MainUtil.G(castActivity, 2);
        this.o = -16777216;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        try {
            int i = this.l;
            if (i != 2 || (this.o != 0 && this.m != 0)) {
                if (i == 1 && this.o != 0) {
                    TextPaint paint = getPaint();
                    if (paint == null) {
                        super.onDraw(canvas);
                        return;
                    }
                    if (this.m == 0) {
                        paint.setStyle(Paint.Style.FILL);
                        super.onDraw(canvas);
                        return;
                    }
                    ColorStateList textColors = getTextColors();
                    paint.setStyle(Paint.Style.STROKE);
                    paint.setStrokeJoin(Paint.Join.ROUND);
                    paint.setStrokeWidth(this.n);
                    super.setTextColor(this.o);
                    super.onDraw(canvas);
                    paint.setStyle(Paint.Style.FILL);
                    super.setTextColor(textColors);
                    super.onDraw(canvas);
                    return;
                }
                super.onDraw(canvas);
            }
        } catch (Exception unused) {
        }
    }

    public final void q(int i, int i2) {
        boolean z;
        boolean z2 = true;
        if (this.m != i) {
            this.m = i;
            this.n = MainUtil.G(getContext(), this.m);
            TextPaint paint = getPaint();
            if (paint != null) {
                paint.setStrokeWidth(this.n);
            }
            z = true;
        } else {
            z = false;
        }
        if (this.o != i2) {
            this.o = i2;
            setTextColor(i2);
        } else {
            z2 = z;
        }
        if (z2) {
            invalidate();
        }
    }

    public void setOutlineColor(int i) {
        if (this.o == i) {
            return;
        }
        this.o = i;
        setTextColor(i);
        invalidate();
    }

    public void setOutlineType(int i) {
        if (i != this.l) {
            this.l = i;
            if (i == 2) {
                TextPaint paint = getPaint();
                if (paint != null) {
                    paint.setStyle(Paint.Style.STROKE);
                    paint.setStrokeJoin(Paint.Join.ROUND);
                    paint.setStrokeWidth(this.n);
                }
                setTextColor(this.o);
            }
        }
    }

    public void setOutlineWidth(int i) {
        if (this.m == i) {
            return;
        }
        this.m = i;
        this.n = MainUtil.G(getContext(), this.m);
        TextPaint paint = getPaint();
        if (paint != null) {
            paint.setStrokeWidth(this.n);
        }
        invalidate();
    }
}
