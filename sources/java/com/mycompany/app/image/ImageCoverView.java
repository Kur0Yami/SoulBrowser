package com.mycompany.app.image;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefImage;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyImageView;

/* loaded from: classes3.dex */
public class ImageCoverView extends View {

    /* renamed from: c, reason: collision with root package name */
    public boolean f15732c;
    public int f;
    public Bitmap g;
    public Drawable h;
    public int i;
    public int j;
    public Paint k;
    public ValueAnimator l;
    public float m;
    public float n;
    public boolean o;
    public final Runnable p;

    public ImageCoverView(Context context) {
        super(context);
        this.p = new Runnable() { // from class: com.mycompany.app.image.ImageCoverView.4
            @Override // java.lang.Runnable
            public final void run() {
                ImageCoverView imageCoverView = ImageCoverView.this;
                imageCoverView.o = false;
                if (imageCoverView.l != null) {
                    imageCoverView.setValAnimSlide(imageCoverView.n);
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValAnimSlide(float f) {
        Paint paint = this.k;
        if (paint == null) {
            return;
        }
        this.m = f;
        paint.setAlpha(Math.round((1.0f - Math.abs(f)) * 255.0f));
        invalidate();
    }

    public final void b(int i, View view, boolean z) {
        int i2;
        if (this.l != null) {
            return;
        }
        this.f = i;
        this.g = null;
        this.h = null;
        this.k = null;
        this.m = 0.0f;
        if (i == 0) {
            setVisibility(8);
            return;
        }
        if (i == 2) {
            Bitmap g4 = MainUtil.g4(view, PrefImage.B, 0.5f, 0L, Bitmap.Config.RGB_565);
            this.g = g4;
            if (!MainUtil.f6(g4)) {
                setVisibility(8);
                return;
            } else {
                Paint paint = new Paint();
                this.k = paint;
                paint.setAntiAlias(true);
            }
        } else {
            Context context = getContext();
            if (this.f == 3) {
                i2 = MyImageView.getErrorIcon();
            } else {
                i2 = R.drawable.outline_page_loading;
            }
            Drawable S = MainUtil.S(context, i2);
            this.h = S;
            if (S == null) {
                setVisibility(8);
                return;
            }
            this.i = S.getIntrinsicWidth();
            this.j = this.h.getIntrinsicHeight();
            Paint paint2 = new Paint();
            this.k = paint2;
            paint2.setAntiAlias(true);
            this.k.setStyle(Paint.Style.FILL);
            this.k.setColor(PrefImage.B);
        }
        this.n = 0.0f;
        this.o = false;
        if (z) {
            this.l = ValueAnimator.ofFloat(0.0f, -1.0f);
        } else {
            this.l = ValueAnimator.ofFloat(0.0f, 1.0f);
        }
        this.l.setDuration(400L);
        this.l.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.image.ImageCoverView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ImageCoverView imageCoverView = ImageCoverView.this;
                if (imageCoverView.k != null) {
                    float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    if (imageCoverView.l != null && imageCoverView.k != null) {
                        imageCoverView.n = floatValue;
                        if (!imageCoverView.o) {
                            imageCoverView.o = true;
                            MainApp.N(imageCoverView.getContext(), imageCoverView.p);
                        }
                    }
                }
            }
        });
        this.l.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.image.ImageCoverView.2
            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
                ImageCoverView imageCoverView = ImageCoverView.this;
                if (imageCoverView.l == null) {
                    return;
                }
                imageCoverView.l = null;
                imageCoverView.setVisibility(8);
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                final ImageCoverView imageCoverView = ImageCoverView.this;
                if (imageCoverView.l == null) {
                    return;
                }
                MainApp.N(imageCoverView.getContext(), new Runnable() { // from class: com.mycompany.app.image.ImageCoverView.5
                    @Override // java.lang.Runnable
                    public final void run() {
                        ImageCoverView imageCoverView2 = ImageCoverView.this;
                        if (imageCoverView2.l == null) {
                            return;
                        }
                        imageCoverView2.l = null;
                        imageCoverView2.setVisibility(8);
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
        super.setVisibility(0);
        post(new Runnable() { // from class: com.mycompany.app.image.ImageCoverView.3
            @Override // java.lang.Runnable
            public final void run() {
                ValueAnimator valueAnimator = ImageCoverView.this.l;
                if (valueAnimator != null) {
                    valueAnimator.start();
                }
            }
        });
    }

    public final void c() {
        if (this.l != null) {
            return;
        }
        setVisibility(8);
    }

    public final boolean d() {
        if (this.l != null) {
            return true;
        }
        return false;
    }

    public final void e(View view, int i) {
        if (this.l != null || i != 2) {
            return;
        }
        this.f = i;
        this.h = null;
        this.k = null;
        this.m = 0.0f;
        Bitmap g4 = MainUtil.g4(view, PrefImage.B, 0.5f, 0L, Bitmap.Config.RGB_565);
        this.g = g4;
        if (!MainUtil.f6(g4)) {
            setVisibility(8);
            return;
        }
        Paint paint = new Paint();
        this.k = paint;
        paint.setAntiAlias(true);
        super.setVisibility(0);
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        ValueAnimator valueAnimator = this.l;
        this.l = null;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        float f;
        float f2;
        float f3;
        if (this.k != null) {
            if (this.f == 2) {
                if (MainUtil.f6(this.g)) {
                    canvas.scale(2.0f, 2.0f);
                    if (this.f15732c) {
                        canvas.drawBitmap(this.g, 0.0f, getHeight() * this.m, this.k);
                        return;
                    } else {
                        canvas.drawBitmap(this.g, getWidth() * this.m, 0.0f, this.k);
                        return;
                    }
                }
                return;
            }
            if (this.h == null) {
                return;
            }
            int width = getWidth();
            int height = getHeight();
            if (this.f15732c) {
                float f4 = height;
                float f5 = f4 * this.m;
                if (f5 < 0.0f) {
                    canvas.drawRect(0.0f, 0.0f, width, f4 + f5, this.k);
                    f3 = f5;
                } else {
                    f3 = f5;
                    canvas.drawRect(0.0f, f3, width, f4, this.k);
                }
                f2 = f3;
            } else {
                float f6 = width;
                float f7 = f6 * this.m;
                if (f7 < 0.0f) {
                    canvas.drawRect(0.0f, 0.0f, f6 + f7, height, this.k);
                    f = f7;
                } else {
                    f = f7;
                    canvas.drawRect(f, 0.0f, f6, height, this.k);
                }
                f2 = f;
            }
            Drawable drawable = this.h;
            if (drawable != null) {
                int width2 = (getWidth() - this.i) / 2;
                int height2 = (getHeight() - this.j) / 2;
                if (this.f15732c) {
                    height2 += Math.round(f2);
                } else {
                    width2 += Math.round(f2);
                }
                drawable.setBounds(width2, height2, this.i + width2, this.j + height2);
            }
            this.h.draw(canvas);
        }
    }

    public void setVertical(boolean z) {
        this.f15732c = z;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        ValueAnimator valueAnimator = this.l;
        this.l = null;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.f = 0;
        this.g = null;
        this.h = null;
        this.k = null;
        this.m = 0.0f;
    }
}
