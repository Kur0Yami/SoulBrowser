package com.mycompany.app.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.ValueCallback;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.data.DataTrans;
import com.mycompany.app.dialog.DialogTransLang;
import com.mycompany.app.dialog.DialogWebView;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefAlbum;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogRelative;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyProgressBar;
import com.mycompany.app.web.WebNestView;
import com.mycompany.app.web.WebTransControl;

/* loaded from: classes3.dex */
public class DialogGreeting extends MyDialogBottom {
    public static final /* synthetic */ int I0 = 0;
    public boolean A0;
    public String B0;
    public int C0;
    public final Runnable D0;
    public String E0;
    public String F0;
    public String G0;
    public WebTransControl H0;
    public MainActivity a0;
    public Context b0;
    public DialogWebView.DialogWebListener c0;
    public final boolean d0;
    public MyDialogRelative e0;
    public ImageView f0;
    public AppCompatTextView g0;
    public FrameLayout h0;
    public WebNestView i0;
    public MyProgressBar j0;
    public View k0;
    public MyLineFrame l0;
    public boolean m0;
    public WebTransControl n0;
    public boolean o0;
    public String p0;
    public int q0;
    public boolean r0;
    public String s0;
    public String t0;
    public String u0;
    public String v0;
    public int w0;
    public int x0;
    public DialogTransLang y0;
    public DialogWebView z0;

