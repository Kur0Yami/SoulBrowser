package com.mycompany.app.view;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.widget.FrameLayout;
import com.mycompany.app.dialog.DialogSeekAudio;
import com.mycompany.app.main.MainApp;

/* loaded from: classes3.dex */
public class MyMoveFrame extends FrameLayout {
    public ValueAnimator A;
    public float B;
    public float C;
    public boolean D;
    public final Runnable E;

    /* renamed from: c, reason: collision with root package name */
    public DialogSeekAudio.DialogSeekListener f18859c;
    public Drawable f;
    public float g;
    public Paint h;
    public Paint i;
    public int j;
    public int k;
    public int l;
    public int m;
    public int n;
    public int o;
    public int p;
    public int q;
    public int r;
    public int s;
    public int t;
    public int u;
    public int v;
    public int w;
    public int x;
    public int y;
    public int z;

    public MyMoveFrame(Context context) {
        super(context);
        this.E = new Runnable() { // from class: com.mycompany.app.view.MyMoveFrame.3
            @Override // java.lang.Runnable
            public final void run() {
                MyMoveFrame myMoveFrame = MyMoveFrame.this;
                myMoveFrame.D = false;
                if (myMoveFrame.A != null) {
                    myMoveFrame.setValAnimMove(myMoveFrame.C);
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValAnimMove(float f) {
        float f2 = f / this.B;
        int round = Math.round(this.t - ((r0 - this.r) * f2));
        int round2 = Math.round(this.u - ((r1 - this.s) * f2));
        if (round == this.v && round2 == this.w) {
            return;
        }
        c(round, round2);
    }

    public final void b() {
        if (this.f != null) {
            this.f = null;
            this.h = null;
            this.i = null;
            this.A = null;
            invalidate();
            DialogSeekAudio.DialogSeekListener dialogSeekListener = this.f18859c;
            if (dialogSeekListener != null) {
                dialogSeekListener.a(this.z);
            }
        }
    }

    public final void c(int i, int i2) {
        Drawable drawable = this.f;
        if (drawable == null) {
            return;
        }
        int i3 = this.p;
        int i4 = i + i3;
        int i5 = this.n;
        if (i4 > i5) {
            i = i5 - i3;
        }
        int i6 = this.q;
        int i7 = i2 + i6;
        int i8 = this.o;
        if (i7 > i8) {
            i2 = i8 - i6;
        }
        if (i < 0) {
            i = 0;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        this.v = i;
        this.w = i2;
        int i9 = i3 / 2;
        this.x = i + i9;
        this.y = i9 + i2;
        int i10 = MainApp.f1 - MainApp.E1;
        int i11 = (i3 - i10) / 2;
        int i12 = i + i11;
        int i13 = i2 + i11;
        drawable.setBounds(i12, i13, i12 + i10, i10 + i13);
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.f != null) {
            Paint paint = this.h;
            if (paint != null) {
                canvas.drawCircle(this.x, this.y, this.g, paint);
            }
            Paint paint2 = this.i;
            if (paint2 != null) {
                canvas.drawCircle(this.x, this.y, this.g - (MainApp.n1 / 2.0f), paint2);
            }
            this.f.draw(canvas);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0017, code lost:
    
        if (r2 != 3) goto L32;
     */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean dispatchTouchEvent(android.view.MotionEvent r9) {
        /*
            Method dump skipped, instructions count: 245
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.view.MyMoveFrame.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }

    public void setMoveListener(DialogSeekAudio.DialogSeekListener dialogSeekListener) {
        this.f18859c = dialogSeekListener;
    }
}
