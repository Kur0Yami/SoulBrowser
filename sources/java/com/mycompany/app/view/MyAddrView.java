package com.mycompany.app.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.view.MyBarView;

/* loaded from: classes3.dex */
public class MyAddrView extends LinearLayout {

    /* renamed from: c, reason: collision with root package name */
    public MyBarView.BarListener f18517c;
    public int[] f;
    public MyIconView[] g;
    public boolean h;
    public int i;
    public int j;
    public RectF k;
    public Paint l;
    public float m;
    public Paint n;
    public int o;

    /* renamed from: com.mycompany.app.view.MyAddrView$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [android.view.View$OnClickListener, java.lang.Object] */
    public MyAddrView(Context context) {
        super(context);
        this.k = new RectF();
        setOnClickListener(new Object());
    }

    public final void a(int[] iArr) {
        int i;
        int i2;
        this.f = iArr;
        if (iArr != null) {
            i = iArr.length;
        } else {
            i = 0;
        }
        MyIconView[] myIconViewArr = this.g;
        if (myIconViewArr != null) {
            i2 = myIconViewArr.length;
        } else {
            i2 = 0;
        }
        if (i2 < i) {
            MyIconView[] myIconViewArr2 = new MyIconView[i];
            Context context = getContext();
            for (int i3 = 0; i3 < i2; i3++) {
                myIconViewArr2[i3] = this.g[i3];
            }
            while (i2 < i) {
                MyIconView myIconView = new MyIconView(context);
                myIconViewArr2[i2] = myIconView;
                myIconView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                addView(myIconViewArr2[i2], MainApp.g1, MainApp.Y0);
                i2++;
            }
            this.g = myIconViewArr2;
        } else if (i < i2) {
            MyIconView[] myIconViewArr3 = new MyIconView[i];
            for (int i4 = 0; i4 < i; i4++) {
                myIconViewArr3[i4] = this.g[i4];
            }
            for (int i5 = i; i5 < i2; i5++) {
                removeView(this.g[i5]);
            }
            this.g = myIconViewArr3;
        }
        for (int i6 = 0; i6 < i; i6++) {
            MyIconView myIconView2 = this.g[i6];
            if (myIconView2 != null) {
                myIconView2.setTag(Integer.valueOf(i6));
                int i7 = this.f[i6];
                if (i7 >= 0 && i7 < 3) {
                    myIconView2.setVisibility(0);
                    myIconView2.v(false, true);
                    myIconView2.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.view.MyAddrView.2
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            int i8;
                            MyBarView.BarListener barListener;
                            MyAddrView myAddrView = MyAddrView.this;
                            if (myAddrView.f != null) {
                                Object tag = view.getTag();
                                if (tag != null && (tag instanceof Integer)) {
                                    i8 = ((Integer) tag).intValue();
                                } else {
                                    i8 = -1;
                                }
                                if (i8 >= 0) {
                                    int[] iArr2 = myAddrView.f;
                                    if (i8 < iArr2.length && (barListener = myAddrView.f18517c) != null) {
                                        barListener.a(iArr2[i8], view, false);
                                    }
                                }
                            }
                        }
                    });
                } else {
                    myIconView2.setVisibility(8);
                    myIconView2.setImageDrawable(null);
                    myIconView2.setBackground(null);
                    myIconView2.setOnClickListener(null);
                }
            }
        }
    }

    public final void b(int i, int i2, boolean z, boolean z2) {
        int i3;
        boolean z3;
        boolean z4 = true;
        int i4 = 0;
        if (z) {
            i3 = 0;
        } else if (i == 0) {
            i3 = -1;
        } else if (i == 1) {
            i3 = -16777216;
        } else {
            i3 = i;
        }
        if (this.i != i3) {
            this.i = i3;
            z3 = true;
        } else {
            z3 = false;
        }
        if (this.l == null) {
            Paint paint = new Paint();
            this.l = paint;
            paint.setAntiAlias(true);
            this.l.setStyle(Paint.Style.FILL);
            z3 = true;
        }
        int l = MyIconView.l(i, i2, false);
        if (this.j != l) {
            this.j = l;
            this.l.setColor(l);
            z3 = true;
        }
        if (this.n == null) {
            float f = MainApp.n1;
            this.m = f / 2.0f;
            Paint paint2 = new Paint();
            this.n = paint2;
            paint2.setAntiAlias(true);
            this.n.setStyle(Paint.Style.STROKE);
            this.n.setStrokeWidth(f);
            this.o = 0;
            z3 = true;
        }
        if (this.h != z2) {
            this.h = z2;
            z3 = true;
        }
        if (!z) {
            int i5 = MyBarFrame.q;
            if (i == 0) {
                i4 = -2115968800;
            }
        }
        if (this.o != i4) {
            this.o = i4;
            this.n.setColor(i4);
        } else {
            z4 = z3;
        }
        if (z4) {
            invalidate();
        }
    }

    public final void c(int i, int i2) {
        int i3;
        int i4;
        int[] iArr = this.f;
        if (iArr != null) {
            i3 = iArr.length;
        } else {
            i3 = 0;
        }
        if (i3 != 0) {
            MyIconView[] myIconViewArr = this.g;
            if (myIconViewArr != null) {
                i4 = myIconViewArr.length;
            } else {
                i4 = 0;
            }
            if (i3 == i4) {
                for (int i5 = 0; i5 < i3; i5++) {
                    MyIconView myIconView = this.g[i5];
                    if (myIconView != null) {
                        myIconView.setImageResource(MainUtil.N(this.f[i5], i));
                        myIconView.setMaxAlpha(MyIconView.i(i));
                        myIconView.setBgPreColor(i2);
                    }
                }
            }
        }
    }

    public final void d(boolean z) {
        int i;
        int i2;
        int[] iArr = this.f;
        if (iArr != null) {
            i = iArr.length;
        } else {
            i = 0;
        }
        if (i != 0) {
            MyIconView[] myIconViewArr = this.g;
            if (myIconViewArr != null) {
                i2 = myIconViewArr.length;
            } else {
                i2 = 0;
            }
            if (i == i2) {
                for (int i3 = 0; i3 < i; i3++) {
                    MyIconView myIconView = this.g[i3];
                    if (myIconView != null) {
                        int i4 = this.f[i3];
                        if (z && i4 >= 0 && i4 < 3) {
                            myIconView.setVisibility(0);
                        } else {
                            myIconView.setVisibility(8);
                        }
                    }
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        Paint paint;
        int i = this.i;
        if (i != 0) {
            canvas.drawColor(i);
        }
        RectF rectF = this.k;
        if (rectF != null && (paint = this.l) != null) {
            int i2 = MainApp.F1;
            canvas.drawRoundRect(rectF, i2, i2, paint);
        }
        super.dispatchDraw(canvas);
        if (this.o != 0 && this.n != null) {
            if (this.h) {
                canvas.drawLine(0.0f, getHeight() - this.m, getWidth(), getHeight() - this.m, this.n);
            } else {
                canvas.drawLine(0.0f, this.m, getWidth(), this.m, this.n);
            }
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (this.k == null) {
            return;
        }
        float paddingBottom = (i2 - getPaddingBottom()) / 2.0f;
        float f = (MainApp.Y0 / 2.0f) - MainApp.F1;
        this.k.set(MainApp.G1, paddingBottom - f, i - r6, paddingBottom + f);
    }

    public void setListener(MyBarView.BarListener barListener) {
        this.f18517c = barListener;
    }

    public void setSettingColor(int i) {
        boolean z;
        boolean z2 = true;
        if (this.l == null) {
            Paint paint = new Paint();
            this.l = paint;
            paint.setAntiAlias(true);
            this.l.setStyle(Paint.Style.FILL);
            z = true;
        } else {
            z = false;
        }
        int j = MyIconView.j(i, 0, true);
        if (this.j != j) {
            this.j = j;
            this.l.setColor(j);
        } else {
            z2 = z;
        }
        if (z2) {
            invalidate();
        }
    }
}
