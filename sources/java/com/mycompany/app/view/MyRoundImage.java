package com.mycompany.app.view;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import com.mycompany.app.image.ImageSizeListener;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainListLoader;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.quick.QuickAdapter;
import com.mycompany.app.soulbrowser.R;
import java.util.List;

/* loaded from: classes3.dex */
public class MyRoundImage extends ImageView {
    public static final /* synthetic */ int b0 = 0;
    public List A;
    public boolean B;
    public int C;
    public Rect D;
    public RectF E;
    public Bitmap F;
    public Bitmap G;
    public Bitmap H;
    public Bitmap I;
    public String J;
    public String K;
    public String L;
    public String M;
    public Paint N;
    public Paint O;
    public Paint P;
    public Paint Q;
    public Paint R;
    public Paint S;
    public Paint T;
    public Paint U;
    public boolean V;
    public final Runnable W;
    public final Runnable a0;

    /* renamed from: c, reason: collision with root package name */
    public boolean f18930c;
    public final Context f;
    public ImageSizeListener g;
    public int h;
    public int i;
    public float j;
    public int k;
    public Paint l;
    public int m;
    public int n;
    public Drawable o;
    public boolean p;
    public String q;
    public Paint r;
    public RectF s;
    public float t;
    public float u;
    public String v;
    public String w;
    public boolean x;
    public AlphaAnimation y;
    public int z;

