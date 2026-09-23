package com.mycompany.app.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.os.Build;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.Window;
import android.widget.RelativeLayout;
import androidx.core.view.WindowInsetsControllerCompat;
import com.mycompany.app.image.ImageSizeListener;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainUtil;

/* loaded from: classes3.dex */
public class MyMainRelative extends RelativeLayout {

    /* renamed from: c, reason: collision with root package name */
    public ImageSizeListener f18855c;
    public View f;
    public WindowInsetsControllerCompat g;
    public int h;
    public int i;
    public int j;
    public boolean k;
    public Window l;
    public boolean m;
    public Window n;
    public boolean o;

    public MyMainRelative(Context context) {
        super(context);
        int i;
        if (MainApp.K1) {
            i = -16777216;
        } else {
            i = -460552;
        }
        this.h = i;
    }

    public final void a() {
        setOutlineProvider(new ViewOutlineProvider() { // from class: com.mycompany.app.view.MyMainRelative.3
            @Override // android.view.ViewOutlineProvider
            public final void getOutline(View view, Outline outline) {
                if (outline == null) {
                    return;
                }
                int i = MainApp.l1;
                MyMainRelative myMainRelative = MyMainRelative.this;
                outline.setRoundRect(0, 0, myMainRelative.getWidth(), myMainRelative.getHeight() + i, i);
            }
        });
        setClipToOutline(true);
    }

    public final void b(Window window, int i) {
        boolean z;
        int l1;
        boolean z2 = MainApp.K1;
        boolean z3 = true;
        if (this.h != i) {
            this.h = i;
            z = true;
        } else {
            z = false;
        }
        if (this.k) {
            l1 = this.j;
        } else {
            l1 = MainUtil.l1();
        }
        if (l1 != 0) {
            i = MainUtil.q1(i, l1);
        }
        if (this.i != l1) {
            this.i = l1;
        } else {
            z3 = z;
        }
        if (z3) {
            invalidate();
        }
        int i2 = Build.VERSION.SDK_INT;
        if (window == null) {
            return;
        }
        if (!MainConst.e) {
            if (MainUtil.x3(window) != i) {
                MainUtil.D7(window, i);
            }
            if (i2 >= 26) {
                if (MainUtil.O2(window) != i) {
                    MainUtil.t7(window, i);
                }
            } else if (MainUtil.O2(window) != -16777216) {
                MainUtil.t7(window, -16777216);
            }
        }
        this.n = window;
        this.o = z2;
        post(new Runnable() { // from class: com.mycompany.app.view.MyMainRelative.2
            @Override // java.lang.Runnable
            public final void run() {
                MyMainRelative myMainRelative = MyMainRelative.this;
                Window window2 = myMainRelative.n;
                boolean z4 = myMainRelative.o;
                myMainRelative.n = null;
                if (window2 == null) {
                    return;
                }
                View view = myMainRelative.f;
                if (view == null) {
                    view = window2.getDecorView();
                    myMainRelative.f = view;
                }
                if (myMainRelative.g == null) {
                    View view2 = myMainRelative.f;
                    if (view2 == null) {
                        view2 = window2.getDecorView();
                        myMainRelative.f = view2;
                    }
                    myMainRelative.g = MainUtil.r4(window2, view2);
                }
                MainUtil.E7(window2, view, myMainRelative.g, z4, z4);
            }
        });
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        int l1;
        int i = this.h;
        if (i != 0) {
            canvas.drawColor(i);
        }
        super.dispatchDraw(canvas);
        if (this.k) {
            l1 = this.j;
        } else {
            l1 = MainUtil.l1();
        }
        if (l1 != 0) {
            canvas.drawColor(l1);
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        ImageSizeListener imageSizeListener = this.f18855c;
        if (imageSizeListener != null) {
            imageSizeListener.a(this, i, i2);
        }
    }

    public void setListener(ImageSizeListener imageSizeListener) {
        this.f18855c = imageSizeListener;
    }

    public void setWindow(Window window) {
        int i = this.h;
        int l1 = MainUtil.l1();
        if (l1 != 0) {
            i = MainUtil.q1(i, l1);
        }
        this.i = l1;
        int i2 = Build.VERSION.SDK_INT;
        if (window == null) {
            return;
        }
        if (!MainConst.e) {
            if (MainUtil.x3(window) != i) {
                MainUtil.D7(window, i);
            }
            if (i2 >= 26) {
                if (MainUtil.O2(window) != i) {
                    MainUtil.t7(window, i);
                }
            } else if (MainUtil.O2(window) != -16777216) {
                MainUtil.t7(window, -16777216);
            }
        }
        this.l = window;
        this.m = MainApp.K1;
        post(new Runnable() { // from class: com.mycompany.app.view.MyMainRelative.1
            @Override // java.lang.Runnable
            public final void run() {
                MyMainRelative myMainRelative = MyMainRelative.this;
                Window window2 = myMainRelative.l;
                boolean z = myMainRelative.m;
                myMainRelative.l = null;
                if (window2 == null) {
                    return;
                }
                View view = myMainRelative.f;
                if (view == null) {
                    view = window2.getDecorView();
                    myMainRelative.f = view;
                }
                if (myMainRelative.g == null) {
                    View view2 = myMainRelative.f;
                    if (view2 == null) {
                        view2 = window2.getDecorView();
                        myMainRelative.f = view2;
                    }
                    myMainRelative.g = MainUtil.r4(window2, view2);
                }
                MainUtil.E7(window2, view, myMainRelative.g, z, z);
            }
        });
    }
}
