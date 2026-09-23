package com.mycompany.app.view;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.TextPaint;
import androidx.appcompat.widget.AppCompatTextView;
import com.mycompany.app.main.MainApp;

/* loaded from: classes3.dex */
public class MyTextView extends AppCompatTextView {
    public int l;
    public final int m;
    public int n;

    public MyTextView(Context context) {
        super(context, null);
        this.m = MainApp.G1 / 2;
        this.n = 1234;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        try {
            if (this.l == 0) {
                super.onDraw(canvas);
                return;
            }
            TextPaint paint = getPaint();
            if (paint == null) {
                super.onDraw(canvas);
                return;
            }
            ColorStateList textColors = getTextColors();
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeJoin(Paint.Join.ROUND);
            paint.setStrokeWidth(this.m);
            super.setTextColor(this.l);
            super.onDraw(canvas);
            paint.setStyle(Paint.Style.FILL);
            super.setTextColor(textColors);
            super.onDraw(canvas);
        } catch (Exception unused) {
        }
    }

    public void setOutlineColor(int i) {
        if (this.l != i) {
            this.l = i;
            invalidate();
        }
    }

    @Override // android.widget.TextView
    public void setTextColor(int i) {
        if (this.n == i) {
            return;
        }
        this.n = i;
        super.setTextColor(i);
    }
}
