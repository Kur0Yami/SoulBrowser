package com.mycompany.app.view;

import android.app.Activity;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewParent;
import android.widget.RelativeLayout;
import com.mycompany.app.image.ImageSizeListener;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefMain;
import com.mycompany.app.pref.PrefTts;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.web.WebViewActivity;

/* loaded from: classes3.dex */
public class MyWebBody extends RelativeLayout {
    public float A;
    public Drawable B;
    public int C;
    public MyAdNative D;

    /* renamed from: c, reason: collision with root package name */
    public boolean f19041c;
    public int f;
    public Paint g;
    public int h;
    public Rect i;
    public int j;
    public Paint k;
    public int l;
    public Rect m;
    public int n;
    public int o;
    public int p;
    public int q;
    public Paint r;
    public Rect s;
    public Rect t;
    public Rect u;
    public Rect v;
    public ImageSizeListener w;
    public HandListener x;
    public boolean y;
    public float z;

    /* loaded from: classes3.dex */
    public interface HandListener {
        void a();
    }

    public static void a(MyWebBody myWebBody) {
        MyAdNative myAdNative = myWebBody.D;
        myWebBody.D = null;
        if (myAdNative != null) {
            try {
                myWebBody.addViewInLayout(myAdNative, 0, new RelativeLayout.LayoutParams(-1, (int) MainUtil.G(myWebBody.getContext(), 340.0f)), true);
            } catch (Exception unused) {
            }
        }
    }

    public static Paint d(int i) {
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
        if (i != 0) {
            paint.setColor(i);
        }
        return paint;
    }

    private void setHandNotiPos(Activity activity) {
        if (this.B == null) {
            return;
        }
        int width = getWidth() / 2;
        int e = e(activity) / 2;
        int i = (MainApp.f1 - MainApp.E1) / 2;
        this.B.setBounds(width - i, e - i, width + i, e + i);
        invalidate();
    }

