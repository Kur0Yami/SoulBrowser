package com.mycompany.app.image;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.RectF;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.impl.workers.a;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.compress.Compress;
import com.mycompany.app.image.ImageThumbAdapter;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainListLoader;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefImage;
import com.mycompany.app.pref.PrefPdf;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyAreaView;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyFadeListener;
import com.mycompany.app.view.MyFadeRelative;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.view.MyScrollBar;

/* loaded from: classes3.dex */
public class ImageViewControl extends MyFadeRelative {
    public MainActivity A;
    public Window B;
    public ControlListener C;
    public int D;
    public boolean E;
    public View F;
    public AppCompatTextView G;
    public MyButtonImage H;
    public MyButtonImage I;
    public MyButtonImage J;
    public MyButtonImage K;
    public MyButtonImage L;
    public LinearLayout M;
    public MyButtonImage N;
    public MyButtonImage O;
    public MyButtonImage P;
    public MyButtonImage Q;
    public MyButtonImage R;
    public MyButtonImage S;
    public MyButtonImage T;
    public MyAreaView U;
    public LinearLayout V;
    public MyButtonImage W;
    public MyButtonImage a0;
    public MyButtonImage b0;
    public MyButtonImage c0;
    public MyButtonImage d0;
    public MyButtonImage e0;
    public int f0;
    public ImageSeekBar g0;
    public AppCompatTextView h0;
    public AppCompatTextView i0;
    public MyRecyclerView j0;
    public ImageThumbAdapter k0;
    public MyScrollBar l0;
    public View m0;
    public int n0;
    public int o0;
    public int p0;
    public int q0;
    public boolean r0;
    public final Runnable s0;
    public final SeekBar.OnSeekBarChangeListener t0;
    public final int y;
    public final Context z;

    /* renamed from: com.mycompany.app.image.ImageViewControl$17, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass17 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* renamed from: com.mycompany.app.image.ImageViewControl$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass3 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.image.ImageViewControl$30, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass30 implements ImageThumbAdapter.ThumbListener {
        public AnonymousClass30() {
        }
    }

    /* renamed from: com.mycompany.app.image.ImageViewControl$9, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass9 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* loaded from: classes3.dex */
    public interface ControlListener {
        void A();

        void B();

        void E();

        boolean a();

        void b(boolean z);

        void controlRotate(View view);

        void d();

        void h(int i);

        void i();

        void l();

        void n();

        void o();

        void p();

        void q();

        void r(View view);

        void s();

        void u();

        boolean v();

        void w();

        void x();

        void y();

        void z(View view);
    }

