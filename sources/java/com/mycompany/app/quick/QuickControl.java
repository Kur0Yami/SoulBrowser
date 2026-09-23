package com.mycompany.app.quick;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.work.impl.workers.a;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.quick.QuickView;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonCheck;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyTextFast;

/* loaded from: classes3.dex */
public class QuickControl extends RelativeLayout {

    /* renamed from: c, reason: collision with root package name */
    public boolean f17404c;
    public RelativeLayout f;
    public MyButtonImage g;
    public MyTextFast h;
    public MyTextFast i;
    public MyButtonCheck j;
    public View k;
    public View l;
    public View m;
    public View n;
    public View o;
    public LinearLayout p;
    public MyLineText q;
    public MyTextFast r;
    public QuickView s;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.quick.QuickControl$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v3, types: [android.view.View$OnClickListener, java.lang.Object] */
    public final void a(boolean z) {
        Context context = getContext();
        if (context == null) {
            return;
        }
        int i = R.id.quick_ctrl_head;
        int i2 = R.id.quick_ctrl_count;
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setId(i);
        addView(relativeLayout, -1, MainApp.Y0);
        MyButtonImage myButtonImage = new MyButtonImage(context);
        myButtonImage.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(MainApp.g1, -1);
        layoutParams.setMarginStart(MainApp.F1);
        relativeLayout.addView(myButtonImage, layoutParams);
        MyTextFast myTextFast = new MyTextFast(context);
        myTextFast.setId(i2);
        int i3 = MainApp.F1;
        myTextFast.setPadding(i3, 0, i3, 0);
        myTextFast.setGravity(16);
        myTextFast.setTextDirection(3);
        myTextFast.setTextSize(1, 16.0f);
        RelativeLayout.LayoutParams g = a.g(-2, -1, 21);
        g.setMarginEnd((int) MainUtil.G(context, 52.0f));
        relativeLayout.addView(myTextFast, g);
        MyTextFast myTextFast2 = new MyTextFast(context);
        myTextFast2.setGravity(16);
        myTextFast2.setSingleLine(true);
        myTextFast2.setTextSize(1, 18.0f);
        myTextFast2.setText(R.string.quick_access);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.addRule(16, i2);
        layoutParams2.setMarginStart(MainApp.i1);
        relativeLayout.addView(myTextFast2, layoutParams2);
        MyButtonCheck myButtonCheck = new MyButtonCheck(context);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(MainApp.g1, -1);
        layoutParams3.addRule(21);
        relativeLayout.addView(myButtonCheck, layoutParams3);
        View view = new View(context);
        view.setBackgroundResource(R.drawable.shadow_list_up);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, MainApp.e1);
        layoutParams4.addRule(3, i);
        addView(view, layoutParams4);
        View view2 = new View(context);
        int i4 = MainApp.m1;
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(i4, i4);
        layoutParams5.addRule(3, i);
        addView(view2, layoutParams5);
        View view3 = new View(context);
        int i5 = MainApp.m1;
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(i5, i5);
        layoutParams6.addRule(3, i);
        layoutParams6.addRule(21);
        addView(view3, layoutParams6);
        View view4 = new View(context);
        int i6 = MainApp.m1;
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(i6, i6);
        layoutParams7.addRule(12);
        layoutParams7.bottomMargin = MainApp.Y0;
        addView(view4, layoutParams7);
        View view5 = new View(context);
        int i7 = MainApp.m1;
        RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(i7, i7);
        layoutParams8.addRule(12);
        layoutParams8.addRule(21);
        layoutParams8.bottomMargin = MainApp.Y0;
        addView(view5, layoutParams8);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setBaselineAligned(false);
        linearLayout.setOrientation(0);
        RelativeLayout.LayoutParams layoutParams9 = new RelativeLayout.LayoutParams(-1, MainApp.Y0);
        layoutParams9.addRule(12);
        addView(linearLayout, layoutParams9);
        MyLineText r = com.google.android.gms.internal.mlkit_vision_text_common.a.r(context, 17, 1, 16.0f);
        LinearLayout.LayoutParams f = com.google.android.gms.internal.mlkit_vision_text_common.a.f(r, R.string.delete, context, 0, -1);
        f.weight = 1.0f;
        linearLayout.addView(r, f);
        MyTextFast myTextFast3 = new MyTextFast(context);
        myTextFast3.setGravity(17);
        myTextFast3.setTextSize(1, 16.0f);
        myTextFast3.setText(R.string.edit);
        LinearLayout.LayoutParams layoutParams10 = new LinearLayout.LayoutParams(0, -1);
        layoutParams10.weight = 1.0f;
        linearLayout.addView(myTextFast3, layoutParams10);
        this.f = relativeLayout;
        this.g = myButtonImage;
        this.h = myTextFast2;
        this.i = myTextFast;
        this.j = myButtonCheck;
        this.k = view;
        this.l = view2;
        this.m = view3;
        this.n = view4;
        this.o = view5;
        this.p = linearLayout;
        this.q = r;
        this.r = myTextFast3;
        this.f17404c = z;
        setColor(z);
        this.f.setOnClickListener(new Object());
        this.g.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.quick.QuickControl.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view6) {
                QuickView quickView = QuickControl.this.s;
                if (quickView != null) {
                    quickView.F();
                }
            }
        });
        this.j.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.quick.QuickControl.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view6) {
                QuickAdapter quickAdapter;
                QuickView quickView = QuickControl.this.s;
                if (quickView != null && (quickAdapter = quickView.l) != null && quickView.q != null) {
                    quickAdapter.Q(!quickAdapter.K(), true);
                    quickView.q.c(quickView.l.A(), quickView.l.D());
                }
            }
        });
        this.q.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.quick.QuickControl.4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view6) {
                QuickAdapter quickAdapter;
                int A;
                QuickView quickView = QuickControl.this.s;
                if (quickView != null && (quickAdapter = quickView.l) != null && quickView.i != null && (A = quickAdapter.A()) != 0) {
                    if (A == 1) {
                        quickView.i.o(quickView.l.B(), A);
                    } else {
                        quickView.i.o(null, A);
                    }
                }
            }
        });
        this.r.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.quick.QuickControl.5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view6) {
                QuickAdapter quickAdapter;
                QuickView.QuickViewListener quickViewListener;
                QuickView quickView = QuickControl.this.s;
                if (quickView != null && (quickAdapter = quickView.l) != null && (quickViewListener = quickView.i) != null) {
                    quickViewListener.m(quickAdapter.B());
                }
            }
        });
    }

    public final void b() {
        MyButtonImage myButtonImage = this.g;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.g = null;
        }
        MyButtonCheck myButtonCheck = this.j;
        if (myButtonCheck != null) {
            myButtonCheck.l();
            this.j = null;
        }
        MyLineText myLineText = this.q;
        if (myLineText != null) {
            myLineText.u();
            this.q = null;
        }
        this.f = null;
        this.h = null;
        this.i = null;
        this.k = null;
        this.l = null;
        this.m = null;
        this.n = null;
        this.o = null;
        this.p = null;
        this.r = null;
        this.s = null;
    }

    public final void c(int i, int i2) {
        int i3;
        int i4;
        boolean z;
        if (this.i == null) {
            return;
        }
        if (MainUtil.k5(this.f17404c)) {
            this.j.p(R.drawable.baseline_check_circle_dark_24, R.drawable.outline_radio_button_unchecked_dark_24);
            i3 = -328966;
            i4 = -8355712;
        } else {
            this.j.p(R.drawable.baseline_check_circle_black_24, R.drawable.outline_radio_button_unchecked_black_24);
            i3 = -14784824;
            i4 = -2434342;
        }
        this.i.setText(MainUtil.h3(i, i2));
        MyButtonCheck myButtonCheck = this.j;
        if (i >= i2) {
            z = true;
        } else {
            z = false;
        }
        myButtonCheck.q(z, true);
        if (i > 0) {
            this.q.setEnabled(true);
            this.q.setTextColor(i3);
        } else {
            this.q.setEnabled(false);
            this.q.setTextColor(i4);
        }
        if (i == 1) {
            this.r.setEnabled(true);
            this.r.setTextColor(i3);
        } else {
            this.r.setEnabled(false);
            this.r.setTextColor(i4);
        }
    }

    public void setColor(boolean z) {
        int i;
        ViewGroup.LayoutParams layoutParams;
        int i2;
        if (this.g == null) {
            return;
        }
        this.f17404c = z;
        int i3 = MainApp.Y0;
        if (z && !MainUtil.V4() && (i2 = PrefWeb.x) != 1 && i2 != 2) {
            i3 = MainApp.f1;
        }
        if (i3 != this.f.getHeight() && (layoutParams = this.f.getLayoutParams()) != null) {
            layoutParams.height = i3;
            this.f.requestLayout();
        }
        View view = this.k;
        if (this.f17404c) {
            i = 0;
        } else {
            i = 8;
        }
        view.setVisibility(i);
        if (MainUtil.k5(this.f17404c)) {
            this.f.setBackgroundColor(-16777216);
            this.p.setBackgroundColor(-16777216);
            this.g.setImageResource(R.drawable.outline_chevron_left_dark_24);
            this.h.setTextColor(-328966);
            this.i.setTextColor(-328966);
            this.l.setBackgroundResource(R.drawable.round_top_left_b);
            this.m.setBackgroundResource(R.drawable.round_top_right_b);
            this.n.setBackgroundResource(R.drawable.round_bot_left_b);
            this.o.setBackgroundResource(R.drawable.round_bot_right_b);
            this.q.setBackgroundResource(R.drawable.selector_normal_dark);
            this.q.setTextColor(-328966);
            this.r.setBackgroundResource(R.drawable.selector_normal_dark);
            this.r.setTextColor(-328966);
            this.g.setBgPreColor(-12632257);
            this.j.setBgPreColor(-12632257);
            return;
        }
        this.f.setBackgroundColor(-460552);
        this.p.setBackgroundColor(-460552);
        this.g.setImageResource(R.drawable.outline_chevron_left_black_24);
        this.h.setTextColor(-16777216);
        this.i.setTextColor(-16777216);
        this.l.setBackgroundResource(R.drawable.round_top_left_g);
        this.m.setBackgroundResource(R.drawable.round_top_right_g);
        this.n.setBackgroundResource(R.drawable.round_bot_left_g);
        this.o.setBackgroundResource(R.drawable.round_bot_right_g);
        this.q.setBackgroundResource(R.drawable.selector_normal);
        this.q.setTextColor(-14784824);
        this.r.setBackgroundResource(R.drawable.selector_normal);
        this.r.setTextColor(-14784824);
        this.g.setBgPreColor(553648128);
        this.j.setBgPreColor(553648128);
    }

    public void setQuickMode(boolean z) {
        if (this.f17404c == z) {
            return;
        }
        this.f17404c = z;
        setColor(z);
    }

    public void setQuickView(QuickView quickView) {
        this.s = quickView;
    }
}