    /* renamed from: com.mycompany.app.dialog.DialogGreeting$12, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass12 implements Runnable {
        public AnonymousClass12() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            String str;
            DialogGreeting dialogGreeting = DialogGreeting.this;
            String str2 = "black;'>";
            if (dialogGreeting.d0) {
                if (MainApp.K1) {
                    str = "#2d2d2d;'>";
                    str2 = "white;'>";
                } else {
                    str = "#f5f5f5;'>";
                }
                StringBuilder u = androidx.work.impl.workers.a.u("<!DOCTYPE html><html dir='auto' lang='ko'><head><meta charset=\"utf-8\"/><meta name='viewport' content='width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=5.0,user-scalable=yes'/><style>body{margin:0;padding:16px 0 0 0;}</style></head><body><p style='margin:0 auto 10px auto;padding:0 16px 0 16px;line-height:1.5;word-wrap:break-word;font-size:15px;user-select:none;color:", str2, "🔶 가장 자주 묻는 질문은 다음과 같습니다.</p><div style='margin:0 0 10px 0;padding:10px 20px 10px 20px;max-width:100%;border-radius:10px;user-select:none;background:", str, "<p style='margin:0 auto 0 auto;line-height:1.5;word-wrap:break-word;font-size:15px;user-select:none;font-style:italic;color:");
                android.support.v4.media.a.z(u, str2, "주소 표시줄을 아래로 이동하는 기능을 찾을 수 없습니다.</p></div><p style='margin:0 auto 50px auto;padding:0 16px 0 16px;line-height:1.5;word-wrap:break-word;font-size:15px;user-select:none;color:", str2, "'설정 > 레이아웃'에서 주소 표시줄을 상하좌우로 자유롭게 이동할 수 있습니다.</p><p style='margin:0 auto 10px auto;padding:0 16px 0 16px;line-height:1.5;word-wrap:break-word;font-size:15px;user-select:none;color:");
                android.support.v4.media.a.z(u, str2, "🔶 기타 자주 묻는 질문은 다음과 같습니다.</p><div style='margin:0 0 10px 0;padding:10px 20px 10px 20px;max-width:100%;border-radius:10px;user-select:none;background:", str, "<p style='margin:0 auto 0 auto;padding:0 0 4px 0;line-height:1.5;word-wrap:break-word;font-size:15px;user-select:none;font-style:italic;color:");
                android.support.v4.media.a.z(u, str2, "광고를 차단하는 기능을 찾을 수 없습니다.</p><p style='margin:0 auto 0 auto;padding:0 0 4px 0;line-height:1.5;word-wrap:break-word;font-size:15px;user-select:none;font-style:italic;color:", str2, "북마크를 추가하는 기능을 찾을 수 없습니다.</p><p style='margin:0 auto 0 auto;padding:0 0 4px 0;line-height:1.5;word-wrap:break-word;font-size:15px;user-select:none;font-style:italic;color:");
                android.support.v4.media.a.z(u, str2, "검색엔진을 변경하는 기능을 찾을 수 없습니다.</p><p style='margin:0 auto 0 auto;padding:0 0 4px 0;line-height:1.5;word-wrap:break-word;font-size:15px;user-select:none;font-style:italic;color:", str2, "데이터를 삭제하는 기능을 찾을 수 없습니다.</p><p style='margin:0 auto 0 auto;line-height:1.5;word-wrap:break-word;font-size:15px;user-select:none;font-style:italic;color:");
                android.support.v4.media.a.z(u, str2, "등...</p></div><p style='margin:0 auto 50px auto;padding:0 16px 0 16px;line-height:1.5;word-wrap:break-word;font-size:15px;user-select:none;color:", str2, "기본 기능에 대한 질문이 계속해서 접수되고 있습니다. 😭<span class='notranslate'><br></span>대부분의 기능은 메뉴나 설정에서 쉽게 찾을 수 있습니다.<span class='notranslate'><br></span>설정 기능 상단의 검색 기능을 이용해 보세요. 😄</p><p style='margin:0 auto 10px auto;padding:0 16px 0 16px;line-height:1.5;word-wrap:break-word;font-size:15px;user-select:none;color:");
                android.support.v4.media.a.z(u, str2, "🔶 저는 항상 사용자의 요구 사항을 주의 깊게 검토합니다.<span class='notranslate'><br></span>그러나 다음 요구 사항은 앱에 적용되지 않습니다.</p><div style='margin:0 0 10px 0;padding:10px 20px 10px 20px;max-width:100%;border-radius:10px;user-select:none;background:", str, "<p style='margin:0 auto 0 auto;padding:0 0 4px 0;line-height:1.5;word-wrap:break-word;font-size:15px;user-select:none;font-weight:bold;color:");
                android.support.v4.media.a.z(u, str2, "Google 정책을 위반할 수 있는 기능</p><p style='margin:0 auto 0 auto;padding:0 0 4px 0;line-height:1.5;word-wrap:break-word;font-size:15px;user-select:none;font-weight:bold;color:", str2, "앱의 안정성을 저해할 수 있는 기능</p><p style='margin:0 auto 0 auto;line-height:1.5;word-wrap:break-word;font-size:15px;user-select:none;font-weight:bold;color:");
                android.support.v4.media.a.z(u, str2, "다른 사용자에게 피해를 줄 수 있는 기능</p></div><p style='margin:0 auto 50px auto;padding:0 16px 0 16px;line-height:1.5;word-wrap:break-word;font-size:15px;user-select:none;color:", str2, "앱의 모든 기능이 완벽하고 안전하게 작동하는 것이 가장 중요합니다.</p><p style='margin:0 auto 0 auto;padding:0 16px 80px 16px;line-height:1.5;word-wrap:break-word;font-size:15px;user-select:none;color:");
                dialogGreeting.E0 = android.support.v4.media.a.p(u, str2, "Soul Browser를 이용해 주셔서 감사합니다. 😊</p></body></html>");
                dialogGreeting.v0 = MainUtil.M1("soul_faq_", null);
            } else {
                if (MainApp.K1) {
                    str2 = "white;'>";
                }
                StringBuilder sb = new StringBuilder("<!DOCTYPE html><html dir='auto' lang='ko'><head><meta charset=\"utf-8\"/><meta name='viewport' content='width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=5.0,user-scalable=yes'/><style>body{margin:0;padding:16px 0 0 0;}a{margin:0 auto 0 auto;line-height:1.0;word-wrap:break-word;font-size:15px;user-select:none;");
                if (MainApp.K1) {
                    sb.append("color:#7f91f5;");
                }
                android.support.v4.media.a.z(sb, "}</style></head><body><p style='margin:0 auto 35px auto;padding:0 16px 0 16px;line-height:1.5;word-wrap:break-word;font-size:15px;user-select:none;color:", str2, "저는 한국 개발자입니다.<span class='notranslate'><br></span>다른 나라의 시각에서 본 한국 개발자의 이미지는 어떤지 궁금합니다. 😊<span class='notranslate'><br></span>(개발능력, 신뢰성 등)</p><p style='margin:0 auto 35px auto;padding:0 16px 0 16px;line-height:1.5;word-wrap:break-word;font-size:15px;user-select:none;color:", str2);
                dialogGreeting.E0 = android.support.v4.media.a.q(sb, "빠르고 깨끗한 브라우저를 만들고 싶었습니다.</p><p style='margin:0 auto 80px auto;padding:0 16px 0 16px;line-height:1.5;word-wrap:break-word;font-size:15px;user-select:none;color:", str2, "Soul Browser를 이용해 주셔서 감사합니다. 😊</p></body></html>");
                dialogGreeting.v0 = MainUtil.M1("soul_greet_", null);
            }
            WebNestView webNestView = dialogGreeting.i0;
            if (webNestView == null) {
                return;
            }
            webNestView.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogGreeting.12.1
                @Override // java.lang.Runnable
                public final void run() {
                    WebNestView webNestView2;
                    DialogGreeting dialogGreeting2 = DialogGreeting.this;
                    String str3 = dialogGreeting2.E0;
                    dialogGreeting2.E0 = null;
                    if (TextUtils.isEmpty(str3) || (webNestView2 = dialogGreeting2.i0) == null) {
                        return;
                    }
                    MainUtil.r6(webNestView2, dialogGreeting2.v0, str3);
                    dialogGreeting2.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogGreeting.12.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            String str4;
                            DialogGreeting dialogGreeting3;
                            AnonymousClass12 anonymousClass12 = AnonymousClass12.this;
                            DialogGreeting dialogGreeting4 = DialogGreeting.this;
                            if (dialogGreeting4.i0 != null) {
                                StringBuilder N3 = MainUtil.N3();
                                if (N3 != null) {
                                    String M2 = MainUtil.M2(dialogGreeting4.u0);
                                    if (!TextUtils.isEmpty(M2)) {
                                        N3.insert(0, M2);
                                        str4 = N3.toString();
                                        dialogGreeting4.p0 = str4;
                                        dialogGreeting3 = DialogGreeting.this;
                                        if (!dialogGreeting3.o0 && !TextUtils.isEmpty(dialogGreeting3.p0)) {
                                            String str5 = dialogGreeting3.p0;
                                            dialogGreeting3.o0 = false;
                                            dialogGreeting3.p0 = null;
                                            MainUtil.J(dialogGreeting3.i0, str5, true);
                                            return;
                                        }
                                    }
                                }
                                str4 = null;
                                dialogGreeting4.p0 = str4;
                                dialogGreeting3 = DialogGreeting.this;
                                if (!dialogGreeting3.o0) {
                                }
                            }
                        }
                    });
                }
            });
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogGreeting$16, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass16 implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ String f13689c;

        public AnonymousClass16(String str) {
            this.f13689c = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            MainUtil.M7(DialogGreeting.this.i0, this.f13689c);
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogGreeting$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass4 implements View.OnLongClickListener {
        @Override // android.view.View.OnLongClickListener
        public final boolean onLongClick(View view) {
            return true;
        }
    }

    /* renamed from: com.mycompany.app.dialog.DialogGreeting$5, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass5 implements Runnable {

        /* renamed from: com.mycompany.app.dialog.DialogGreeting$5$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Runnable {
            public AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                final DialogGreeting dialogGreeting = DialogGreeting.this;
                WebNestView webNestView = dialogGreeting.i0;
                if (webNestView != null) {
                    webNestView.setWebViewClient(new LocalWebViewClient());
                    webNestView.setListener(new WebNestView.WebViewListener() { // from class: com.mycompany.app.dialog.DialogGreeting.6
                        @Override // com.mycompany.app.web.WebNestView.WebViewListener
                        public final void a(int i) {
                        }

                        @Override // com.mycompany.app.web.WebNestView.WebViewListener
                        public final void b() {
                        }

                        @Override // com.mycompany.app.web.WebNestView.WebViewListener
                        public final void c(int i) {
                            int height;
                            boolean z = true;
                            if (i >= 1) {
                                z = false;
                            }
                            DialogGreeting dialogGreeting2 = DialogGreeting.this;
                            dialogGreeting2.y(z);
                            int i2 = dialogGreeting2.w0;
                            View view = dialogGreeting2.k0;
                            if (view != null && view.getVisibility() == 0 && (height = dialogGreeting2.k0.getHeight()) != 0) {
                                int i3 = (i - i2) + dialogGreeting2.x0;
                                dialogGreeting2.x0 = i3;
                                if (i3 > height) {
                                    dialogGreeting2.x0 = height;
                                } else if (i3 < 0) {
                                    dialogGreeting2.x0 = 0;
                                }
                                dialogGreeting2.k0.setAlpha(1.0f - (dialogGreeting2.x0 / height));
                                dialogGreeting2.k0.setTranslationY(dialogGreeting2.x0);
                            }
                            dialogGreeting2.w0 = i;
                        }

                        @Override // com.mycompany.app.web.WebNestView.WebViewListener
                        public final boolean d() {
                            return false;
                        }

                        @Override // com.mycompany.app.web.WebNestView.WebViewListener
                        public final void e() {
                        }

                        @Override // com.mycompany.app.web.WebNestView.WebViewListener
                        public final void f(int i) {
                        }

                        @Override // com.mycompany.app.web.WebNestView.WebViewListener
                        public final boolean g(float f, float f2, int i) {
                            return false;
                        }

                        @Override // com.mycompany.app.web.WebNestView.WebViewListener
                        public final void h(String str) {
                        }
                    });
                    Handler handler = dialogGreeting.i;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogGreeting.5.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                            DialogGreeting dialogGreeting2 = DialogGreeting.this;
                            WebNestView webNestView2 = dialogGreeting2.i0;
                            if (webNestView2 != null) {
                                dialogGreeting2.m0 = true;
                                webNestView2.addJavascriptInterface(new WebAppInterface(), "android");
                                Handler handler2 = DialogGreeting.this.i;
                                if (handler2 == null) {
                                    return;
                                }
                                handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogGreeting.5.1.1.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        final DialogGreeting dialogGreeting3 = DialogGreeting.this;
                                        if (dialogGreeting3.i0 != null && dialogGreeting3.n0 == null && dialogGreeting3.l0 != null && dialogGreeting3.H0 == null) {
                                            dialogGreeting3.H0 = new WebTransControl(dialogGreeting3.a0);
                                            Handler handler3 = dialogGreeting3.i;
                                            if (handler3 != null) {
                                                handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogGreeting.17
                                                    @Override // java.lang.Runnable
                                                    public final void run() {
                                                        DialogGreeting dialogGreeting4 = DialogGreeting.this;
                                                        WebTransControl webTransControl = dialogGreeting4.H0;
                                                        if (webTransControl != null) {
                                                            webTransControl.b(2);
                                                        }
                                                        Handler handler4 = dialogGreeting4.i;
                                                        if (handler4 == null) {
                                                            return;
                                                        }
                                                        handler4.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogGreeting.17.1
                                                            @Override // java.lang.Runnable
                                                            public final void run() {
                                                                final DialogGreeting dialogGreeting5 = DialogGreeting.this;
                                                                WebTransControl webTransControl2 = dialogGreeting5.H0;
                                                                dialogGreeting5.H0 = null;
                                                                if (webTransControl2 != null && dialogGreeting5.l0 != null && dialogGreeting5.n0 == null) {
                                                                    dialogGreeting5.n0 = webTransControl2;
                                                                    try {
                                                                        webTransControl2.f(dialogGreeting5.s0, dialogGreeting5.q0, dialogGreeting5.r0);
                                                                        dialogGreeting5.n0.setListener(new WebTransControl.TransCtrlListener() { // from class: com.mycompany.app.dialog.DialogGreeting.18
                                                                            @Override // com.mycompany.app.web.WebTransControl.TransCtrlListener
                                                                            public final void b() {
                                                                                DialogGreeting dialogGreeting6 = DialogGreeting.this;
                                                                                int i = dialogGreeting6.q0;
                                                                                if (i == 1) {
                                                                                    MainUtil.e8(dialogGreeting6.b0, R.string.wait_retry);
                                                                                } else if (i == 3) {
                                                                                    MainUtil.L7(dialogGreeting6.i0, "restore");
                                                                                }
                                                                            }

                                                                            @Override // com.mycompany.app.web.WebTransControl.TransCtrlListener
                                                                            public final void c(View view) {
                                                                                final DialogGreeting dialogGreeting6 = DialogGreeting.this;
                                                                                if (dialogGreeting6.a0 == null || dialogGreeting6.y0 != null || dialogGreeting6.z0 != null) {
                                                                                    return;
                                                                                }
                                                                                dialogGreeting6.D();
                                                                                if (!DataTrans.a(dialogGreeting6.b0).b() && dialogGreeting6.q0 == 1) {
                                                                                    MainUtil.e8(dialogGreeting6.b0, R.string.wait_retry);
                                                                                    return;
                                                                                }
                                                                                DialogTransLang dialogTransLang = new DialogTransLang(dialogGreeting6.a0, false, new DialogTransLang.TransLangListener() { // from class: com.mycompany.app.dialog.DialogGreeting.19
                                                                                    @Override // com.mycompany.app.dialog.DialogTransLang.TransLangListener
                                                                                    public final void a(String str) {
                                                                                        int i = DialogGreeting.I0;
                                                                                        DialogGreeting dialogGreeting7 = DialogGreeting.this;
                                                                                        dialogGreeting7.D();
                                                                                        if (dialogGreeting7.q0 == 3 && !TextUtils.isEmpty(str)) {
                                                                                            dialogGreeting7.s(new AnonymousClass16(str));
                                                                                        }
                                                                                    }
                                                                                });
                                                                                dialogGreeting6.y0 = dialogTransLang;
                                                                                dialogTransLang.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogGreeting.20
                                                                                    @Override // android.content.DialogInterface.OnDismissListener
                                                                                    public final void onDismiss(DialogInterface dialogInterface) {
                                                                                        int i = DialogGreeting.I0;
                                                                                        DialogGreeting.this.D();
                                                                                    }
                                                                                });
                                                                            }

                                                                            @Override // com.mycompany.app.web.WebTransControl.TransCtrlListener
                                                                            public final void d() {
                                                                                DialogGreeting dialogGreeting6 = DialogGreeting.this;
                                                                                int i = dialogGreeting6.q0;
                                                                                if (i == 1) {
                                                                                    MainUtil.e8(dialogGreeting6.b0, R.string.wait_retry);
                                                                                } else if (i == 3) {
                                                                                    MainUtil.L7(dialogGreeting6.i0, "confirm");
                                                                                }
                                                                            }

                                                                            @Override // com.mycompany.app.web.WebTransControl.TransCtrlListener
                                                                            public final void a() {
                                                                            }
                                                                        });
                                                                        dialogGreeting5.l0.addView(dialogGreeting5.n0, -1, -2);
                                                                    } catch (Exception unused) {
                                                                    }
                                                                }
                                                                dialogGreeting5.E(100);
                                                                if (dialogGreeting5.i0 != null) {
                                                                    dialogGreeting5.s(new AnonymousClass12());
                                                                }
                                                            }
                                                        });
                                                    }
                                                });
                                            }
                                        }
                                    }
                                });
                            }
                        }
                    });
                }
            }
        }

        public AnonymousClass5() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            DialogGreeting dialogGreeting = DialogGreeting.this;
            WebNestView webNestView = dialogGreeting.i0;
            if (webNestView != null) {
                WebSettings settings = webNestView.getSettings();
                settings.setSupportZoom(true);
                settings.setBuiltInZoomControls(true);
                settings.setDisplayZoomControls(false);
                settings.setUseWideViewPort(true);
                settings.setLoadWithOverviewMode(true);
                settings.setJavaScriptCanOpenWindowsAutomatically(false);
                settings.setSupportMultipleWindows(false);
                settings.setMediaPlaybackRequiresUserGesture(false);
                settings.setJavaScriptEnabled(true);
                webNestView.setOverScrollMode(2);
                webNestView.setVerticalScrollBarEnabled(false);
                webNestView.setHorizontalScrollBarEnabled(false);
                Handler handler = dialogGreeting.i;
                if (handler == null) {
                    return;
                }
                handler.post(new AnonymousClass1());
            }
        }
    }

    /* loaded from: classes3.dex */
    public class WebAppInterface {
        public WebAppInterface() {
        }