    public ImageViewControl(Context context) {
        super(context);
        this.s0 = new Runnable() { // from class: com.mycompany.app.image.ImageViewControl.31
            @Override // java.lang.Runnable
            public final void run() {
                ImageViewControl imageViewControl = ImageViewControl.this;
                MyScrollBar myScrollBar = imageViewControl.l0;
                if (myScrollBar != null && imageViewControl.k0 != null) {
                    int width = myScrollBar.getWidth() / imageViewControl.y;
                    if (imageViewControl.l0.getWidth() % imageViewControl.y > 0) {
                        width++;
                    }
                    imageViewControl.l0.p(width, imageViewControl.k0.d());
                }
                imageViewControl.r0 = false;
            }
        };
        this.t0 = new SeekBar.OnSeekBarChangeListener() { // from class: com.mycompany.app.image.ImageViewControl.33
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public final void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                if (z) {
                    ImageViewControl imageViewControl = ImageViewControl.this;
                    if (imageViewControl.C != null && imageViewControl.f() && imageViewControl.f0 > 0) {
                        if (PrefImage.s) {
                            imageViewControl.h0.setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + (seekBar.getProgress() + 1));
                            return;
                        }
                        imageViewControl.i0.setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + (seekBar.getProgress() + 1));
                    }
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public final void onStartTrackingTouch(SeekBar seekBar) {
                ImageViewControl imageViewControl = ImageViewControl.this;
                if (imageViewControl.C != null && imageViewControl.f()) {
                    imageViewControl.setIconsClickable(false);
                    if (imageViewControl.f0 > 0) {
                        if (PrefImage.s) {
                            imageViewControl.h0.setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + (seekBar.getProgress() + 1));
                            return;
                        }
                        imageViewControl.i0.setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + (seekBar.getProgress() + 1));
                    }
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public final void onStopTrackingTouch(SeekBar seekBar) {
                ImageViewControl imageViewControl = ImageViewControl.this;
                if (imageViewControl.C == null || !imageViewControl.f()) {
                    return;
                }
                if (imageViewControl.f0 > 0) {
                    int progress = seekBar.getProgress();
                    if (PrefImage.s) {
                        imageViewControl.h0.setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + (progress + 1));
                    } else {
                        imageViewControl.i0.setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + (progress + 1));
                    }
                    imageViewControl.C.h(progress);
                }
                imageViewControl.setIconsClickable(true);
                imageViewControl.i(false);
            }
        };
        this.z = context;
        this.y = MainApp.i1;
        setTouchable(true);
        setAutoHide(true);
    }

    private int getNaviHeight() {
        if (this.A == null || this.B == null || m()) {
            return 0;
        }
        if (MainConst.e) {
            return this.D;
        }
        return MainUtil.P2(this.z, this.B, this.A.a0());
    }

    private void setIconPage(boolean z) {
        int i;
        MyButtonImage myButtonImage = this.d0;
        if (myButtonImage != null) {
            if (z) {
                i = R.drawable.outline_stay_current_landscape_white_24;
            } else {
                i = R.drawable.outline_stay_current_portrait_white_24;
            }
            if (this.q0 == i) {
                return;
            }
            this.q0 = i;
            myButtonImage.setImageResource(i);
        }
    }

    public final void A() {
        MyRecyclerView myRecyclerView = this.j0;
        if (myRecyclerView != null) {
            myRecyclerView.p0();
        }
        MyScrollBar myScrollBar = this.l0;
        if (myScrollBar != null) {
            myScrollBar.d(true);
        }
    }

    public final boolean B() {
        if (f()) {
            d(true);
            return false;
        }
        x(true);
        return true;
    }

    public final void C() {
        if (f()) {
            x(true);
        }
    }

    @Override // com.mycompany.app.view.MyFadeRelative, android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (!f()) {
            return false;
        }
        ControlListener controlListener = this.C;
        if (controlListener != null && controlListener.a()) {
            setIconsPressed(false);
            return false;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.mycompany.app.view.MyFadeRelative
    public final void g() {
        super.g();
        MyButtonImage myButtonImage = this.H;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.H = null;
        }
        MyButtonImage myButtonImage2 = this.I;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.I = null;
        }
        MyButtonImage myButtonImage3 = this.J;
        if (myButtonImage3 != null) {
            myButtonImage3.j();
            this.J = null;
        }
        MyButtonImage myButtonImage4 = this.K;
        if (myButtonImage4 != null) {
            myButtonImage4.j();
            this.K = null;
        }
        MyButtonImage myButtonImage5 = this.L;
        if (myButtonImage5 != null) {
            myButtonImage5.j();
            this.L = null;
        }
        MyButtonImage myButtonImage6 = this.N;
        if (myButtonImage6 != null) {
            myButtonImage6.j();
            this.N = null;
        }
        MyButtonImage myButtonImage7 = this.O;
        if (myButtonImage7 != null) {
            myButtonImage7.j();
            this.O = null;
        }
        MyButtonImage myButtonImage8 = this.P;
        if (myButtonImage8 != null) {
            myButtonImage8.j();
            this.P = null;
        }
        MyButtonImage myButtonImage9 = this.Q;
        if (myButtonImage9 != null) {
            myButtonImage9.j();
            this.Q = null;
        }
        MyButtonImage myButtonImage10 = this.R;
        if (myButtonImage10 != null) {
            myButtonImage10.j();
            this.R = null;
        }
        MyButtonImage myButtonImage11 = this.S;
        if (myButtonImage11 != null) {
            myButtonImage11.j();
            this.S = null;
        }
        MyButtonImage myButtonImage12 = this.T;
        if (myButtonImage12 != null) {
            myButtonImage12.j();
            this.T = null;
        }
        MyAreaView myAreaView = this.U;
        if (myAreaView != null) {
            myAreaView.c();
            this.U = null;
        }
        MyButtonImage myButtonImage13 = this.W;
        if (myButtonImage13 != null) {
            myButtonImage13.j();
            this.W = null;
        }
        MyButtonImage myButtonImage14 = this.a0;
        if (myButtonImage14 != null) {
            myButtonImage14.j();
            this.a0 = null;
        }
        MyButtonImage myButtonImage15 = this.b0;
        if (myButtonImage15 != null) {
            myButtonImage15.j();
            this.b0 = null;
        }
        MyButtonImage myButtonImage16 = this.c0;
        if (myButtonImage16 != null) {
            myButtonImage16.j();
            this.c0 = null;
        }
        MyButtonImage myButtonImage17 = this.d0;
        if (myButtonImage17 != null) {
            myButtonImage17.j();
            this.d0 = null;
        }
        MyButtonImage myButtonImage18 = this.e0;
        if (myButtonImage18 != null) {
            myButtonImage18.j();
            this.e0 = null;
        }
        ImageThumbAdapter imageThumbAdapter = this.k0;
        if (imageThumbAdapter != null) {
            imageThumbAdapter.n = imageThumbAdapter.d();
            MainListLoader mainListLoader = imageThumbAdapter.j;
            if (mainListLoader != null) {
                mainListLoader.f();
                imageThumbAdapter.j = null;
            }
            imageThumbAdapter.d = null;
            imageThumbAdapter.e = null;
            imageThumbAdapter.h = null;
            imageThumbAdapter.k = null;
            imageThumbAdapter.m = null;
            this.k0 = null;
        }
        MyRecyclerView myRecyclerView = this.j0;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.j0 = null;
        }
        MyScrollBar myScrollBar = this.l0;
        if (myScrollBar != null) {
            myScrollBar.k();
            this.l0 = null;
        }
        this.A = null;
        this.B = null;
        this.C = null;
        this.F = null;
        this.G = null;
        this.M = null;
        this.V = null;
        this.g0 = null;
        this.h0 = null;
        this.i0 = null;
        this.m0 = null;
    }

    public final void j(RectF rectF) {
        int i;
        MyAreaView myAreaView = this.U;
        if (myAreaView != null) {
            myAreaView.f(rectF, this.M.getLeft(), this.V.getTop());
            MyAreaView myAreaView2 = this.U;
            if (myAreaView2.a()) {
                i = 0;
            } else {
                i = 4;
            }
            myAreaView2.setVisibility(i);
            MyAreaView myAreaView3 = this.U;
            if (myAreaView3.A) {
                myAreaView3.postDelayed(new Runnable() { // from class: com.mycompany.app.image.ImageViewControl.29
                    @Override // java.lang.Runnable
                    public final void run() {
                        ImageViewControl imageViewControl = ImageViewControl.this;
                        MyAreaView myAreaView4 = imageViewControl.U;
                        if (myAreaView4 == null) {
                            return;
                        }
                        int i2 = 0;
                        myAreaView4.setSkipDraw(false);
                        MyAreaView myAreaView5 = imageViewControl.U;
                        if (!myAreaView5.b()) {
                            i2 = 4;
                        }
                        myAreaView5.setVisibility(i2);
                    }
                }, 100L);
            }
        }
    }

    public final boolean k(float f) {
        AppCompatTextView appCompatTextView;
        if (!f() || (appCompatTextView = this.G) == null) {
            return false;
        }
        if (f < appCompatTextView.getHeight() || f > this.V.getTop()) {
            return true;
        }
        return l();
    }

    public final boolean l() {
        AppCompatTextView appCompatTextView = this.G;
        if (appCompatTextView != null) {
            if (!appCompatTextView.isPressed() && !this.H.isPressed() && !this.I.isPressed() && !this.J.isPressed() && !this.K.isPressed() && !this.L.isPressed() && !this.M.isPressed() && !this.N.isPressed() && !this.O.isPressed() && !this.P.isPressed() && !this.Q.isPressed() && !this.R.isPressed() && !this.S.isPressed() && !this.T.isPressed() && !this.V.isPressed() && !this.W.isPressed() && !this.a0.isPressed() && !this.b0.isPressed() && !this.c0.isPressed() && !this.d0.isPressed() && !this.e0.isPressed()) {
                return false;
            }
            return true;
        }
        return false;
    }

    public final boolean m() {
        MainActivity mainActivity = this.A;
        if (mainActivity == null) {
            return MainUtil.N5(this.z);
        }
        return mainActivity.h0();
    }

    public final void n(boolean z, int i, int i2, int i3, int i4) {
        MyAreaView myAreaView = this.U;
        if (myAreaView != null) {
            myAreaView.d(i, i2, i3, i4, this.M.getLeft(), this.V.getTop(), z);
        }
    }

    public final void o() {
        int i;
        MyButtonImage myButtonImage = this.N;
        if (myButtonImage != null) {
            int i2 = PrefImage.l;
            if (i2 == 1) {
                i = R.drawable.outline_screen_lock_portrait_white_24;
            } else if (i2 == 2) {
                i = R.drawable.outline_screen_lock_landscape_white_24;
            } else {
                i = R.drawable.outline_screen_rotation_white_24;
            }
            if (this.p0 == i) {
                return;
            }
            this.p0 = i;
            myButtonImage.setImageResource(i);
        }
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        setIconPage(m());
        if (!MainConst.e) {
            v();
        }
    }

    @Override // com.mycompany.app.view.MyFadeRelative, android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        q(i, i2);
        super.onSizeChanged(i, i2, i3, i4);
        if (!MainConst.e) {
            v();
        }
    }

    @Override // com.mycompany.app.view.MyFadeRelative, android.view.View
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (!MainConst.e && i == 0) {
            v();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [androidx.recyclerview.widget.RecyclerView$Adapter, com.mycompany.app.image.ImageThumbAdapter] */
    public final void p(int i, int i2, Compress compress) {
        if (this.j0 != null && this.C != null) {
            if (PrefImage.m && compress != null && compress.R() != 0) {
                this.j0.setVisibility(0);
                ImageThumbAdapter imageThumbAdapter = this.k0;
                if (imageThumbAdapter == null) {
                    MyRecyclerView myRecyclerView = this.j0;
                    ?? adapter = new RecyclerView.Adapter();
                    adapter.d = this.z;
                    adapter.e = myRecyclerView;
                    adapter.f = i;
                    adapter.g = i2;
                    adapter.h = compress;
                    adapter.i = -1;
                    adapter.v();
                    this.k0 = adapter;
                    adapter.m = new AnonymousClass30();
                    this.j0.setAdapter(adapter);
                } else {
                    MainListLoader mainListLoader = imageThumbAdapter.j;
                    if (mainListLoader != null) {
                        mainListLoader.f16599c = null;
                    }
                    imageThumbAdapter.f = i;
                    imageThumbAdapter.g = i2;
                    imageThumbAdapter.h = compress;
                    imageThumbAdapter.i = -1;
                    imageThumbAdapter.v();
                    imageThumbAdapter.g();
                }
                q(getWidth(), getHeight());
                return;
            }
            this.j0.setVisibility(8);
            this.l0.setVisibility(8);
            ImageThumbAdapter imageThumbAdapter2 = this.k0;
            if (imageThumbAdapter2 != null) {
                imageThumbAdapter2.n = imageThumbAdapter2.d();
                MainListLoader mainListLoader2 = imageThumbAdapter2.j;
                if (mainListLoader2 != null) {
                    mainListLoader2.f();
                    imageThumbAdapter2.j = null;
                }
                imageThumbAdapter2.d = null;
                imageThumbAdapter2.e = null;
                imageThumbAdapter2.h = null;
                imageThumbAdapter2.k = null;
                imageThumbAdapter2.m = null;
                this.k0 = null;
            }
        }
    }

    public final void q(int i, int i2) {
        MyRecyclerView myRecyclerView;
        ViewGroup.LayoutParams layoutParams;
        if (i != 0 && i2 != 0 && (myRecyclerView = this.j0) != null && this.k0 != null && (layoutParams = myRecyclerView.getLayoutParams()) != null) {
            int d = this.k0.d() * this.y;
            if (d >= i) {
                layoutParams.width = -1;
            } else {
                layoutParams.width = d;
            }
        }
    }

    public final void r(int i, boolean z) {
        ImageThumbAdapter imageThumbAdapter;
        MyScrollBar myScrollBar = this.l0;
        if (myScrollBar != null) {
            myScrollBar.a0 = true;
            myScrollBar.d(false);
        }
        MyRecyclerView myRecyclerView = this.j0;
        if (myRecyclerView != null && myRecyclerView.getVisibility() == 0 && (imageThumbAdapter = this.k0) != null && i >= 0 && i < imageThumbAdapter.d()) {
            if (PrefImage.s) {
                i = (this.k0.d() - i) - 1;
            }
            ImageThumbAdapter imageThumbAdapter2 = this.k0;
            MyRecyclerView myRecyclerView2 = imageThumbAdapter2.e;
            if (myRecyclerView2 != null) {
                int i2 = imageThumbAdapter2.i;
                if (i2 == i) {
                    if (z) {
                        myRecyclerView2.i0(i2);
                    }
                } else {
                    imageThumbAdapter2.i = i;
                    imageThumbAdapter2.g();
                    imageThumbAdapter2.e.i0(imageThumbAdapter2.i);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v15, types: [android.widget.SeekBar, com.mycompany.app.image.ImageSeekBar, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View] */
    public final void s(MainActivity mainActivity, Window window, boolean z, ControlListener controlListener) {
        this.A = mainActivity;
        this.B = window;
        this.E = z;
        this.C = controlListener;
        setListener(new MyFadeListener() { // from class: com.mycompany.app.image.ImageViewControl.1
            @Override // com.mycompany.app.view.MyFadeListener
            public final void a(boolean z2) {
                boolean z3;
                ImageViewControl imageViewControl = ImageViewControl.this;
                if (!z2) {
                    imageViewControl.setIconsPressed(false);
                }
                ImageThumbAdapter imageThumbAdapter = imageViewControl.k0;
                if (imageThumbAdapter != null && imageThumbAdapter.l != (!z2)) {
                    imageThumbAdapter.l = z3;
                    if (z2) {
                        imageThumbAdapter.g();
                    }
                }
            }

            @Override // com.mycompany.app.view.MyFadeListener
            public final void b(boolean z2, boolean z3) {
                ImageThumbAdapter imageThumbAdapter;
                boolean z4;
                ImageViewControl imageViewControl = ImageViewControl.this;
                ControlListener controlListener2 = imageViewControl.C;
                if (controlListener2 != null) {
                    controlListener2.b(z2);
                }
                if (!z3 && (imageThumbAdapter = imageViewControl.k0) != null && imageThumbAdapter.l != (!z2)) {
                    imageThumbAdapter.l = z4;
                    if (z2) {
                        imageThumbAdapter.g();
                    }
                }
            }
        });
        Context context = this.z;
        if (context == null) {
            return;
        }
        int i = R.id.ctrl_bottom_view;
        int i2 = R.id.ctrl_pad_bot;
        int i3 = R.id.ctrl_curr_time;
        int i4 = R.id.ctrl_total_time;
        int naviHeight = getNaviHeight();
        View view = new View(context);
        view.setId(i2);
        view.setBackgroundColor(-1593835520);
        RelativeLayout.LayoutParams g = a.g(-1, naviHeight, 12);
        if (naviHeight > 0) {
            g.height = naviHeight;
            view.setVisibility(0);
        } else {
            g.height = 0;
            view.setVisibility(4);
        }
        addView(view, g);
        AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
        int i5 = MainApp.h1;
        appCompatTextView.setPadding(i5, 0, i5, 0);
        appCompatTextView.setGravity(16);
        appCompatTextView.setSingleLine(true);
        appCompatTextView.setEllipsize(TextUtils.TruncateAt.END);
        appCompatTextView.setTextSize(1, 16.0f);
        appCompatTextView.setTextColor(-1);
        appCompatTextView.setBackgroundColor(-1593835520);
        addView(appCompatTextView, -1, MainApp.g1);
        MyButtonImage myButtonImage = new MyButtonImage(context);
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
        myButtonImage.setScaleType(scaleType);
        myButtonImage.setImageResource(R.drawable.outline_chevron_left_white_24);
        myButtonImage.setBgPreColor(-1586137739);
        int i6 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i6, i6);
        layoutParams.setMarginStart(MainApp.G1);
        addView(myButtonImage, layoutParams);
        MyButtonImage p = com.google.android.gms.internal.mlkit_vision_text_common.a.p(context, scaleType);
        p.setImageResource(R.drawable.outline_filter_list_white_24);
        p.setBgPreColor(-1586137739);
        p.setVisibility(8);
        int i7 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(i7, i7);
        layoutParams2.addRule(21);
        layoutParams2.setMarginEnd(MainApp.G1);
        addView(p, layoutParams2);
        MyButtonImage myButtonImage2 = new MyButtonImage(context);
        myButtonImage2.setScaleType(scaleType);
        myButtonImage2.setBgPreColor(-1586137739);
        myButtonImage2.setVisibility(8);
        int i8 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(i8, i8);
        layoutParams3.addRule(21);
        layoutParams3.setMarginEnd((MainApp.g1 * 2) + MainApp.G1);
        addView(myButtonImage2, layoutParams3);
        MyButtonImage p2 = com.google.android.gms.internal.mlkit_vision_text_common.a.p(context, scaleType);
        p2.setImageResource(R.drawable.outline_kid_star_2_white_24);
        p2.setBgPreColor(-1586137739);
        int i9 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(i9, i9);
        layoutParams4.addRule(21);
        layoutParams4.setMarginEnd(MainApp.g1 + MainApp.G1);
        addView(p2, layoutParams4);
        MyButtonImage p3 = com.google.android.gms.internal.mlkit_vision_text_common.a.p(context, scaleType);
        p3.setImageResource(R.drawable.outline_format_list_bulleted_white_24);
        p3.setBgPreColor(-1586137739);
        int i10 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(i10, i10);
        layoutParams5.addRule(21);
        layoutParams5.setMarginEnd(MainApp.G1);
        addView(p3, layoutParams5);
        LinearLayout linearLayout = new LinearLayout(context);
        int i11 = MainApp.G1;
        linearLayout.setPaddingRelative(0, i11, i11, 0);
        linearLayout.setBaselineAligned(false);
        linearLayout.setOrientation(0);
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams6.addRule(21);
        layoutParams6.topMargin = MainApp.g1;
        addView(linearLayout, layoutParams6);
        MyButtonImage myButtonImage3 = new MyButtonImage(context);
        myButtonImage3.setScaleType(scaleType);
        myButtonImage3.n(MainApp.j1, MainApp.k1);
        myButtonImage3.k(-1593835520, -1586137739);
        int i12 = MainApp.g1;
        linearLayout.addView(myButtonImage3, i12, i12);
        MyButtonImage myButtonImage4 = new MyButtonImage(context);
        myButtonImage4.setScaleType(scaleType);
        myButtonImage4.setImageResource(R.drawable.outline_brightness_6_white_24);
        myButtonImage4.n(MainApp.j1, MainApp.k1);
        myButtonImage4.k(-1593835520, -1586137739);
        int i13 = MainApp.g1;
        linearLayout.addView(myButtonImage4, i13, i13);
        MyButtonImage myButtonImage5 = new MyButtonImage(context);
        myButtonImage5.setScaleType(scaleType);
        myButtonImage5.setImageResource(R.drawable.outline_format_color_fill_white_24);
        myButtonImage5.n(MainApp.j1, MainApp.k1);
        myButtonImage5.k(-1593835520, -1586137739);
        int i14 = MainApp.g1;
        linearLayout.addView(myButtonImage5, i14, i14);
        MyButtonImage myButtonImage6 = new MyButtonImage(context);
        myButtonImage6.setScaleType(scaleType);
        myButtonImage6.setImageResource(R.drawable.outline_crop_white_24);
        myButtonImage6.n(MainApp.j1, MainApp.k1);
        myButtonImage6.k(-1593835520, -1586137739);
        int i15 = MainApp.g1;
        linearLayout.addView(myButtonImage6, i15, i15);
        MyButtonImage myButtonImage7 = new MyButtonImage(context);
        myButtonImage7.setScaleType(scaleType);
        myButtonImage7.setImageResource(R.drawable.outline_settings_white_24);
        myButtonImage7.n(MainApp.j1, MainApp.k1);
        myButtonImage7.k(-1593835520, -1586137739);
        int i16 = MainApp.g1;
        linearLayout.addView(myButtonImage7, i16, i16);
        MyAreaView myAreaView = new MyAreaView(context);
        myAreaView.setVisibility(4);
        int G = (int) MainUtil.G(context, 160.0f);
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(G, G);
        int i17 = MainApp.g1;
        int i18 = MainApp.F1;
        layoutParams7.topMargin = i17 + i18;
        layoutParams7.setMarginStart(i18);
        addView(myAreaView, layoutParams7);
        View view2 = new View(context);
        view2.setVisibility(8);
        RelativeLayout.LayoutParams h = a.h((int) MainUtil.G(context, 135.0f), (int) MainUtil.G(context, 24.0f), 2, i);
        h.setMarginStart(MainApp.F1);
        h.bottomMargin = (int) MainUtil.G(context, 12.0f);
        addView(view2, h);
        MyScrollBar myScrollBar = new MyScrollBar(context);
        myScrollBar.Q = true;
        myScrollBar.setVisibility(4);
        RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(-1, MainApp.g1);
        layoutParams8.addRule(2, i);
        layoutParams8.setMarginStart(MainApp.G1);
        layoutParams8.setMarginEnd(MainApp.G1);
        layoutParams8.bottomMargin = MainApp.G1;
        addView(myScrollBar, layoutParams8);
        MyButtonImage myButtonImage8 = new MyButtonImage(context);
        myButtonImage8.setScaleType(scaleType);
        myButtonImage8.setImageResource(R.drawable.outline_download_white_24);
        myButtonImage8.n(MainApp.j1, MainApp.k1);
        myButtonImage8.k(-1593835520, -1586137739);
        myButtonImage8.setVisibility(8);
        int i19 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams9 = new RelativeLayout.LayoutParams(i19, i19);
        layoutParams9.addRule(2, i);
        layoutParams9.addRule(21);
        layoutParams9.setMarginEnd(MainApp.G1);
        layoutParams9.bottomMargin = MainApp.G1;
        addView(myButtonImage8, layoutParams9);
        MyButtonImage myButtonImage9 = new MyButtonImage(context);
        myButtonImage9.setScaleType(scaleType);
        myButtonImage9.setImageResource(R.drawable.outline_g_translate_white_24);
        myButtonImage9.n(MainApp.j1, MainApp.k1);
        myButtonImage9.k(-1593835520, -1586137739);
        int i20 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams10 = new RelativeLayout.LayoutParams(i20, i20);
        layoutParams10.addRule(2, i);
        layoutParams10.addRule(21);
        layoutParams10.setMarginEnd(MainApp.g1 + MainApp.G1);
        layoutParams10.bottomMargin = MainApp.G1;
        addView(myButtonImage9, layoutParams10);
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setId(i);
        linearLayout2.setPadding(0, 0, 0, MainApp.G1);
        linearLayout2.setBackgroundColor(-1593835520);
        linearLayout2.setOrientation(1);
        RelativeLayout.LayoutParams layoutParams11 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams11.addRule(2, i2);
        addView(linearLayout2, layoutParams11);
        MyRecyclerView myRecyclerView = new MyRecyclerView(context);
        myRecyclerView.setVerticalScrollBarEnabled(false);
        myRecyclerView.setHorizontalScrollBarEnabled(false);
        LinearLayout.LayoutParams layoutParams12 = new LinearLayout.LayoutParams(-2, (int) MainUtil.G(context, 82.0f));
        layoutParams12.topMargin = MainApp.G1;
        layoutParams12.gravity = 1;
        linearLayout2.addView(myRecyclerView, layoutParams12);
        RelativeLayout relativeLayout = new RelativeLayout(context);
        LinearLayout.LayoutParams layoutParams13 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams13.topMargin = MainApp.F1 + MainApp.G1;
        layoutParams13.setMarginStart(MainApp.F1);
        layoutParams13.setMarginEnd(MainApp.F1);
        linearLayout2.addView(relativeLayout, layoutParams13);
        AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
        appCompatTextView2.setId(i3);
        appCompatTextView2.setGravity(1);
        appCompatTextView2.setTextSize(1, 14.0f);
        appCompatTextView2.setTextColor(-1);
        appCompatTextView2.setMinWidth(MainApp.g1);
        RelativeLayout.LayoutParams layoutParams14 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams14.addRule(15);
        relativeLayout.addView(appCompatTextView2, layoutParams14);
        AppCompatTextView appCompatTextView3 = new AppCompatTextView(context, null);
        appCompatTextView3.setId(i4);
        appCompatTextView3.setGravity(1);
        appCompatTextView3.setTextSize(1, 14.0f);
        appCompatTextView3.setTextColor(-1);
        appCompatTextView3.setMinWidth(MainApp.g1);
        RelativeLayout.LayoutParams layoutParams15 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams15.addRule(15);
        layoutParams15.addRule(21);
        relativeLayout.addView(appCompatTextView3, layoutParams15);
        ?? seekBar = new SeekBar(context);
        seekBar.setSplitTrack(false);
        seekBar.setProgressDrawable(MainUtil.S(context, R.drawable.seek_progress_w));
        seekBar.setThumb(MainUtil.S(context, R.drawable.seek_thumb_w));
        RelativeLayout.LayoutParams layoutParams16 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams16.addRule(17, i3);
        layoutParams16.addRule(16, i4);
        layoutParams16.addRule(15);
        relativeLayout.addView((View) seekBar, layoutParams16);
        LinearLayout linearLayout3 = new LinearLayout(context);
        linearLayout3.setBaselineAligned(false);
        linearLayout3.setOrientation(0);
        LinearLayout.LayoutParams layoutParams17 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams17.topMargin = MainApp.G1;
        layoutParams17.setMarginStart(MainApp.F1);
        layoutParams17.setMarginEnd(MainApp.F1);
        linearLayout2.addView(linearLayout3, layoutParams17);
        MyButtonImage myButtonImage10 = new MyButtonImage(context);
        myButtonImage10.setScaleType(scaleType);
        myButtonImage10.setBgPreColor(-1586137739);
        int i21 = MainApp.g1;
        linearLayout3.addView(myButtonImage10, i21, i21);
        View view3 = new View(context);
        LinearLayout.LayoutParams layoutParams18 = new LinearLayout.LayoutParams(0, 0);
        layoutParams18.weight = 1.0f;
        linearLayout3.addView(view3, layoutParams18);
        MyButtonImage myButtonImage11 = new MyButtonImage(context);
        myButtonImage11.setScaleType(scaleType);
        myButtonImage11.setImageResource(R.drawable.baseline_skip_previous_white_24);
        myButtonImage11.setBgPreColor(-1586137739);
        int i22 = MainApp.g1;
        linearLayout3.addView(myButtonImage11, i22, i22);
        View view4 = new View(context);
        LinearLayout.LayoutParams layoutParams19 = new LinearLayout.LayoutParams(0, 0);
        layoutParams19.weight = 1.0f;
        linearLayout3.addView(view4, layoutParams19);
        MyButtonImage myButtonImage12 = new MyButtonImage(context);
        myButtonImage12.setScaleType(scaleType);
        myButtonImage12.setImageResource(R.drawable.baseline_fast_rewind_white_24);
        myButtonImage12.setBgPreColor(-1586137739);
        int i23 = MainApp.g1;
        linearLayout3.addView(myButtonImage12, i23, i23);
        View view5 = new View(context);
        LinearLayout.LayoutParams layoutParams20 = new LinearLayout.LayoutParams(0, 0);
        layoutParams20.weight = 1.0f;
        linearLayout3.addView(view5, layoutParams20);
        MyButtonImage myButtonImage13 = new MyButtonImage(context);
        myButtonImage13.setScaleType(scaleType);
        myButtonImage13.setImageResource(R.drawable.baseline_fast_forward_white_24);
        myButtonImage13.setBgPreColor(-1586137739);
        int i24 = MainApp.g1;
        linearLayout3.addView(myButtonImage13, i24, i24);
        View view6 = new View(context);
        LinearLayout.LayoutParams layoutParams21 = new LinearLayout.LayoutParams(0, 0);
        layoutParams21.weight = 1.0f;
        linearLayout3.addView(view6, layoutParams21);
        MyButtonImage myButtonImage14 = new MyButtonImage(context);
        myButtonImage14.setScaleType(scaleType);
        myButtonImage14.setImageResource(R.drawable.baseline_skip_next_white_24);
        myButtonImage14.setBgPreColor(-1586137739);
        int i25 = MainApp.g1;
        linearLayout3.addView(myButtonImage14, i25, i25);
        View view7 = new View(context);
        LinearLayout.LayoutParams layoutParams22 = new LinearLayout.LayoutParams(0, 0);
        layoutParams22.weight = 1.0f;
        linearLayout3.addView(view7, layoutParams22);
        MyButtonImage myButtonImage15 = new MyButtonImage(context);
        myButtonImage15.setScaleType(scaleType);
        myButtonImage15.setImageResource(R.drawable.outline_pin_white_24);
        myButtonImage15.setBgPreColor(-1586137739);
        int i26 = MainApp.g1;
        linearLayout3.addView(myButtonImage15, i26, i26);
        this.F = view;
        this.G = appCompatTextView;
        this.H = myButtonImage;
        this.I = p;
        this.J = myButtonImage2;
        this.K = p2;
        this.L = p3;
        this.M = linearLayout;
        this.N = myButtonImage3;
        this.O = myButtonImage4;
        this.P = myButtonImage5;
        this.Q = myButtonImage6;
        this.R = myButtonImage7;
        this.S = myButtonImage8;
        this.T = myButtonImage9;
        this.U = myAreaView;
        this.V = linearLayout2;
        this.W = myButtonImage12;
        this.a0 = myButtonImage13;
        this.b0 = myButtonImage11;
        this.c0 = myButtonImage14;
        this.d0 = myButtonImage10;
        this.e0 = myButtonImage15;
        this.g0 = seekBar;
        this.h0 = appCompatTextView3;
        this.i0 = appCompatTextView2;
        this.j0 = myRecyclerView;
        this.l0 = myScrollBar;
        this.m0 = view2;
        post(new Runnable() { // from class: com.mycompany.app.image.ImageViewControl.2
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r2v0, types: [android.view.View$OnClickListener, java.lang.Object] */
            /* JADX WARN: Type inference failed for: r2v15, types: [android.view.View$OnClickListener, java.lang.Object] */
            /* JADX WARN: Type inference failed for: r2v7, types: [android.view.View$OnClickListener, java.lang.Object] */
            @Override // java.lang.Runnable
            public final void run() {
                final ImageViewControl imageViewControl = ImageViewControl.this;
                AppCompatTextView appCompatTextView4 = imageViewControl.G;
                if (appCompatTextView4 == 0) {
                    return;
                }
                appCompatTextView4.setOnClickListener(new Object());
                imageViewControl.H.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.image.ImageViewControl.4
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view8) {
                        ImageViewControl imageViewControl2 = ImageViewControl.this;
                        ControlListener controlListener2 = imageViewControl2.C;
                        if (controlListener2 == null) {
                            return;
                        }
                        controlListener2.d();
                        imageViewControl2.d(true);
                    }
                });
                imageViewControl.I.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.image.ImageViewControl.5
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view8) {
                        ControlListener controlListener2 = ImageViewControl.this.C;
                        if (controlListener2 == null) {
                            return;
                        }
                        controlListener2.B();
                    }
                });
                imageViewControl.J.setNoti(PrefPdf.l);
                imageViewControl.J.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.image.ImageViewControl.6
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view8) {
                        ImageViewControl imageViewControl2 = ImageViewControl.this;
                        if (imageViewControl2.C == null) {
                            return;
                        }
                        if (PrefPdf.l) {
                            PrefPdf.l = false;
                            PrefSet.d(7, imageViewControl2.z, "mNotiCrop", false);
                            MyButtonImage myButtonImage16 = imageViewControl2.J;
                            if (myButtonImage16 != null) {
                                myButtonImage16.setNoti(false);
                            }
                        }
                        imageViewControl2.C.l();
                    }
                });
                imageViewControl.K.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.image.ImageViewControl.7
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view8) {
                        ControlListener controlListener2 = ImageViewControl.this.C;
                        if (controlListener2 == null) {
                            return;
                        }
                        controlListener2.u();
                    }
                });
                imageViewControl.L.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.image.ImageViewControl.8
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view8) {
                        ControlListener controlListener2 = ImageViewControl.this.C;
                        if (controlListener2 == null) {
                            return;
                        }
                        controlListener2.n();
                    }
                });
                imageViewControl.M.setOnClickListener(new Object());
                imageViewControl.N.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.image.ImageViewControl.10
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view8) {
                        ImageViewControl imageViewControl2 = ImageViewControl.this;
                        ControlListener controlListener2 = imageViewControl2.C;
                        if (controlListener2 == null) {
                            return;
                        }
                        controlListener2.controlRotate(view8);
                        imageViewControl2.x(true);
                    }
                });
                imageViewControl.O.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.image.ImageViewControl.11
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view8) {
                        ControlListener controlListener2 = ImageViewControl.this.C;
                        if (controlListener2 == null) {
                            return;
                        }
                        controlListener2.o();
                    }
                });
                imageViewControl.P.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.image.ImageViewControl.12
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view8) {
                        ControlListener controlListener2 = ImageViewControl.this.C;
                        if (controlListener2 == null) {
                            return;
                        }
                        controlListener2.w();
                    }
                });
                imageViewControl.Q.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.image.ImageViewControl.13
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view8) {
                        ControlListener controlListener2 = ImageViewControl.this.C;
                        if (controlListener2 == null) {
                            return;
                        }
                        controlListener2.p();
                    }
                });
                imageViewControl.R.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.image.ImageViewControl.14
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view8) {
                        ControlListener controlListener2 = ImageViewControl.this.C;
                        if (controlListener2 == null) {
                            return;
                        }
                        controlListener2.y();
                    }
                });
                imageViewControl.S.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.image.ImageViewControl.15
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view8) {
                        ImageViewControl imageViewControl2 = ImageViewControl.this;
                        ControlListener controlListener2 = imageViewControl2.C;
                        if (controlListener2 == null) {
                            return;
                        }
                        controlListener2.i();
                        imageViewControl2.d(true);
                    }
                });
                imageViewControl.T.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.image.ImageViewControl.16
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view8) {
                        ImageViewControl imageViewControl2 = ImageViewControl.this;
                        ControlListener controlListener2 = imageViewControl2.C;
                        if (controlListener2 == null) {
                            return;
                        }
                        controlListener2.z(view8);
                        imageViewControl2.x(true);
                    }
                });
                imageViewControl.V.setOnClickListener(new Object());
                imageViewControl.W.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.image.ImageViewControl.18
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view8) {
                        ImageViewControl imageViewControl2 = ImageViewControl.this;
                        ControlListener controlListener2 = imageViewControl2.C;
                        if (controlListener2 == null) {
                            return;
                        }
                        controlListener2.q();
                        imageViewControl2.x(true);
                    }
                });
                imageViewControl.a0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.image.ImageViewControl.19
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view8) {
                        ImageViewControl imageViewControl2 = ImageViewControl.this;
                        ControlListener controlListener2 = imageViewControl2.C;
                        if (controlListener2 == null) {
                            return;
                        }
                        controlListener2.A();
                        imageViewControl2.x(true);
                    }
                });
                imageViewControl.b0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.image.ImageViewControl.20
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view8) {
                        ImageViewControl imageViewControl2 = ImageViewControl.this;
                        ControlListener controlListener2 = imageViewControl2.C;
                        if (controlListener2 == null) {
                            return;
                        }
                        controlListener2.E();
                        imageViewControl2.x(true);
                    }
                });
                imageViewControl.c0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.image.ImageViewControl.21
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view8) {
                        ImageViewControl imageViewControl2 = ImageViewControl.this;
                        ControlListener controlListener2 = imageViewControl2.C;
                        if (controlListener2 == null) {
                            return;
                        }
                        controlListener2.s();
                        imageViewControl2.x(true);
                    }
                });
                imageViewControl.d0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.image.ImageViewControl.22
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view8) {
                        ControlListener controlListener2 = ImageViewControl.this.C;
                        if (controlListener2 == null) {
                            return;
                        }
                        controlListener2.x();
                    }
                });
                imageViewControl.e0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.image.ImageViewControl.23
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view8) {
                        ImageViewControl imageViewControl2 = ImageViewControl.this;
                        ControlListener controlListener2 = imageViewControl2.C;
                        if (controlListener2 == null) {
                            return;
                        }
                        controlListener2.r(view8);
                        imageViewControl2.x(true);
                    }
                });
                imageViewControl.f0 = -1;
                imageViewControl.g0.setOnSeekBarChangeListener(imageViewControl.t0);
                imageViewControl.g0.setOnTouchListener(new View.OnTouchListener() { // from class: com.mycompany.app.image.ImageViewControl.24
                    @Override // android.view.View.OnTouchListener
                    public final boolean onTouch(View view8, MotionEvent motionEvent) {
                        ImageViewControl imageViewControl2 = ImageViewControl.this;
                        ControlListener controlListener2 = imageViewControl2.C;
                        if (controlListener2 != null && controlListener2.v()) {
                            return true;
                        }
                        return imageViewControl2.l();
                    }
                });
                if (!PrefImage.m) {
                    imageViewControl.j0.setVisibility(8);
                    imageViewControl.l0.setVisibility(8);
                }
                com.google.android.gms.internal.mlkit_vision_text_common.a.w(0, imageViewControl.j0);
                imageViewControl.j0.j(new RecyclerView.OnScrollListener() { // from class: com.mycompany.app.image.ImageViewControl.25
                    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                    public final void b(RecyclerView recyclerView, int i27, int i28) {
                        ImageThumbAdapter imageThumbAdapter;
                        ImageViewControl imageViewControl2 = ImageViewControl.this;
                        if (imageViewControl2.l0 != null && (imageThumbAdapter = imageViewControl2.k0) != null && !imageThumbAdapter.l) {
                            if (imageViewControl2.f()) {
                                imageViewControl2.i(true);
                            }
                            Runnable runnable = imageViewControl2.s0;
                            MyScrollBar myScrollBar2 = imageViewControl2.l0;
                            if (myScrollBar2 != null && imageViewControl2.k0 != null && !imageViewControl2.r0) {
                                imageViewControl2.r0 = true;
                                myScrollBar2.removeCallbacks(runnable);
                                imageViewControl2.l0.post(runnable);
                            }
                        }
                    }
                });
                imageViewControl.l0.setListener(new MyScrollBar.ScrollBarListener() { // from class: com.mycompany.app.image.ImageViewControl.26
                    @Override // com.mycompany.app.view.MyScrollBar.ScrollBarListener
                    public final void c(int i27) {
                        ImageThumbAdapter imageThumbAdapter;
                        ImageViewControl imageViewControl2 = ImageViewControl.this;
                        if (imageViewControl2.j0 != null && (imageThumbAdapter = imageViewControl2.k0) != null && i27 >= 0 && i27 < imageThumbAdapter.d()) {
                            ((LinearLayoutManager) imageViewControl2.j0.getLayoutManager()).k1(i27, 0);
                        }
                    }

                    @Override // com.mycompany.app.view.MyScrollBar.ScrollBarListener
                    public final int d() {
                        MyRecyclerView myRecyclerView2 = ImageViewControl.this.j0;
                        if (myRecyclerView2 == null) {
                            return 0;
                        }
                        return myRecyclerView2.computeHorizontalScrollOffset();
                    }

                    @Override // com.mycompany.app.view.MyScrollBar.ScrollBarListener
                    public final void e() {
                    }

                    @Override // com.mycompany.app.view.MyScrollBar.ScrollBarListener
                    public final int f() {
                        MyRecyclerView myRecyclerView2 = ImageViewControl.this.j0;
                        if (myRecyclerView2 == null) {
                            return 0;
                        }
                        return myRecyclerView2.computeHorizontalScrollRange();
                    }

                    @Override // com.mycompany.app.view.MyScrollBar.ScrollBarListener
                    public final int g() {
                        MyRecyclerView myRecyclerView2 = ImageViewControl.this.j0;
                        if (myRecyclerView2 == null) {
                            return 0;
                        }
                        return myRecyclerView2.computeHorizontalScrollExtent();
                    }
                });
            }
        });
    }

    public void setIconCrop(boolean z) {
        int i;
        if (this.n0 == 2 && this.J != null) {
            if (z) {
                boolean z2 = !PrefPdf.k;
                PrefPdf.k = z2;
                PrefSet.d(7, this.z, "mCrop", z2);
                this.J.setNoClickable(true);
                this.J.postDelayed(new Runnable() { // from class: com.mycompany.app.image.ImageViewControl.28
                    @Override // java.lang.Runnable
                    public final void run() {
                        MyButtonImage myButtonImage = ImageViewControl.this.J;
                        if (myButtonImage != null) {
                            myButtonImage.setNoClickable(false);
                        }
                    }
                }, 500L);
            }
            if (PrefPdf.k) {
                i = R.drawable.outline_fullscreen_white_24;
            } else {
                i = R.drawable.outline_fullscreen_exit_white_24;
            }
            if (this.o0 == i) {
                return;
            }
            this.o0 = i;
            this.J.setImageResource(i);
        }
    }

    public void setIconType(int i) {
        int i2;
        int i3;
        ViewGroup.MarginLayoutParams marginLayoutParams;
        MyButtonImage myButtonImage = this.I;
        if (myButtonImage != null && this.n0 != i) {
            this.n0 = i;
            if (i == 12) {
                myButtonImage.setVisibility(0);
                this.S.setVisibility(0);
                this.J.setVisibility(8);
                this.K.setVisibility(8);
                this.L.setVisibility(8);
                i2 = MainApp.b1;
                i3 = MainApp.G1 + MainApp.g1;
            } else if (i == 2) {
                myButtonImage.setVisibility(8);
                this.S.setVisibility(8);
                this.J.setVisibility(0);
                this.K.setVisibility(0);
                this.L.setVisibility(0);
                int i4 = MainApp.b1;
                int i5 = MainApp.g1;
                i2 = i4 + i5 + i5;
                i3 = MainApp.G1;
                if (this.A != null) {
                    PdfPreviewToolbar.attachForPdf(this, this.A);
                }
                PdfPreviewToolbar.applyControlTimeout(this);
            } else {
                myButtonImage.setVisibility(8);
                this.S.setVisibility(8);
                this.J.setVisibility(8);
                this.K.setVisibility(0);
                this.L.setVisibility(0);
                i2 = MainApp.b1 + MainApp.g1;
                i3 = MainApp.G1;
            }
            this.G.setPaddingRelative(MainApp.b1, 0, i2, 0);
            MyButtonImage myButtonImage2 = this.T;
            if (myButtonImage2 == null || (marginLayoutParams = (ViewGroup.MarginLayoutParams) myButtonImage2.getLayoutParams()) == null || marginLayoutParams.getMarginEnd() == i3) {
                return;
            }
            marginLayoutParams.setMarginEnd(i3);
            post(new Runnable() { // from class: com.mycompany.app.image.ImageViewControl.27
                @Override // java.lang.Runnable
                public final void run() {
                    MyButtonImage myButtonImage3 = ImageViewControl.this.T;
                    if (myButtonImage3 != null) {
                        myButtonImage3.requestLayout();
                    }
                }
            });
        }
    }

    public void setIconsClickable(boolean z) {
        MyButtonImage myButtonImage = this.H;
        if (myButtonImage == null) {
            return;
        }
        myButtonImage.setClickable(z);
        this.I.setClickable(z);
        this.J.setClickable(z);
        this.K.setClickable(z);
        this.L.setClickable(z);
        this.N.setClickable(z);
        this.O.setClickable(z);
        this.P.setClickable(z);
        this.Q.setClickable(z);
        this.R.setClickable(z);
        this.S.setClickable(z);
        this.T.setClickable(z);
        this.W.setClickable(z);
        this.a0.setClickable(z);
        this.b0.setClickable(z);
        this.c0.setClickable(z);
        this.d0.setClickable(z);
        this.e0.setClickable(z);
    }

    public void setIconsPressed(boolean z) {
        AppCompatTextView appCompatTextView = this.G;
        if (appCompatTextView == null) {
            return;
        }
        appCompatTextView.setPressed(z);
        this.H.setPressed(z);
        this.I.setPressed(z);
        this.J.setPressed(z);
        this.K.setPressed(z);
        this.L.setPressed(z);
        this.M.setPressed(z);
        this.N.setPressed(z);
        this.O.setPressed(z);
        this.P.setPressed(z);
        this.Q.setPressed(z);
        this.R.setPressed(z);
        this.S.setPressed(z);
        this.T.setPressed(z);
        this.V.setPressed(z);
        this.W.setPressed(z);
        this.a0.setPressed(z);
        this.b0.setPressed(z);
        this.c0.setPressed(z);
        this.d0.setPressed(z);
        this.e0.setPressed(z);
        this.g0.setPressed(z);
    }

    public void setNaviHeight(int i) {
        if (i == 0 || m()) {
            return;
        }
        this.D = i;
    }

    public void setPathChanged(int i) {
        ImageThumbAdapter imageThumbAdapter;
        Compress compress;
        int i2;
        if (PrefImage.m && !e() && (imageThumbAdapter = this.k0) != null && imageThumbAdapter.f == 12 && !imageThumbAdapter.l && (compress = imageThumbAdapter.h) != null && imageThumbAdapter.e != null && i >= 0 && i < compress.R()) {
            if (PrefImage.s) {
                i2 = (imageThumbAdapter.h.R() - i) - 1;
            } else {
                i2 = i;
            }
            RecyclerView.ViewHolder I = imageThumbAdapter.e.I(i2);
            if (I != null && (I instanceof ImageThumbAdapter.ViewHolder)) {
                imageThumbAdapter.w(((ImageThumbAdapter.ViewHolder) I).u, i);
            }
        }
    }

    public void setTitle(String str) {
        AppCompatTextView appCompatTextView = this.G;
        if (appCompatTextView != null) {
            appCompatTextView.setText(str);
        }
    }

    @Override // com.mycompany.app.view.MyFadeRelative, android.view.View
    public void setVisibility(int i) {
        if (getVisibility() != i) {
            setIconsPressed(false);
        }
        super.setVisibility(i);
    }

    public final void t(int i, int i2, int i3) {
        ImageSeekBar imageSeekBar;
        boolean z;
        if (e() || (imageSeekBar = this.g0) == null) {
            return;
        }
        int i4 = i - 1;
        if (i4 < 0) {
            i4 = 0;
        }
        if (this.f0 != i4) {
            this.f0 = i4;
            imageSeekBar.setMax(i4);
            ImageSeekBar imageSeekBar2 = this.g0;
            if (this.f0 > 0) {
                z = true;
            } else {
                z = false;
            }
            imageSeekBar2.setEnabled(z);
        }
        boolean z2 = PrefImage.s;
        String str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        if (z2) {
            this.i0.setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + i);
        } else {
            this.h0.setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + i);
        }
        if (i == 0) {
            this.g0.setProgress(0);
            r(0, false);
            if (PrefImage.s) {
                this.h0.setText("0");
                return;
            } else {
                this.i0.setText("0");
                return;
            }
        }
        this.g0.setProgress(i2);
        r(i2, false);
        if (i3 == 3) {
            str = "L";
        } else if (i3 == 4) {
            str = "R";
        }
        if (PrefImage.s) {
            this.h0.setText((i2 + 1) + str);
            return;
        }
        this.i0.setText((i2 + 1) + str);
    }

    public final void u(boolean z, int i, int i2, Compress compress, int i3, int i4, int i5) {
        int i6;
        MyButtonImage myButtonImage = this.e0;
        if (myButtonImage == null) {
            return;
        }
        this.E = z;
        if (z) {
            i6 = R.drawable.outline_pin_2_white_24;
        } else {
            i6 = R.drawable.outline_pin_white_24;
        }
        myButtonImage.setImageResource(i6);
        this.g0.invalidate();
        boolean z2 = PrefImage.s;
        String str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        if (z2) {
            this.i0.setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + i3);
        } else {
            this.h0.setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + i3);
        }
        if (i3 == 0) {
            if (PrefImage.s) {
                this.h0.setText("0");
            } else {
                this.i0.setText("0");
            }
            p(i, i2, compress);
            return;
        }
        if (i5 == 3) {
            str = "L";
        } else if (i5 == 4) {
            str = "R";
        }
        if (PrefImage.s) {
            this.h0.setText((i4 + 1) + str);
        } else {
            this.i0.setText((i4 + 1) + str);
        }
        p(i, i2, compress);
    }

    public final void v() {
        if (this.A != null && this.B != null && this.F != null) {
            int naviHeight = getNaviHeight();
            if (naviHeight > 0) {
                this.F.setVisibility(0);
                ViewGroup.LayoutParams layoutParams = this.F.getLayoutParams();
                if (layoutParams != null && layoutParams.height != naviHeight) {
                    layoutParams.height = naviHeight;
                } else {
                    return;
                }
            } else {
                this.F.setVisibility(4);
                ViewGroup.LayoutParams layoutParams2 = this.F.getLayoutParams();
                if (layoutParams2 != null && layoutParams2.height != 0) {
                    layoutParams2.height = 0;
                } else {
                    return;
                }
            }
            post(new Runnable() { // from class: com.mycompany.app.image.ImageViewControl.32
                @Override // java.lang.Runnable
                public final void run() {
                    View view = ImageViewControl.this.F;
                    if (view != null) {
                        view.requestLayout();
                    }
                }
            });
        }
    }

    public final void w() {
        MyAreaView myAreaView = this.U;
        if (myAreaView == null) {
            return;
        }
        if (myAreaView.a()) {
            this.U.e(this.M.getLeft(), this.V.getTop());
            this.U.setVisibility(0);
        } else {
            this.U.setVisibility(4);
        }
    }

    public final void x(boolean z) {
        int i;
        if (this.N == null) {
            return;
        }
        if (!f()) {
            setIconsPressed(false);
            ImageThumbAdapter imageThumbAdapter = this.k0;
            if (imageThumbAdapter != null && !imageThumbAdapter.l) {
                imageThumbAdapter.l = true;
            }
            r(this.g0.getProgress(), true);
        }
        boolean m = m();
        setIconCrop(false);
        o();
        setIconPage(m);
        MyButtonImage myButtonImage = this.e0;
        if (myButtonImage != null) {
            if (this.E) {
                i = R.drawable.outline_pin_2_white_24;
            } else {
                i = R.drawable.outline_pin_white_24;
            }
            myButtonImage.setImageResource(i);
        }
        if (this.U.a()) {
            this.U.e(this.M.getLeft(), this.V.getTop());
            this.U.setVisibility(0);
        } else {
            this.U.setVisibility(4);
        }
        i(z);
    }

    public final void y(boolean z) {
        View view = this.m0;
        if (view == null) {
            return;
        }
        if (z) {
            view.setBackgroundResource(R.drawable.trans_logo_short_back_white_2);
            this.m0.setVisibility(0);
        } else {
            view.setVisibility(8);
        }
    }

    public final void z(boolean z) {
        MyAreaView myAreaView = this.U;
        if (myAreaView != null) {
            myAreaView.setSkipDraw(z);
        }
    }
}