    /* renamed from: com.mycompany.app.view.MyRoundImage$10, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass10 implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
        }
    }

    /* renamed from: com.mycompany.app.view.MyRoundImage$11, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass11 implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            throw null;
        }
    }

    /* renamed from: com.mycompany.app.view.MyRoundImage$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass4 implements ValueAnimator.AnimatorUpdateListener {
        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            throw null;
        }
    }

    /* renamed from: com.mycompany.app.view.MyRoundImage$5, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass5 implements Animator.AnimatorListener {
        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            throw null;
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            throw null;
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
        }
    }

    /* renamed from: com.mycompany.app.view.MyRoundImage$6, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass6 implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
        }
    }

    /* renamed from: com.mycompany.app.view.MyRoundImage$7, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass7 implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            throw null;
        }
    }

    /* renamed from: com.mycompany.app.view.MyRoundImage$8, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass8 implements ValueAnimator.AnimatorUpdateListener {
        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            throw null;
        }
    }

    /* renamed from: com.mycompany.app.view.MyRoundImage$9, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass9 implements Animator.AnimatorListener {
        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            throw null;
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            throw null;
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, java.lang.Runnable] */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, java.lang.Runnable] */
    public MyRoundImage(Context context) {
        super(context);
        this.W = new Object();
        this.a0 = new Object();
        this.f18930c = true;
        this.f = context;
        this.i = MainApp.v1;
        int i = this.k;
        if (i != 0) {
            this.k = d(i);
            Paint paint = new Paint();
            this.l = paint;
            paint.setAntiAlias(true);
            this.l.setStyle(Paint.Style.FILL);
            this.l.setColor(this.k);
        }
        int i2 = this.n;
        if (i2 != 0) {
            int e = e(i2);
            this.n = e;
            this.o = MainUtil.S(this.f, e);
        }
        this.p = true;
        setOutlineProvider(new ViewOutlineProvider() { // from class: com.mycompany.app.view.MyRoundImage.1
            @Override // android.view.ViewOutlineProvider
            public final void getOutline(View view, Outline outline) {
                if (outline == null) {
                    return;
                }
                MyRoundImage myRoundImage = MyRoundImage.this;
                outline.setRoundRect(0, 0, myRoundImage.getWidth(), myRoundImage.getHeight(), myRoundImage.i);
            }
        });
        setClipToOutline(true);
    }

    private void setValAnimScaleDn(float f) {
        invalidate();
    }

    private void setValAnimScaleUp(float f) {
        invalidate();
    }

    public final void A(Bitmap bitmap, int i) {
        if (i == 0) {
            this.F = bitmap;
            return;
        }
        if (i == 1) {
            this.G = bitmap;
        } else if (i == 2) {
            this.H = bitmap;
        } else if (i == 3) {
            this.I = bitmap;
        }
    }

    public final void B(int i, int i2, List list, boolean z) {
        boolean z2;
        boolean z3;
        boolean z4;
        this.z = i;
        this.A = list;
        this.B = z;
        if (i != 0 && list != null && !list.isEmpty()) {
            this.w = null;
            this.l = null;
            boolean z5 = false;
            this.n = 0;
            this.o = null;
            this.q = null;
            this.r = null;
            this.s = null;
            a();
            this.C = MainApp.G1 / 4;
            if (this.h != i2) {
                this.h = i2;
                z2 = true;
            } else {
                z2 = false;
            }
            if (!g(0) && !z2) {
                z3 = false;
            } else {
                z3 = true;
            }
            if (!g(1) && !z3) {
                z4 = false;
            } else {
                z4 = true;
            }
            if (g(2) || z4) {
                z5 = true;
            }
            if (!g(3) && !z5) {
                return;
            }
            f();
            return;
        }
        l();
    }

    public final void a() {
        AlphaAnimation alphaAnimation = this.y;
        if (alphaAnimation == null) {
            return;
        }
        alphaAnimation.cancel();
        this.y = null;
        clearAnimation();
    }

    public final void b(Canvas canvas, int i, int i2, int i3, int i4, Bitmap bitmap, int i5) {
        Rect rect;
        int i6;
        int i7;
        if (i != 0 && i2 != 0 && MainUtil.f6(bitmap) && (rect = this.D) != null && this.E != null) {
            int i8 = this.C * 2;
            if (i5 == 0) {
                i7 = i8;
            } else {
                if (i5 == 1) {
                    i6 = (i - i3) - i8;
                } else if (i5 == 2) {
                    i7 = (i2 - i4) - i8;
                } else {
                    i6 = (i - i3) - i8;
                    i8 = (i2 - i4) - i8;
                }
                i7 = i8;
                i8 = i6;
            }
            rect.set(0, 0, bitmap.getWidth(), bitmap.getHeight());
            this.E.set(i8, i7, i8 + i3, i7 + i4);
            canvas.drawBitmap(bitmap, this.D, this.E, (Paint) null);
        }
    }

    public final void c(Canvas canvas, int i, int i2, int i3, int i4, String str, Paint paint, Paint paint2, int i5) {
        RectF rectF;
        int i6;
        int i7;
        if (i != 0 && i2 != 0 && !TextUtils.isEmpty(str) && paint != null && paint2 != null && (rectF = this.E) != null) {
            int i8 = this.C * 2;
            float f = i3 / 2.0f;
            if (i5 == 0) {
                i7 = i8;
            } else {
                if (i5 == 1) {
                    i6 = (i - i3) - i8;
                } else if (i5 == 2) {
                    i7 = (i2 - i4) - i8;
                } else {
                    i6 = (i - i3) - i8;
                    i8 = (i2 - i4) - i8;
                }
                i7 = i8;
                i8 = i6;
            }
            float f2 = i8;
            float f3 = i7;
            rectF.set(f2, f3, i8 + i3, i7 + i4);
            canvas.drawRoundRect(this.E, f, i4 / 2.0f, paint);
            paint2.setTextSize(f);
            canvas.drawText(str, f2 + f, (f3 + f) - ((paint2.ascent() + paint2.descent()) / 2.0f), paint2);
        }
    }

    public final int d(int i) {
        if (i() && i == -460552) {
            return -11513776;
        }
        return i;
    }

    public final int e(int i) {
        if (i()) {
            if (i == R.drawable.outline_draft_black_24) {
                return R.drawable.outline_draft_dark_24;
            }
            if (i == R.drawable.outline_image_black_24) {
                return R.drawable.outline_image_dark_24;
            }
            if (i == R.drawable.baseline_play_arrow_black_24) {
                return R.drawable.baseline_play_arrow_dark_24;
            }
            if (i == R.drawable.baseline_music_note_black_24) {
                return R.drawable.baseline_music_note_dark_24;
            }
            if (i == R.drawable.outline_folder_zip_black_24) {
                return R.drawable.outline_folder_zip_dark_24;
            }
            if (i == R.drawable.outline_verified_user_black_24) {
                return R.drawable.outline_verified_user_dark_24;
            }
            if (i == R.drawable.outline_local_library_black_24) {
                return R.drawable.outline_local_library_dark_24;
            }
            if (i == R.drawable.outline_picture_as_pdf_black_24) {
                return R.drawable.outline_picture_as_pdf_dark_24;
            }
            if (i == R.drawable.outline_description_black_24) {
                return R.drawable.outline_description_dark_24;
            }
            if (i == R.drawable.outline_public_black_24) {
                return R.drawable.outline_public_dark_24;
            }
            if (i == R.drawable.outline_android_black_24) {
                return R.drawable.outline_android_dark_24;
            }
            if (i == R.drawable.outline_search_black_24) {
                return R.drawable.outline_search_dark_24;
            }
            if (i == R.drawable.outline_find_in_page_black_24) {
                return R.drawable.outline_find_in_page_dark_24;
            }
            if (i == R.drawable.outline_text_snippet_black_24) {
                return R.drawable.outline_text_snippet_dark_24;
            }
            if (i == R.drawable.outline_kid_star_black_24) {
                return R.drawable.outline_kid_star_dark_24;
            }
            if (i == R.drawable.outline_home_black_24) {
                return R.drawable.outline_home_dark_24;
            }
            if (i == R.drawable.outline_offline_pin_black_24) {
                return R.drawable.outline_offline_pin_dark_24;
            }
            if (i == R.drawable.outline_shift_2_black_24) {
                return R.drawable.outline_shift_2_dark_24;
            }
            if (i == R.drawable.outline_folder_black_24) {
                return R.drawable.outline_folder_dark_24;
            }
            if (i == R.drawable.outline_extension_black_24) {
                return R.drawable.outline_extension_dark_24;
            }
            return i;
        }
        return i;
    }

    public final void f() {
        if (!this.f18930c) {
            return;
        }
        if (this.D == null) {
            this.D = new Rect();
        }
        if (this.E == null) {
            this.E = new RectF();
        }
        invalidate();
    }

    public final boolean g(final int i) {
        List list = this.A;
        if (list != null && i >= 0 && i < list.size()) {
            QuickAdapter.QuickSubItem quickSubItem = (QuickAdapter.QuickSubItem) this.A.get(i);
            if (quickSubItem == null) {
                A(null, i);
                m(i);
                return false;
            }
            if (TextUtils.isEmpty(quickSubItem.b)) {
                String str = quickSubItem.f17365c;
                if (TextUtils.isEmpty(str)) {
                    A(null, i);
                    m(i);
                    return false;
                }
                h(quickSubItem.d, i, str);
                return true;
            }
            int i2 = quickSubItem.d;
            if (i2 != 0 && i2 != -460552) {
                String str2 = quickSubItem.f17365c;
                if (TextUtils.isEmpty(str2)) {
                    A(null, i);
                    m(i);
                    return false;
                }
                h(quickSubItem.d, i, str2);
                return true;
            }
            m(i);
            Bitmap c2 = MainListLoader.c(quickSubItem.b, this.B);
            if (MainUtil.f6(c2)) {
                A(c2, i);
                return true;
            }
            final long j = this.z;
            final long j2 = quickSubItem.f17364a;
            final String str3 = quickSubItem.b;
            final String str4 = quickSubItem.f17365c;
            final int i3 = quickSubItem.d;
            MainApp.J(this.f, new Runnable() { // from class: com.mycompany.app.view.MyRoundImage.3
                @Override // java.lang.Runnable
                public final void run() {
                    MyRoundImage myRoundImage = MyRoundImage.this;
                    if (myRoundImage.f18930c) {
                        if (j == myRoundImage.z) {
                            Context context = myRoundImage.f;
                            long j3 = j2;
                            String str5 = str3;
                            Bitmap g0 = MainUtil.g0(33, j3, context, str5);
                            if (myRoundImage.f18930c) {
                                boolean f6 = MainUtil.f6(g0);
                                int i4 = i;
                                if (f6) {
                                    MainListLoader.g(str5, g0, myRoundImage.B);
                                    if (myRoundImage.f18930c) {
                                        myRoundImage.A(g0, i4);
                                        myRoundImage.post(new Runnable() { // from class: com.mycompany.app.view.MyRoundImage.3.1
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                MyRoundImage myRoundImage2 = MyRoundImage.this;
                                                int i5 = MyRoundImage.b0;
                                                myRoundImage2.f();
                                            }
                                        });
                                        return;
                                    }
                                    return;
                                }
                                String str6 = str4;
                                if (!TextUtils.isEmpty(str6)) {
                                    myRoundImage.h(i3, i4, str6);
                                    myRoundImage.post(new Runnable() { // from class: com.mycompany.app.view.MyRoundImage.3.2
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            MyRoundImage myRoundImage2 = MyRoundImage.this;
                                            int i5 = MyRoundImage.b0;
                                            myRoundImage2.f();
                                        }
                                    });
                                }
                            }
                        }
                    }
                }
            });
            return false;
        }
        A(null, i);
        m(i);
        return false;
    }

    public String getPath() {
        return this.w;
    }

    public String getUrl() {
        return this.v;
    }

    public final void h(int i, int i2, String str) {
        if (i == 0) {
            i = -65536;
        }
        A(null, i2);
        if (i2 == 0) {
            this.J = str;
            if (this.N == null) {
                Paint paint = new Paint();
                this.N = paint;
                paint.setAntiAlias(true);
                this.N.setStyle(Paint.Style.FILL);
            }
            this.N.setColor(i);
            if (this.R == null) {
                Paint paint2 = new Paint();
                this.R = paint2;
                paint2.setAntiAlias(true);
                this.R.setStyle(Paint.Style.FILL);
                this.R.setTextAlign(Paint.Align.CENTER);
                this.R.setTypeface(Typeface.create(Typeface.DEFAULT, 1));
            }
            this.R.setColor(-1);
            return;
        }
        if (i2 == 1) {
            this.K = str;
            if (this.O == null) {
                Paint paint3 = new Paint();
                this.O = paint3;
                paint3.setAntiAlias(true);
                this.O.setStyle(Paint.Style.FILL);
            }
            this.O.setColor(i);
            if (this.S == null) {
                Paint paint4 = new Paint();
                this.S = paint4;
                paint4.setAntiAlias(true);
                this.S.setStyle(Paint.Style.FILL);
                this.S.setTextAlign(Paint.Align.CENTER);
                this.S.setTypeface(Typeface.create(Typeface.DEFAULT, 1));
            }
            this.S.setColor(-1);
            return;
        }
        if (i2 == 2) {
            this.L = str;
            if (this.P == null) {
                Paint paint5 = new Paint();
                this.P = paint5;
                paint5.setAntiAlias(true);
                this.P.setStyle(Paint.Style.FILL);
            }
            this.P.setColor(i);
            if (this.T == null) {
                Paint paint6 = new Paint();
                this.T = paint6;
                paint6.setAntiAlias(true);
                this.T.setStyle(Paint.Style.FILL);
                this.T.setTextAlign(Paint.Align.CENTER);
                this.T.setTypeface(Typeface.create(Typeface.DEFAULT, 1));
            }
            this.T.setColor(-1);
            return;
        }
        if (i2 == 3) {
            this.M = str;
            if (this.Q == null) {
                Paint paint7 = new Paint();
                this.Q = paint7;
                paint7.setAntiAlias(true);
                this.Q.setStyle(Paint.Style.FILL);
            }
            this.Q.setColor(i);
            if (this.U == null) {
                Paint paint8 = new Paint();
                this.U = paint8;
                paint8.setAntiAlias(true);
                this.U.setStyle(Paint.Style.FILL);
                this.U.setTextAlign(Paint.Align.CENTER);
                this.U.setTypeface(Typeface.create(Typeface.DEFAULT, 1));
            }
            this.U.setColor(-1);
        }
    }

    public final boolean i() {
        if (!MainApp.K1 && !this.V) {
            return false;
        }
        return true;
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.f18930c) {
            return;
        }
        super.invalidate();
    }

    public final void j() {
        if (!this.f18930c) {
            return;
        }
        post(new Runnable() { // from class: com.mycompany.app.view.MyRoundImage.12
            @Override // java.lang.Runnable
            public final void run() {
                MyRoundImage myRoundImage = MyRoundImage.this;
                if (!myRoundImage.f18930c) {
                    return;
                }
                myRoundImage.requestLayout();
            }
        });
    }

    public final void k() {
        this.f18930c = false;
        a();
        l();
        this.g = null;
        this.l = null;
        this.o = null;
        this.q = null;
        this.r = null;
        this.s = null;
        this.v = null;
        this.w = null;
    }

    public final void l() {
        this.A = null;
        this.D = null;
        this.E = null;
        this.F = null;
        this.G = null;
        this.H = null;
        this.I = null;
        this.J = null;
        this.K = null;
        this.L = null;
        this.M = null;
        this.N = null;
        this.O = null;
        this.P = null;
        this.Q = null;
        this.R = null;
        this.S = null;
        this.T = null;
        this.U = null;
    }

    public final void m(int i) {
        if (i == 0) {
            this.J = null;
            this.N = null;
            this.R = null;
            return;
        }
        if (i == 1) {
            this.K = null;
            this.O = null;
            this.S = null;
        } else if (i == 2) {
            this.L = null;
            this.P = null;
            this.T = null;
        } else if (i == 3) {
            this.M = null;
            this.Q = null;
            this.U = null;
        }
    }

    public final void n(int i) {
        this.w = null;
        this.h = 1358954496;
        this.q = null;
        this.r = null;
        this.s = null;
        l();
        super.setImageResource(i);
    }

    public final void o(int i, int i2) {
        boolean z;
        int d;
        if (this.f != null) {
            if (this.r != null) {
                z = true;
            } else {
                z = false;
            }
            this.w = null;
            this.h = 0;
            this.q = null;
            this.r = null;
            this.s = null;
            a();
            l();
            super.setImageDrawable(null);
            if (i == -460552) {
                d = 0;
            } else {
                d = d(i);
            }
            int e = e(i2);
            if (q(d)) {
                z = true;
            }
            if (e == 0 && this.o != null) {
                this.n = 0;
                this.o = null;
                this.p = true;
            } else if (this.n != e) {
                this.n = e;
                if (e == 0) {
                    this.o = null;
                } else {
                    this.o = MainUtil.S(this.f, e);
                }
                this.p = true;
            }
            if (!z && !this.p) {
                return;
            }
            invalidate();
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDetachedFromWindow() {
        a();
        super.onDetachedFromWindow();
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDraw(Canvas canvas) {
        MyRoundImage myRoundImage;
        Canvas canvas2;
        if (this.f18930c) {
            try {
                int i = this.h;
                if (i != 0) {
                    canvas.drawColor(i);
                }
                try {
                    if (this.A != null) {
                        int i2 = this.C * 3;
                        int width = getWidth();
                        int height = getHeight();
                        int i3 = (width / 2) - i2;
                        int i4 = (height / 2) - i2;
                        Bitmap bitmap = this.F;
                        if (bitmap != null) {
                            myRoundImage = this;
                            canvas2 = canvas;
                            myRoundImage.b(canvas2, width, height, i3, i4, bitmap, 0);
                        } else {
                            myRoundImage = this;
                            canvas2 = canvas;
                            myRoundImage.c(canvas2, width, height, i3, i4, myRoundImage.J, myRoundImage.N, myRoundImage.R, 0);
                        }
                        Bitmap bitmap2 = myRoundImage.G;
                        if (bitmap2 != null) {
                            myRoundImage.b(canvas2, width, height, i3, i4, bitmap2, 1);
                        } else {
                            myRoundImage.c(canvas2, width, height, i3, i4, myRoundImage.K, myRoundImage.O, myRoundImage.S, 1);
                        }
                        Bitmap bitmap3 = myRoundImage.H;
                        if (bitmap3 != null) {
                            myRoundImage.b(canvas2, width, height, i3, i4, bitmap3, 2);
                        } else {
                            myRoundImage.c(canvas2, width, height, i3, i4, myRoundImage.L, myRoundImage.P, myRoundImage.T, 2);
                        }
                        Bitmap bitmap4 = myRoundImage.I;
                        if (bitmap4 != null) {
                            myRoundImage.b(canvas2, width, height, i3, i4, bitmap4, 3);
                            return;
                        } else {
                            myRoundImage.c(canvas2, width, height, i3, i4, myRoundImage.M, myRoundImage.Q, myRoundImage.U, 3);
                            return;
                        }
                    }
                    Drawable drawable = getDrawable();
                    if (drawable != null) {
                        int i5 = this.m;
                        if (i5 != 0) {
                            float width2 = i5 / getWidth();
                            canvas.scale(width2, width2, getWidth() / 2.0f, getHeight() / 2.0f);
                        }
                        if (drawable instanceof BitmapDrawable) {
                            if (MainUtil.f6(((BitmapDrawable) drawable).getBitmap())) {
                                super.onDraw(canvas);
                                return;
                            }
                            return;
                        }
                        super.onDraw(canvas);
                        return;
                    }
                    Paint paint = this.l;
                    if (paint != null) {
                        canvas.drawCircle(this.t, this.u, this.j, paint);
                    }
                    if (!TextUtils.isEmpty(this.q)) {
                        Paint paint2 = this.r;
                        if (paint2 != null) {
                            if (this.s != null) {
                                paint2.setColor(-1);
                                RectF rectF = this.s;
                                float f = this.i;
                                canvas.drawRoundRect(rectF, f, f, this.r);
                                float descent = this.u - ((this.r.descent() + this.r.ascent()) / 2.0f);
                                this.r.setColor(-9807617);
                                canvas.drawText(this.q, this.t, descent, this.r);
                                return;
                            }
                            canvas.drawText(this.q, this.t, this.u - ((paint2.descent() + this.r.ascent()) / 2.0f), this.r);
                            return;
                        }
                        return;
                    }
                    Drawable drawable2 = this.o;
                    if (drawable2 != null) {
                        if (this.p) {
                            this.p = false;
                            int intrinsicWidth = drawable2.getIntrinsicWidth();
                            int intrinsicHeight = drawable2.getIntrinsicHeight();
                            int width3 = (getWidth() - intrinsicWidth) / 2;
                            int height2 = (getHeight() - intrinsicHeight) / 2;
                            drawable2.setBounds(width3, height2, intrinsicWidth + width3, intrinsicHeight + height2);
                        }
                        this.o.draw(canvas);
                    }
                } catch (Exception unused) {
                }
            } catch (Exception unused2) {
            }
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        ImageSizeListener imageSizeListener = this.g;
        if (imageSizeListener != null) {
            imageSizeListener.a(this, i, i2);
        }
        this.p = true;
        float f = i;
        this.t = f / 2.0f;
        float f2 = i2;
        this.u = f2 / 2.0f;
        if (this.s != null) {
            this.s = new RectF(0.0f, 0.0f, f, f2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0066, code lost:
    
        if (r4 < r5) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x009b, code lost:
    
        if (r6 < r0) goto L34;
     */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:41:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void p(int r4, int r5, java.lang.String r6, java.util.regex.Pattern r7) {
        /*
            r3 = this;
            java.lang.String r6 = com.mycompany.app.main.MainUtil.y2(r6, r7)
            boolean r7 = android.text.TextUtils.isEmpty(r6)
            r0 = 0
            if (r7 == 0) goto Lf
            r3.o(r0, r5)
            return
        Lf:
            r5 = 0
            r3.w = r5
            r3.h = r0
            r3.n = r0
            r3.o = r5
            r3.s = r5
            r3.a()
            r3.l()
            super.setImageDrawable(r5)
            r5 = -460552(0xfffffffffff8f8f8, float:NaN)
            if (r4 != r5) goto L29
            goto L2d
        L29:
            int r0 = r3.d(r4)
        L2d:
            boolean r4 = r3.q(r0)
            java.lang.String r5 = r3.q
            boolean r5 = r6.equals(r5)
            r7 = -16777216(0xffffffffff000000, float:-1.7014118E38)
            r1 = -328966(0xfffffffffffafafa, float:NaN)
            r2 = 1
            if (r5 != 0) goto L8a
            r3.q = r6
            android.graphics.Paint r4 = r3.r
            if (r4 != 0) goto L89
            android.graphics.Paint r4 = new android.graphics.Paint
            r4.<init>()
            r3.r = r4
            r4.setAntiAlias(r2)
            android.graphics.Paint r4 = r3.r
            android.graphics.Paint$Style r5 = android.graphics.Paint.Style.FILL
            r4.setStyle(r5)
            android.graphics.Paint r4 = r3.r
            android.graphics.Paint$Align r5 = android.graphics.Paint.Align.CENTER
            r4.setTextAlign(r5)
            if (r0 != 0) goto L69
            float r4 = r3.j
            int r5 = com.mycompany.app.main.MainApp.E1
            float r5 = (float) r5
            int r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r4 >= 0) goto L69
            goto L6b
        L69:
            float r5 = r3.j
        L6b:
            android.graphics.Paint r4 = r3.r
            r4.setTextSize(r5)
            android.graphics.Paint r4 = r3.r
            boolean r5 = r3.i()
            if (r5 == 0) goto L7a
            r5 = r1
            goto L7b
        L7a:
            r5 = r7
        L7b:
            r4.setColor(r5)
            android.graphics.Paint r4 = r3.r
            android.graphics.Typeface r5 = android.graphics.Typeface.DEFAULT
            android.graphics.Typeface r5 = android.graphics.Typeface.create(r5, r2)
            r4.setTypeface(r5)
        L89:
            r4 = r2
        L8a:
            android.graphics.Paint r5 = r3.r
            if (r5 == 0) goto Lc1
            float r5 = r5.getTextSize()
            if (r0 != 0) goto L9e
            float r6 = r3.j
            int r0 = com.mycompany.app.main.MainApp.E1
            float r0 = (float) r0
            int r6 = (r6 > r0 ? 1 : (r6 == r0 ? 0 : -1))
            if (r6 >= 0) goto L9e
            goto La0
        L9e:
            float r0 = r3.j
        La0:
            int r5 = java.lang.Float.compare(r5, r0)
            if (r5 == 0) goto Lac
            android.graphics.Paint r4 = r3.r
            r4.setTextSize(r0)
            r4 = r2
        Lac:
            android.graphics.Paint r5 = r3.r
            int r5 = r5.getColor()
            boolean r6 = r3.i()
            if (r6 == 0) goto Lb9
            r7 = r1
        Lb9:
            if (r5 == r7) goto Lc1
            android.graphics.Paint r4 = r3.r
            r4.setColor(r7)
            goto Lc2
        Lc1:
            r2 = r4
        Lc2:
            if (r2 == 0) goto Lc7
            r3.invalidate()
        Lc7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.view.MyRoundImage.p(int, int, java.lang.String, java.util.regex.Pattern):void");
    }

    public final boolean q(int i) {
        boolean z;
        if (i != 0) {
            if (this.l == null) {
                Paint paint = new Paint();
                this.l = paint;
                paint.setAntiAlias(true);
                this.l.setStyle(Paint.Style.FILL);
                this.l.setColor(i);
                z = true;
            }
            z = false;
        } else {
            if (this.l != null) {
                this.l = null;
                z = true;
            }
            z = false;
        }
        if (this.k != i) {
            this.k = i;
            if (i != 0) {
                if (this.l == null) {
                    Paint paint2 = new Paint();
                    this.l = paint2;
                    paint2.setAntiAlias(true);
                    this.l.setStyle(Paint.Style.FILL);
                }
                this.l.setColor(i);
            }
            return true;
        }
        return z;
    }

    public final void r(String str, boolean z) {
        if (!TextUtils.isEmpty(this.w) && this.w.equals(str)) {
            this.x = false;
        } else {
            this.x = z;
        }
        this.w = str;
        if (!this.x) {
            a();
        }
    }

    public final void s() {
        this.w = null;
        this.h = 0;
        a();
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        this.y = alphaAnimation;
        alphaAnimation.setDuration(400L);
        this.y.setInterpolator(new DecelerateInterpolator());
        this.y.setAnimationListener(new Animation.AnimationListener() { // from class: com.mycompany.app.view.MyRoundImage.2
            @Override // android.view.animation.Animation.AnimationListener
            public final void onAnimationEnd(Animation animation) {
                int i;
                MyRoundImage myRoundImage = MyRoundImage.this;
                myRoundImage.y = null;
                myRoundImage.clearAnimation();
                if (myRoundImage.isActivated()) {
                    i = 0;
                } else {
                    i = 4;
                }
                myRoundImage.setVisibility(i);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public final void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public final void onAnimationStart(Animation animation) {
            }
        });
        setVisibility(0);
        startAnimation(this.y);
    }

    public void setBackColor(int i) {
        this.h = d(i);
    }

    public void setCircleColor(int i) {
        this.w = null;
        this.h = 0;
        a();
        l();
        boolean q = q(d(i));
        super.setImageDrawable(null);
        if (q) {
            invalidate();
        }
    }

    public void setCircleImage(int i) {
        if (this.f != null) {
            this.w = null;
            this.h = 0;
            this.q = null;
            this.r = null;
            this.s = null;
            a();
            l();
            super.setImageDrawable(null);
            int e = e(i);
            if (e == 0 && this.o != null) {
                this.n = 0;
                this.o = null;
                this.p = true;
            } else if (this.n != e) {
                this.n = e;
                if (e == 0) {
                    this.o = null;
                } else {
                    this.o = MainUtil.S(this.f, e);
                }
                this.p = true;
            }
            if (this.p) {
                invalidate();
            }
        }
    }

    public void setCircleRadius(float f) {
        this.j = f;
    }

    public void setDarkColor(boolean z) {
        this.V = z;
    }

    public void setIconSmall(boolean z) {
        if (z) {
            this.m = MainApp.F1 * 3;
        } else {
            this.m = 0;
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        this.q = null;
        this.r = null;
        this.s = null;
        a();
        l();
        if (!MainUtil.f6(bitmap)) {
            this.w = null;
            this.h = 0;
            super.setImageDrawable(null);
            return;
        }
        super.setImageBitmap(bitmap);
        if (this.x && getVisibility() == 0) {
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            this.y = alphaAnimation;
            alphaAnimation.setDuration(400L);
            this.y.setInterpolator(new DecelerateInterpolator());
            startAnimation(this.y);
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        this.q = null;
        this.r = null;
        this.s = null;
        a();
        l();
        if (drawable == null) {
            this.w = null;
            this.h = 0;
            super.setImageDrawable(null);
            return;
        }
        super.setImageDrawable(drawable);
        if (this.x && getVisibility() == 0) {
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            this.y = alphaAnimation;
            alphaAnimation.setDuration(400L);
            this.y.setInterpolator(new DecelerateInterpolator());
            startAnimation(this.y);
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        this.w = null;
        this.h = 0;
        this.q = null;
        this.r = null;
        this.s = null;
        l();
        super.setImageResource(i);
    }

    public void setListener(ImageSizeListener imageSizeListener) {
        this.g = imageSizeListener;
    }

    public void setRoundRadius(int i) {
        this.i = i;
    }

    public void setUrl(String str) {
        this.v = str;
    }

    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int i) {
        if (i != 0) {
            a();
        }
        super.setVisibility(i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0017, code lost:
    
        if (r4 == (-460552)) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void t(int r4, java.lang.String r5, java.util.regex.Pattern r6) {
        /*
            r3 = this;
            r0 = -460552(0xfffffffffff8f8f8, float:NaN)
            r1 = -14606047(0xffffffffff212121, float:-2.1417772E38)
            if (r4 != 0) goto L11
            boolean r4 = r3.i()
            if (r4 == 0) goto Lf
            goto L19
        Lf:
            r4 = r0
            goto L1a
        L11:
            boolean r2 = r3.i()
            if (r2 == 0) goto L1a
            if (r4 != r0) goto L1a
        L19:
            r4 = r1
        L1a:
            java.lang.String r5 = com.mycompany.app.main.MainUtil.y2(r5, r6)
            boolean r6 = android.text.TextUtils.isEmpty(r5)
            if (r6 == 0) goto L26
            java.lang.String r5 = ""
        L26:
            r6 = 0
            r3.w = r6
            r2 = 0
            r3.h = r2
            r3.n = r2
            r3.o = r6
            r3.a()
            r3.l()
            super.setImageDrawable(r6)
            boolean r6 = r3.q(r4)
            java.lang.String r2 = r3.q
            boolean r2 = r5.equals(r2)
            if (r2 != 0) goto L76
            r3.q = r5
            android.graphics.Paint r5 = r3.r
            r6 = 1
            if (r5 != 0) goto L76
            android.graphics.Paint r5 = new android.graphics.Paint
            r5.<init>()
            r3.r = r5
            r5.setAntiAlias(r6)
            android.graphics.Paint r5 = r3.r
            android.graphics.Paint$Style r2 = android.graphics.Paint.Style.FILL
            r5.setStyle(r2)
            android.graphics.Paint r5 = r3.r
            android.graphics.Paint$Align r2 = android.graphics.Paint.Align.CENTER
            r5.setTextAlign(r2)
            android.graphics.Paint r5 = r3.r
            float r2 = r3.j
            r5.setTextSize(r2)
            android.graphics.Paint r5 = r3.r
            android.graphics.Typeface r2 = android.graphics.Typeface.DEFAULT
            android.graphics.Typeface r2 = android.graphics.Typeface.create(r2, r6)
            r5.setTypeface(r2)
        L76:
            android.graphics.Paint r5 = r3.r
            if (r5 == 0) goto L9a
            if (r4 == 0) goto L8b
            if (r4 == r0) goto L8b
            r0 = -11513776(0xffffffffff505050, float:-2.7689643E38)
            if (r4 == r0) goto L8b
            if (r4 != r1) goto L86
            goto L8b
        L86:
            r4 = -1
            r5.setColor(r4)
            goto L9a
        L8b:
            boolean r4 = r3.i()
            if (r4 == 0) goto L95
            r4 = -328966(0xfffffffffffafafa, float:NaN)
            goto L97
        L95:
            r4 = -16777216(0xffffffffff000000, float:-1.7014118E38)
        L97:
            r5.setColor(r4)
        L9a:
            if (r6 == 0) goto L9f
            r3.invalidate()
        L9f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.view.MyRoundImage.t(int, java.lang.String, java.util.regex.Pattern):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0021, code lost:
    
        if (r7 == (-460552)) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void u(java.lang.String r6, int r7, boolean r8) {
        /*
            r5 = this;
            boolean r0 = r5.i()
            r1 = 1
            r2 = 0
            if (r0 != 0) goto L11
            boolean r8 = com.mycompany.app.main.MainUtil.k5(r8)
            if (r8 == 0) goto Lf
            goto L11
        Lf:
            r8 = r2
            goto L12
        L11:
            r8 = r1
        L12:
            r0 = -460552(0xfffffffffff8f8f8, float:NaN)
            r3 = -14606047(0xffffffffff212121, float:-2.1417772E38)
            if (r7 != 0) goto L1f
            if (r8 == 0) goto L1d
            goto L23
        L1d:
            r7 = r0
            goto L24
        L1f:
            if (r8 == 0) goto L24
            if (r7 != r0) goto L24
        L23:
            r7 = r3
        L24:
            boolean r4 = android.text.TextUtils.isEmpty(r6)
            if (r4 == 0) goto L2c
            java.lang.String r6 = ""
        L2c:
            r4 = 0
            r5.w = r4
            r5.h = r2
            r5.n = r2
            r5.o = r4
            r5.a()
            r5.l()
            super.setImageDrawable(r4)
            boolean r2 = r5.q(r7)
            java.lang.String r4 = r5.q
            boolean r4 = r6.equals(r4)
            if (r4 != 0) goto L7b
            r5.q = r6
            android.graphics.Paint r6 = r5.r
            if (r6 != 0) goto L7c
            android.graphics.Paint r6 = new android.graphics.Paint
            r6.<init>()
            r5.r = r6
            r6.setAntiAlias(r1)
            android.graphics.Paint r6 = r5.r
            android.graphics.Paint$Style r2 = android.graphics.Paint.Style.FILL
            r6.setStyle(r2)
            android.graphics.Paint r6 = r5.r
            android.graphics.Paint$Align r2 = android.graphics.Paint.Align.CENTER
            r6.setTextAlign(r2)
            android.graphics.Paint r6 = r5.r
            float r2 = r5.j
            r6.setTextSize(r2)
            android.graphics.Paint r6 = r5.r
            android.graphics.Typeface r2 = android.graphics.Typeface.DEFAULT
            android.graphics.Typeface r2 = android.graphics.Typeface.create(r2, r1)
            r6.setTypeface(r2)
            goto L7c
        L7b:
            r1 = r2
        L7c:
            android.graphics.Paint r6 = r5.r
            if (r6 == 0) goto L9c
            if (r7 == 0) goto L91
            if (r7 == r0) goto L91
            r0 = -11513776(0xffffffffff505050, float:-2.7689643E38)
            if (r7 == r0) goto L91
            if (r7 != r3) goto L8c
            goto L91
        L8c:
            r7 = -1
            r6.setColor(r7)
            goto L9c
        L91:
            if (r8 == 0) goto L97
            r7 = -5197648(0xffffffffffb0b0b0, float:NaN)
            goto L99
        L97:
            r7 = -16777216(0xffffffffff000000, float:-1.7014118E38)
        L99:
            r6.setColor(r7)
        L9c:
            if (r1 == 0) goto La1
            r5.invalidate()
        La1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.view.MyRoundImage.u(java.lang.String, int, boolean):void");
    }

    public final void v(Bitmap bitmap, int i) {
        this.h = 0;
        this.q = null;
        this.r = null;
        this.s = null;
        a();
        l();
        if (!MainUtil.f6(bitmap)) {
            this.w = null;
            boolean q = q(d(i));
            super.setImageDrawable(null);
            if (q) {
                invalidate();
                return;
            }
            return;
        }
        this.l = null;
        super.setImageBitmap(bitmap);
        if (this.x && getVisibility() == 0) {
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            this.y = alphaAnimation;
            alphaAnimation.setDuration(400L);
            this.y.setInterpolator(new DecelerateInterpolator());
            startAnimation(this.y);
        }
    }

    public final void w(int i, int i2) {
        this.w = null;
        this.h = 0;
        this.q = null;
        this.r = null;
        this.s = null;
        l();
        q(d(i2));
        super.setImageResource(i);
    }

    public final void x(int i, int i2) {
        boolean z;
        if (this.f != null) {
            if (this.r != null) {
                z = true;
            } else {
                z = false;
            }
            this.w = null;
            this.h = 0;
            this.q = null;
            this.r = null;
            this.s = null;
            a();
            l();
            super.setImageDrawable(null);
            if (q(i)) {
                z = true;
            }
            if (i2 == 0 && this.o != null) {
                this.n = 0;
                this.o = null;
                this.p = true;
            } else if (this.n != i2) {
                this.n = i2;
                if (i2 == 0) {
                    this.o = null;
                } else {
                    this.o = MainUtil.S(this.f, i2);
                }
                this.p = true;
            }
            if (!z && !this.p) {
                return;
            }
            invalidate();
        }
    }

    public final void y(int i, String str) {
        String y2 = MainUtil.y2(str, null);
        if (TextUtils.isEmpty(y2)) {
            setImageResource(i);
            return;
        }
        this.w = null;
        this.h = 0;
        this.l = null;
        this.n = 0;
        this.o = null;
        a();
        l();
        super.setImageDrawable(null);
        if (y2.equals(this.q)) {
            return;
        }
        this.q = y2;
        if (this.r == null) {
            Paint paint = new Paint();
            this.r = paint;
            paint.setAntiAlias(true);
            this.r.setStyle(Paint.Style.FILL);
            this.r.setTextAlign(Paint.Align.CENTER);
            this.r.setTextSize(this.j);
            this.r.setTypeface(Typeface.create(Typeface.DEFAULT, 1));
        }
        if (this.s == null) {
            this.s = new RectF(0.0f, 0.0f, getWidth(), getHeight());
        }
        invalidate();
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void z(int r5, int r6, java.lang.String r7, java.util.regex.Pattern r8) {
        /*
            r4 = this;
            java.lang.String r7 = com.mycompany.app.main.MainUtil.y2(r7, r8)
            boolean r8 = android.text.TextUtils.isEmpty(r7)
            r0 = 0
            if (r8 == 0) goto L11
            r4.l = r0
            r4.setImageResource(r6)
            return
        L11:
            r4.w = r0
            r6 = 0
            r4.h = r6
            r4.n = r6
            r4.o = r0
            r4.s = r0
            r4.a()
            r4.l()
            super.setImageDrawable(r0)
            boolean r6 = r4.q(r5)
            java.lang.String r8 = r4.q
            boolean r8 = r7.equals(r8)
            r0 = -10395295(0xffffffffff616161, float:-2.9958192E38)
            r1 = -5197648(0xffffffffffb0b0b0, float:NaN)
            r2 = -1
            r3 = 1
            if (r8 != 0) goto L7f
            r4.q = r7
            android.graphics.Paint r6 = r4.r
            if (r6 != 0) goto L7e
            android.graphics.Paint r6 = new android.graphics.Paint
            r6.<init>()
            r4.r = r6
            r6.setAntiAlias(r3)
            android.graphics.Paint r6 = r4.r
            android.graphics.Paint$Style r7 = android.graphics.Paint.Style.FILL
            r6.setStyle(r7)
            android.graphics.Paint r6 = r4.r
            android.graphics.Paint$Align r7 = android.graphics.Paint.Align.CENTER
            r6.setTextAlign(r7)
            if (r5 == 0) goto L5d
            float r6 = r4.j
            r7 = r2
            goto L69
        L5d:
            int r6 = com.mycompany.app.main.MainApp.E1
            float r6 = (float) r6
            boolean r7 = r4.i()
            if (r7 == 0) goto L68
            r7 = r1
            goto L69
        L68:
            r7 = r0
        L69:
            android.graphics.Paint r8 = r4.r
            r8.setTextSize(r6)
            android.graphics.Paint r6 = r4.r
            r6.setColor(r7)
            android.graphics.Paint r6 = r4.r
            android.graphics.Typeface r7 = android.graphics.Typeface.DEFAULT
            android.graphics.Typeface r7 = android.graphics.Typeface.create(r7, r3)
            r6.setTypeface(r7)
        L7e:
            r6 = r3
        L7f:
            android.graphics.Paint r7 = r4.r
            if (r7 == 0) goto Lb1
            float r7 = r7.getTextSize()
            android.graphics.Paint r8 = r4.r
            int r8 = r8.getColor()
            if (r5 == 0) goto L92
            float r5 = r4.j
            goto L9d
        L92:
            int r5 = com.mycompany.app.main.MainApp.E1
            float r5 = (float) r5
            boolean r2 = r4.i()
            if (r2 == 0) goto L9c
            r0 = r1
        L9c:
            r2 = r0
        L9d:
            int r7 = java.lang.Float.compare(r7, r5)
            if (r7 == 0) goto La9
            android.graphics.Paint r6 = r4.r
            r6.setTextSize(r5)
            r6 = r3
        La9:
            if (r8 == r2) goto Lb1
            android.graphics.Paint r5 = r4.r
            r5.setColor(r2)
            goto Lb2
        Lb1:
            r3 = r6
        Lb2:
            if (r3 == 0) goto Lb7
            r4.invalidate()
        Lb7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.view.MyRoundImage.z(int, int, java.lang.String, java.util.regex.Pattern):void");
    }
}
