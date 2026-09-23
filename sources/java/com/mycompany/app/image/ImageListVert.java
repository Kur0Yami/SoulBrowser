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
public class ImageListVert extends RecyclerView {
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

    public ImageListVert(ImageViewActivity imageViewActivity) {
        super(imageViewActivity, null);
        this.l1 = new Runnable() { // from class: com.mycompany.app.image.ImageListVert.7
            @Override // java.lang.Runnable
            public final void run() {
                ImageListVert imageListVert = ImageListVert.this;
                imageListVert.k1 = false;
                if (imageListVert.h1 != null) {
                    imageListVert.setValAnimSlide(imageListVert.j1);
                }
            }
        };
        this.Q0 = imageViewActivity;
        this.a1 = 0;
        this.Y0 = new int[2];
        j(new RecyclerView.OnScrollListener() { // from class: com.mycompany.app.image.ImageListVert.1
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public final void a(int i) {
                ImageListVert imageListVert = ImageListVert.this;
                ImageScrollListener imageScrollListener = imageListVert.R0;
                if (imageScrollListener == null) {
                    return;
                }
                imageListVert.a1 = i;
                imageScrollListener.b(i);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public final void b(RecyclerView recyclerView, int i, int i2) {
                ImageListVert imageListVert = ImageListVert.this;
                if (imageListVert.a1 == 0) {
                    return;
                }
                ImageListVert.q0(imageListVert);
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

    public static void q0(ImageListVert imageListVert) {
        if (imageListVert.R0 != null && !imageListVert.f1 && !imageListVert.Z0) {
            int height = imageListVert.getHeight();
            int firstVisiblePosition = imageListVert.getFirstVisiblePosition();
            int childCount = imageListVert.getChildCount();
            int i = 0;
            while (true) {
                if (i >= childCount) {
                    break;
                }
                MyImageView myImageView = (MyImageView) imageListVert.getChildAt(i);
                if (myImageView != null) {
                    int u0 = imageListVert.u0(myImageView);
                    int viewHeight = myImageView.getViewHeight() + u0;
                    int i2 = height / 2;
                    if (u0 <= i2 && viewHeight > i2) {
                        imageListVert.V0 = i + firstVisiblePosition;
                        break;
                    }
                }
                i++;
            }
            MyImageView myImageView2 = (MyImageView) imageListVert.getChildAt(imageListVert.V0 - firstVisiblePosition);
            if (myImageView2 != null) {
                if (imageListVert.d1) {
                    int i3 = imageListVert.V0;
                    if (i3 < imageListVert.W0) {
                        if (myImageView2.getViewHeight() + imageListVert.u0(myImageView2) > height + imageListVert.c1) {
                            imageListVert.f1 = true;
                            imageListVert.p0();
                            imageListVert.R0.f(0, false);
                            return;
                        }
                        return;
                    }
                    if (i3 > imageListVert.X0) {
                        if (imageListVert.u0(myImageView2) < (-imageListVert.c1)) {
                            imageListVert.f1 = true;
                            imageListVert.p0();
                            imageListVert.R0.f(0, true);
                            return;
                        }
                        return;
                    }
                }
                imageListVert.R0.e(true, imageListVert.V0, imageListVert.t0(myImageView2, height), myImageView2.getImageWidth(), myImageView2.getImageHeight());
            }
        }
    }

    public static void r0(ImageListVert imageListVert, int i) {
        int i2;
        int i3;
        boolean z;
        boolean z2;
        float u0;
        if (imageListVert.R0 == null) {
            return;
        }
        boolean z3 = imageListVert.e1;
        boolean z4 = false;
        imageListVert.e1 = false;
        int firstVisiblePosition = imageListVert.getFirstVisiblePosition();
        MyImageView myImageView = (MyImageView) imageListVert.getChildAt(imageListVert.V0 - firstVisiblePosition);
        if (myImageView == null) {
            imageListVert.a1 = 0;
            imageListVert.R0.b(0);
            imageListVert.post(new Runnable() { // from class: com.mycompany.app.image.ImageListVert.3
                @Override // java.lang.Runnable
                public final void run() {
                    ImageListVert.this.Z0 = false;
                }
            });
            return;
        }
        int height = imageListVert.getHeight();
        int i4 = imageListVert.W0;
        if (i4 != imageListVert.X0) {
            MyImageView myImageView2 = (MyImageView) imageListVert.getChildAt(i4 - firstVisiblePosition);
            if (myImageView2 != null) {
                i3 = imageListVert.u0(myImageView2) + imageListVert.c1;
                if (i3 > 0) {
                    z = true;
                } else {
                    z = false;
                }
            } else {
                i3 = 0;
                z = false;
            }
            MyImageView myImageView3 = (MyImageView) imageListVert.getChildAt(imageListVert.X0 - firstVisiblePosition);
            if (myImageView3 != null) {
                i2 = (myImageView3.getViewHeight() + imageListVert.u0(myImageView3)) - imageListVert.c1;
                if (i2 < height) {
                    i2 -= height;
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
                imageListVert.setScrollPos(Math.round((i3 - i2) / 2.0f));
            } else {
                imageListVert.setScrollPos(Math.round((i2 - i3) / 2.0f));
            }
        } else if (z) {
            imageListVert.setScrollPos(i3);
        } else if (z2) {
            imageListVert.setScrollPos(i2);
        } else {
            if (i == 0) {
                ImageListAdapter imageListAdapter = imageListVert.S0;
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
            if (PrefImage.s) {
                if (i == 3) {
                    i = 4;
                } else if (i == 4) {
                    i = 3;
                }
            }
            if (myImageView.j && myImageView.getImageWidth() > myImageView.getImageHeight()) {
                z4 = true;
            }
            int i5 = imageListVert.b1;
            if (z4) {
                i5 *= 2;
            }
            float f = height / 2;
            float viewHeight = myImageView.getViewHeight() - i5;
            float f2 = height;
            float f3 = 0.0f;
            if (viewHeight <= f2) {
                u0 = imageListVert.u0(myImageView) + imageListVert.c1 + (viewHeight / 2.0f);
            } else if (i == 3) {
                float f4 = viewHeight / 2.0f;
                float u02 = imageListVert.u0(myImageView) + imageListVert.c1 + (viewHeight / 4.0f);
                if (f4 > f2) {
                    f3 = (f4 - f2) / 2.0f;
                }
                u0 = u02;
            } else if (i == 4) {
                float f5 = viewHeight / 2.0f;
                float u03 = ((imageListVert.u0(myImageView) + imageListVert.c1) + viewHeight) - (viewHeight / 4.0f);
                if (z4) {
                    u03 += imageListVert.b1;
                }
                if (f5 > f2) {
                    f3 = (f5 - f2) / 2.0f;
                }
                u0 = u03;
            } else {
                u0 = (viewHeight / 2.0f) + imageListVert.u0(myImageView) + imageListVert.c1;
                f3 = (viewHeight - f2) / 2.0f;
                if (z3) {
                    f3 *= -1.0f;
                }
            }
            imageListVert.setScrollPos(Math.round((u0 - f) - f3));
        }
        imageListVert.R0.e(false, imageListVert.V0, imageListVert.t0(myImageView, height), myImageView.getImageWidth(), myImageView.getImageHeight());
        imageListVert.post(new Runnable() { // from class: com.mycompany.app.image.ImageListVert.4
            @Override // java.lang.Runnable
            public final void run() {
                ImageListVert.this.Z0 = false;
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
        scrollBy(0, i);
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
            if (((myImageView.getViewHeight() + u0) + u0) / 2 < i / 2) {
                if (!PrefImage.s) {
                    return 4;
                }
                return 3;
            }
            if (PrefImage.s) {
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
        return this.Y0[1];
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
            int height = getHeight();
            int u02 = u0(myImageView2);
            int i4 = this.c1 + u02;
            int viewHeight = myImageView2.getViewHeight() + u02;
            int i5 = this.c1;
            int i6 = viewHeight - i5;
            if (i4 >= (-i5)) {
                if (myImageView2.j && myImageView2.getImageWidth() > myImageView2.getImageHeight()) {
                    int viewHeight2 = myImageView2.getViewHeight();
                    int i7 = this.b1;
                    int i8 = (i6 - (((viewHeight2 - i7) - i7) / 2)) - i7;
                    if (i8 < height - this.c1) {
                        y0(i8 - height);
                    } else {
                        y0((i4 - height) - i7);
                    }
                } else {
                    y0((i4 - height) - this.b1);
                }
                this.g1 = false;
                return;
            }
            int viewHeight3 = (myImageView2.getViewHeight() - this.b1) / 2;
            if (viewHeight3 <= height) {
                if (myImageView2.j && myImageView2.getImageWidth() > myImageView2.getImageHeight()) {
                    if (i6 >= height - this.c1) {
                        int viewHeight4 = myImageView2.getViewHeight();
                        int i9 = this.b1;
                        y0(((i6 - (((viewHeight4 - i9) - i9) / 2)) - i9) - height);
                    } else {
                        y0(i6 - height);
                    }
                } else {
                    y0(Math.max(i4, -height));
                }
                this.g1 = false;
                return;
            }
            int i10 = viewHeight3 + i4;
            if (myImageView2.j && myImageView2.getImageWidth() > myImageView2.getImageHeight()) {
                i = this.c1 + i10;
            } else {
                i = i10;
            }
            if (i < (-this.c1)) {
                y0(Math.max(i, -height));
                this.g1 = false;
                return;
            }
            int i11 = i10 - height;
            if (myImageView2.j && myImageView2.getImageWidth() > myImageView2.getImageHeight()) {
                i11 -= this.c1;
            }
            if (i11 < (-this.c1)) {
                y0(i11);
                this.g1 = false;
            } else {
                y0(Math.max(i4, -height));
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
        post(new Runnable() { // from class: com.mycompany.app.image.ImageListVert.2
            @Override // java.lang.Runnable
            public final void run() {
                ImageListVert.r0(ImageListVert.this, i2);
            }
        });
    }

    public final void x0() {
        if (this.R0 != null && !this.f1 && !this.Z0 && !this.g1 && this.h1 == null && this.a1 == 0) {
            this.g1 = true;
            int height = getHeight();
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
                    int viewHeight = myImageView.getViewHeight() + u0(myImageView);
                    int i2 = this.c1;
                    if (viewHeight - i2 <= i2 + height) {
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
            int viewHeight2 = myImageView2.getViewHeight() + u0;
            int i4 = this.c1;
            int i5 = viewHeight2 - i4;
            if (i5 <= i4 + height) {
                if (myImageView2.j && myImageView2.getImageWidth() > myImageView2.getImageHeight()) {
                    int viewHeight3 = myImageView2.getViewHeight();
                    int i6 = this.b1;
                    int i7 = i5 - (((viewHeight3 - i6) - i6) / 2);
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
            int viewHeight4 = (myImageView2.getViewHeight() - this.b1) / 2;
            if (viewHeight4 <= height) {
                if (myImageView2.j && myImageView2.getImageWidth() > myImageView2.getImageHeight()) {
                    int viewHeight5 = myImageView2.getViewHeight();
                    int i8 = this.b1;
                    int i9 = ((viewHeight5 - i8) - i8) / 2;
                    if (i3 <= this.c1) {
                        y0(i3 + i9 + i8);
                    } else {
                        y0(i3);
                    }
                } else {
                    y0(Math.min(i5 - height, height));
                }
                this.g1 = false;
                return;
            }
            int i10 = i5 - viewHeight4;
            int i11 = i10 - height;
            if (myImageView2.j && myImageView2.getImageWidth() > myImageView2.getImageHeight()) {
                i11 -= this.c1;
            }
            if (i11 > this.c1) {
                y0(Math.min(i11, height));
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
                y0(Math.min(i5 - height, height));
                this.g1 = false;
            }
        }
    }

    public final void y0(int i) {
        int i2;
        if (i != 0 && this.h1 == null) {
            this.i1 = 0;
            int height = getHeight();
            if (height != 0) {
                i2 = (int) ((Math.abs(i) / height) * 200.0f);
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
            this.h1.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.image.ImageListVert.5
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    ImageListVert imageListVert = ImageListVert.this;
                    if (imageListVert.h1 != null) {
                        int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                        if (imageListVert.h1 != null) {
                            imageListVert.j1 = intValue;
                            if (imageListVert.k1) {
                                return;
                            }
                            imageListVert.k1 = true;
                            MainApp.N(imageListVert.Q0, imageListVert.l1);
                        }
                    }
                }
            });
            this.h1.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.image.ImageListVert.6
                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                    ImageListVert imageListVert = ImageListVert.this;
                    if (imageListVert.h1 == null) {
                        return;
                    }
                    imageListVert.h1 = null;
                    imageListVert.i1 = 0;
                    ImageListVert.q0(imageListVert);
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    final ImageListVert imageListVert = ImageListVert.this;
                    if (imageListVert.h1 == null) {
                        return;
                    }
                    MainApp.N(imageListVert.Q0, new Runnable() { // from class: com.mycompany.app.image.ImageListVert.8
                        @Override // java.lang.Runnable
                        public final void run() {
                            ImageListVert imageListVert2 = ImageListVert.this;
                            if (imageListVert2.h1 == null) {
                                return;
                            }
                            imageListVert2.h1 = null;
                            ImageListVert.q0(imageListVert2);
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
