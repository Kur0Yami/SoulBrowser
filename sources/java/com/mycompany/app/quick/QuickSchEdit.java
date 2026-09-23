package com.mycompany.app.quick;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.quick.QuickAdapter;
import com.mycompany.app.quick.QuickView;
import com.mycompany.app.view.MyWebBody;
import com.mycompany.app.web.WebViewActivity;
import java.util.List;

/* loaded from: classes3.dex */
public class QuickSchEdit extends FrameLayout {

    /* renamed from: c, reason: collision with root package name */
    public WebViewActivity f17431c;
    public Context f;
    public Handler g;
    public final QuickView.QuickViewListener h;
    public QuickView i;
    public QuickControl j;
    public boolean k;
    public boolean l;
    public final int m;
    public QuickView n;
    public QuickControl o;

    /* renamed from: com.mycompany.app.quick.QuickSchEdit$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass4 implements Runnable {
        public AnonymousClass4() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            QuickSchEdit quickSchEdit = QuickSchEdit.this;
            QuickView quickView = quickSchEdit.i;
            if (quickView != null) {
                quickView.q();
                Handler handler = quickSchEdit.g;
                if (handler == null) {
                    return;
                }
                handler.post(new Runnable() { // from class: com.mycompany.app.quick.QuickSchEdit.4.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        QuickSchEdit quickSchEdit2 = QuickSchEdit.this;
                        QuickView quickView2 = quickSchEdit2.i;
                        if (quickView2 != null) {
                            quickView2.o();
                            Handler handler2 = quickSchEdit2.g;
                            if (handler2 == null) {
                                return;
                            }
                            handler2.post(new Runnable() { // from class: com.mycompany.app.quick.QuickSchEdit.4.1.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    QuickView quickView3 = QuickSchEdit.this.i;
                                    if (quickView3 == null) {
                                        return;
                                    }
                                    quickView3.p();
                                }
                            });
                        }
                    }
                });
            }
        }
    }

    public QuickSchEdit(WebViewActivity webViewActivity, Context context, int i, QuickView.QuickViewListener quickViewListener) {
        super(webViewActivity);
        this.f17431c = webViewActivity;
        this.f = context;
        this.h = quickViewListener;
        this.l = true;
        this.m = i;
        Handler handler = new Handler(Looper.getMainLooper());
        this.g = handler;
        handler.post(new Runnable() { // from class: com.mycompany.app.quick.QuickSchEdit.1
            @Override // java.lang.Runnable
            public final void run() {
                QuickSchEdit.a(QuickSchEdit.this);
            }
        });
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [android.widget.RelativeLayout, com.mycompany.app.quick.QuickControl] */
    public static void a(QuickSchEdit quickSchEdit) {
        Context uiContext = quickSchEdit.getUiContext();
        if (uiContext != null) {
            quickSchEdit.n = new QuickView(uiContext);
            ?? relativeLayout = new RelativeLayout(uiContext);
            relativeLayout.a(false);
            quickSchEdit.o = relativeLayout;
            Handler handler = quickSchEdit.g;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.quick.QuickSchEdit.2
                @Override // java.lang.Runnable
                public final void run() {
                    final QuickSchEdit quickSchEdit2 = QuickSchEdit.this;
                    int i = quickSchEdit2.m;
                    QuickView quickView = quickSchEdit2.n;
                    QuickControl quickControl = quickSchEdit2.o;
                    quickSchEdit2.n = null;
                    quickSchEdit2.o = null;
                    quickSchEdit2.l = false;
                    if (quickView != null && quickControl != null) {
                        quickSchEdit2.i = quickView;
                        quickSchEdit2.j = quickControl;
                        QuickView.QuickViewListener quickViewListener = new QuickView.QuickViewListener() { // from class: com.mycompany.app.quick.QuickSchEdit.3
                            @Override // com.mycompany.app.quick.QuickView.QuickViewListener
                            public final boolean a() {
                                return false;
                            }

                            @Override // com.mycompany.app.quick.QuickView.QuickViewListener
                            public final boolean b() {
                                return QuickSchEdit.b(QuickSchEdit.this);
                            }

                            @Override // com.mycompany.app.quick.QuickView.QuickViewListener
                            public final void c(QuickAdapter.QuickItem quickItem, boolean z) {
                            }

                            @Override // com.mycompany.app.quick.QuickView.QuickViewListener
                            public final boolean d() {
                                return false;
                            }

                            @Override // com.mycompany.app.quick.QuickView.QuickViewListener
                            public final void e(QuickAdapter.QuickItem quickItem) {
                            }

                            @Override // com.mycompany.app.quick.QuickView.QuickViewListener
                            public final MyWebBody f() {
                                QuickView.QuickViewListener quickViewListener2 = QuickSchEdit.this.h;
                                if (quickViewListener2 == null) {
                                    return null;
                                }
                                return quickViewListener2.f();
                            }

                            @Override // com.mycompany.app.quick.QuickView.QuickViewListener
                            public final boolean g(float f, float f2, int i2) {
                                return false;
                            }

                            @Override // com.mycompany.app.quick.QuickView.QuickViewListener
                            public final int h() {
                                return 0;
                            }

                            @Override // com.mycompany.app.quick.QuickView.QuickViewListener
                            public final void i(boolean z) {
                                QuickView.QuickViewListener quickViewListener2 = QuickSchEdit.this.h;
                                if (quickViewListener2 != null) {
                                    quickViewListener2.i(z);
                                }
                            }

                            @Override // com.mycompany.app.quick.QuickView.QuickViewListener
                            public final void j() {
                                QuickView.QuickViewListener quickViewListener2 = QuickSchEdit.this.h;
                                if (quickViewListener2 != null) {
                                    quickViewListener2.j();
                                }
                            }

                            @Override // com.mycompany.app.quick.QuickView.QuickViewListener
                            public final void k() {
                            }

                            @Override // com.mycompany.app.quick.QuickView.QuickViewListener
                            public final void l() {
                            }

                            @Override // com.mycompany.app.quick.QuickView.QuickViewListener
                            public final void m(QuickAdapter.QuickItem quickItem) {
                                QuickView.QuickViewListener quickViewListener2 = QuickSchEdit.this.h;
                                if (quickViewListener2 != null) {
                                    quickViewListener2.m(quickItem);
                                }
                            }

                            @Override // com.mycompany.app.quick.QuickView.QuickViewListener
                            public final void n(List list) {
                            }

                            @Override // com.mycompany.app.quick.QuickView.QuickViewListener
                            public final void o(QuickAdapter.QuickItem quickItem, int i2) {
                                QuickView.QuickViewListener quickViewListener2 = QuickSchEdit.this.h;
                                if (quickViewListener2 != null) {
                                    quickViewListener2.o(quickItem, i2);
                                }
                            }

                            @Override // com.mycompany.app.quick.QuickView.QuickViewListener
                            public final boolean q() {
                                return false;
                            }

                            @Override // com.mycompany.app.quick.QuickView.QuickViewListener
                            public final void r() {
                            }

                            @Override // com.mycompany.app.quick.QuickView.QuickViewListener
                            public final void s(View view) {
                            }

                            @Override // com.mycompany.app.quick.QuickView.QuickViewListener
                            public final void t(int i2, String str) {
                            }

                            @Override // com.mycompany.app.quick.QuickView.QuickViewListener
                            public final void u() {
                            }

                            @Override // com.mycompany.app.quick.QuickView.QuickViewListener
                            public final void v() {
                                QuickView.QuickViewListener quickViewListener2 = QuickSchEdit.this.h;
                                if (quickViewListener2 != null) {
                                    quickViewListener2.v();
                                }
                            }

                            @Override // com.mycompany.app.quick.QuickView.QuickViewListener
                            public final void w() {
                            }

                            @Override // com.mycompany.app.quick.QuickView.QuickViewListener
                            public final boolean x() {
                                return false;
                            }

                            @Override // com.mycompany.app.quick.QuickView.QuickViewListener
                            public final void y() {
                            }

                            @Override // com.mycompany.app.quick.QuickView.QuickViewListener
                            public final void p(int i2, int i3, int i4, String str, int i5) {
                            }
                        };
                        quickView.g = false;
                        quickView.i = quickViewListener;
                        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
                        layoutParams.topMargin = MainApp.Y0;
                        quickSchEdit2.addView(quickSchEdit2.i, layoutParams);
                        quickSchEdit2.addView(quickSchEdit2.j, -1, -1);
                        quickSchEdit2.j.setQuickView(quickSchEdit2.i);
                        QuickView quickView2 = quickSchEdit2.i;
                        quickView2.b0 = quickSchEdit2.j;
                        quickView2.c0 = i;
                        Handler handler2 = quickSchEdit2.g;
                        if (handler2 != null) {
                            handler2.post(new AnonymousClass4());
                        }
                    }
                }
            });
        }
    }

    public static boolean b(QuickSchEdit quickSchEdit) {
        QuickView.QuickViewListener quickViewListener = quickSchEdit.h;
        if (quickViewListener == null) {
            return MainUtil.N5(quickSchEdit.getUiContext());
        }
        return quickViewListener.b();
    }

    private Context getUiContext() {
        WebViewActivity webViewActivity = this.f17431c;
        if (webViewActivity != null) {
            return webViewActivity;
        }
        return this.f;
    }
}