    public final void b(MyAdNative myAdNative, Handler handler) {
        if (this.D == null && myAdNative != null) {
            try {
                ViewParent parent = myAdNative.getParent();
                if (parent != null && parent.equals(this)) {
                    return;
                }
                MainUtil.V6(myAdNative);
                this.D = myAdNative;
                if (handler == null) {
                    handler = new Handler(Looper.getMainLooper());
                }
                handler.post(new Runnable() { // from class: com.mycompany.app.view.MyWebBody.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        MyWebBody.a(MyWebBody.this);
                    }
                });
            } catch (Exception unused) {
                this.D = null;
            }
        }
    }

    public final void c(View view, RelativeLayout.LayoutParams layoutParams) {
        if (view == null) {
            return;
        }
        try {
            addViewInLayout(view, 0, layoutParams, true);
        } catch (Exception unused) {
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        Rect rect;
        Rect rect2;
        Rect rect3;
        Rect rect4;
        Rect rect5;
        Paint paint;
        Rect rect6;
        Paint paint2;
        if (this.h != 0 && (rect6 = this.i) != null && (paint2 = this.g) != null) {
            canvas.drawRect(rect6, paint2);
        }
        if (this.l != 0 && (rect5 = this.m) != null && (paint = this.k) != null) {
            canvas.drawRect(rect5, paint);
        }
        int i = this.o;
        if (i != 0) {
            canvas.drawColor(i);
        }
        Drawable drawable = this.B;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        super.dispatchDraw(canvas);
        if (this.q != 0 && this.r != null) {
            if (getPaddingLeft() > 0 && (rect4 = this.s) != null) {
                canvas.drawRect(rect4, this.r);
            }
            if (getPaddingTop() > 0 && (rect3 = this.t) != null) {
                canvas.drawRect(rect3, this.r);
            }
            if (getPaddingRight() > 0 && (rect2 = this.u) != null) {
                canvas.drawRect(rect2, this.r);
            }
            if (getPaddingBottom() > 0 && (rect = this.v) != null) {
                canvas.drawRect(rect, this.r);
            }
        }
        int i2 = this.p;
        if (i2 != 0) {
            canvas.drawColor(i2);
        }
    }

    public final int e(Activity activity) {
        int i;
        int height = getHeight();
        if (height == 0) {
            MainUtil.SizeItem E0 = MainUtil.E0(activity);
            if (E0 == null) {
                i = 0;
            } else {
                i = E0.b;
            }
            height = i;
        }
        int i2 = PrefTts.J;
        if (i2 < 50) {
            PrefTts.J = 50;
        } else if (i2 > 90) {
            PrefTts.J = 90;
        }
        return Math.round((1.0f - (PrefTts.J / 100.0f)) * height);
    }

    public final void f(int i, int i2) {
        if (this.q != 0 && i != 0 && i2 != 0 && this.t != null) {
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            int paddingRight = getPaddingRight();
            int paddingBottom = getPaddingBottom();
            this.t.set(0, 0, i, paddingTop);
            int i3 = i2 - paddingBottom;
            this.v.set(0, i3, i, i2);
            this.s.set(0, paddingTop, paddingLeft, i3);
            this.u.set(i - paddingRight, paddingTop, i, i3);
        }
    }

    public final void g(WebViewActivity webViewActivity, boolean z, int i) {
        int i2;
        if (MainUtil.s0(i, z) == 0) {
            i2 = R.drawable.outline_keyboard_arrow_up_black_24;
        } else {
            i2 = R.drawable.outline_keyboard_arrow_up_dark_24;
        }
        if (this.C == i2) {
            return;
        }
        this.C = i2;
        Drawable S = MainUtil.S(getContext(), this.C);
        this.B = S;
        S.setAlpha(178);
        setHandNotiPos(webViewActivity);
    }

    public int getBotColor() {
        return this.j;
    }

    public int getRectBottom() {
        return getHeight() - getPaddingBottom();
    }

    public int getRectEnd() {
        if (this.f19041c) {
            return getPaddingLeft();
        }
        return getWidth() - getPaddingRight();
    }

    public int getRectHeight() {
        return (getHeight() - getPaddingTop()) - getPaddingBottom();
    }

    public int getRectStart() {
        if (this.f19041c) {
            return getWidth() - getPaddingRight();
        }
        return getPaddingLeft();
    }

    public int getRectTop() {
        return getPaddingTop();
    }

    public int getRectWidth() {
        return (getWidth() - getPaddingLeft()) - getPaddingRight();
    }

    public int getTopColor() {
        return this.f;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        Rect rect;
        Rect rect2;
        super.onSizeChanged(i, i2, i3, i4);
        if (MainConst.d) {
            int i5 = this.h;
            if (i5 != 0 && i != 0 && i2 != 0 && (rect2 = this.i) != null) {
                rect2.set(0, 0, i, i5);
            }
            int i6 = this.l;
            if (i6 != 0 && i != 0 && i2 != 0 && (rect = this.m) != null) {
                rect.set(0, i2 - i6, i, i2);
            }
        }
        f(i, i2);
        if (this.x != null) {
            setHandNotiPos(null);
        }
        ImageSizeListener imageSizeListener = this.w;
        if (imageSizeListener != null) {
            imageSizeListener.a(this, i, i2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x001f, code lost:
    
        if (r9 != 3) goto L20;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r9) {
        /*
            r8 = this;
            com.mycompany.app.view.MyWebBody$HandListener r0 = r8.x
            if (r0 != 0) goto L9
            boolean r9 = super.onTouchEvent(r9)
            return r9
        L9:
            float r0 = r9.getRawX()
            float r1 = r9.getRawY()
            int r9 = r9.getActionMasked()
            r2 = 1
            if (r9 == 0) goto L71
            r3 = 0
            if (r9 == r2) goto L5e
            r4 = 2
            if (r9 == r4) goto L22
            r0 = 3
            if (r9 == r0) goto L6e
            goto L3e
        L22:
            float r9 = r8.z
            float r9 = r0 - r9
            float r9 = java.lang.Math.abs(r9)
            float r4 = r8.A
            float r4 = r1 - r4
            float r4 = java.lang.Math.abs(r4)
            int r5 = com.mycompany.app.main.MainApp.f1
            float r5 = (float) r5
            int r6 = (r9 > r5 ? 1 : (r9 == r5 ? 0 : -1))
            if (r6 > 0) goto L3f
            int r7 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r7 <= 0) goto L3e
            goto L3f
        L3e:
            return r2
        L3f:
            int r9 = (r9 > r5 ? 1 : (r9 == r5 ? 0 : -1))
            if (r9 >= 0) goto L51
            int r9 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r9 <= 0) goto L51
            float r9 = r8.A
            int r9 = (r1 > r9 ? 1 : (r1 == r9 ? 0 : -1))
            if (r9 >= 0) goto L4e
            r3 = r2
        L4e:
            r8.y = r3
            goto L59
        L51:
            if (r6 <= 0) goto L59
            int r9 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r9 >= 0) goto L59
            r8.y = r3
        L59:
            r8.z = r0
            r8.A = r1
            return r2
        L5e:
            boolean r9 = r8.y
            if (r9 == 0) goto L6e
            com.mycompany.app.view.MyWebBody$HandListener r9 = r8.x
            if (r9 == 0) goto L6e
            com.mycompany.app.view.MyWebBody$2 r9 = new com.mycompany.app.view.MyWebBody$2
            r9.<init>()
            r8.post(r9)
        L6e:
            r8.y = r3
            return r2
        L71:
            r8.y = r2
            r8.z = r0
            r8.A = r1
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.view.MyWebBody.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void setBotColor(int i) {
        Rect rect;
        if (this.k != null) {
            int i2 = PrefMain.w;
            boolean z = false;
            boolean z2 = true;
            if (this.l != i2) {
                this.l = i2;
                if (i2 == 0) {
                    invalidate();
                    return;
                }
                int width = getWidth();
                int height = getHeight();
                int i3 = this.l;
                if (i3 != 0 && width != 0 && height != 0 && (rect = this.m) != null) {
                    rect.set(0, height - i3, width, height);
                }
                z = true;
            }
            if (this.j != i) {
                this.j = i;
                this.k.setColor(i);
            } else {
                z2 = z;
            }
            if (z2) {
                invalidate();
            }
        }
    }

    public void setEditColor(int i) {
        Paint paint = this.r;
        if (paint == null) {
            return;
        }
        if (this.q != i) {
            this.q = i;
            paint.setColor(i);
        }
        f(getWidth(), getHeight());
        invalidate();
    }

    public void setFilterColor(int i) {
        if (this.p == i) {
            return;
        }
        this.p = i;
        invalidate();
    }

    public void setHandListener(HandListener handListener) {
        this.x = handListener;
    }

    public void setOldTheme(int i) {
        if (this.o == i) {
            return;
        }
        this.o = i;
        invalidate();
    }

    @Override // android.view.View
    public final void setPadding(int i, int i2, int i3, int i4) {
        super.setPadding(i, i2, i3, i4);
        if (this.q == 0) {
            return;
        }
        f(getWidth(), getHeight());
    }

    @Override // android.view.View
    public final void setPaddingRelative(int i, int i2, int i3, int i4) {
        super.setPaddingRelative(i, i2, i3, i4);
        if (this.q == 0) {
            return;
        }
        f(getWidth(), getHeight());
    }

    public void setSizeListener(ImageSizeListener imageSizeListener) {
        this.w = imageSizeListener;
    }

    public void setTopColor(int i) {
        Rect rect;
        if (this.g != null) {
            int i2 = PrefMain.u;
            if (PrefTts.H) {
                i2 += this.n;
            }
            boolean z = false;
            boolean z2 = true;
            if (this.h != i2) {
                this.h = i2;
                if (i2 == 0) {
                    invalidate();
                    return;
                }
                int width = getWidth();
                int height = getHeight();
                int i3 = this.h;
                if (i3 != 0 && width != 0 && height != 0 && (rect = this.i) != null) {
                    rect.set(0, 0, width, i3);
                }
                z = true;
            }
            if (this.f != i) {
                this.f = i;
                this.g.setColor(i);
            } else {
                z2 = z;
            }
            if (z2) {
                invalidate();
            }
        }
    }
}
