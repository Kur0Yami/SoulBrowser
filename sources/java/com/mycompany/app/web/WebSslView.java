package com.mycompany.app.web;

import android.content.Context;
import android.net.http.SslCertificate;
import android.net.http.SslError;
import android.text.TextUtils;
import android.view.View;
import android.webkit.SslErrorHandler;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.gms.internal.mlkit_vision_text_common.a;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyButtonText;

/* loaded from: classes3.dex */
public class WebSslView extends RelativeLayout {
    public static final /* synthetic */ int o = 0;

    /* renamed from: c, reason: collision with root package name */
    public SslViewListener f19504c;
    public AppCompatTextView f;
    public AppCompatTextView g;
    public AppCompatTextView h;
    public AppCompatTextView i;
    public MyButtonImage j;
    public MyButtonText k;
    public MyButtonText l;
    public SslErrorHandler m;
    public SslError n;

    /* renamed from: com.mycompany.app.web.WebSslView$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* loaded from: classes3.dex */
    public interface SslViewListener {
        void a();

        void b();

        void c();
    }

    public final void a() {
        if (this.k == null) {
            return;
        }
        if (MainApp.K1) {
            setBackgroundColor(-16777216);
            this.f.setTextColor(-328966);
            this.g.setTextColor(-328966);
            this.h.setTextColor(-4079167);
            this.i.setTextColor(-328966);
            this.k.setTextColor(-328966);
            this.k.u(-16777216, -14211289);
            this.j.setImageResource(R.drawable.outline_settings_dark_20);
            this.j.setBgPreColor(-12632257);
            return;
        }
        setBackgroundColor(-1);
        this.f.setTextColor(-16777216);
        this.g.setTextColor(-16777216);
        this.h.setTextColor(-10395295);
        this.i.setTextColor(-16777216);
        this.k.setTextColor(-16777216);
        this.k.u(-460552, 553648128);
        this.j.setImageResource(R.drawable.outline_settings_black_20);
        this.j.setBgPreColor(-2039584);
    }

