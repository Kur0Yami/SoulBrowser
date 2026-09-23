package com.mycompany.app.view;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.gms.internal.mlkit_vision_text_common.a;
import com.google.android.material.appbar.AppBarLayout;
import com.mycompany.app.behavior.MyBehaviorSnack;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainListLoader;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.pref.PrefZone;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.web.WebNestFrame;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class MySnackbar extends FrameLayout {
    public static final int u0 = MainApp.i1;
    public MyButtonImage A;
    public MyButtonImage B;
    public LinearLayout C;
    public MyLineFrame D;
    public LinearLayout E;
    public RelativeLayout F;
    public MyRoundFrame G;
    public FrameLayout H;
    public View I;
    public View J;
    public MyButtonImage K;
    public AppCompatTextView L;
    public MyArrowView M;
    public int N;
    public MainListLoader O;
    public ValueAnimator P;
    public ValueAnimator Q;
    public ValueAnimator R;
    public ValueAnimator S;
    public float T;
    public float U;
    public EventHandler V;
    public boolean W;
    public float a0;
    public float b0;

    /* renamed from: c, reason: collision with root package name */
    public boolean f18964c;
    public int c0;
    public float d0;
    public GestureDetector e0;
    public MainActivity f;
    public CharSequence f0;
    public Context g;
    public Bitmap g0;
    public SnackbarListener h;
    public float h0;
    public int i;
    public boolean i0;
    public int j;
    public final Runnable j0;
    public int k;
    public float k0;
    public int l;
    public boolean l0;
    public String m;
    public final Runnable m0;
    public String n;
    public float n0;
    public boolean o;
    public boolean o0;
    public AppBarLayout p;
    public final Runnable p0;
    public int q;
    public float q0;
    public SnackItem r;
    public boolean r0;
    public ViewGroup s;
    public final Runnable s0;
    public MySnackSub t;
    public WebNestFrame t0;
    public ImageView u;
    public AppCompatTextView v;
    public MyRoundImage w;
    public AppCompatTextView x;
    public AppCompatTextView y;
    public AppCompatTextView z;

    /* renamed from: com.mycompany.app.view.MySnackbar$17, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass17 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* loaded from: classes3.dex */
    public static class EventHandler extends Handler {

        /* renamed from: a, reason: collision with root package name */
        public final WeakReference f19005a;

        public EventHandler(MySnackbar mySnackbar) {
            super(Looper.getMainLooper());
            this.f19005a = new WeakReference(mySnackbar);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            MySnackbar mySnackbar = (MySnackbar) this.f19005a.get();
            if (mySnackbar != null && message.what == 0 && mySnackbar.c0 == 0 && !mySnackbar.W) {
                mySnackbar.s();
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class SnackItem {

        /* renamed from: a, reason: collision with root package name */
        public String f19006a;
        public String b;

        /* renamed from: c, reason: collision with root package name */
        public Intent f19007c;
        public String d;
        public String e;
        public WebNestFrame f;
    }

    /* loaded from: classes3.dex */
    public interface SnackbarListener {
        void a();

        void b();

        void c();

        void onDismiss();
    }

    public MySnackbar(Context context) {
        super(context);
        this.j0 = new Runnable() { // from class: com.mycompany.app.view.MySnackbar.25
            @Override // java.lang.Runnable
            public final void run() {
                MySnackbar mySnackbar = MySnackbar.this;
                mySnackbar.i0 = false;
                if (mySnackbar.P != null) {
                    mySnackbar.setValAnimShow(mySnackbar.h0);
                }
            }
        };
        this.m0 = new Runnable() { // from class: com.mycompany.app.view.MySnackbar.30
            @Override // java.lang.Runnable
            public final void run() {
                MySnackbar mySnackbar = MySnackbar.this;
                mySnackbar.l0 = false;
                if (mySnackbar.Q != null) {
                    mySnackbar.setValAnimHide(mySnackbar.k0);
                }
            }
        };
        this.p0 = new Runnable() { // from class: com.mycompany.app.view.MySnackbar.34
            @Override // java.lang.Runnable
            public final void run() {
                MySnackbar mySnackbar = MySnackbar.this;
                mySnackbar.o0 = false;
                if (mySnackbar.R != null) {
                    mySnackbar.setValAnimReset(mySnackbar.n0);
                }
            }
        };
        this.s0 = new Runnable() { // from class: com.mycompany.app.view.MySnackbar.38
            @Override // java.lang.Runnable
            public final void run() {
                MySnackbar mySnackbar = MySnackbar.this;
                mySnackbar.r0 = false;
                if (mySnackbar.S != null) {
                    mySnackbar.setValAnimSwipe(mySnackbar.q0);
                }
            }
        };
        this.f18964c = true;
        this.g = context;
        setVisibility(4);
        this.V = new EventHandler(this);
        this.e0 = new GestureDetector(this.g, new GestureDetector.SimpleOnGestureListener() { // from class: com.mycompany.app.view.MySnackbar.1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                float f3;
                MySnackbar mySnackbar = MySnackbar.this;
                if (mySnackbar.c0 == 0) {
                    return super.onFling(motionEvent, motionEvent2, f, f2);
                }
                if (Math.abs(f) > Math.abs(f2)) {
                    if (mySnackbar.c0 != 2) {
                        return super.onFling(motionEvent, motionEvent2, f, f2);
                    }
                    f3 = f;
                } else {
                    if (mySnackbar.c0 != 1) {
                        return super.onFling(motionEvent, motionEvent2, f, f2);
                    }
                    f3 = f2;
                }
                if (f3 > 100.0f) {
                    if (mySnackbar.d0 > MainApp.E1) {
                        mySnackbar.t();
                    }
                } else if (f3 < -100.0f && mySnackbar.d0 < (-MainApp.E1)) {
                    mySnackbar.t();
                }
                return super.onFling(motionEvent, motionEvent2, f, f2);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0085 A[Catch: Exception -> 0x00c6, TryCatch #0 {Exception -> 0x00c6, blocks: (B:6:0x000a, B:11:0x0019, B:16:0x001f, B:17:0x0081, B:19:0x0085, B:20:0x008f, B:21:0x009c, B:25:0x00a9, B:26:0x00ac, B:29:0x0092, B:31:0x002e, B:35:0x0034, B:36:0x0043, B:40:0x0049, B:41:0x0056, B:45:0x005b), top: B:5:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0092 A[Catch: Exception -> 0x00c6, TryCatch #0 {Exception -> 0x00c6, blocks: (B:6:0x000a, B:11:0x0019, B:16:0x001f, B:17:0x0081, B:19:0x0085, B:20:0x008f, B:21:0x009c, B:25:0x00a9, B:26:0x00ac, B:29:0x0092, B:31:0x002e, B:35:0x0034, B:36:0x0043, B:40:0x0049, B:41:0x0056, B:45:0x005b), top: B:5:0x000a }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(com.mycompany.app.view.MySnackbar r10) {
        /*
            android.view.ViewGroup r0 = r10.s
            if (r0 == 0) goto Lc6
            com.mycompany.app.view.MySnackSub r0 = r10.t
            if (r0 != 0) goto La
            goto Lc6
        La:
            int r0 = r10.i     // Catch: java.lang.Exception -> Lc6
            r1 = 2
            r2 = 1
            r3 = 4
            r4 = 3
            r5 = -2
            r6 = -1
            if (r0 == r4) goto L56
            if (r0 != r3) goto L17
            goto L56
        L17:
            if (r0 != r2) goto L2c
            androidx.appcompat.widget.AppCompatTextView r0 = r10.y     // Catch: java.lang.Exception -> Lc6
            if (r0 != 0) goto L1f
            goto Lc6
        L1f:
            android.widget.RelativeLayout$LayoutParams r0 = new android.widget.RelativeLayout$LayoutParams     // Catch: java.lang.Exception -> Lc6
            r0.<init>(r6, r5)     // Catch: java.lang.Exception -> Lc6
            com.mycompany.app.view.MySnackSub r6 = r10.t     // Catch: java.lang.Exception -> Lc6
            androidx.appcompat.widget.AppCompatTextView r7 = r10.y     // Catch: java.lang.Exception -> Lc6
            r6.addView(r7, r0)     // Catch: java.lang.Exception -> Lc6
            goto L81
        L2c:
            if (r0 != r1) goto L43
            androidx.appcompat.widget.AppCompatTextView r0 = r10.z     // Catch: java.lang.Exception -> Lc6
            if (r0 != 0) goto L34
            goto Lc6
        L34:
            android.widget.RelativeLayout$LayoutParams r0 = new android.widget.RelativeLayout$LayoutParams     // Catch: java.lang.Exception -> Lc6
            int r7 = com.mycompany.app.main.MainApp.g1     // Catch: java.lang.Exception -> Lc6
            r0.<init>(r6, r7)     // Catch: java.lang.Exception -> Lc6
            com.mycompany.app.view.MySnackSub r6 = r10.t     // Catch: java.lang.Exception -> Lc6
            androidx.appcompat.widget.AppCompatTextView r7 = r10.z     // Catch: java.lang.Exception -> Lc6
            r6.addView(r7, r0)     // Catch: java.lang.Exception -> Lc6
            goto L81
        L43:
            android.widget.LinearLayout r0 = r10.C     // Catch: java.lang.Exception -> Lc6
            if (r0 != 0) goto L49
            goto Lc6
        L49:
            android.widget.RelativeLayout$LayoutParams r0 = new android.widget.RelativeLayout$LayoutParams     // Catch: java.lang.Exception -> Lc6
            r0.<init>(r6, r5)     // Catch: java.lang.Exception -> Lc6
            com.mycompany.app.view.MySnackSub r6 = r10.t     // Catch: java.lang.Exception -> Lc6
            android.widget.LinearLayout r7 = r10.C     // Catch: java.lang.Exception -> Lc6
            r6.addView(r7, r0)     // Catch: java.lang.Exception -> Lc6
            goto L81
        L56:
            com.mycompany.app.view.MyLineFrame r0 = r10.D     // Catch: java.lang.Exception -> Lc6
            if (r0 != 0) goto L5b
            goto Lc6
        L5b:
            android.content.Context r0 = r10.g     // Catch: java.lang.Exception -> Lc6
            r7 = 1108344832(0x42100000, float:36.0)
            float r0 = com.mycompany.app.main.MainUtil.G(r0, r7)     // Catch: java.lang.Exception -> Lc6
            int r0 = java.lang.Math.round(r0)     // Catch: java.lang.Exception -> Lc6
            android.widget.RelativeLayout$LayoutParams r7 = new android.widget.RelativeLayout$LayoutParams     // Catch: java.lang.Exception -> Lc6
            r7.<init>(r6, r0)     // Catch: java.lang.Exception -> Lc6
            com.mycompany.app.view.MySnackSub r8 = r10.t     // Catch: java.lang.Exception -> Lc6
            com.mycompany.app.view.MyLineFrame r9 = r10.D     // Catch: java.lang.Exception -> Lc6
            r8.addView(r9, r7)     // Catch: java.lang.Exception -> Lc6
            android.widget.RelativeLayout$LayoutParams r7 = new android.widget.RelativeLayout$LayoutParams     // Catch: java.lang.Exception -> Lc6
            r7.<init>(r6, r5)     // Catch: java.lang.Exception -> Lc6
            r7.topMargin = r0     // Catch: java.lang.Exception -> Lc6
            com.mycompany.app.view.MySnackSub r0 = r10.t     // Catch: java.lang.Exception -> Lc6
            android.widget.LinearLayout r6 = r10.E     // Catch: java.lang.Exception -> Lc6
            r0.addView(r6, r7)     // Catch: java.lang.Exception -> Lc6
        L81:
            int r0 = r10.i     // Catch: java.lang.Exception -> Lc6
            if (r0 != r1) goto L92
            android.view.ViewGroup r0 = r10.s     // Catch: java.lang.Exception -> Lc6
            int r0 = r0.getWidth()     // Catch: java.lang.Exception -> Lc6
            float r0 = (float) r0     // Catch: java.lang.Exception -> Lc6
            r1 = 1060320051(0x3f333333, float:0.7)
        L8f:
            float r0 = r0 * r1
            int r0 = (int) r0     // Catch: java.lang.Exception -> Lc6
            goto L9c
        L92:
            android.view.ViewGroup r0 = r10.s     // Catch: java.lang.Exception -> Lc6
            int r0 = r0.getWidth()     // Catch: java.lang.Exception -> Lc6
            float r0 = (float) r0     // Catch: java.lang.Exception -> Lc6
            r1 = 1061158912(0x3f400000, float:0.75)
            goto L8f
        L9c:
            int r1 = r10.getBotMargin()     // Catch: java.lang.Exception -> Lc6
            r10.q = r1     // Catch: java.lang.Exception -> Lc6
            int r6 = r10.i     // Catch: java.lang.Exception -> Lc6
            if (r6 == r4) goto Lac
            if (r6 != r3) goto La9
            goto Lac
        La9:
            int r3 = com.mycompany.app.main.MainApp.F1     // Catch: java.lang.Exception -> Lc6
            int r1 = r1 + r3
        Lac:
            r3 = 0
            r10.setPaddingRelative(r3, r3, r3, r1)     // Catch: java.lang.Exception -> Lc6
            android.widget.FrameLayout$LayoutParams r1 = new android.widget.FrameLayout$LayoutParams     // Catch: java.lang.Exception -> Lc6
            r1.<init>(r0, r5)     // Catch: java.lang.Exception -> Lc6
            r1.gravity = r2     // Catch: java.lang.Exception -> Lc6
            com.mycompany.app.view.MySnackSub r0 = r10.t     // Catch: java.lang.Exception -> Lc6
            r10.addView(r0, r1)     // Catch: java.lang.Exception -> Lc6
            android.view.ViewGroup r0 = r10.s     // Catch: java.lang.Exception -> Lc6
            com.mycompany.app.view.MySnackbar$14 r1 = new com.mycompany.app.view.MySnackbar$14     // Catch: java.lang.Exception -> Lc6
            r1.<init>()     // Catch: java.lang.Exception -> Lc6
            r0.post(r1)     // Catch: java.lang.Exception -> Lc6
        Lc6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.view.MySnackbar.a(com.mycompany.app.view.MySnackbar):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v21, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
    public static void c(MySnackbar mySnackbar) {
        int i;
        int i2;
        if (mySnackbar.t == null && mySnackbar.g != null) {
            String B1 = MainUtil.B1(mySnackbar.m);
            mySnackbar.m = B1;
            String q0 = MainUtil.q0(MainUtil.I1(B1, true));
            mySnackbar.n = q0;
            if (TextUtils.isEmpty(q0)) {
                q0 = mySnackbar.m;
            }
            MySnackSub mySnackSub = new MySnackSub(mySnackbar.g);
            mySnackbar.t = mySnackSub;
            mySnackSub.setBodyView(mySnackbar);
            MyLineFrame myLineFrame = new MyLineFrame(mySnackbar.g);
            mySnackbar.D = myLineFrame;
            myLineFrame.setLinePad(MainApp.E1);
            mySnackbar.D.setLineDn(true);
            ImageView imageView = new ImageView(mySnackbar.g);
            mySnackbar.u = imageView;
            ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
            imageView.setScaleType(scaleType);
            if (MainApp.K1) {
                mySnackbar.u.setImageResource(R.drawable.outline_block_dark_24);
            } else {
                mySnackbar.u.setImageResource(R.drawable.outline_block_black_24);
            }
            AppCompatTextView appCompatTextView = new AppCompatTextView(mySnackbar.g, null);
            mySnackbar.v = appCompatTextView;
            appCompatTextView.setTextSize(1, 14.0f);
            AppCompatTextView appCompatTextView2 = mySnackbar.v;
            int i3 = -16777216;
            if (MainApp.K1) {
                i = -328966;
            } else {
                i = -16777216;
            }
            appCompatTextView2.setTextColor(i);
            mySnackbar.v.setText(mySnackbar.j);
            LinearLayout linearLayout = new LinearLayout(mySnackbar.g);
            mySnackbar.E = linearLayout;
            int i4 = MainApp.F1;
            linearLayout.setPaddingRelative(i4, 0, i4, 0);
            mySnackbar.E.setBaselineAligned(false);
            mySnackbar.E.setOrientation(0);
            MyRoundImage myRoundImage = new MyRoundImage(mySnackbar.g);
            mySnackbar.w = myRoundImage;
            myRoundImage.setScaleType(scaleType);
            mySnackbar.w.setCircleRadius(MainApp.E1 + MainApp.G1);
            if (mySnackbar.i == 3) {
                if (mySnackbar.w != null) {
                    mySnackbar.u();
                    MainActivity mainActivity = mySnackbar.f;
                    if (mainActivity != null) {
                        mainActivity.m0(new Runnable() { // from class: com.mycompany.app.view.MySnackbar.21
                            /* JADX WARN: Code restructure failed: missing block: B:50:0x009d, code lost:
                            
                                if (android.text.TextUtils.isEmpty(r4) == false) goto L43;
                             */
                            /* JADX WARN: Removed duplicated region for block: B:10:0x00a5  */
                            /* JADX WARN: Removed duplicated region for block: B:18:0x00ef  */
                            /* JADX WARN: Removed duplicated region for block: B:21:0x00fe  */
                            /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
                            /* JADX WARN: Removed duplicated region for block: B:34:0x00e8  */
                            /* JADX WARN: Removed duplicated region for block: B:40:0x005b  */
                            @Override // java.lang.Runnable
                            /*
                                Code decompiled incorrectly, please refer to instructions dump.
                                To view partially-correct add '--show-bad-code' argument
                            */
                            public final void run() {
                                /*
                                    Method dump skipped, instructions count: 263
                                    To view this dump add '--comments-level debug' option
                                */
                                throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.view.MySnackbar.AnonymousClass21.run():void");
                            }
                        });
                    }
                }
            } else if (mySnackbar.w != null) {
                if (TextUtils.isEmpty(mySnackbar.m)) {
                    mySnackbar.u();
                } else {
                    Bitmap n4 = MainUtil.n4(mySnackbar.n);
                    if (MainUtil.f6(n4)) {
                        mySnackbar.setBmpIcon(n4);
                    } else {
                        ?? obj = new Object();
                        obj.f16550a = 18;
                        obj.f16551c = 11;
                        obj.g = mySnackbar.m;
                        if (mySnackbar.O == null) {
                            mySnackbar.O = new MainListLoader(mySnackbar.g, false, new MainListLoader.ListLoadListener() { // from class: com.mycompany.app.view.MySnackbar.20
                                @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
                                public final void a(MainItem.ChildItem childItem, View view) {
                                    int i5 = MySnackbar.u0;
                                    MySnackbar.this.u();
                                }

                                @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
                                public final void b(MainItem.ChildItem childItem, View view, Bitmap bitmap) {
                                    boolean f6 = MainUtil.f6(bitmap);
                                    MySnackbar mySnackbar2 = MySnackbar.this;
                                    if (f6) {
                                        mySnackbar2.setBmpIcon(bitmap);
                                    } else {
                                        int i5 = MySnackbar.u0;
                                        mySnackbar2.u();
                                    }
                                }
                            });
                        }
                        mySnackbar.w.setTag(0);
                        mySnackbar.O.e(obj, mySnackbar.w);
                    }
                }
            }
            AppCompatTextView appCompatTextView3 = new AppCompatTextView(mySnackbar.g, null);
            mySnackbar.x = appCompatTextView3;
            int i5 = MainApp.F1;
            appCompatTextView3.setPaddingRelative(i5, i5, i5, i5);
            mySnackbar.x.setMinHeight(MainApp.g1);
            mySnackbar.x.setGravity(16);
            mySnackbar.x.setMaxLines(2);
            mySnackbar.x.setEllipsize(TextUtils.TruncateAt.END);
            mySnackbar.x.setTextSize(1, 14.0f);
            AppCompatTextView appCompatTextView4 = mySnackbar.x;
            if (MainApp.K1) {
                i3 = -328966;
            }
            appCompatTextView4.setTextColor(i3);
            mySnackbar.x.setText(q0);
            int i6 = -2039584;
            if (mySnackbar.k != 0) {
                MyButtonImage myButtonImage = new MyButtonImage(mySnackbar.g);
                mySnackbar.A = myButtonImage;
                myButtonImage.setScaleType(scaleType);
                MyButtonImage myButtonImage2 = mySnackbar.A;
                if (MainApp.K1) {
                    i2 = -12632257;
                } else {
                    i2 = -2039584;
                }
                myButtonImage2.setBgPreColor(i2);
                mySnackbar.A.setImageResource(j(mySnackbar.k));
                mySnackbar.A.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.view.MySnackbar.10
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        MySnackbar mySnackbar2 = MySnackbar.this;
                        if (mySnackbar2.c0 != 0) {
                            return;
                        }
                        SnackbarListener snackbarListener = mySnackbar2.h;
                        if (snackbarListener != null) {
                            snackbarListener.c();
                        }
                        mySnackbar2.s();
                        MySnackbar.d(mySnackbar2);
                    }
                });
            }
            if (mySnackbar.l != 0) {
                MyButtonImage myButtonImage3 = new MyButtonImage(mySnackbar.g);
                mySnackbar.B = myButtonImage3;
                myButtonImage3.setScaleType(scaleType);
                MyButtonImage myButtonImage4 = mySnackbar.B;
                if (MainApp.K1) {
                    i6 = -12632257;
                }
                myButtonImage4.setBgPreColor(i6);
                mySnackbar.B.setImageResource(j(mySnackbar.l));
                if (mySnackbar.o) {
                    mySnackbar.B.setNoti(true);
                }
                mySnackbar.B.setVisibility(0);
                mySnackbar.B.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.view.MySnackbar.11
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        MySnackbar mySnackbar2 = MySnackbar.this;
                        if (mySnackbar2.c0 != 0) {
                            return;
                        }
                        SnackbarListener snackbarListener = mySnackbar2.h;
                        if (snackbarListener != null) {
                            snackbarListener.a();
                        }
                        mySnackbar2.s();
                        MySnackbar.d(mySnackbar2);
                    }
                });
            }
            mySnackbar.s.post(new Runnable() { // from class: com.mycompany.app.view.MySnackbar.12
                @Override // java.lang.Runnable
                public final void run() {
                    final MySnackbar mySnackbar2 = MySnackbar.this;
                    if (mySnackbar2.s != null && mySnackbar2.D != null) {
                        try {
                            int i7 = MainApp.E1 + MainApp.G1;
                            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i7, i7);
                            layoutParams.gravity = 8388627;
                            layoutParams.setMarginStart(Math.round(MainUtil.G(mySnackbar2.g, 18.0f)));
                            mySnackbar2.D.addView(mySnackbar2.u, layoutParams);
                            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
                            layoutParams2.gravity = 16;
                            layoutParams2.setMarginStart(Math.round(MainUtil.G(mySnackbar2.g, 56.0f)));
                            mySnackbar2.D.addView(mySnackbar2.v, layoutParams2);
                            int i8 = MainApp.f1;
                            LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(i8, i8);
                            layoutParams3.gravity = 8388627;
                            mySnackbar2.E.addView(mySnackbar2.w, layoutParams3);
                            LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(0, -2);
                            layoutParams4.weight = 1.0f;
                            mySnackbar2.E.addView(mySnackbar2.x, layoutParams4);
                            if (mySnackbar2.A != null) {
                                int i9 = MainApp.g1;
                                LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(i9, i9);
                                layoutParams5.gravity = 8388627;
                                mySnackbar2.E.addView(mySnackbar2.A, layoutParams5);
                            }
                            if (mySnackbar2.B != null) {
                                int i10 = MainApp.g1;
                                LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(i10, i10);
                                layoutParams6.gravity = 8388627;
                                mySnackbar2.E.addView(mySnackbar2.B, layoutParams6);
                            }
                            mySnackbar2.s.post(new Runnable() { // from class: com.mycompany.app.view.MySnackbar.13
                                @Override // java.lang.Runnable
                                public final void run() {
                                    MySnackbar.a(MySnackbar.this);
                                }
                            });
                        } catch (Exception unused) {
                        }
                    }
                }
            });
        }
    }

    public static void d(MySnackbar mySnackbar) {
        if (PrefZone.d0) {
            PrefZone.d0 = false;
            PrefSet.d(15, mySnackbar.g, "mSnkGuide", false);
        }
    }

    private int getBotMargin() {
        if (this.p == null) {
            return MainApp.g1;
        }
        return Math.max(MainApp.g1, MainUtil.j0());
    }

    private float getTransY() {
        return getTranslationY() - MyBehaviorSnack.y(this.p, this.q);
    }

    public static int j(int i) {
        if (MainApp.K1) {
            if (i == 1) {
                return R.drawable.outline_open_in_new_dark_24;
            }
            if (i == 2) {
                return R.drawable.outline_folder_dark_24;
            }
            if (i == 3) {
                return R.drawable.outline_menu_dark_24;
            }
            if (i == 4) {
                return R.drawable.outline_add_box_dark_24;
            }
            if (i == 5) {
                return R.drawable.outline_refresh_dark_24;
            }
            return 0;
        }
        if (i == 1) {
            return R.drawable.outline_open_in_new_black_24;
        }
        if (i == 2) {
            return R.drawable.outline_folder_black_24;
        }
        if (i == 3) {
            return R.drawable.outline_menu_black_24;
        }
        if (i == 4) {
            return R.drawable.outline_add_box_black_24;
        }
        if (i == 5) {
            return R.drawable.outline_refresh_black_24;
        }
        return 0;
    }

    public static String k(ResolveInfo resolveInfo) {
        ActivityInfo activityInfo;
        if (resolveInfo == null || (activityInfo = resolveInfo.activityInfo) == null) {
            return null;
        }
        String str = activityInfo.packageName;
        if (TextUtils.isEmpty(str) || str.equals("android") || str.equals("com.mycompany.app.soulbrowser")) {
            return null;
        }
        return str;
    }

    public static String l(PackageManager packageManager, Intent intent) {
        ResolveInfo resolveActivity;
        try {
            if (Build.VERSION.SDK_INT >= 33) {
                resolveActivity = packageManager.resolveActivity(intent, PackageManager.ResolveInfoFlags.of(0L));
            } else {
                resolveActivity = packageManager.resolveActivity(intent, 0);
            }
            String k = k(resolveActivity);
            if (!TextUtils.isEmpty(k)) {
                return k;
            }
        } catch (Exception unused) {
        }
        try {
            List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 0);
            if (queryIntentActivities != null && !queryIntentActivities.isEmpty()) {
                Iterator<ResolveInfo> it = queryIntentActivities.iterator();
                while (it.hasNext()) {
                    String k2 = k(it.next());
                    if (!TextUtils.isEmpty(k2)) {
                        return k2;
                    }
                }
            }
        } catch (Exception unused2) {
        }
        if (!TextUtils.isEmpty(intent.getPackage())) {
            return "com.android.vending";
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBmpIcon(Bitmap bitmap) {
        MyRoundImage myRoundImage = this.w;
        if (myRoundImage == null) {
            return;
        }
        myRoundImage.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this.w.setIconSmall(true);
        this.w.setImageBitmap(bitmap);
    }

    private void setTransY(float f) {
        setTranslationY(MyBehaviorSnack.y(this.p, this.q) + f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValAnimHide(float f) {
        if (this.s == null) {
            return;
        }
        float abs = Math.abs(f - this.T) / this.U;
        setTransY(f);
        setAlpha(1.0f - abs);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValAnimReset(float f) {
        if (this.s != null) {
            int i = this.c0;
            if (i == 2) {
                setTranslationX(f);
            } else if (i == 1) {
                setTransY(f);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValAnimShow(float f) {
        if (this.s != null) {
            setTransY(f);
            if (getVisibility() != 0) {
                setVisibility(0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValAnimSwipe(float f) {
        if (this.s == null || this.c0 == 0) {
            return;
        }
        float abs = Math.abs(f - this.d0) / u0;
        if (this.c0 == 2) {
            setTranslationX(f);
        } else {
            setTransY(f);
        }
        setAlpha(1.0f - abs);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0032, code lost:
    
        if (r0 != 3) goto L82;
     */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean dispatchTouchEvent(android.view.MotionEvent r10) {
        /*
            Method dump skipped, instructions count: 358
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.view.MySnackbar.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }

    public SnackItem getSnackItem() {
        SnackItem snackItem = this.r;
        this.r = null;
        return snackItem;
    }

    public final void i(boolean z) {
        this.h = null;
        if (z) {
            s();
        } else {
            p();
        }
    }

    @Override // android.view.View
    public final void invalidate() {
        if (!this.f18964c) {
            return;
        }
        super.invalidate();
    }

    public final void m() {
        this.R = null;
        int i = this.c0;
        if (i == 2) {
            setTranslationX(0.0f);
        } else if (i == 1) {
            setTransY(0.0f);
        }
        this.c0 = 0;
        r();
    }

    public final void n() {
        ViewGroup viewGroup;
        this.P = null;
        if (Float.compare(getTransY(), 0.0f) != 0) {
            setTransY(0.0f);
        }
        if (getVisibility() != 0) {
            setVisibility(0);
        }
        r();
        if (PrefZone.d0 && (viewGroup = this.s) != null && this.t != null && this.F == null) {
            viewGroup.post(new Runnable() { // from class: com.mycompany.app.view.MySnackbar.27
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r2v22, types: [android.view.View$OnClickListener, java.lang.Object] */
                @Override // java.lang.Runnable
                public final void run() {
                    if (!PrefZone.d0) {
                        int i = MySnackbar.u0;
                        return;
                    }
                    final MySnackbar mySnackbar = MySnackbar.this;
                    if (mySnackbar.s != null && mySnackbar.t != null && mySnackbar.F == null) {
                        mySnackbar.F = new RelativeLayout(mySnackbar.g);
                        mySnackbar.G = new MyRoundFrame(mySnackbar.g);
                        mySnackbar.H = new FrameLayout(mySnackbar.g);
                        mySnackbar.I = new View(mySnackbar.g);
                        mySnackbar.J = new View(mySnackbar.g);
                        mySnackbar.L = new AppCompatTextView(mySnackbar.g, null);
                        mySnackbar.M = new MyArrowView(mySnackbar.g);
                        StringBuilder sb = new StringBuilder();
                        a.x(mySnackbar.g, R.string.swipe_remove, sb, "\n\n");
                        sb.append(mySnackbar.g.getString(R.string.snack_guide));
                        mySnackbar.L.setTextColor(-1);
                        mySnackbar.L.setText(sb.toString());
                        mySnackbar.L.setPaddingRelative(MainApp.E1, MainApp.F1, MainApp.E1, MainApp.F1);
                        mySnackbar.L.setGravity(17);
                        mySnackbar.L.setTextSize(1, 14.0f);
                        int i2 = R.id.snack_guide_frame;
                        mySnackbar.N = i2;
                        mySnackbar.G.setId(i2);
                        mySnackbar.G.setBgColor(-14983648);
                        mySnackbar.I.setBackgroundResource(R.drawable.outline_swipe_white_24);
                        mySnackbar.J.setBackgroundResource(R.drawable.outline_swipe_vertical_white_24);
                        mySnackbar.M.setSnack(-14983648);
                        MyButtonImage myButtonImage = new MyButtonImage(mySnackbar.g);
                        mySnackbar.K = myButtonImage;
                        myButtonImage.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                        mySnackbar.K.setBgPreColor(1155588320);
                        mySnackbar.K.setImageResource(R.drawable.outline_close_white_18);
                        mySnackbar.K.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.view.MySnackbar.16
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                MySnackbar mySnackbar2 = MySnackbar.this;
                                MySnackbar.d(mySnackbar2);
                                mySnackbar2.q();
                                mySnackbar2.r();
                            }
                        });
                        mySnackbar.G.setOnClickListener(new Object());
                        mySnackbar.s.post(new Runnable() { // from class: com.mycompany.app.view.MySnackbar.18
                            @Override // java.lang.Runnable
                            public final void run() {
                                final MySnackbar mySnackbar2 = MySnackbar.this;
                                if (mySnackbar2.s != null && mySnackbar2.t != null && mySnackbar2.F != null) {
                                    try {
                                        int i3 = MainApp.E1 + MainApp.G1;
                                        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i3, i3);
                                        layoutParams.topMargin = MainApp.E1;
                                        mySnackbar2.H.addView(mySnackbar2.I, layoutParams);
                                        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i3, i3);
                                        layoutParams2.topMargin = MainApp.E1;
                                        layoutParams2.setMarginStart(MainApp.g1);
                                        mySnackbar2.H.addView(mySnackbar2.J, layoutParams2);
                                        int round = Math.round(MainUtil.G(mySnackbar2.g, 36.0f));
                                        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, round);
                                        layoutParams3.gravity = 1;
                                        mySnackbar2.G.addView(mySnackbar2.H, layoutParams3);
                                        int i4 = MainApp.f1;
                                        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(i4, i4);
                                        layoutParams4.gravity = 8388613;
                                        mySnackbar2.G.addView(mySnackbar2.K, layoutParams4);
                                        FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-1, -2);
                                        layoutParams5.topMargin = round;
                                        mySnackbar2.G.addView(mySnackbar2.L, layoutParams5);
                                        mySnackbar2.F.addView(mySnackbar2.G, new RelativeLayout.LayoutParams(-1, -2));
                                        int round2 = Math.round(MainUtil.G(mySnackbar2.g, 14.0f));
                                        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(round2, round2);
                                        layoutParams6.addRule(3, mySnackbar2.N);
                                        layoutParams6.addRule(14);
                                        mySnackbar2.F.addView(mySnackbar2.M, layoutParams6);
                                        mySnackbar2.s.post(new Runnable() { // from class: com.mycompany.app.view.MySnackbar.19
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                float width;
                                                float f;
                                                MySnackbar mySnackbar3 = MySnackbar.this;
                                                ViewGroup viewGroup2 = mySnackbar3.s;
                                                if (viewGroup2 != null && mySnackbar3.t != null && mySnackbar3.F != null) {
                                                    try {
                                                        if (mySnackbar3.i == 2) {
                                                            width = viewGroup2.getWidth();
                                                            f = 0.7f;
                                                        } else {
                                                            width = viewGroup2.getWidth();
                                                            f = 0.75f;
                                                        }
                                                        int i5 = (int) (width * f);
                                                        mySnackbar3.F.setPaddingRelative(0, 0, 0, mySnackbar3.getHeight());
                                                        ViewGroup viewGroup3 = mySnackbar3.s;
                                                        if (viewGroup3 instanceof CoordinatorLayout) {
                                                            CoordinatorLayout.LayoutParams layoutParams7 = new CoordinatorLayout.LayoutParams(i5, -2);
                                                            layoutParams7.f611c = 81;
                                                            if (mySnackbar3.p != null && !PrefWeb.w) {
                                                                MyBehaviorSnack myBehaviorSnack = new MyBehaviorSnack(mySnackbar3.g, null);
                                                                myBehaviorSnack.f12850c = mySnackbar3.q;
                                                                layoutParams7.b(myBehaviorSnack);
                                                                mySnackbar3.F.setTranslationY(MyBehaviorSnack.y(mySnackbar3.p, mySnackbar3.q));
                                                            }
                                                            mySnackbar3.s.addView(mySnackbar3.F, layoutParams7);
                                                        } else if (viewGroup3 instanceof FrameLayout) {
                                                            FrameLayout.LayoutParams layoutParams8 = new FrameLayout.LayoutParams(i5, -2);
                                                            layoutParams8.gravity = 81;
                                                            mySnackbar3.s.addView(mySnackbar3.F, layoutParams8);
                                                        } else if (viewGroup3 instanceof RelativeLayout) {
                                                            RelativeLayout.LayoutParams layoutParams9 = new RelativeLayout.LayoutParams(i5, -2);
                                                            layoutParams9.addRule(14);
                                                            layoutParams9.addRule(12);
                                                            mySnackbar3.s.addView(mySnackbar3.F, layoutParams9);
                                                        }
                                                        mySnackbar3.t.setGuideMode(true);
                                                    } catch (Exception unused) {
                                                    }
                                                }
                                            }
                                        });
                                    } catch (Exception unused) {
                                    }
                                }
                            }
                        });
                    }
                }
            });
        }
    }

    public final void o() {
        this.S = null;
        this.c0 = 0;
        setVisibility(8);
        p();
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        RelativeLayout relativeLayout = this.F;
        if (relativeLayout == null || relativeLayout.getVisibility() != 0) {
            return;
        }
        this.F.setPaddingRelative(0, 0, 0, i2);
    }

    public final void p() {
        if (this.f18964c) {
            this.f18964c = false;
            SnackItem snackItem = this.r;
            if (snackItem != null) {
                this.r = null;
                WebNestFrame webNestFrame = snackItem.f;
                if (webNestFrame != null && webNestFrame.f19303c) {
                    if (this.s == null) {
                        webNestFrame.t(null);
                    } else {
                        webNestFrame.setValid(false);
                        this.t0 = webNestFrame;
                        this.s.post(new Runnable() { // from class: com.mycompany.app.view.MySnackbar.40
                            @Override // java.lang.Runnable
                            public final void run() {
                                MySnackbar mySnackbar = MySnackbar.this;
                                WebNestFrame webNestFrame2 = mySnackbar.t0;
                                mySnackbar.t0 = null;
                                if (webNestFrame2 == null) {
                                    return;
                                }
                                webNestFrame2.t(null);
                            }
                        });
                    }
                }
            }
            q();
            SnackbarListener snackbarListener = this.h;
            if (snackbarListener != null) {
                snackbarListener.onDismiss();
                this.h = null;
            }
            EventHandler eventHandler = this.V;
            if (eventHandler != null) {
                eventHandler.removeMessages(0);
                this.V = null;
            }
            ValueAnimator valueAnimator = this.P;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.P = null;
            }
            ValueAnimator valueAnimator2 = this.Q;
            if (valueAnimator2 != null) {
                valueAnimator2.cancel();
                this.Q = null;
            }
            ValueAnimator valueAnimator3 = this.R;
            if (valueAnimator3 != null) {
                valueAnimator3.cancel();
                this.R = null;
            }
            ValueAnimator valueAnimator4 = this.S;
            if (valueAnimator4 != null) {
                valueAnimator4.cancel();
                this.S = null;
            }
            MySnackSub mySnackSub = this.t;
            if (mySnackSub != null) {
                mySnackSub.f18963c = false;
                mySnackSub.f = null;
                mySnackSub.j = null;
                mySnackSub.k = null;
                mySnackSub.l = null;
                this.t = null;
            }
            MyRoundImage myRoundImage = this.w;
            if (myRoundImage != null) {
                myRoundImage.k();
                this.w = null;
            }
            MyButtonImage myButtonImage = this.A;
            if (myButtonImage != null) {
                myButtonImage.j();
                this.A = null;
            }
            MyButtonImage myButtonImage2 = this.B;
            if (myButtonImage2 != null) {
                myButtonImage2.j();
                this.B = null;
            }
            MyLineFrame myLineFrame = this.D;
            if (myLineFrame != null) {
                myLineFrame.g();
                this.D = null;
            }
            MainListLoader mainListLoader = this.O;
            if (mainListLoader != null) {
                mainListLoader.f();
                this.O = null;
            }
            this.f = null;
            this.g = null;
            this.m = null;
            this.n = null;
            this.p = null;
            this.x = null;
            this.y = null;
            this.z = null;
            this.u = null;
            this.v = null;
            this.C = null;
            this.E = null;
            this.e0 = null;
            ViewGroup viewGroup = this.s;
            if (viewGroup != null) {
                try {
                    viewGroup.removeView(this);
                } catch (Exception unused) {
                }
                this.s = null;
            }
        }
    }

    public final void q() {
        RelativeLayout relativeLayout = this.F;
        if (relativeLayout == null) {
            return;
        }
        relativeLayout.setVisibility(8);
        MySnackSub mySnackSub = this.t;
        if (mySnackSub != null) {
            mySnackSub.setGuideMode(false);
        }
        ViewGroup viewGroup = this.s;
        if (viewGroup != null) {
            try {
                viewGroup.removeView(this.F);
            } catch (Exception unused) {
            }
        }
        this.F = null;
        this.G = null;
        this.H = null;
        this.I = null;
        this.J = null;
        this.K = null;
        this.L = null;
        this.M = null;
    }

    public final void r() {
        long j;
        EventHandler eventHandler = this.V;
        if (eventHandler == null) {
            return;
        }
        eventHandler.removeMessages(0);
        if (PrefZone.d0) {
            j = 15000;
        } else {
            int i = this.i;
            if (i != 1 && i != 2) {
                j = 5000;
            } else {
                j = 3000;
            }
        }
        this.V.sendEmptyMessageDelayed(0, j);
    }

    public final void s() {
        if (this.Q != null || this.t == null) {
            return;
        }
        EventHandler eventHandler = this.V;
        if (eventHandler != null) {
            eventHandler.removeMessages(0);
        }
        RelativeLayout relativeLayout = this.F;
        if (relativeLayout != null) {
            relativeLayout.setVisibility(8);
            this.t.setGuideMode(false);
        }
        float transY = getTransY();
        float f = MainApp.g1;
        float f2 = f - transY;
        long j = (f2 / f) * 180.0f;
        if (transY < f && j > 0) {
            this.T = transY;
            this.U = f2;
            this.k0 = transY;
            this.l0 = false;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(transY, f);
            this.Q = ofFloat;
            ofFloat.setDuration(j);
            this.Q.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.view.MySnackbar.28
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    MySnackbar mySnackbar = MySnackbar.this;
                    if (mySnackbar.Q != null) {
                        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        if (mySnackbar.Q != null) {
                            mySnackbar.k0 = floatValue;
                            if (mySnackbar.l0) {
                                return;
                            }
                            mySnackbar.l0 = true;
                            MainApp.N(mySnackbar.g, mySnackbar.m0);
                        }
                    }
                }
            });
            this.Q.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.view.MySnackbar.29
                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                    MySnackbar mySnackbar = MySnackbar.this;
                    if (mySnackbar.Q == null) {
                        return;
                    }
                    mySnackbar.Q = null;
                    mySnackbar.invalidate();
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    final MySnackbar mySnackbar = MySnackbar.this;
                    if (mySnackbar.Q == null) {
                        return;
                    }
                    MainApp.N(mySnackbar.g, new Runnable() { // from class: com.mycompany.app.view.MySnackbar.31
                        @Override // java.lang.Runnable
                        public final void run() {
                            MySnackbar mySnackbar2 = MySnackbar.this;
                            if (mySnackbar2.Q == null) {
                                return;
                            }
                            mySnackbar2.Q = null;
                            mySnackbar2.setVisibility(8);
                            mySnackbar2.p();
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
            ValueAnimator valueAnimator = this.P;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.P = null;
            }
            this.Q.start();
            return;
        }
        this.Q = null;
        setVisibility(8);
        p();
    }

    public void setActivity(MainActivity mainActivity) {
        this.f = mainActivity;
    }

    public void setAppBarView(AppBarLayout appBarLayout) {
        this.p = appBarLayout;
    }

    public void setSnackItem(SnackItem snackItem) {
        this.r = snackItem;
    }

    public void setTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.W = true;
            EventHandler eventHandler = this.V;
            if (eventHandler != null) {
                eventHandler.removeMessages(0);
                return;
            }
            return;
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.W = false;
            if (this.c0 != 0) {
                return;
            }
            r();
        }
    }

    public final void t() {
        int top;
        int height;
        float f;
        int height2;
        if (this.c0 == 0 || this.S != null || this.t == null) {
            return;
        }
        EventHandler eventHandler = this.V;
        if (eventHandler != null) {
            eventHandler.removeMessages(0);
        }
        SnackbarListener snackbarListener = this.h;
        if (snackbarListener != null) {
            snackbarListener.b();
        }
        float f2 = this.d0;
        if (this.c0 == 2) {
            top = this.t.getLeft();
            height = getWidth();
        } else {
            top = getTop();
            height = getHeight();
        }
        int i = u0;
        if (f2 < 0.0f) {
            if (this.c0 == 2) {
                height2 = this.t.getWidth();
            } else {
                height2 = this.t.getHeight();
            }
            int i2 = height2 + top;
            float f3 = i2;
            if (f3 + f2 <= 0.0f) {
                o();
                return;
            } else {
                f = f2 - i;
                if (f3 + f <= 0.0f) {
                    f = -i2;
                }
            }
        } else {
            float f4 = top;
            float f5 = height;
            if (f4 + f2 >= f5) {
                o();
                return;
            } else {
                f = i + f2;
                if (f4 + f >= f5) {
                    f = height - top;
                }
            }
        }
        long abs = (Math.abs(f - f2) / i) * 180.0f;
        if (abs <= 0) {
            o();
            return;
        }
        this.q0 = f2;
        this.r0 = false;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(f2, f);
        this.S = ofFloat;
        ofFloat.setDuration(abs);
        this.S.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.mycompany.app.view.MySnackbar.36
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                MySnackbar mySnackbar = MySnackbar.this;
                if (mySnackbar.c0 != 0 && mySnackbar.S != null) {
                    float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    if (mySnackbar.S != null) {
                        mySnackbar.q0 = floatValue;
                        if (mySnackbar.r0) {
                            return;
                        }
                        mySnackbar.r0 = true;
                        MainApp.N(mySnackbar.g, mySnackbar.s0);
                    }
                }
            }
        });
        this.S.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.view.MySnackbar.37
            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
                MySnackbar mySnackbar = MySnackbar.this;
                if (mySnackbar.S == null) {
                    return;
                }
                mySnackbar.S = null;
                mySnackbar.c0 = 0;
                mySnackbar.invalidate();
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                final MySnackbar mySnackbar = MySnackbar.this;
                if (mySnackbar.S == null) {
                    return;
                }
                MainApp.N(mySnackbar.g, new Runnable() { // from class: com.mycompany.app.view.MySnackbar.39
                    @Override // java.lang.Runnable
                    public final void run() {
                        MySnackbar mySnackbar2 = MySnackbar.this;
                        if (mySnackbar2.S == null) {
                            return;
                        }
                        mySnackbar2.S = null;
                        mySnackbar2.o();
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
        this.S.start();
    }

    public final void u() {
        int i;
        MyRoundImage myRoundImage = this.w;
        if (myRoundImage == null) {
            return;
        }
        if (this.i == 3) {
            if (MainApp.K1) {
                i = R.drawable.outline_android_dark_24;
            } else {
                i = R.drawable.outline_android_black_24;
            }
        } else if (MainApp.K1) {
            i = R.drawable.outline_public_dark_24;
        } else {
            i = R.drawable.outline_public_black_24;
        }
        myRoundImage.setImageResource(i);
    }

    public final void v(ViewGroup viewGroup, int i, SnackbarListener snackbarListener) {
        this.i = 1;
        x(viewGroup, i, 0, 0, snackbarListener);
    }

    public final void w(ViewGroup viewGroup, int i, int i2, SnackbarListener snackbarListener) {
        this.i = 0;
        x(viewGroup, i, i2, 0, snackbarListener);
    }

    public final void x(ViewGroup viewGroup, int i, int i2, int i3, SnackbarListener snackbarListener) {
        if (viewGroup != null && this.s == null) {
            this.s = viewGroup;
            this.h = snackbarListener;
            this.j = i;
            this.k = i2;
            this.l = i3;
            viewGroup.post(new Runnable() { // from class: com.mycompany.app.view.MySnackbar.2
                @Override // java.lang.Runnable
                public final void run() {
                    int i4;
                    final MySnackbar mySnackbar = MySnackbar.this;
                    int i5 = mySnackbar.i;
                    if (i5 != 3 && i5 != 4) {
                        int i6 = -16777216;
                        if (i5 == 1) {
                            if (mySnackbar.t == null && mySnackbar.g != null) {
                                MySnackSub mySnackSub = new MySnackSub(mySnackbar.g);
                                mySnackbar.t = mySnackSub;
                                mySnackSub.setBodyView(mySnackbar);
                                AppCompatTextView appCompatTextView = new AppCompatTextView(mySnackbar.g, null);
                                mySnackbar.y = appCompatTextView;
                                int i7 = MainApp.F1;
                                appCompatTextView.setPaddingRelative(i7, i7, i7, i7);
                                mySnackbar.y.setMinHeight(MainApp.g1);
                                mySnackbar.y.setGravity(17);
                                mySnackbar.y.setTextSize(1, 14.0f);
                                AppCompatTextView appCompatTextView2 = mySnackbar.y;
                                if (MainApp.K1) {
                                    i6 = -328966;
                                }
                                appCompatTextView2.setTextColor(i6);
                                mySnackbar.y.setText(mySnackbar.j);
                                mySnackbar.s.post(new Runnable() { // from class: com.mycompany.app.view.MySnackbar.3
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        MySnackbar.a(MySnackbar.this);
                                    }
                                });
                                return;
                            }
                            return;
                        }
                        if (i5 == 2) {
                            if (mySnackbar.t == null && mySnackbar.g != null) {
                                MySnackSub mySnackSub2 = new MySnackSub(mySnackbar.g);
                                mySnackbar.t = mySnackSub2;
                                mySnackSub2.setBodyView(mySnackbar);
                                AppCompatTextView appCompatTextView3 = new AppCompatTextView(mySnackbar.g, null);
                                mySnackbar.z = appCompatTextView3;
                                int i8 = MainApp.F1;
                                appCompatTextView3.setPaddingRelative(i8, 0, i8, 0);
                                mySnackbar.z.setGravity(17);
                                mySnackbar.z.setTextSize(1, 14.0f);
                                if (MainApp.K1) {
                                    mySnackbar.z.setBackgroundResource(R.drawable.selector_normal_dark);
                                    mySnackbar.z.setTextColor(-328966);
                                } else {
                                    mySnackbar.z.setBackgroundResource(R.drawable.selector_normal);
                                    mySnackbar.z.setTextColor(-14784824);
                                }
                                mySnackbar.z.setText(mySnackbar.k);
                                mySnackbar.z.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.view.MySnackbar.4
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        MySnackbar mySnackbar2 = MySnackbar.this;
                                        if (mySnackbar2.c0 != 0) {
                                            return;
                                        }
                                        SnackbarListener snackbarListener2 = mySnackbar2.h;
                                        if (snackbarListener2 != null) {
                                            snackbarListener2.c();
                                        }
                                        mySnackbar2.s();
                                        MySnackbar.d(mySnackbar2);
                                    }
                                });
                                mySnackbar.s.post(new Runnable() { // from class: com.mycompany.app.view.MySnackbar.5
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        MySnackbar.a(MySnackbar.this);
                                    }
                                });
                                return;
                            }
                            return;
                        }
                        if (mySnackbar.t == null && mySnackbar.g != null) {
                            MySnackSub mySnackSub3 = new MySnackSub(mySnackbar.g);
                            mySnackbar.t = mySnackSub3;
                            mySnackSub3.setBodyView(mySnackbar);
                            LinearLayout linearLayout = new LinearLayout(mySnackbar.g);
                            mySnackbar.C = linearLayout;
                            int i9 = MainApp.F1;
                            linearLayout.setPaddingRelative(i9, 0, i9, 0);
                            mySnackbar.C.setBaselineAligned(false);
                            mySnackbar.C.setOrientation(0);
                            AppCompatTextView appCompatTextView4 = new AppCompatTextView(mySnackbar.g, null);
                            mySnackbar.y = appCompatTextView4;
                            int i10 = MainApp.E1;
                            int i11 = MainApp.F1;
                            appCompatTextView4.setPaddingRelative(i10, i11, i11, i11);
                            mySnackbar.y.setMinHeight(MainApp.g1);
                            mySnackbar.y.setGravity(16);
                            mySnackbar.y.setTextSize(1, 14.0f);
                            AppCompatTextView appCompatTextView5 = mySnackbar.y;
                            if (MainApp.K1) {
                                i6 = -328966;
                            }
                            appCompatTextView5.setTextColor(i6);
                            mySnackbar.y.setText(mySnackbar.j);
                            int i12 = -2039584;
                            if (mySnackbar.k != 0) {
                                MyButtonImage myButtonImage = new MyButtonImage(mySnackbar.g);
                                mySnackbar.A = myButtonImage;
                                myButtonImage.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                                MyButtonImage myButtonImage2 = mySnackbar.A;
                                if (MainApp.K1) {
                                    i4 = -12632257;
                                } else {
                                    i4 = -2039584;
                                }
                                myButtonImage2.setBgPreColor(i4);
                                mySnackbar.A.setImageResource(MySnackbar.j(mySnackbar.k));
                                mySnackbar.A.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.view.MySnackbar.6
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        MySnackbar mySnackbar2 = MySnackbar.this;
                                        if (mySnackbar2.c0 != 0) {
                                            return;
                                        }
                                        SnackbarListener snackbarListener2 = mySnackbar2.h;
                                        if (snackbarListener2 != null) {
                                            snackbarListener2.c();
                                        }
                                        mySnackbar2.s();
                                        MySnackbar.d(mySnackbar2);
                                    }
                                });
                            }
                            if (mySnackbar.l != 0) {
                                MyButtonImage myButtonImage3 = new MyButtonImage(mySnackbar.g);
                                mySnackbar.B = myButtonImage3;
                                myButtonImage3.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                                MyButtonImage myButtonImage4 = mySnackbar.B;
                                if (MainApp.K1) {
                                    i12 = -12632257;
                                }
                                myButtonImage4.setBgPreColor(i12);
                                mySnackbar.B.setImageResource(MySnackbar.j(mySnackbar.l));
                                if (mySnackbar.o) {
                                    mySnackbar.B.setNoti(true);
                                }
                                mySnackbar.B.setVisibility(0);
                                mySnackbar.B.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.view.MySnackbar.7
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        MySnackbar mySnackbar2 = MySnackbar.this;
                                        if (mySnackbar2.c0 != 0) {
                                            return;
                                        }
                                        SnackbarListener snackbarListener2 = mySnackbar2.h;
                                        if (snackbarListener2 != null) {
                                            snackbarListener2.a();
                                        }
                                        mySnackbar2.s();
                                        MySnackbar.d(mySnackbar2);
                                    }
                                });
                            }
                            mySnackbar.s.post(new Runnable() { // from class: com.mycompany.app.view.MySnackbar.8
                                @Override // java.lang.Runnable
                                public final void run() {
                                    final MySnackbar mySnackbar2 = MySnackbar.this;
                                    if (mySnackbar2.s != null && mySnackbar2.C != null) {
                                        try {
                                            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2);
                                            layoutParams.weight = 1.0f;
                                            mySnackbar2.C.addView(mySnackbar2.y, layoutParams);
                                            if (mySnackbar2.A != null) {
                                                int i13 = MainApp.g1;
                                                LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(i13, i13);
                                                layoutParams2.gravity = 8388627;
                                                mySnackbar2.C.addView(mySnackbar2.A, layoutParams2);
                                            }
                                            if (mySnackbar2.B != null) {
                                                int i14 = MainApp.g1;
                                                LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(i14, i14);
                                                layoutParams3.gravity = 8388627;
                                                mySnackbar2.C.addView(mySnackbar2.B, layoutParams3);
                                            }
                                            mySnackbar2.s.post(new Runnable() { // from class: com.mycompany.app.view.MySnackbar.9
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    MySnackbar.a(MySnackbar.this);
                                                }
                                            });
                                        } catch (Exception unused) {
                                        }
                                    }
                                }
                            });
                            return;
                        }
                        return;
                    }
                    MySnackbar.c(mySnackbar);
                }
            });
        }
    }
}
