package com.mycompany.app.web;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.gms.internal.mlkit_vision_text_common.a;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonText;

/* loaded from: classes3.dex */
public class WebCrashView extends LinearLayout {

    /* renamed from: c, reason: collision with root package name */
    public CrashViewListener f19080c;
    public AppCompatTextView f;
    public AppCompatTextView g;
    public MyButtonText h;
    public AppCompatTextView i;
    public MyButtonText j;
    public MyButtonText k;
    public MyButtonText l;
    public String m;

    /* renamed from: com.mycompany.app.web.WebCrashView$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* loaded from: classes3.dex */
    public interface CrashViewListener {
        void a(int i);

        void b(String str);
    }

    public final void a() {
        if (this.f == null) {
            return;
        }
        if (MainApp.K1) {
            setBackgroundColor(-16777216);
            this.f.setTextColor(-328966);
            this.g.setTextColor(-328966);
            this.i.setTextColor(-328966);
            this.j.setTextColor(-328966);
            this.j.u(-16777216, -14211289);
            this.k.setTextColor(-328966);
            this.k.u(-16777216, -14211289);
            this.l.setTextColor(-328966);
            this.l.u(-16777216, -14211289);
            return;
        }
        setBackgroundColor(-1);
        this.f.setTextColor(-16777216);
        this.g.setTextColor(-16777216);
        this.i.setTextColor(-16777216);
        this.j.setTextColor(-16777216);
        this.j.u(-460552, 553648128);
        this.k.setTextColor(-16777216);
        this.k.u(-460552, 553648128);
        this.l.setTextColor(-16777216);
        this.l.u(-460552, 553648128);
    }

    public final void b() {
        int i = MainApp.F1;
        if (!PrefWeb.v) {
            i += MainUtil.H3();
        }
        if (!PrefWeb.w) {
            i += MainUtil.j0();
        }
        if (getPaddingBottom() != i) {
            setPadding(0, 0, 0, i);
        }
    }

    public String getCrashUrl() {
        return this.m;
    }

