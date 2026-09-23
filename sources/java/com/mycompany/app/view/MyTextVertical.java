package com.mycompany.app.view;

import android.graphics.Canvas;
import android.text.TextPaint;
import androidx.appcompat.widget.AppCompatTextView;

/* loaded from: classes3.dex */
public class MyTextVertical extends AppCompatTextView {
    public int l;

    @Override // android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        try {
            TextPaint paint = getPaint();
            if (paint == null) {
                super.onDraw(canvas);
                return;
            }
            paint.setColor(getCurrentTextColor());
            paint.drawableState = getDrawableState();
            canvas.save();
            canvas.translate(0.0f, getHeight());
            canvas.rotate(-90.0f);
            canvas.translate(getCompoundPaddingLeft(), getExtendedPaddingTop());
            getLayout().draw(canvas);
            canvas.restore();
        } catch (Exception unused) {
        }
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i2, i);
        setMeasuredDimension(getMeasuredHeight(), getMeasuredWidth());
    }

    @Override // android.widget.TextView
    public void setTextColor(int i) {
        if (this.l == i) {
            return;
        }
        this.l = i;
        super.setTextColor(i);
    }
}
