package com.mycompany.app.view;

import android.content.Context;
import android.graphics.Outline;
import android.support.v4.media.a;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.pref.PrefZtri;
import com.mycompany.app.soulbrowser.R;
import java.util.concurrent.ExecutorService;

/* loaded from: classes3.dex */
public class MyClipView extends FrameLayout {

    /* renamed from: c, reason: collision with root package name */
    public Context f18611c;
    public boolean f;
    public boolean g;
    public boolean h;
    public boolean i;
    public boolean j;
    public boolean k;
    public MyClipListener l;
    public AppCompatTextView m;
    public ImageView n;
    public MyButtonImage o;
    public MyButtonImage p;
    public boolean q;
    public boolean r;
    public String s;
    public String t;
    public boolean u;
    public boolean v;
    public ExecutorService w;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.view.MyClipView$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 implements View.OnClickListener {
        public AnonymousClass1() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            MyClipView myClipView = MyClipView.this;
            if (myClipView.l == null || myClipView.v) {
                return;
            }
            myClipView.v = true;
            myClipView.e(new Runnable() { // from class: com.mycompany.app.view.MyClipView.1.1
                @Override // java.lang.Runnable
                public final void run() {
                    MyClipView myClipView2 = MyClipView.this;
                    if (TextUtils.isEmpty(myClipView2.s)) {
                        myClipView2.getClipData();
                    }
                    myClipView2.post(new Runnable() { // from class: com.mycompany.app.view.MyClipView.1.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            if (TextUtils.isEmpty(MyClipView.this.s)) {
                                MainUtil.e8(MyClipView.this.f18611c, R.string.empty);
                            } else {
                                MyClipView myClipView3 = MyClipView.this;
                                MyClipListener myClipListener = myClipView3.l;
                                if (myClipListener != null) {
                                    myClipListener.i(myClipView3.s);
                                }
                            }
                            MyClipView.this.v = false;
                        }
                    });
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.view.MyClipView$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass3 implements View.OnClickListener {
        public AnonymousClass3() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            MyClipView myClipView = MyClipView.this;
            if (myClipView.l == null || myClipView.v) {
                return;
            }
            myClipView.v = true;
            myClipView.e(new Runnable() { // from class: com.mycompany.app.view.MyClipView.3.1
                @Override // java.lang.Runnable
                public final void run() {
                    MyClipView myClipView2 = MyClipView.this;
                    if (TextUtils.isEmpty(myClipView2.s)) {
                        myClipView2.getClipData();
                    }
                    myClipView2.post(new Runnable() { // from class: com.mycompany.app.view.MyClipView.3.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                            if (TextUtils.isEmpty(MyClipView.this.s)) {
                                MainUtil.e8(MyClipView.this.f18611c, R.string.empty);
                            } else {
                                String str = MyClipView.this.s;
                                if (!MainUtil.a6(str)) {
                                    str = a.k(str, " ");
                                }
                                MyClipListener myClipListener = MyClipView.this.l;
                                if (myClipListener != null) {
                                    myClipListener.j(str);
                                }
                            }
                            MyClipView.this.v = false;
                        }
                    });
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.view.MyClipView$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass4 extends ViewOutlineProvider {
        @Override // android.view.ViewOutlineProvider
        public final void getOutline(View view, Outline outline) {
            if (view != null && outline != null) {
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), MainApp.B1);
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface MyClipListener {
        void i(String str);

        void j(String str);
    }

    public MyClipView(Context context) {
        super(context);
        this.f18611c = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getClipData() {
        this.s = MainUtil.r0(this.f18611c);
        getClipSub();
    }

    private void getClipSub() {
        String str = this.s;
        this.t = str;
        if (str == null) {
            return;
        }
        if (str.length() > 100) {
            this.t = this.t.substring(0, 100);
        }
        String str2 = this.t;
        if (!TextUtils.isEmpty(str2)) {
            str2 = str2.replace(" ", " ").replace("-", "‑").replace("/", "⁄").replaceAll("[\\f\\n\\r\\t\\x0B]", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        }
        this.t = str2;
    }

    public final void b() {
        if (this.q) {
            this.q = false;
            g();
            AppCompatTextView appCompatTextView = this.m;
            if (appCompatTextView != null) {
                appCompatTextView.setText(R.string.copied_text);
            }
        }
    }

    public final void c() {
        Context context;
        if (this.m != null || (context = this.f18611c) == null) {
            return;
        }
        AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
        appCompatTextView.setPaddingRelative((int) MainUtil.G(context, 52.0f), 0, (int) MainUtil.G(context, 96.0f), 0);
        appCompatTextView.setGravity(8388627);
        appCompatTextView.setMaxLines(2);
        appCompatTextView.setTextSize(1, 16.0f);
        addView(appCompatTextView, -1, -1);
        ImageView imageView = new ImageView(context);
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
        imageView.setScaleType(scaleType);
        addView(imageView, MainApp.g1, -1);
        MyButtonImage myButtonImage = new MyButtonImage(context);
        myButtonImage.setScaleType(scaleType);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(MainApp.g1, -1);
        layoutParams.gravity = 8388613;
        layoutParams.setMarginEnd(MainApp.g1);
        addView(myButtonImage, layoutParams);
        MyButtonImage p = com.google.android.gms.internal.mlkit_vision_text_common.a.p(context, scaleType);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(MainApp.g1, -1);
        layoutParams2.gravity = 8388613;
        addView(p, layoutParams2);
        this.m = appCompatTextView;
        this.n = imageView;
        this.o = myButtonImage;
        this.p = p;
        if (this.g) {
            f();
        }
        setColor(this.f);
        this.m.setOnClickListener(new AnonymousClass1());
        this.o.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.view.MyClipView.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                final MyClipView myClipView = MyClipView.this;
                if (!myClipView.r && myClipView.m != null) {
                    myClipView.q = !myClipView.q;
                    myClipView.g();
                    if (myClipView.q) {
                        if (TextUtils.isEmpty(myClipView.s)) {
                            if (!myClipView.r && myClipView.q && myClipView.m != null) {
                                myClipView.r = true;
                                myClipView.e(new Runnable() { // from class: com.mycompany.app.view.MyClipView.5
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        MyClipView myClipView2 = MyClipView.this;
                                        myClipView2.getClipData();
                                        if (myClipView2.q && myClipView2.m != null) {
                                            myClipView2.post(new Runnable() { // from class: com.mycompany.app.view.MyClipView.5.1
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    AppCompatTextView appCompatTextView2;
                                                    MyClipView myClipView3 = MyClipView.this;
                                                    if (myClipView3.q && (appCompatTextView2 = myClipView3.m) != null) {
                                                        appCompatTextView2.setText(myClipView3.t);
                                                    }
                                                    myClipView3.r = false;
                                                }
                                            });
                                        } else {
                                            myClipView2.r = false;
                                        }
                                    }
                                });
                                return;
                            }
                            return;
                        }
                        myClipView.m.setText(myClipView.t);
                        return;
                    }
                    myClipView.m.setText(R.string.copied_text);
                }
            }
        });
        this.p.setOnClickListener(new AnonymousClass3());
    }

    public final void d(String str) {
        if (!this.r && this.m != null) {
            this.r = true;
            if (!TextUtils.isEmpty(str)) {
                this.s = str;
                getClipSub();
            } else {
                getClipData();
            }
            if (this.q && this.m != null) {
                post(new Runnable() { // from class: com.mycompany.app.view.MyClipView.6
                    @Override // java.lang.Runnable
                    public final void run() {
                        AppCompatTextView appCompatTextView;
                        MyClipView myClipView = MyClipView.this;
                        if (myClipView.q && (appCompatTextView = myClipView.m) != null) {
                            appCompatTextView.setText(myClipView.t);
                        }
                        myClipView.r = false;
                    }
                });
            } else {
                this.r = false;
            }
        }
    }

    public final void e(Runnable runnable) {
        ExecutorService executorService = this.w;
        if (executorService == null || executorService.isShutdown() || executorService.isTerminated()) {
            executorService = MainApp.i(this.f18611c);
            if (executorService == null) {
                return;
            } else {
                this.w = executorService;
            }
        }
        try {
            executorService.execute(runnable);
        } catch (Exception unused) {
        }
    }

    public final void f() {
        boolean z;
        if (PrefZtri.j0 == 1) {
            z = true;
        } else {
            z = false;
        }
        if (this.u == z) {
            return;
        }
        this.u = z;
        if (!z) {
            setClipToOutline(false);
        } else {
            setOutlineProvider(new ViewOutlineProvider());
            setClipToOutline(true);
        }
    }

    public final void g() {
        if (this.o == null) {
            return;
        }
        if (MainUtil.k5(this.f)) {
            if (this.q) {
                this.o.setImageResource(R.drawable.outline_visibility_off_dark_20);
            } else {
                this.o.setImageResource(R.drawable.outline_visibility_dark_20);
            }
            this.o.setBgPreColor(-12632257);
            return;
        }
        if (this.q) {
            this.o.setImageResource(R.drawable.outline_visibility_off_black_20);
        } else {
            this.o.setImageResource(R.drawable.outline_visibility_black_20);
        }
        this.o.setBgPreColor(-2039584);
    }

    public final void h(boolean z, boolean z2, boolean z3) {
        if (this.m == null) {
            return;
        }
        this.q = false;
        if (!z) {
            g();
            AppCompatTextView appCompatTextView = this.m;
            if (appCompatTextView != null) {
                appCompatTextView.setText((CharSequence) null);
            }
            setVisibility(8);
            return;
        }
        if (this.f != z2 || this.h != MainUtil.U4() || this.i != PrefWeb.U || this.j != MainApp.K1 || this.k != z3) {
            this.f = z2;
            this.h = MainUtil.U4();
            this.i = PrefWeb.U;
            this.j = MainApp.K1;
            this.k = z3;
            setColor(this.f);
        }
        if (this.g) {
            f();
        }
        AppCompatTextView appCompatTextView2 = this.m;
        if (appCompatTextView2 != null) {
            appCompatTextView2.setText(R.string.copied_text);
        }
        setVisibility(0);
    }

    public void setColor(boolean z) {
        if (this.m == null) {
            return;
        }
        this.f = z;
        this.h = MainUtil.U4();
        this.i = PrefWeb.U;
        this.j = MainApp.K1;
        if (MainUtil.k5(this.f)) {
            this.m.setBackgroundResource(R.drawable.selector_list_back_dark);
            this.m.setTextColor(-4079167);
            this.n.setImageResource(R.drawable.outline_content_copy_dark_20);
            if (this.k) {
                this.p.setImageResource(R.drawable.outline_south_west_dark_20);
            } else {
                this.p.setImageResource(R.drawable.outline_north_west_dark_20);
            }
            this.p.setBgPreColor(-12632257);
        } else {
            this.m.setBackgroundResource(R.drawable.selector_list_back);
            this.m.setTextColor(-16777216);
            this.n.setImageResource(R.drawable.outline_content_copy_black_20);
            if (this.k) {
                this.p.setImageResource(R.drawable.outline_south_west_black_20);
            } else {
                this.p.setImageResource(R.drawable.outline_north_west_black_20);
            }
            this.p.setBgPreColor(-2039584);
        }
        g();
    }

    public void setSearchList(boolean z) {
        if (z) {
            if (getVisibility() == 0) {
                setVisibility(4);
                b();
                return;
            }
            return;
        }
        if (getVisibility() == 4) {
            setVisibility(0);
        }
    }
}