    public void setCrashUrl(String str) {
        this.m = str;
        AppCompatTextView appCompatTextView = this.g;
        if (appCompatTextView != null) {
            appCompatTextView.setText(str);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v8, types: [android.view.View$OnClickListener, java.lang.Object] */
    public void setListener(CrashViewListener crashViewListener) {
        this.f19080c = crashViewListener;
        Context context = getContext();
        if (context == null) {
            return;
        }
        int G = (int) MainUtil.G(context, 20.0f);
        setOrientation(1);
        AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
        appCompatTextView.setLineSpacing(MainApp.F1, 1.0f);
        appCompatTextView.setTextSize(1, 16.0f);
        LinearLayout.LayoutParams e = a.e(appCompatTextView, R.string.crash_guide_1, -1, -2);
        e.topMargin = G;
        e.setMarginStart(G);
        e.setMarginEnd(G);
        addView(appCompatTextView, e);
        AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
        appCompatTextView2.setLineSpacing(MainApp.F1, 1.0f);
        appCompatTextView2.setMaxLines(2);
        appCompatTextView2.setEllipsize(TextUtils.TruncateAt.END);
        appCompatTextView2.setTextSize(1, 14.0f);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.topMargin = G;
        layoutParams.setMarginStart(G);
        layoutParams.setMarginEnd(G);
        addView(appCompatTextView2, layoutParams);
        MyButtonText myButtonText = new MyButtonText(context);
        myButtonText.setPadding(MainApp.F1, MainApp.G1, MainApp.F1, MainApp.G1);
        myButtonText.setGravity(17);
        myButtonText.setMinHeight(MainApp.f1);
        myButtonText.setTextSize(1, 14.0f);
        myButtonText.setText(R.string.refresh);
        myButtonText.setBgNorFixed(true);
        myButtonText.setRoundRect(true);
        myButtonText.setRoundRadius(MainApp.F1);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams2.topMargin = (int) MainUtil.G(context, 28.0f);
        layoutParams2.setMarginStart(G);
        layoutParams2.setMarginEnd(G);
        addView(myButtonText, layoutParams2);
        AppCompatTextView appCompatTextView3 = new AppCompatTextView(context, null);
        appCompatTextView3.setLineSpacing(MainApp.F1, 1.0f);
        appCompatTextView3.setTextSize(1, 16.0f);
        LinearLayout.LayoutParams e2 = a.e(appCompatTextView3, R.string.crash_guide_2, -1, -2);
        e2.topMargin = (int) MainUtil.G(context, 72.0f);
        e2.setMarginStart(G);
        e2.setMarginEnd(G);
        addView(appCompatTextView3, e2);
        MyButtonText myButtonText2 = new MyButtonText(context);
        myButtonText2.setPadding(MainApp.F1, MainApp.G1, MainApp.F1, MainApp.G1);
        myButtonText2.setGravity(17);
        myButtonText2.setMinHeight(MainApp.f1);
        myButtonText2.setTextSize(1, 14.0f);
        myButtonText2.setText(R.string.mem_save);
        myButtonText2.setBgNorFixed(true);
        myButtonText2.setRoundRect(true);
        myButtonText2.setRoundRadius(MainApp.F1);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams3.topMargin = G;
        layoutParams3.setMarginStart(G);
        layoutParams3.setMarginEnd(G);
        addView(myButtonText2, layoutParams3);
        MyButtonText myButtonText3 = new MyButtonText(context);
        myButtonText3.setPadding(MainApp.F1, MainApp.G1, MainApp.F1, MainApp.G1);
        myButtonText3.setGravity(17);
        myButtonText3.setMinHeight(MainApp.f1);
        myButtonText3.setTextSize(1, 14.0f);
        myButtonText3.setText(R.string.clean_mode);
        myButtonText3.setBgNorFixed(true);
        myButtonText3.setRoundRect(true);
        myButtonText3.setRoundRadius(MainApp.F1);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams4.topMargin = G;
        layoutParams4.setMarginStart(G);
        layoutParams4.setMarginEnd(G);
        addView(myButtonText3, layoutParams4);
        MyButtonText myButtonText4 = new MyButtonText(context);
        myButtonText4.setPadding(MainApp.F1, MainApp.G1, MainApp.F1, MainApp.G1);
        myButtonText4.setGravity(17);
        myButtonText4.setMinHeight(MainApp.f1);
        myButtonText4.setTextSize(1, 14.0f);
        myButtonText4.setText(R.string.clear_data);
        myButtonText4.setBgNorFixed(true);
        myButtonText4.setRoundRect(true);
        myButtonText4.setRoundRadius(MainApp.F1);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams5.topMargin = G;
        layoutParams5.setMarginStart(G);
        layoutParams5.setMarginEnd(G);
        addView(myButtonText4, layoutParams5);
        this.f = appCompatTextView;
        this.g = appCompatTextView2;
        this.h = myButtonText;
        this.i = appCompatTextView3;
        this.j = myButtonText2;
        this.k = myButtonText3;
        this.l = myButtonText4;
        myButtonText.setTextColor(-1);
        this.h.u(-13022805, -10720320);
        a();
        setOnClickListener(new Object());
        this.h.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebCrashView.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WebCrashView webCrashView = WebCrashView.this;
                CrashViewListener crashViewListener2 = webCrashView.f19080c;
                if (crashViewListener2 != null) {
                    crashViewListener2.b(webCrashView.m);
                }
            }
        });
        this.j.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebCrashView.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CrashViewListener crashViewListener2 = WebCrashView.this.f19080c;
                if (crashViewListener2 != null) {
                    crashViewListener2.a(10);
                }
            }
        });
        this.k.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebCrashView.4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CrashViewListener crashViewListener2 = WebCrashView.this.f19080c;
                if (crashViewListener2 != null) {
                    crashViewListener2.a(7);
                }
            }
        });
        this.l.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebCrashView.5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CrashViewListener crashViewListener2 = WebCrashView.this.f19080c;
                if (crashViewListener2 != null) {
                    crashViewListener2.a(27);
                }
            }
        });
    }
}