        @JavascriptInterface
        public void onJsResult(String str, String str2) {
            if (!TextUtils.isEmpty(str)) {
                boolean equals = str.equals("onTransList");
                final DialogGreeting dialogGreeting = DialogGreeting.this;
                if (equals) {
                    if (dialogGreeting.i0 != null && !TextUtils.isEmpty(str2)) {
                        dialogGreeting.F0 = str2;
                        dialogGreeting.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogGreeting.14
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogGreeting dialogGreeting2 = DialogGreeting.this;
                                String str3 = dialogGreeting2.F0;
                                dialogGreeting2.F0 = null;
                                if (dialogGreeting2.i0 == null) {
                                    return;
                                }
                                MainUtil.P7(dialogGreeting2.b0, str3);
                            }
                        });
                        return;
                    }
                    return;
                }
                if (str.equals("onTransClass") && dialogGreeting.i0 != null) {
                    if ("0".equals(str2)) {
                        dialogGreeting.u0 = "-";
                        return;
                    }
                    if (TextUtils.isEmpty(str2)) {
                        dialogGreeting.u0 = "-";
                    } else if (TextUtils.isEmpty(dialogGreeting.u0)) {
                        dialogGreeting.G0 = str2;
                        dialogGreeting.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogGreeting.15
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogGreeting dialogGreeting2 = DialogGreeting.this;
                                String str3 = dialogGreeting2.G0;
                                dialogGreeting2.G0 = null;
                                if (dialogGreeting2.i0 != null && TextUtils.isEmpty(dialogGreeting2.u0)) {
                                    dialogGreeting2.u0 = MainUtil.K3(str3);
                                    String str4 = dialogGreeting2.u0;
                                    if (str4 != null && str4.length() > 2) {
                                        MainUtil.Z4(dialogGreeting2.i0, str4);
                                    }
                                }
                            }
                        });
                    }
                }
            }
        }

        @JavascriptInterface
        public void onObserDet(String str, int i) {
            boolean z = true;
            DialogGreeting dialogGreeting = DialogGreeting.this;
            if (i == 0) {
                dialogGreeting.q0 = 1;
            } else {
                dialogGreeting.q0 = 3;
                if (i != 2) {
                    z = false;
                }
                dialogGreeting.r0 = z;
                dialogGreeting.s0 = str;
                if (TextUtils.isEmpty(PrefAlbum.y)) {
                    PrefAlbum.y = str;
                    PrefAlbum.z = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                    PrefAlbum.u(dialogGreeting.b0);
                }
                if (MainUtil.q5(dialogGreeting.t0, str)) {
                    dialogGreeting.t0 = null;
                }
            }
            Handler handler = dialogGreeting.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogGreeting.WebAppInterface.1
                @Override // java.lang.Runnable
                public final void run() {
                    WebNestView webNestView;
                    final DialogGreeting dialogGreeting2 = DialogGreeting.this;
                    if (dialogGreeting2.b0 != null) {
                        View view = dialogGreeting2.k0;
                        if (view != null) {
                            if (MainApp.K1) {
                                view.setBackgroundResource(R.drawable.trans_logo_short_back_dark);
                            } else {
                                view.setBackgroundResource(R.drawable.trans_logo_short_back_color);
                            }
                            if (dialogGreeting2.q0 == 3 && dialogGreeting2.r0) {
                                if (dialogGreeting2.k0.getVisibility() != 0) {
                                    dialogGreeting2.x0 = 0;
                                    dialogGreeting2.k0.setAlpha(1.0f);
                                    dialogGreeting2.k0.setTranslationY(0.0f);
                                    dialogGreeting2.k0.setVisibility(0);
                                }
                            } else {
                                dialogGreeting2.k0.setVisibility(8);
                            }
                        }
                        WebTransControl webTransControl = dialogGreeting2.n0;
                        if (webTransControl != null) {
                            webTransControl.f(dialogGreeting2.s0, dialogGreeting2.q0, dialogGreeting2.r0);
                        }
                        if (dialogGreeting2.q0 != 1) {
                            String str2 = dialogGreeting2.t0;
                            dialogGreeting2.t0 = null;
                            if (!TextUtils.isEmpty(str2)) {
                                if (!TextUtils.isEmpty(str2)) {
                                    dialogGreeting2.s(new AnonymousClass16(str2));
                                }
                            } else if (!TextUtils.isEmpty(PrefAlbum.y) && (webNestView = dialogGreeting2.i0) != null) {
                                webNestView.evaluateJavascript("document.cookie", new ValueCallback<String>() { // from class: com.mycompany.app.dialog.DialogGreeting.13
                                    @Override // android.webkit.ValueCallback
                                    public final void onReceiveValue(String str3) {
                                        String L3 = MainUtil.L3(str3);
                                        if (!TextUtils.isEmpty(L3) && !L3.equals(PrefAlbum.z)) {
                                            PrefAlbum.z = L3;
                                            PrefSet.c(0, DialogGreeting.this.b0, "mTransCode", L3);
                                        }
                                    }
                                });
                            }
                            Context context = dialogGreeting2.b0;
                            if (context != null && !DataTrans.a(context).b()) {
                                MainUtil.M3(dialogGreeting2.i0);
                            }
                            if (!TextUtils.isEmpty(dialogGreeting2.u0)) {
                                return;
                            }
                            MainUtil.N7(dialogGreeting2.i0);
                        }
                    }
                }
            });
        }
    }

    public DialogGreeting(MainActivity mainActivity, boolean z, DialogWebView.DialogWebListener dialogWebListener) {
        super(mainActivity);
        this.D0 = new Runnable() { // from class: com.mycompany.app.dialog.DialogGreeting.9
            @Override // java.lang.Runnable
            public final void run() {
                DialogGreeting dialogGreeting = DialogGreeting.this;
                dialogGreeting.E(dialogGreeting.C0);
            }
        };
        this.a0 = mainActivity;
        this.b0 = getContext();
        this.c0 = dialogWebListener;
        this.d0 = z;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogGreeting.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogGreeting dialogGreeting = DialogGreeting.this;
                Context context = dialogGreeting.b0;
                if (context != null) {
                    MyDialogRelative myDialogRelative = new MyDialogRelative(context);
                    MyLineFrame myLineFrame = new MyLineFrame(context);
                    myLineFrame.a(MainApp.E1);
                    myDialogRelative.addView(myLineFrame, -1, MainApp.g1);
                    ImageView imageView = new ImageView(context);
                    imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                    int i = MainApp.f1;
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i, i);
                    layoutParams.gravity = 8388627;
                    layoutParams.setMarginStart(MainApp.E1);
                    myLineFrame.addView(imageView, layoutParams);
                    AppCompatTextView i2 = com.google.android.gms.internal.mlkit_vision_text_common.a.i(context, null, 2);
                    i2.setEllipsize(TextUtils.TruncateAt.END);
                    i2.setTextSize(1, 16.0f);
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams2.gravity = 8388627;
                    layoutParams2.setMarginStart(MainApp.i1);
                    layoutParams2.setMarginEnd(MainApp.E1);
                    myLineFrame.addView(i2, layoutParams2);
                    FrameLayout frameLayout = new FrameLayout(context);
                    RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -1);
                    int i3 = MainApp.g1;
                    layoutParams3.topMargin = i3;
                    layoutParams3.bottomMargin = i3;
                    myDialogRelative.addView(frameLayout, layoutParams3);
                    int G = (int) MainUtil.G(context, 1.5f);
                    int G2 = (int) MainUtil.G(context, 2.0f);
                    MyProgressBar myProgressBar = new MyProgressBar(context);
                    myProgressBar.g = true;
                    myProgressBar.h = true;
                    myProgressBar.l = G;
                    myProgressBar.B = true;
                    myProgressBar.setVisibility(8);
                    frameLayout.addView(myProgressBar, -1, G2);
                    int G3 = (int) MainUtil.G(context, 130.0f);
                    int G4 = (int) MainUtil.G(context, 24.0f);
                    View view = new View(context);
                    view.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(G3, G4);
                    layoutParams4.gravity = 8388693;
                    frameLayout.addView(view, layoutParams4);
                    MyLineFrame myLineFrame2 = new MyLineFrame(context);
                    myLineFrame2.d(MainApp.E1);
                    RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-1, MainApp.g1);
                    layoutParams5.addRule(12);
                    myDialogRelative.addView(myLineFrame2, layoutParams5);
                    dialogGreeting.e0 = myDialogRelative;
                    dialogGreeting.f0 = imageView;
                    dialogGreeting.g0 = i2;
                    dialogGreeting.h0 = frameLayout;
                    dialogGreeting.j0 = myProgressBar;
                    dialogGreeting.k0 = view;
                    dialogGreeting.l0 = myLineFrame2;
                    Handler handler2 = dialogGreeting.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogGreeting.2
                        /* JADX WARN: Multi-variable type inference failed */
                        /* JADX WARN: Type inference failed for: r3v5, types: [android.view.View$OnLongClickListener, java.lang.Object] */
                        @Override // java.lang.Runnable
                        public final void run() {
                            final DialogGreeting dialogGreeting2 = DialogGreeting.this;
                            if (dialogGreeting2.e0 != null && dialogGreeting2.b0 != null) {
                                if (dialogGreeting2.h0 != null) {
                                    WebNestView webNestView = new WebNestView(dialogGreeting2.a0);
                                    dialogGreeting2.i0 = webNestView;
                                    webNestView.setNoAutofill(false);
                                    dialogGreeting2.i0.setOnLongClickListener(new Object());
                                    dialogGreeting2.h0.addView(dialogGreeting2.i0, 0, new ViewGroup.LayoutParams(-1, -2));
                                    Handler handler3 = dialogGreeting2.i;
                                    if (handler3 != null) {
                                        handler3.post(new AnonymousClass5());
                                    }
                                }
                                if (MainApp.K1) {
                                    dialogGreeting2.f0.setImageResource(R.drawable.outline_favorite_dark_20);
                                    dialogGreeting2.g0.setTextColor(-328966);
                                    dialogGreeting2.j0.g(-922746881, -16777216);
                                } else {
                                    dialogGreeting2.f0.setImageResource(R.drawable.outline_favorite_black_20);
                                    dialogGreeting2.g0.setTextColor(-16777216);
                                    dialogGreeting2.j0.g(-13022805, -460552);
                                }
                                if (dialogGreeting2.d0) {
                                    dialogGreeting2.g0.setText(R.string.freq_asked);
                                } else {
                                    dialogGreeting2.g0.setText(R.string.greeting);
                                }
                                dialogGreeting2.q0 = 1;
                                dialogGreeting2.t0 = PrefAlbum.y;
                                dialogGreeting2.f(dialogGreeting2.e0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogGreeting.3
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view2) {
                                        DialogGreeting dialogGreeting3 = DialogGreeting.this;
                                        if (dialogGreeting3.e0 == null) {
                                            return;
                                        }
                                        dialogGreeting3.show();
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    public static void B(DialogGreeting dialogGreeting, String str) {
        if (dialogGreeting.i0 != null) {
            if (MainUtil.D5(str)) {
                if (dialogGreeting.m0) {
                    dialogGreeting.m0 = false;
                    WebNestView webNestView = dialogGreeting.i0;
                    if (webNestView != null) {
                        webNestView.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogGreeting.10
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogGreeting dialogGreeting2 = DialogGreeting.this;
                                WebNestView webNestView2 = dialogGreeting2.i0;
                                if (webNestView2 == null) {
                                    return;
                                }
                                dialogGreeting2.m0 = false;
                                webNestView2.removeJavascriptInterface("android");
                            }
                        });
                        return;
                    }
                    return;
                }
                return;
            }
            if (!dialogGreeting.m0) {
                dialogGreeting.m0 = true;
                WebNestView webNestView2 = dialogGreeting.i0;
                if (webNestView2 == null) {
                    return;
                }
                webNestView2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogGreeting.11
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogGreeting dialogGreeting2 = DialogGreeting.this;
                        WebNestView webNestView3 = dialogGreeting2.i0;
                        if (webNestView3 == null) {
                            return;
                        }
                        dialogGreeting2.m0 = true;
                        webNestView3.addJavascriptInterface(new WebAppInterface(), "android");
                    }
                });
            }
        }
    }

    public static void C(DialogGreeting dialogGreeting, String str) {
        DialogWebView dialogWebView;
        if (dialogGreeting.a0 == null || dialogGreeting.y0 != null || (dialogWebView = dialogGreeting.z0) != null) {
            return;
        }
        if (dialogWebView != null) {
            dialogWebView.dismiss();
            dialogGreeting.z0 = null;
        }
        DialogWebView dialogWebView2 = new DialogWebView(dialogGreeting.a0, str, str, false, 2, new DialogWebView.DialogWebListener() { // from class: com.mycompany.app.dialog.DialogGreeting.21
            @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
            public final void a(int i, String str2, String str3) {
                DialogWebView.DialogWebListener dialogWebListener = DialogGreeting.this.c0;
                if (dialogWebListener != null) {
                    dialogWebListener.a(i, str2, str3);
                }
            }

            @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
            public final void b() {
            }

            @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
            public final void c(String str2, String str3, String str4, long j) {
            }

            @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
            public final void d(WebNestView webNestView, String str2) {
            }

            @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
            public final void e() {
            }

            @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
            public final void f() {
            }
        });
        dialogGreeting.z0 = dialogWebView2;
        dialogWebView2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogGreeting.22
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                int i = DialogGreeting.I0;
                DialogGreeting dialogGreeting2 = DialogGreeting.this;
                DialogWebView dialogWebView3 = dialogGreeting2.z0;
                if (dialogWebView3 != null) {
                    dialogWebView3.dismiss();
                    dialogGreeting2.z0 = null;
                }
            }
        });
    }

    public final void D() {
        DialogTransLang dialogTransLang = this.y0;
        if (dialogTransLang != null) {
            dialogTransLang.dismiss();
            this.y0 = null;
        }
    }

    public final void E(int i) {
        this.C0 = i;
        MyProgressBar myProgressBar = this.j0;
        if (myProgressBar != null) {
            int round = Math.round(myProgressBar.getProgress());
            if (i == 100 && round == 100) {
                this.j0.setSkipDraw(true);
                return;
            }
            MyProgressBar myProgressBar2 = this.j0;
            if (myProgressBar2.B) {
                myProgressBar2.setProgress(0.0f);
                this.j0.setSkipDraw(false);
                E(Math.max(i, 50));
            } else if (round < i) {
                myProgressBar2.setProgress(round + 3);
                Runnable runnable = this.D0;
                if (runnable != null) {
                    this.j0.removeCallbacks(runnable);
                    this.j0.post(runnable);
                }
            }
        }
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        D();
        DialogWebView dialogWebView = this.z0;
        if (dialogWebView != null) {
            dialogWebView.dismiss();
            this.z0 = null;
        }
        WebNestView webNestView = this.i0;
        if (webNestView != null) {
            MainUtil.F(webNestView, true);
            this.i0 = null;
        }
        MyDialogRelative myDialogRelative = this.e0;
        if (myDialogRelative != null) {
            myDialogRelative.c();
            this.e0 = null;
        }
        MyProgressBar myProgressBar = this.j0;
        if (myProgressBar != null) {
            myProgressBar.f();
            this.j0 = null;
        }
        MyLineFrame myLineFrame = this.l0;
        if (myLineFrame != null) {
            myLineFrame.g();
            this.l0 = null;
        }
        WebTransControl webTransControl = this.n0;
        if (webTransControl != null) {
            webTransControl.c();
            this.n0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.f0 = null;
        this.g0 = null;
        this.h0 = null;
        this.k0 = null;
        this.p0 = null;
        this.s0 = null;
        this.t0 = null;
        this.u0 = null;
        this.v0 = null;
        super.dismiss();
    }

    /* loaded from: classes3.dex */
    public class LocalWebViewClient extends WebViewClient {
        public LocalWebViewClient() {
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            final DialogGreeting dialogGreeting = DialogGreeting.this;
            WebNestView webNestView = dialogGreeting.i0;
            if (webNestView != null) {
                webNestView.setWebLoading(false);
                DialogGreeting.B(dialogGreeting, str);
                if (!dialogGreeting.A0 && !TextUtils.isEmpty(str) && !str.equals(dialogGreeting.B0)) {
                    dialogGreeting.A0 = true;
                    dialogGreeting.B0 = str;
                    Handler handler = dialogGreeting.i;
                    if (handler != null) {
                        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogGreeting.7
                            @Override // java.lang.Runnable
                            public final void run() {
                                DialogGreeting dialogGreeting2 = DialogGreeting.this;
                                MainUtil.l(dialogGreeting2.i0);
                                dialogGreeting2.A0 = false;
                            }
                        });
                    }
                }
                dialogGreeting.o0 = true;
                if (TextUtils.isEmpty(dialogGreeting.p0)) {
                    return;
                }
                String str2 = dialogGreeting.p0;
                dialogGreeting.o0 = false;
                dialogGreeting.p0 = null;
                MainUtil.J(dialogGreeting.i0, str2, true);
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            DialogGreeting dialogGreeting = DialogGreeting.this;
            WebNestView webNestView = dialogGreeting.i0;
            if (webNestView == null) {
                return;
            }
            webNestView.setWebLoading(true);
            DialogGreeting.B(dialogGreeting, str);
        }

        @Override // android.webkit.WebViewClient
        public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            final DialogGreeting dialogGreeting = DialogGreeting.this;
            dialogGreeting.i0 = null;
            MainUtil.D(webView, renderProcessGoneDetail);
            Handler handler = dialogGreeting.i;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogGreeting.8
                    @Override // java.lang.Runnable
                    public final void run() {
                        DialogGreeting.this.dismiss();
                    }
                });
                return true;
            }
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
            DialogGreeting dialogGreeting = DialogGreeting.this;
            if (dialogGreeting.i0 != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                DialogGreeting.B(dialogGreeting, webResourceRequest.getUrl().toString());
            }
            return null;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            DialogGreeting dialogGreeting = DialogGreeting.this;
            if (dialogGreeting.i0 == null || TextUtils.isEmpty(str)) {
                return true;
            }
            DialogGreeting.B(dialogGreeting, str);
            DialogGreeting.C(dialogGreeting, str);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            DialogGreeting dialogGreeting = DialogGreeting.this;
            if (dialogGreeting.i0 != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                String uri = webResourceRequest.getUrl().toString();
                if (TextUtils.isEmpty(uri)) {
                    return true;
                }
                DialogGreeting.B(dialogGreeting, uri);
                DialogGreeting.C(dialogGreeting, uri);
            }
            return true;
        }
    }
}