    public final void b() {
        String str;
        if (this.g == null) {
            return;
        }
        SslError sslError = this.n;
        if (sslError == null) {
            this.i.setText("SSL Certificate error.");
            return;
        }
        SslCertificate certificate = sslError.getCertificate();
        String url = this.n.getUrl();
        if (certificate != null) {
            str = certificate.toString();
        } else {
            str = null;
        }
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
        }
        if (!TextUtils.isEmpty(url)) {
            if (!TextUtils.isEmpty(str) && !str.endsWith("\n")) {
                sb.append("\n");
            }
            sb.append("URL: ");
            sb.append(url);
        }
        this.h.setText(sb.toString());
        int primaryError = this.n.getPrimaryError();
        if (primaryError != 0) {
            if (primaryError != 1) {
                if (primaryError != 2) {
                    if (primaryError != 3) {
                        if (primaryError != 4) {
                            if (primaryError != 5) {
                                this.i.setText("SSL Certificate error.");
                                return;
                            }
                            this.g.setText("ERR: SSL_INVALID");
                            this.i.setText("A generic error occurred.");
                            this.g.setVisibility(0);
                            return;
                        }
                        this.g.setText("ERR: SSL_DATE_INVALID");
                        this.i.setText("The date of the certificate is invalid.");
                        this.g.setVisibility(0);
                        return;
                    }
                    this.g.setText("ERR: SSL_UNTRUSTED");
                    this.i.setText("The certificate authority is not trusted.");
                    this.g.setVisibility(0);
                    return;
                }
                this.g.setText("ERR: SSL_IDMISMATCH");
                this.i.setText("Hostname mismatch.");
                this.g.setVisibility(0);
                return;
            }
            this.g.setText("ERR: SSL_EXPIRED");
            this.i.setText("The certificate has expired.");
            this.g.setVisibility(0);
            return;
        }
        this.g.setText("ERR: SSL_NOTYETVALID");
        this.i.setText("The certificate is not yet valid.");
        this.g.setVisibility(0);
    }

    public final void c() {
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v8, types: [android.view.View$OnClickListener, java.lang.Object] */
    public void setListener(SslViewListener sslViewListener) {
        this.f19504c = sslViewListener;
        Context context = getContext();
        if (context == null) {
            return;
        }
        int i = R.id.ssl_icon_frame;
        int i2 = R.id.ssl_icon_setting;
        int i3 = R.id.ssl_cancel_view;
        int i4 = R.id.ssl_apply_view;
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setId(i);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        int G = (int) MainUtil.G(context, 20.0f);
        layoutParams.topMargin = G;
        layoutParams.setMarginStart(G);
        layoutParams.setMarginEnd(MainApp.F1);
        addView(frameLayout, layoutParams);
        View view = new View(context);
        view.setBackgroundResource(R.drawable.baseline_warning_red_24);
        int i5 = MainApp.f1;
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i5, i5);
        layoutParams2.gravity = 8388627;
        frameLayout.addView(view, layoutParams2);
        AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
        appCompatTextView.setLineSpacing(MainApp.F1, 1.0f);
        appCompatTextView.setTextSize(1, 18.0f);
        FrameLayout.LayoutParams d = a.d(appCompatTextView, R.string.site_warning, -1, -2);
        d.gravity = 8388627;
        d.setMarginStart((int) MainUtil.G(context, 60.0f));
        frameLayout.addView(appCompatTextView, d);
        FrameLayout frameLayout2 = new FrameLayout(context);
        RelativeLayout.LayoutParams h = androidx.work.impl.workers.a.h(-1, -1, 3, i);
        h.addRule(2, i2);
        h.topMargin = G;
        h.bottomMargin = MainApp.F1;
        h.setMarginStart(G);
        h.setMarginEnd(G);
        addView(frameLayout2, h);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -2);
        layoutParams3.gravity = 8388627;
        frameLayout2.addView(linearLayout, layoutParams3);
        AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
        appCompatTextView2.setPadding(0, 0, 0, MainApp.E1);
        appCompatTextView2.setLineSpacing(MainApp.F1, 1.0f);
        appCompatTextView2.setTextSize(1, 18.0f);
        linearLayout.addView(appCompatTextView2, -1, -2);
        ScrollView scrollView = new ScrollView(context);
        scrollView.setOverScrollMode(2);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, 0);
        layoutParams4.weight = 1.0f;
        linearLayout.addView(scrollView, layoutParams4);
        AppCompatTextView appCompatTextView3 = new AppCompatTextView(context, null);
        appCompatTextView3.setLineSpacing(MainApp.F1, 1.0f);
        appCompatTextView3.setTextSize(1, 16.0f);
        scrollView.addView(appCompatTextView3, -1, -2);
        AppCompatTextView appCompatTextView4 = new AppCompatTextView(context, null);
        appCompatTextView4.setLineSpacing(MainApp.F1, 1.0f);
        appCompatTextView4.setTextSize(1, 18.0f);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams5.topMargin = MainApp.E1;
        linearLayout.addView(appCompatTextView4, layoutParams5);
        MyButtonImage myButtonImage = new MyButtonImage(context);
        myButtonImage.setId(i2);
        myButtonImage.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        int i6 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(i6, i6);
        layoutParams6.addRule(2, i3);
        layoutParams6.addRule(21);
        int i7 = MainApp.F1;
        layoutParams6.bottomMargin = i7;
        layoutParams6.setMarginEnd(i7);
        addView(myButtonImage, layoutParams6);
        MyButtonText myButtonText = new MyButtonText(context);
        myButtonText.setId(i3);
        myButtonText.setPadding(MainApp.F1, MainApp.G1, MainApp.F1, MainApp.G1);
        myButtonText.setGravity(17);
        myButtonText.setMinHeight(MainApp.f1);
        myButtonText.setTextSize(1, 14.0f);
        myButtonText.setText(R.string.site_exit);
        myButtonText.setBgNorFixed(true);
        myButtonText.setRoundRect(true);
        myButtonText.setRoundRadius(MainApp.F1);
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams7.addRule(2, i4);
        layoutParams7.bottomMargin = G;
        layoutParams7.setMarginStart(G);
        layoutParams7.setMarginEnd(G);
        addView(myButtonText, layoutParams7);
        MyButtonText myButtonText2 = new MyButtonText(context);
        myButtonText2.setId(i4);
        myButtonText2.setPadding(MainApp.F1, MainApp.G1, MainApp.F1, MainApp.G1);
        myButtonText2.setGravity(17);
        myButtonText2.setMinHeight(MainApp.f1);
        myButtonText2.setTextSize(1, 14.0f);
        myButtonText2.setText(R.string.site_continue);
        myButtonText2.setBgNorFixed(true);
        myButtonText2.setRoundRect(true);
        myButtonText2.setRoundRadius(MainApp.F1);
        RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams8.addRule(12);
        layoutParams8.bottomMargin = G;
        layoutParams8.setMarginStart(G);
        layoutParams8.setMarginEnd(G);
        addView(myButtonText2, layoutParams8);
        this.f = appCompatTextView;
        this.g = appCompatTextView2;
        this.h = appCompatTextView3;
        this.i = appCompatTextView4;
        this.j = myButtonImage;
        this.k = myButtonText2;
        this.l = myButtonText;
        myButtonText.setTextColor(-1);
        this.l.u(-13022805, -10720320);
        a();
        b();
        setOnClickListener(new Object());
        this.j.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebSslView.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                SslViewListener sslViewListener2 = WebSslView.this.f19504c;
                if (sslViewListener2 == null) {
                    return;
                }
                sslViewListener2.b();
            }
        });
        this.k.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebSslView.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                WebSslView webSslView = WebSslView.this;
                if (webSslView.f19504c == null) {
                    return;
                }
                SslErrorHandler sslErrorHandler = webSslView.m;
                if (sslErrorHandler != null) {
                    sslErrorHandler.proceed();
                    webSslView.m = null;
                }
                webSslView.f19504c.a();
            }
        });
        this.l.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebSslView.4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                WebSslView webSslView = WebSslView.this;
                if (webSslView.f19504c == null) {
                    return;
                }
                SslErrorHandler sslErrorHandler = webSslView.m;
                if (sslErrorHandler != null) {
                    sslErrorHandler.cancel();
                    webSslView.m = null;
                }
                webSslView.f19504c.c();
            }
        });
    }
}
