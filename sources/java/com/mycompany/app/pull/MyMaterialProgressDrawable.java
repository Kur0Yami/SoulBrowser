package com.mycompany.app.pull;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.support.v4.media.a;
import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.view.animation.Transformation;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import com.mycompany.app.web.WebViewActivity;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import kotlin.KotlinVersion;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class MyMaterialProgressDrawable extends Drawable implements Animatable {
    public static final LinearInterpolator o = new LinearInterpolator();
    public static final FastOutSlowInInterpolator p = new FastOutSlowInInterpolator();

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f17322c = new ArrayList();
    public final Ring f;
    public float g;
    public final MyPullView h;
    public final Animation i;
    public float j;
    public final double k;
    public final double l;
    public boolean m;
    public final Drawable.Callback n;

    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes3.dex */
    public @interface ProgressDrawableSize {
    }

    /* loaded from: classes3.dex */
    public static class Ring {

        /* renamed from: a, reason: collision with root package name */
        public final RectF f17326a = new RectF();
        public final Paint b;

        /* renamed from: c, reason: collision with root package name */
        public final Paint f17327c;
        public final Drawable.Callback d;
        public float e;
        public float f;
        public float g;
        public float h;
        public float i;
        public int[] j;
        public int k;
        public float l;
        public float m;
        public float n;
        public boolean o;
        public Path p;
        public float q;
        public double r;
        public int s;
        public int t;
        public int u;
        public final Paint v;
        public int w;
        public int x;

        public Ring(Drawable.Callback callback) {
            Paint paint = new Paint();
            this.b = paint;
            Paint paint2 = new Paint();
            this.f17327c = paint2;
            this.e = 0.0f;
            this.f = 0.0f;
            this.g = 0.0f;
            this.h = 5.0f;
            this.i = 2.5f;
            this.v = new Paint(1);
            this.d = callback;
            paint.setAntiAlias(true);
            paint.setStrokeCap(Paint.Cap.SQUARE);
            paint.setStyle(Paint.Style.STROKE);
            paint2.setAntiAlias(true);
            paint2.setStyle(Paint.Style.FILL);
        }

        public final void a() {
            this.d.invalidateDrawable(null);
        }

        public final void b(int i) {
            this.k = i;
            this.x = this.j[i];
        }
    }

    public MyMaterialProgressDrawable(WebViewActivity webViewActivity, MyPullView myPullView, boolean z) {
        float ceil;
        Drawable.Callback callback = new Drawable.Callback() { // from class: com.mycompany.app.pull.MyMaterialProgressDrawable.3
            @Override // android.graphics.drawable.Drawable.Callback
            public final void invalidateDrawable(Drawable drawable) {
                MyMaterialProgressDrawable.this.invalidateSelf();
            }

            @Override // android.graphics.drawable.Drawable.Callback
            public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
                MyMaterialProgressDrawable.this.scheduleSelf(runnable, j);
            }

            @Override // android.graphics.drawable.Drawable.Callback
            public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
                MyMaterialProgressDrawable.this.unscheduleSelf(runnable);
            }
        };
        this.n = callback;
        this.h = myPullView;
        Resources resources = webViewActivity.getResources();
        final Ring ring = new Ring(callback);
        this.f = ring;
        if (z) {
            ring.j = new int[]{-328966};
            ring.b(0);
        } else {
            ring.j = new int[]{-16777216};
            ring.b(0);
        }
        float f = resources.getDisplayMetrics().density;
        double d = f;
        double d2 = 40.0d * d;
        this.k = d2;
        this.l = d2;
        float f2 = ((float) 2.5d) * f;
        ring.h = f2;
        ring.b.setStrokeWidth(f2);
        ring.a();
        ring.r = 8.75d * d;
        ring.b(0);
        ring.s = (int) (10.0f * f);
        ring.t = (int) (5.0f * f);
        float min = Math.min((int) this.k, (int) this.l);
        double d3 = ring.r;
        if (d3 > 0.0d && min >= 0.0f) {
            ceil = (float) ((min / 2.0f) - d3);
        } else {
            ceil = (float) Math.ceil(ring.h / 2.0f);
        }
        ring.i = ceil;
        Animation animation = new Animation() { // from class: com.mycompany.app.pull.MyMaterialProgressDrawable.1
            @Override // android.view.animation.Animation
            public final void applyTransformation(float f3, Transformation transformation) {
                MyMaterialProgressDrawable myMaterialProgressDrawable = MyMaterialProgressDrawable.this;
                boolean z2 = myMaterialProgressDrawable.m;
                Ring ring2 = ring;
                if (z2) {
                    MyMaterialProgressDrawable.a(f3, ring2);
                    float floor = (float) (Math.floor(ring2.n / 0.8f) + 1.0d);
                    float radians = (float) Math.toRadians(ring2.h / (ring2.r * 6.283185307179586d));
                    float f4 = ring2.l;
                    ring2.e = (((ring2.m - radians) - f4) * f3) + f4;
                    ring2.a();
                    ring2.f = ring2.m;
                    ring2.a();
                    float f5 = ring2.n;
                    ring2.g = a.a(floor, f5, f3, f5);
                    ring2.a();
                    return;
                }
                float radians2 = (float) Math.toRadians(ring2.h / (ring2.r * 6.283185307179586d));
                float f6 = ring2.m;
                float f7 = ring2.l;
                float f8 = ring2.n;
                MyMaterialProgressDrawable.a(f3, ring2);
                if (f3 <= 0.5f) {
                    ring2.e = (MyMaterialProgressDrawable.p.getInterpolation(f3 / 0.5f) * (0.8f - radians2)) + f7;
                    ring2.a();
                }
                if (f3 > 0.5f) {
                    ring2.f = (MyMaterialProgressDrawable.p.getInterpolation((f3 - 0.5f) / 0.5f) * (0.8f - radians2)) + f6;
                    ring2.a();
                }
                ring2.g = (0.25f * f3) + f8;
                ring2.a();
                myMaterialProgressDrawable.g = ((myMaterialProgressDrawable.j / 5.0f) * 1080.0f) + (f3 * 216.0f);
                myMaterialProgressDrawable.invalidateSelf();
            }
        };
        animation.setRepeatCount(-1);
        animation.setRepeatMode(1);
        animation.setInterpolator(o);
        animation.setAnimationListener(new Animation.AnimationListener() { // from class: com.mycompany.app.pull.MyMaterialProgressDrawable.2
            @Override // android.view.animation.Animation.AnimationListener
            public final void onAnimationEnd(Animation animation2) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public final void onAnimationRepeat(Animation animation2) {
                Ring ring2 = ring;
                ring2.l = ring2.e;
                ring2.m = ring2.f;
                ring2.n = ring2.g;
                ring2.b((ring2.k + 1) % ring2.j.length);
                ring2.e = ring2.f;
                ring2.a();
                MyMaterialProgressDrawable myMaterialProgressDrawable = MyMaterialProgressDrawable.this;
                if (myMaterialProgressDrawable.m) {
                    myMaterialProgressDrawable.m = false;
                    animation2.setDuration(1332L);
                    if (ring2.o) {
                        ring2.o = false;
                        ring2.a();
                        return;
                    }
                    return;
                }
                myMaterialProgressDrawable.j = (myMaterialProgressDrawable.j + 1.0f) % 5.0f;
            }

            @Override // android.view.animation.Animation.AnimationListener
            public final void onAnimationStart(Animation animation2) {
                MyMaterialProgressDrawable.this.j = 0.0f;
            }
        });
        this.i = animation;
    }

    public static void a(float f, Ring ring) {
        if (f > 0.75f) {
            float f2 = (f - 0.75f) / 0.25f;
            int[] iArr = ring.j;
            int i = ring.k;
            int i2 = iArr[i];
            int i3 = iArr[(i + 1) % iArr.length];
            ring.x = ((((i2 >> 24) & KotlinVersion.MAX_COMPONENT_VALUE) + ((int) ((((i3 >> 24) & KotlinVersion.MAX_COMPONENT_VALUE) - r1) * f2))) << 24) | ((((i2 >> 16) & KotlinVersion.MAX_COMPONENT_VALUE) + ((int) ((((i3 >> 16) & KotlinVersion.MAX_COMPONENT_VALUE) - r3) * f2))) << 16) | ((((i2 >> 8) & KotlinVersion.MAX_COMPONENT_VALUE) + ((int) ((((i3 >> 8) & KotlinVersion.MAX_COMPONENT_VALUE) - r4) * f2))) << 8) | ((i2 & KotlinVersion.MAX_COMPONENT_VALUE) + ((int) (f2 * ((i3 & KotlinVersion.MAX_COMPONENT_VALUE) - r2))));
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Rect bounds = getBounds();
        int save = canvas.save();
        canvas.rotate(this.g, bounds.exactCenterX(), bounds.exactCenterY());
        Ring ring = this.f;
        Paint paint = ring.v;
        RectF rectF = ring.f17326a;
        rectF.set(bounds);
        float f = ring.i;
        rectF.inset(f, f);
        float f2 = ring.e;
        float f3 = ring.g;
        float f4 = (f2 + f3) * 360.0f;
        float f5 = ((ring.f + f3) * 360.0f) - f4;
        Paint paint2 = ring.b;
        paint2.setColor(ring.x);
        canvas.drawArc(rectF, f4, f5, false, paint2);
        Paint paint3 = ring.f17327c;
        if (ring.o) {
            Path path = ring.p;
            if (path == null) {
                Path path2 = new Path();
                ring.p = path2;
                path2.setFillType(Path.FillType.EVEN_ODD);
            } else {
                path.reset();
            }
            float f6 = (((int) ring.i) / 2) * ring.q;
            float cos = (float) ((Math.cos(0.0d) * ring.r) + bounds.exactCenterX());
            float sin = (float) ((Math.sin(0.0d) * ring.r) + bounds.exactCenterY());
            ring.p.moveTo(0.0f, 0.0f);
            ring.p.lineTo(ring.s * ring.q, 0.0f);
            Path path3 = ring.p;
            float f7 = ring.s;
            float f8 = ring.q;
            path3.lineTo((f7 * f8) / 2.0f, ring.t * f8);
            ring.p.offset(cos - f6, sin);
            ring.p.close();
            paint3.setColor(ring.x);
            canvas.rotate((f4 + f5) - 5.0f, bounds.exactCenterX(), bounds.exactCenterY());
            canvas.drawPath(ring.p, paint3);
        }
        if (ring.u < 255) {
            paint.setColor(ring.w);
            paint.setAlpha(KotlinVersion.MAX_COMPONENT_VALUE - ring.u);
            canvas.drawCircle(bounds.exactCenterX(), bounds.exactCenterY(), bounds.width() / 2, paint);
        }
        canvas.restoreToCount(save);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f.u;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return (int) this.l;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return (int) this.k;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        ArrayList arrayList = this.f17322c;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            Animation animation = (Animation) arrayList.get(i);
            if (animation.hasStarted() && !animation.hasEnded()) {
                return true;
            }
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.f.u = i;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        Ring ring = this.f;
        ring.b.setColorFilter(colorFilter);
        ring.a();
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        this.i.reset();
        Ring ring = this.f;
        float f = ring.e;
        ring.l = f;
        float f2 = ring.f;
        ring.m = f2;
        ring.n = ring.g;
        MyPullView myPullView = this.h;
        if (f2 != f) {
            this.m = true;
            this.i.setDuration(666L);
            myPullView.startAnimation(this.i);
            return;
        }
        ring.b(0);
        ring.l = 0.0f;
        ring.m = 0.0f;
        ring.n = 0.0f;
        ring.e = 0.0f;
        ring.a();
        ring.f = 0.0f;
        ring.a();
        ring.g = 0.0f;
        ring.a();
        this.i.setDuration(1332L);
        myPullView.startAnimation(this.i);
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        this.h.clearAnimation();
        this.g = 0.0f;
        invalidateSelf();
        Ring ring = this.f;
        if (ring.o) {
            ring.o = false;
            ring.a();
        }
        ring.b(0);
        ring.l = 0.0f;
        ring.m = 0.0f;
        ring.n = 0.0f;
        ring.e = 0.0f;
        ring.a();
        ring.f = 0.0f;
        ring.a();
        ring.g = 0.0f;
        ring.a();
    }
}
