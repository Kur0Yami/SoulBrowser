package com.mycompany.app.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.widget.RelativeLayout;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;

/* loaded from: classes3.dex */
public class MyListGroup extends RelativeLayout {

    /* renamed from: c, reason: collision with root package name */
    public boolean f18854c;
    public Drawable f;
    public boolean g;
    public float h;
    public Drawable i;
    public Drawable j;
    public boolean k;

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        Drawable S;
        Drawable S2;
        if (this.f18854c) {
            super.dispatchDraw(canvas);
            if (this.h < MainApp.m1) {
                int width = getWidth();
                int height = getHeight();
                if (this.f == null) {
                    return;
                }
                boolean z = this.k;
                boolean z2 = MainApp.K1;
                if (z != z2) {
                    this.k = z2;
                    try {
                        Context context = getContext();
                        if (MainApp.K1) {
                            S = MainUtil.S(context, R.drawable.round_top_left_d);
                            S2 = MainUtil.S(context, R.drawable.round_top_right_d);
                        } else {
                            S = MainUtil.S(context, R.drawable.round_top_left_w);
                            S2 = MainUtil.S(context, R.drawable.round_top_right_w);
                        }
                        this.i = S;
                        this.j = S2;
                        this.g = true;
                    } catch (Exception unused) {
                    }
                }
                if (this.g) {
                    this.g = false;
                    int i = height - MainApp.m1;
                    this.f.setBounds(0, i, width, MainApp.e1 + i);
                    this.i.setBounds(0, i, MainApp.m1, height);
                    this.j.setBounds(width - MainApp.m1, i, width, height);
                }
                float f = this.h;
                if (f > 0.0f) {
                    canvas.clipRect(0.0f, 0.0f, width, height - f);
                }
                this.f.draw(canvas);
                this.i.draw(canvas);
                this.j.draw(canvas);
            }
        }
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.f18854c) {
            return;
        }
        super.invalidate();
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.g = true;
    }

    public void setShadowBottom(float f) {
        if (Float.compare(this.h, f) == 0) {
            return;
        }
        this.h = f;
        invalidate();
    }
}
