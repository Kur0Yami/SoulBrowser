package com.mycompany.app.image;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Point;
import android.view.MotionEvent;
import android.view.animation.LinearInterpolator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.api.client.http.HttpStatusCodes;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefImage;
import com.mycompany.app.view.MyImageView;
import com.mycompany.app.zoom.ZoomImageAttacher;

/* loaded from: classes3.dex */
public class ImageListHori extends RecyclerView {
    public final Context Q0;
    public ImageScrollListener R0;
    public ImageListAdapter S0;
    public LinearLayoutManager T0;
    public ZoomImageAttacher U0;
    public int V0;
    public int W0;
    public int X0;
    public int[] Y0;
    public boolean Z0;
    public int a1;
    public int b1;
    public int c1;
    public boolean d1;
    public boolean e1;
    public boolean f1;
    public boolean g1;
    public ValueAnimator h1;
    public int i1;
    public int j1;
    public boolean k1;
    public final Runnable l1;

    public ImageListHori(ImageViewActivity imageViewActivity) {
        super(imageViewActivity, null);
        this.l1 = new Runnable() { // from class: com.mycompany.app.image.ImageListHori.7
            @Override // java.lang.Runnable
            public final void run() {
                ImageListHori imageListHori = ImageListHori.this;
                imageListHori.k1 = false;
                if (imageListHori.h1 != null) {
                    imageListHori.setValAnimSlide(imageListHori.j1);
                }
            }
        };
        this.Q0 = imageViewActivity;
        this.a1 = 0;
        this.Y0 = new int[2];
        j(new RecyclerView.OnScrollListener() { // from class: com.mycompany.app.image.ImageListHori.1
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public final void a(int i) {
                ImageListHori imageListHori = ImageListHori.this;
                ImageScrollListener imageScrollListener = imageListHori.R0;
                if (imageScrollListener == null) {
                    return;
                }
                imageListHori.a1 = i;
                imageScrollListener.b(i);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public final void b(RecyclerView recyclerView, int i, int i2) {
                ImageListHori imageListHori = ImageListHori.this;
                if (imageListHori.a1 == 0) {
                    return;
                }
                ImageListHori.q0(imageListHori);
            }
        });
    }

    private int getFirstVisiblePosition() {
        LinearLayoutManager linearLayoutManager = this.T0;
        if (linearLayoutManager == null) {
            return 0;
        }
        return linearLayoutManager.U0();
    }

    private int getLastVisiblePosition() {
        LinearLayoutManager linearLayoutManager = this.T0;
        if (linearLayoutManager == null) {
            return 0;
        }
        return linearLayoutManager.V0();
    }

    private Point getMainSize() {
        ImageScrollListener imageScrollListener = this.R0;
        if (imageScrollListener == null) {
            return MainUtil.s4(this.Q0);
        }
        return imageScrollListener.c();
    }

    public static void q0(ImageListHori imageListHori) {
        if (imageListHori.R0 != null && !imageListHori.f1 && !imageListHori.Z0) {
            int width = imageListHori.getWidth();
            int firstVisiblePosition = imageListHori.getFirstVisiblePosition();
            int childCount = imageListHori.getChildCount();
            int i = 0;
            while (true) {
                if (i >= childCount) {
                    break;
                }
                MyImageView myImageView = (MyImageView) imageListHori.getChildAt(i);
                if (myImageView != null) {
                    int u0 = imageListHori.u0(myImageView);
                    int viewWidth = myImageView.getViewWidth() + u0;
                    int i2 = width / 2;
                    if (u0 <= i2 && viewWidth > i2) {
                        imageListHori.V0 = i + firstVisiblePosition;
                        break;
                    }
                }
                i++;
            }
            MyImageView myImageView2 = (MyImageView) imageListHori.getChildAt(imageListHori.V0 - firstVisiblePosition);
            if (myImageView2 != null) {
                if (imageListHori.d1) {
                    int i3 = imageListHori.V0;
                    if (i3 < imageListHori.W0) {
                        if (myImageView2.getViewWidth() + imageListHori.u0(myImageView2) > width + imageListHori.c1) {
                            imageListHori.f1 = true;
                            imageListHori.p0();
                            imageListHori.R0.f(0, false);
                            return;
                        }
                        return;
                    }
                    if (i3 > imageListHori.X0) {
                        if (imageListHori.u0(myImageView2) < (-imageListHori.c1)) {
                            imageListHori.f1 = true;
                            imageListHori.p0();
                            imageListHori.R0.f(0, true);
                            return;
                        }
                        return;
                    }
                }
                imageListHori.R0.e(true, imageListHori.V0, imageListHori.t0(myImageView2, width), myImageView2.getImageWidth(), myImageView2.getImageHeight());
            }
        }
    }

    public static void r0(ImageListHori imageListHori, int i) {
        int i2;
        int i3;
        boolean z;
        boolean z2;
        float u0;
        if (imageListHori.R0 == null) {
            return;
        }
        boolean z3 = imageListHori.e1;
        boolean z4 = false;
        imageListHori.e1 = false;
        int firstVisiblePosition = imageListHori.getFirstVisiblePosition();
        MyImageView myImageView = (MyImageView) imageListHori.getChildAt(imageListHori.V0 - firstVisiblePosition);
        if (myImageView == null) {
            imageListHori.a1 = 0;
            imageListHori.R0.b(0);
            imageListHori.post(new Runnable() { // from class: com.mycompany.app.image.ImageListHori.3
                @Override // java.lang.Runnable
                public final void run() {
                    ImageListHori.this.Z0 = false;
                }
            });
            return;
        }
        int width = imageListHori.getWidth();
        int i4 = imageListHori.W0;
        if (i4 != imageListHori.X0) {
            MyImageView myImageView2 = (MyImageView) imageListHori.getChildAt(i4 - firstVisiblePosition);
            if (myImageView2 != null) {
                i3 = imageListHori.u0(myImageView2) + imageListHori.c1;
                if (i3 > 0) {
                    z = true;
                } else {
                    z = false;
                }
            } else {
                i3 = 0;
                z = false;
            }
            MyImageView myImageView3 = (MyImageView) imageListHori.getChildAt(imageListHori.X0 - firstVisiblePosition);
            if (myImageView3 != null) {
                i2 = (myImageView3.getViewWidth() + imageListHori.u0(myImageView3)) - imageListHori.c1;
                if (i2 < width) {
                    i2 -= width;
                    z2 = true;
                } else {
                    z2 = false;
                }
            } else {
                i2 = 0;
                z2 = false;
            }
        } else {
            i2 = 0;
            i3 = 0;
            z = false;
            z2 = false;
        }
        if (z && z2) {
            if (i3 > (-i2)) {
                imageListHori.setScrollPos(Math.round((i3 - i2) / 2.0f));
            } else {
                imageListHori.setScrollPos(Math.round((i2 - i3) / 2.0f));
            }
        } else if (z) {
            imageListHori.setScrollPos(i3);
        } else if (z2) {
            imageListHori.setScrollPos(i2);
        } else {
            if (i == 0) {
                ImageListAdapter imageListAdapter = imageListHori.S0;
                if (imageListAdapter != null && imageListAdapter.B() > 0 && myImageView.getImageWidth() > myImageView.getImageHeight()) {
                    if (PrefImage.s) {
                        i = 4;
                    } else {
                        i = 3;
                    }
                } else {
                    i = 2;
                }
            }
            if (myImageView.j && myImageView.getImageWidth() > myImageView.getImageHeight()) {
                z4 = true;
            }
            int i5 = imageListHori.b1;
            if (z4) {
                i5 *= 2;
            }
            float f = width / 2;
            float viewWidth = myImageView.getViewWidth() - i5;
            float f2 = width;
            float f3 = 0.0f;
            if (viewWidth <= f2) {
                u0 = imageListHori.u0(myImageView) + imageListHori.c1 + (viewWidth / 2.0f);
            } else if (i == 3) {
                float f4 = viewWidth / 2.0f;
                float u02 = imageListHori.u0(myImageView) + imageListHori.c1 + (viewWidth / 4.0f);
                if (f4 > f2) {
                    f3 = (f4 - f2) / 2.0f;
                    if (PrefImage.s) {
                        f3 *= -1.0f;
                    }
                }
                u0 = u02;
            } else if (i == 4) {
                float f5 = viewWidth / 2.0f;
                float u03 = ((imageListHori.u0(myImageView) + imageListHori.c1) + viewWidth) - (viewWidth / 4.0f);
                if (z4) {
                    u03 += imageListHori.b1;
                }
                if (f5 > f2) {
                    f3 = (f5 - f2) / 2.0f;
                    if (PrefImage.s) {
                        f3 *= -1.0f;
                    }
                }
                u0 = u03;
            } else {
                u0 = (viewWidth / 2.0f) + imageListHori.u0(myImageView) + imageListHori.c1;
                float f6 = (viewWidth - f2) / 2.0f;
                if (PrefImage.s) {
                    f6 *= -1.0f;
                }
                f3 = f6;
                if (z3) {
                    f3 *= -1.0f;
                }
            }
            imageListHori.setScrollPos(Math.round((u0 - f) - f3));
        }
        imageListHori.R0.e(false, imageListHori.V0, imageListHori.t0(myImageView, width), myImageView.getImageWidth(), myImageView.getImageHeight());
        imageListHori.post(new Runnable() { // from class: com.mycompany.app.image.ImageListHori.4
            @Override // java.lang.Runnable
            public final void run() {
                ImageListHori.this.Z0 = false;
            }
        });
    }

    private void setMinMax(int i) {
        ImageListAdapter imageListAdapter = this.S0;
        if (imageListAdapter == null) {
            return;
        }
        int B = imageListAdapter.B();
        int i2 = i - (i % B);
        this.W0 = i2;
        int i3 = (B + i2) - 1;
        this.X0 = i3;
        ImageListAdapter imageListAdapter2 = this.S0;
        imageListAdapter2.t = i2;
        imageListAdapter2.u = i3;
    }

    private void setScrollPos(int i) {
        if (i == 0) {
            return;
        }
        scrollBy(i, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValAnimSlide(int i) {
        int i2 = i - this.i1;
        if (i2 != 0) {
            this.i1 = i;
            setScrollPos(i2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        ZoomImageAttacher zoomImageAttacher;
        ZoomImageAttacher zoomImageAttacher2;
        boolean z;
        int actionMasked = motionEvent.getActionMasked();
        boolean z2 = true;
        if (!this.f1 && !this.Z0 && !this.g1 && this.h1 == null) {
            if (actionMasked == 0 && (zoomImageAttacher2 = this.U0) != null) {
                if (this.a1 != 0) {
                    z = true;
                } else {
                    z = false;
                }
                zoomImageAttacher2.y = z;
            }
            ZoomImageAttacher zoomImageAttacher3 = this.U0;
            if (zoomImageAttacher3 == null || !zoomImageAttacher3.q()) {
                ImageScrollListener imageScrollListener = this.R0;
                if (imageScrollListener == null || !imageScrollListener.d()) {
                    z2 = false;
                }
                if (!MainUtil.g(getMainSize(), motionEvent, z2)) {
                    return super.dispatchTouchEvent(motionEvent);
                }
            }
        } else if (actionMasked == 0 && (zoomImageAttacher = this.U0) != null) {
            zoomImageAttacher.y = true;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        ImageScrollListener imageScrollListener = this.R0;
        if (imageScrollListener != null) {
            imageScrollListener.a(i, i2);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void setAdapter(RecyclerView.Adapter adapter) {
        if (adapter != null) {
            this.S0 = (ImageListAdapter) adapter;
        } else {
            this.S0 = null;
        }
        super.setAdapter(adapter);
    }

    public void setAttacher(ZoomImageAttacher zoomImageAttacher) {
        this.U0 = zoomImageAttacher;
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void setLayoutManager(RecyclerView.LayoutManager layoutManager) {
        if (layoutManager != null) {
            this.T0 = (LinearLayoutManager) layoutManager;
        } else {
            this.T0 = null;
        }
        super.setLayoutManager(layoutManager);
    }

    public void setListener(ImageScrollListener imageScrollListener) {
        this.R0 = imageScrollListener;
    }

    public void setLoading(boolean z) {
        this.f1 = z;
    }

    public void setNextChanged(boolean z) {
        this.e1 = z;
    }

    public void setNextOpenable(boolean z) {
        this.d1 = z;
    }

    public void setPageMargin(int i) {
        this.b1 = i;
        this.c1 = Math.round(i / 2.0f);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        ValueAnimator valueAnimator = this.h1;
        this.h1 = null;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.i1 = 0;
    }

    public final int t0(MyImageView myImageView, int i) {
        ImageListAdapter imageListAdapter = this.S0;
        if (imageListAdapter != null && imageListAdapter.B() != 0) {
            if (myImageView.getImageWidth() <= myImageView.getImageHeight()) {
                return 2;
            }
            int u0 = u0(myImageView);
            if (((myImageView.getViewWidth() + u0) + u0) / 2 < i / 2) {
                return 4;
            }
            return 3;
        }
        return 0;
    }

    public final int u0(MyImageView myImageView) {
        if (this.Y0 == null) {
            this.Y0 = new int[2];
        }
        myImageView.getLocationOnScreen(this.Y0);
        return this.Y0[0];
    }

    public final void v0() {
        int i;
        int i2;
        if (this.R0 != null && !this.f1 && !this.Z0 && !this.g1 && this.h1 == null && this.a1 == 0) {
            this.g1 = true;
            int firstVisiblePosition = getFirstVisiblePosition();
            if (this.d1 && firstVisiblePosition <= (i2 = this.W0)) {
                MyImageView myImageView = (MyImageView) getChildAt(i2 - firstVisiblePosition);
                if (myImageView == null) {
                    this.g1 = false;
                    return;
                }
                int u0 = u0(myImageView);
                int i3 = this.c1;
                if (u0 + i3 >= (-i3)) {
                    this.f1 = true;
                    this.R0.f(2, false);
                    this.g1 = false;
                    return;
                }
            }
            MyImageView myImageView2 = (MyImageView) getChildAt(getLastVisiblePosition() - firstVisiblePosition);
            if (myImageView2 == null) {
                this.g1 = false;
                return;
            }
            int width = getWidth();
            int u02 = u0(myImageView2);
            int i4 = this.c1 + u02;
            int viewWidth = myImageView2.getViewWidth() + u02;
            int i5 = this.c1;
            int i6 = viewWidth - i5;
            if (i4 >= (-i5)) {
                if (myImageView2.j && myImageView2.getImageWidth() > myImageView2.getImageHeight()) {
                    int viewWidth2 = myImageView2.getViewWidth();
                    int i7 = this.b1;
                    int i8 = (i6 - (((viewWidth2 - i7) - i7) / 2)) - i7;
                    if (i8 < width - this.c1) {
                        y0(i8 - width);
                    } else {
                        y0((i4 - width) - i7);
                    }
                } else {
                    y0((i4 - width) - this.b1);
                }
                this.g1 = false;
                return;
            }
            int viewWidth3 = (myImageView2.getViewWidth() - this.b1) / 2;
            if (viewWidth3 <= width) {
                if (myImageView2.j && myImageView2.getImageWidth() > myImageView2.getImageHeight()) {
                    if (i6 >= width - this.c1) {
                        int viewWidth4 = myImageView2.getViewWidth();
                        int i9 = this.b1;
                        y0(((i6 - (((viewWidth4 - i9) - i9) / 2)) - i9) - width);
                    } else {
                        y0(i6 - width);
                    }
                } else {
                    y0(Math.max(i4, -width));
                }
                this.g1 = false;
                return;
            }
            int i10 = viewWidth3 + i4;
            if (myImageView2.j && myImageView2.getImageWidth() > myImageView2.getImageHeight()) {
                i = this.c1 + i10;
            } else {
                i = i10;
            }
            if (i < (-this.c1)) {
                y0(Math.max(i, -width));
                this.g1 = false;
                return;
            }
            int i11 = i10 - width;
            if (myImageView2.j && myImageView2.getImageWidth() > myImageView2.getImageHeight()) {
                i11 -= this.c1;
            }
            if (i11 < (-this.c1)) {
                y0(i11);
                this.g1 = false;
            } else {
                y0(Math.max(i4, -width));
                this.g1 = false;
            }
        }
    }

    public final void w0(int i, final int i2) {
        if (this.S0 == null) {
            return;
        }
        this.Z0 = true;
        this.V0 = i;
        setMinMax(i);
        this.S0.g();
        i0(i);
        post(new Runnable() { // from class: com.mycompany.app.image.ImageListHori.2
            @Override // java.lang.Runnable
            public final void run() {
                ImageListHori.r0(ImageListHori.this, i2);
            }
        });
    }

    public final void x0() {
        if (this.R0 != null && !this.f1 && !this.Z0 && !this.g1 && this.h1 == null && this.a1 == 0) {
            this.g1 = true;
            int width = getWidth();
            int firstVisiblePosition = getFirstVisiblePosition();
            if (this.d1) {
                int lastVisiblePosition = getLastVisiblePosition();
                int i = this.X0;
                if (lastVisiblePosition >= i) {
                    MyImageView myImageView = (MyImageView) getChildAt(i - firstVisiblePosition);
                    if (myImageView == null) {
                        this.g1 = false;
                        return;
                    }
                    int viewWidth = myImageView.getViewWidth() + u0(myImageView);
                    int i2 = this.c1;
                    if (viewWidth - i2 <= i2 + width) {
                        this.f1 = true;
                        this.R0.f(1, true);
                        this.g1 = false;
                        return;
                    }
                }
            }
            MyImageView myImageView2 = (MyImageView) getChildAt(0);
            if (myImageView2 == null) {
                this.g1 = false;
                return;
            }
            int u0 = u0(myImageView2);
            int i3 = this.c1 + u0;
            int viewWidth2 = myImageView2.getViewWidth() + u0;
            int i4 = this.c1;
            int i5 = viewWidth2 - i4;
            if (i5 <= i4 + width) {
                if (myImageView2.j && myImageView2.getImageWidth() > myImageView2.getImageHeight()) {
                    int viewWidth3 = myImageView2.getViewWidth();
                    int i6 = this.b1;
                    int i7 = i5 - (((viewWidth3 - i6) - i6) / 2);
                    if (i7 > this.c1) {
                        y0(i7);
                    } else {
                        y0(i5 + i6);
                    }
                } else {
                    y0(i5 + this.b1);
                }
                this.g1 = false;
                return;
            }
            int viewWidth4 = (myImageView2.getViewWidth() - this.b1) / 2;
            if (viewWidth4 <= width) {
                if (myImageView2.j && myImageView2.getImageWidth() > myImageView2.getImageHeight()) {
                    int viewWidth5 = myImageView2.getViewWidth();
                    int i8 = this.b1;
                    int i9 = ((viewWidth5 - i8) - i8) / 2;
                    if (i3 <= this.c1) {
                        y0(i3 + i9 + i8);
                    } else {
                        y0(i3);
                    }
                } else {
                    y0(Math.min(i5 - width, width));
                }
                this.g1 = false;
                return;
            }
            int i10 = i5 - viewWidth4;
            int i11 = i10 - width;
            if (myImageView2.j && myImageView2.getImageWidth() > myImageView2.getImageHeight()) {
                i11 -= this.c1;
            }
            if (i11 > this.c1) {
                y0(Math.min(i11, width));
                this.g1 = false;
                return;
            }
            if (myImageView2.j && myImageView2.getImageWidth() > myImageView2.getImageHeight()) {
                i10 += this.c1;
            }
            if (i10 > this.c1) {
                y0(i10);
                this.g1 = false;
            } else {
                y0(Math.min(i5 - width, width));
                this.g1 = false;
            }
        }
    }

    public final void y0(int i) {
        int i2;
        if (i != 0 && this.h1 == null) {
            this.i1 = 0;
            int width = getWidth();
            if (width != 0) {
                i2 = (int) ((Math.abs(i) / width) * 200.0f);
                if (i2 < 100) {
                    i2 = 100;
                }
            } else {
                i2 = HttpStatusCodes.STATUS_CODE_OK;
            }
            this.j1 = 0;
            this.k1 = false;
            ValueAnimator ofInt = ValueAnimator.ofInt(0, i);
            this.h1 = ofInt;
            ofInt.setDuration(i2);
            this.h1.setInterpolator(new LinearInterpolator());
            this.h1.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.image.ImageListHori.5
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    ImageListHori imageListHori = ImageListHori.this;
                    if (imageListHori.h1 != null) {
                        int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                        if (imageListHori.h1 != null) {
                            imageListHori.j1 = intValue;
                            if (imageListHori.k1) {
                                return;
                            }
                            imageListHori.k1 = true;
                            MainApp.N(imageListHori.Q0, imageListHori.l1);
                        }
                    }
                }
            });
            this.h1.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.image.ImageListHori.6
                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                    ImageListHori imageListHori = ImageListHori.this;
                    if (imageListHori.h1 == null) {
                        return;
                    }
                    imageListHori.h1 = null;
                    imageListHori.i1 = 0;
                    ImageListHori.q0(imageListHori);
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    final ImageListHori imageListHori = ImageListHori.this;
                    if (imageListHori.h1 == null) {
                        return;
                    }
                    MainApp.N(imageListHori.Q0, new Runnable() { // from class: com.mycompany.app.image.ImageListHori.8
                        @Override // java.lang.Runnable
                        public final void run() {
                            ImageListHori imageListHori2 = ImageListHori.this;
                            if (imageListHori2.h1 == null) {
                                return;
                            }
                            imageListHori2.h1 = null;
                            imageListHori2.i1 = 0;
                            ImageListHori.q0(imageListHori2);
                        }
                    });
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationRepeat(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator) {
                }
            });
            this.h1.start();
        }
    }
}
