package com.mycompany.app.widget;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.URLUtil;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListPopupWindow;
import android.widget.TextView;
import androidx.core.splashscreen.SplashScreen;
import androidx.core.view.WindowInsetsControllerCompat;
import com.google.android.gms.tasks.OnCanceledListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.mlkit.common.MlKitException;
import com.google.mlkit.vision.barcode.common.Barcode;
import com.google.mlkit.vision.codescanner.GmsBarcodeScannerOptions;
import com.google.mlkit.vision.codescanner.internal.zze;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.data.book.DataBookRecent;
import com.mycompany.app.db.book.DbBookRecent;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.dialog.DialogSetMsg;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefMain;
import com.mycompany.app.pref.PrefPdf;
import com.mycompany.app.pref.PrefSecret;
import com.mycompany.app.pref.PrefSync;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.pref.PrefZtwo;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyAddrView;
import com.mycompany.app.view.MyBarView;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyClipView;
import com.mycompany.app.view.MyEditAuto;
import com.mycompany.app.view.MyEngineMenu;
import com.mycompany.app.view.MyIconView;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.web.WebSearchAdapter;
import com.mycompany.app.web.WebSearchAdapter2;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class WidgetSearchActivity extends MainActivity {
    public static final /* synthetic */ int I1 = 0;
    public MyEngineMenu A1;
    public MyPopupMenu B1;
    public boolean C1;
    public String D1;
    public boolean E1;
    public boolean F1;
    public final MyEditAuto.KeyBackListener G1 = new MyEditAuto.KeyBackListener() { // from class: com.mycompany.app.widget.WidgetSearchActivity.12
        @Override // com.mycompany.app.view.MyEditAuto.KeyBackListener
        public final boolean a(boolean z, boolean z2) {
            final WidgetSearchActivity widgetSearchActivity = WidgetSearchActivity.this;
            if (!widgetSearchActivity.Y()) {
                if (widgetSearchActivity.J0 > 0) {
                    FrameLayout frameLayout = widgetSearchActivity.l1;
                    if (frameLayout != null && !widgetSearchActivity.F1) {
                        widgetSearchActivity.F1 = true;
                        MainUtil.X4(widgetSearchActivity.f1, frameLayout);
                        widgetSearchActivity.l1.postDelayed(new Runnable() { // from class: com.mycompany.app.widget.WidgetSearchActivity.13
                            @Override // java.lang.Runnable
                            public final void run() {
                                WidgetSearchActivity.this.F1 = false;
                            }
                        }, 100L);
                        return true;
                    }
                } else {
                    return false;
                }
            }
            return true;
        }
    };
    public boolean H1;
    public Context f1;
    public Intent g1;
    public boolean h1;
    public boolean i1;
    public boolean j1;
    public boolean k1;
    public FrameLayout l1;
    public MyAddrView m1;
    public MyIconView n1;
    public MyIconView o1;
    public MyIconView p1;
    public MyIconView q1;
    public MyEditAuto r1;
    public boolean s1;
    public int t1;
    public int u1;
    public WebSearchAdapter2 v1;
    public SearchTask w1;
    public DialogSetMsg x1;
    public boolean y1;
    public MyClipView z1;

    /* renamed from: com.mycompany.app.widget.WidgetSearchActivity$19, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass19 implements Runnable {
        public AnonymousClass19() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            WidgetSearchActivity widgetSearchActivity = WidgetSearchActivity.this;
            MyEditAuto myEditAuto = widgetSearchActivity.r1;
            if (myEditAuto == null) {
                return;
            }
            myEditAuto.requestFocus();
            widgetSearchActivity.r1.post(new Runnable() { // from class: com.mycompany.app.widget.WidgetSearchActivity.19.1
                @Override // java.lang.Runnable
                public final void run() {
                    WidgetSearchActivity widgetSearchActivity2 = WidgetSearchActivity.this;
                    MyEditAuto myEditAuto2 = widgetSearchActivity2.r1;
                    if (myEditAuto2 == null) {
                        return;
                    }
                    myEditAuto2.selectAll();
                    widgetSearchActivity2.r1.postDelayed(new Runnable() { // from class: com.mycompany.app.widget.WidgetSearchActivity.19.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            WidgetSearchActivity widgetSearchActivity3 = WidgetSearchActivity.this;
                            MyEditAuto myEditAuto3 = widgetSearchActivity3.r1;
                            if (myEditAuto3 == null) {
                                return;
                            }
                            MainUtil.c8(widgetSearchActivity3.f1, myEditAuto3);
                        }
                    }, 200L);
                }
            });
        }
    }

    /* renamed from: com.mycompany.app.widget.WidgetSearchActivity$20, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass20 implements WebSearchAdapter.WebSearchListener {
        public AnonymousClass20() {
        }

        @Override // com.mycompany.app.web.WebSearchAdapter.WebSearchListener
        public final void a(final int i, final boolean z) {
            WidgetSearchActivity widgetSearchActivity = WidgetSearchActivity.this;
            if (!z && !widgetSearchActivity.y1) {
                widgetSearchActivity.m0(new Runnable() { // from class: com.mycompany.app.widget.WidgetSearchActivity.20.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        WidgetSearchActivity widgetSearchActivity2 = WidgetSearchActivity.this;
                        widgetSearchActivity2.y1 = MainUtil.T4(widgetSearchActivity2.f1);
                        FrameLayout frameLayout = widgetSearchActivity2.l1;
                        if (frameLayout == null) {
                            return;
                        }
                        frameLayout.post(new Runnable() { // from class: com.mycompany.app.widget.WidgetSearchActivity.20.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                WidgetSearchActivity widgetSearchActivity3 = WidgetSearchActivity.this;
                                if (widgetSearchActivity3.y1) {
                                    widgetSearchActivity3.E0();
                                    WidgetSearchActivity.this.F0(true);
                                }
                                WidgetSearchActivity widgetSearchActivity4 = WidgetSearchActivity.this;
                                WidgetSearchActivity.x0(widgetSearchActivity4, z, i, widgetSearchActivity4.y1);
                            }
                        });
                    }
                });
            } else {
                WidgetSearchActivity.x0(widgetSearchActivity, z, i, false);
            }
        }

        @Override // com.mycompany.app.web.WebSearchAdapter.WebSearchListener
        public final int b() {
            WidgetSearchActivity widgetSearchActivity = WidgetSearchActivity.this;
            FrameLayout frameLayout = widgetSearchActivity.l1;
            if (frameLayout == null) {
                return 0;
            }
            return MainUtil.i4(widgetSearchActivity.m1) - (widgetSearchActivity.l1.getPaddingTop() + MainUtil.i4(frameLayout));
        }

        @Override // com.mycompany.app.web.WebSearchAdapter.WebSearchListener
        public final void c() {
        }

        @Override // com.mycompany.app.web.WebSearchAdapter.WebSearchListener
        public final boolean d() {
            return false;
        }

        @Override // com.mycompany.app.web.WebSearchAdapter.WebSearchListener
        public final void e(String str) {
            MyClipView myClipView = WidgetSearchActivity.this.z1;
            if (myClipView != null) {
                myClipView.d(str);
            }
        }

        @Override // com.mycompany.app.web.WebSearchAdapter.WebSearchListener
        public final void g(int i, String str) {
            MyEditAuto myEditAuto = WidgetSearchActivity.this.r1;
            if (myEditAuto == null) {
                return;
            }
            myEditAuto.i(i, str);
        }

        @Override // com.mycompany.app.web.WebSearchAdapter.WebSearchListener
        public final void h(WebSearchAdapter.SearchItem searchItem) {
            int i;
            WidgetSearchActivity widgetSearchActivity = WidgetSearchActivity.this;
            if (widgetSearchActivity.v1 == null || (i = searchItem.b) == 3 || i == 1) {
                return;
            }
            String str = searchItem.e;
            if (TextUtils.isEmpty(str)) {
                str = null;
            } else if (str.equals("about:blank")) {
                str = "about:blank";
            } else if (!URLUtil.isValidUrl(str)) {
                str = "http://".concat(str);
            }
            if (TextUtils.isEmpty(str)) {
                WidgetSearchActivity.w0(widgetSearchActivity, searchItem.f);
            } else {
                widgetSearchActivity.C0(str);
            }
        }
    }

    /* renamed from: com.mycompany.app.widget.WidgetSearchActivity$21, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass21 implements DialogSetFull.DialogApplyListener {
        public AnonymousClass21() {
        }

        @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
        public final void a() {
            WidgetSearchActivity widgetSearchActivity = WidgetSearchActivity.this;
            DialogSetMsg dialogSetMsg = widgetSearchActivity.x1;
            if (dialogSetMsg == null) {
                return;
            }
            dialogSetMsg.C();
            widgetSearchActivity.m0(new Runnable() { // from class: com.mycompany.app.widget.WidgetSearchActivity.21.1
                @Override // java.lang.Runnable
                public final void run() {
                    WidgetSearchActivity widgetSearchActivity2 = WidgetSearchActivity.this;
                    DbBookRecent.j(widgetSearchActivity2.f1, PrefSync.k);
                    FrameLayout frameLayout = widgetSearchActivity2.l1;
                    if (frameLayout == null) {
                        return;
                    }
                    frameLayout.post(new Runnable() { // from class: com.mycompany.app.widget.WidgetSearchActivity.21.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass21 anonymousClass21 = AnonymousClass21.this;
                            WebSearchAdapter2 webSearchAdapter2 = WidgetSearchActivity.this.v1;
                            if (webSearchAdapter2 != null) {
                                Context context = webSearchAdapter2.f19423c;
                                List list = DataBookRecent.a(context).f12912a;
                                if (list != null && list.size() > 0) {
                                    DataBookRecent a2 = DataBookRecent.a(context);
                                    a2.f12912a = null;
                                    a2.b = true;
                                    webSearchAdapter2.notifyDataSetChanged();
                                }
                            }
                            WidgetSearchActivity.this.A0();
                        }
                    });
                }
            });
        }
    }

    /* renamed from: com.mycompany.app.widget.WidgetSearchActivity$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass4 implements Runnable {
        public AnonymousClass4() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            WidgetSearchActivity widgetSearchActivity = WidgetSearchActivity.this;
            if (widgetSearchActivity.f1 != null) {
                WidgetSearchActivity.u0(widgetSearchActivity);
                Handler handler = widgetSearchActivity.O0;
                if (handler == null) {
                    return;
                }
                handler.post(new Runnable() { // from class: com.mycompany.app.widget.WidgetSearchActivity.4.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        final WidgetSearchActivity widgetSearchActivity2 = WidgetSearchActivity.this;
                        if (widgetSearchActivity2.f1 != null) {
                            if (widgetSearchActivity2.m1 != null && !widgetSearchActivity2.s1) {
                                widgetSearchActivity2.s1 = true;
                                widgetSearchActivity2.D1 = PrefMain.H;
                                widgetSearchActivity2.n1.v(false, true);
                                widgetSearchActivity2.o1.v(false, true);
                                widgetSearchActivity2.p1.v(false, true);
                                widgetSearchActivity2.q1.v(false, true);
                                widgetSearchActivity2.m1.setVisibility(0);
                                widgetSearchActivity2.m1.a(MainUtil.a2(PrefMain.H));
                                widgetSearchActivity2.m1.setListener(new MyBarView.BarListener() { // from class: com.mycompany.app.widget.WidgetSearchActivity.5
                                    @Override // com.mycompany.app.view.MyBarView.BarListener
                                    public final void a(int i, View view, boolean z) {
                                        final WidgetSearchActivity widgetSearchActivity3 = WidgetSearchActivity.this;
                                        if (i != 0) {
                                            if (i != 1) {
                                                int i2 = WidgetSearchActivity.I1;
                                                if (i == 2) {
                                                    widgetSearchActivity3.z0();
                                                    return;
                                                }
                                                return;
                                            }
                                            if (!widgetSearchActivity3.H1) {
                                                widgetSearchActivity3.H1 = true;
                                                FrameLayout frameLayout = widgetSearchActivity3.l1;
                                                if (frameLayout != null) {
                                                    frameLayout.post(new Runnable() { // from class: com.mycompany.app.widget.WidgetSearchActivity.25
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            final WidgetSearchActivity widgetSearchActivity4 = WidgetSearchActivity.this;
                                                            widgetSearchActivity4.E1 = true;
                                                            Task g = new zze(widgetSearchActivity4, new GmsBarcodeScannerOptions(true)).a().g(new OnSuccessListener<Barcode>() { // from class: com.mycompany.app.widget.WidgetSearchActivity.28
                                                                @Override // com.google.android.gms.tasks.OnSuccessListener
                                                                public final void onSuccess(Object obj) {
                                                                    Barcode barcode = (Barcode) obj;
                                                                    WidgetSearchActivity widgetSearchActivity5 = WidgetSearchActivity.this;
                                                                    widgetSearchActivity5.E1 = false;
                                                                    if (barcode == null) {
                                                                        return;
                                                                    }
                                                                    String a2 = barcode.f12799a.a();
                                                                    if (TextUtils.isEmpty(a2)) {
                                                                        MainUtil.e8(widgetSearchActivity5, R.string.invalid_url);
                                                                    } else {
                                                                        WidgetSearchActivity.w0(widgetSearchActivity5, a2);
                                                                    }
                                                                }
                                                            });
                                                            g.a(new OnCanceledListener() { // from class: com.mycompany.app.widget.WidgetSearchActivity.27
                                                                @Override // com.google.android.gms.tasks.OnCanceledListener
                                                                public final void a() {
                                                                    WidgetSearchActivity.this.E1 = false;
                                                                }
                                                            });
                                                            g.e(new OnFailureListener() { // from class: com.mycompany.app.widget.WidgetSearchActivity.26
                                                                @Override // com.google.android.gms.tasks.OnFailureListener
                                                                public final void c(Exception exc) {
                                                                    WidgetSearchActivity widgetSearchActivity5 = WidgetSearchActivity.this;
                                                                    widgetSearchActivity5.E1 = false;
                                                                    try {
                                                                        if (exc instanceof MlKitException) {
                                                                            if (((MlKitException) exc).f12762c == 13) {
                                                                                return;
                                                                            }
                                                                        }
                                                                    } catch (Exception unused) {
                                                                    }
                                                                    String message = exc.getMessage();
                                                                    if (TextUtils.isEmpty(message)) {
                                                                        message = "Failed to scan code";
                                                                    }
                                                                    MainUtil.f8(widgetSearchActivity5, message);
                                                                }
                                                            });
                                                            widgetSearchActivity4.H1 = false;
                                                        }
                                                    });
                                                    return;
                                                }
                                                return;
                                            }
                                            return;
                                        }
                                        MyPopupMenu myPopupMenu = widgetSearchActivity3.B1;
                                        if (myPopupMenu == null) {
                                            if (myPopupMenu != null) {
                                                widgetSearchActivity3.Z0 = null;
                                                myPopupMenu.a();
                                                widgetSearchActivity3.B1 = null;
                                            }
                                            if (view == null) {
                                                return;
                                            }
                                            ArrayList arrayList = new ArrayList();
                                            arrayList.add(new MyPopupAdapter.PopMenuItem(0, "https://"));
                                            arrayList.add(new MyPopupAdapter.PopMenuItem(1, "www."));
                                            MyPopupMenu myPopupMenu2 = new MyPopupMenu(widgetSearchActivity3, widgetSearchActivity3.l1, view, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.widget.WidgetSearchActivity.24
                                                @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                public final void a() {
                                                    int i3 = WidgetSearchActivity.I1;
                                                    WidgetSearchActivity widgetSearchActivity4 = WidgetSearchActivity.this;
                                                    MyPopupMenu myPopupMenu3 = widgetSearchActivity4.B1;
                                                    if (myPopupMenu3 != null) {
                                                        widgetSearchActivity4.Z0 = null;
                                                        myPopupMenu3.a();
                                                        widgetSearchActivity4.B1 = null;
                                                    }
                                                }

                                                @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                public final boolean b(View view2, int i3) {
                                                    MyEditAuto myEditAuto = WidgetSearchActivity.this.r1;
                                                    if (myEditAuto == null) {
                                                        return true;
                                                    }
                                                    if (i3 == 0) {
                                                        myEditAuto.i(8, "https://");
                                                        return true;
                                                    }
                                                    myEditAuto.i(4, "www.");
                                                    return true;
                                                }
                                            });
                                            widgetSearchActivity3.B1 = myPopupMenu2;
                                            widgetSearchActivity3.Z0 = myPopupMenu2;
                                        }
                                    }
                                });
                                widgetSearchActivity2.n1.w();
                                widgetSearchActivity2.n1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.widget.WidgetSearchActivity.6
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        final WidgetSearchActivity widgetSearchActivity3 = WidgetSearchActivity.this;
                                        MyEngineMenu myEngineMenu = widgetSearchActivity3.A1;
                                        if (myEngineMenu == null) {
                                            if (myEngineMenu != null) {
                                                widgetSearchActivity3.Z0 = null;
                                                myEngineMenu.a();
                                                widgetSearchActivity3.A1 = null;
                                            }
                                            if (view == null) {
                                                return;
                                            }
                                            MyEngineMenu myEngineMenu2 = new MyEngineMenu(widgetSearchActivity3, widgetSearchActivity3.l1, view, MainApp.K1, new MyEngineMenu.MyEngineListener() { // from class: com.mycompany.app.widget.WidgetSearchActivity.23
                                                @Override // com.mycompany.app.view.MyEngineMenu.MyEngineListener
                                                public final void a() {
                                                    int i = WidgetSearchActivity.I1;
                                                    WidgetSearchActivity widgetSearchActivity4 = WidgetSearchActivity.this;
                                                    MyEngineMenu myEngineMenu3 = widgetSearchActivity4.A1;
                                                    if (myEngineMenu3 != null) {
                                                        widgetSearchActivity4.Z0 = null;
                                                        myEngineMenu3.a();
                                                        widgetSearchActivity4.A1 = null;
                                                    }
                                                }

                                                @Override // com.mycompany.app.view.MyEngineMenu.MyEngineListener
                                                public final void b(int i, int i2, String str) {
                                                    WidgetSearchActivity widgetSearchActivity4 = WidgetSearchActivity.this;
                                                    if (widgetSearchActivity4.n1 == null || PrefZtwo.j == i) {
                                                        return;
                                                    }
                                                    PrefZtwo.j = i;
                                                    PrefZtwo.k = str;
                                                    PrefZtwo.m = i2;
                                                    PrefZtwo.v(widgetSearchActivity4.f1);
                                                    widgetSearchActivity4.n1.w();
                                                }
                                            });
                                            widgetSearchActivity3.A1 = myEngineMenu2;
                                            widgetSearchActivity3.Z0 = myEngineMenu2;
                                        }
                                    }
                                });
                                widgetSearchActivity2.o1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.widget.WidgetSearchActivity.7
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        WidgetSearchActivity widgetSearchActivity3 = WidgetSearchActivity.this;
                                        MyEditAuto myEditAuto = widgetSearchActivity3.r1;
                                        if (myEditAuto == null) {
                                            return;
                                        }
                                        myEditAuto.i(-1, null);
                                        MainUtil.b7(widgetSearchActivity3.r1);
                                    }
                                });
                                widgetSearchActivity2.p1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.widget.WidgetSearchActivity.8
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        WidgetSearchActivity widgetSearchActivity3 = WidgetSearchActivity.this;
                                        MyEditAuto myEditAuto = widgetSearchActivity3.r1;
                                        if (myEditAuto == null) {
                                            return;
                                        }
                                        final String autoText = myEditAuto.getAutoText();
                                        if (TextUtils.isEmpty(autoText)) {
                                            MainUtil.e8(widgetSearchActivity3, R.string.empty);
                                        } else {
                                            widgetSearchActivity3.m0(new Runnable() { // from class: com.mycompany.app.widget.WidgetSearchActivity.8.1
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    WidgetSearchActivity widgetSearchActivity4 = WidgetSearchActivity.this;
                                                    int i = R.string.copied_clipboard;
                                                    String str = autoText;
                                                    MainUtil.v(i, widgetSearchActivity4, "Copied URL", str);
                                                    MyClipView myClipView = widgetSearchActivity4.z1;
                                                    if (myClipView != null) {
                                                        myClipView.d(str);
                                                    }
                                                }
                                            });
                                        }
                                    }
                                });
                                widgetSearchActivity2.q1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.widget.WidgetSearchActivity.9
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        WidgetSearchActivity widgetSearchActivity3 = WidgetSearchActivity.this;
                                        if (widgetSearchActivity3.l1 == null || widgetSearchActivity3.x1 != null) {
                                            return;
                                        }
                                        MyEditAuto myEditAuto = widgetSearchActivity3.r1;
                                        if (myEditAuto != null) {
                                            MainUtil.X4(widgetSearchActivity3.f1, myEditAuto);
                                        }
                                        widgetSearchActivity3.l1.post(new Runnable() { // from class: com.mycompany.app.widget.WidgetSearchActivity.9.1
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                final WidgetSearchActivity widgetSearchActivity4 = WidgetSearchActivity.this;
                                                if (widgetSearchActivity4.x1 != null) {
                                                    return;
                                                }
                                                widgetSearchActivity4.A0();
                                                DialogSetMsg dialogSetMsg = new DialogSetMsg(widgetSearchActivity4, R.string.recent_delete, R.string.delete, new AnonymousClass21());
                                                widgetSearchActivity4.x1 = dialogSetMsg;
                                                dialogSetMsg.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.widget.WidgetSearchActivity.22
                                                    @Override // android.content.DialogInterface.OnDismissListener
                                                    public final void onDismiss(DialogInterface dialogInterface) {
                                                        int i = WidgetSearchActivity.I1;
                                                        WidgetSearchActivity.this.A0();
                                                    }
                                                });
                                            }
                                        });
                                    }
                                });
                                MyEditAuto myEditAuto = widgetSearchActivity2.r1;
                                myEditAuto.A = widgetSearchActivity2;
                                ListPopupWindow listPopupWindow = new ListPopupWindow(widgetSearchActivity2, null, 0);
                                myEditAuto.B = listPopupWindow;
                                listPopupWindow.setWidth(-1);
                                myEditAuto.B.setHeight(-2);
                                myEditAuto.B.setListSelector(null);
                                if (Build.VERSION.SDK_INT < 30) {
                                    myEditAuto.B.setSoftInputMode(16);
                                }
                                myEditAuto.B.setPromptPosition(1);
                                widgetSearchActivity2.r1.setDropDownAnchor(widgetSearchActivity2.m1);
                                widgetSearchActivity2.r1.setDropDownWidth(-1);
                                widgetSearchActivity2.r1.setDropDownHeight(-2);
                                widgetSearchActivity2.r1.setDropDownBackgroundDrawable(new ColorDrawable(16777216));
                                widgetSearchActivity2.r1.setInputType(17);
                                widgetSearchActivity2.r1.setOldKeyListener(widgetSearchActivity2.G1);
                                widgetSearchActivity2.r1.setEditAutoListener(new MyEditAuto.EditAutoListener() { // from class: com.mycompany.app.widget.WidgetSearchActivity.10
                                    @Override // com.mycompany.app.view.MyEditAuto.EditAutoListener
                                    public final boolean a(String str) {
                                        WidgetSearchActivity widgetSearchActivity3 = WidgetSearchActivity.this;
                                        MyEditAuto myEditAuto2 = widgetSearchActivity3.r1;
                                        boolean z = false;
                                        if (myEditAuto2 == null) {
                                            return false;
                                        }
                                        if (PrefZtwo.B) {
                                            z = myEditAuto2.h(str);
                                        }
                                        widgetSearchActivity3.I0(TextUtils.isEmpty(str));
                                        return z;
                                    }
                                });
                                widgetSearchActivity2.r1.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.mycompany.app.widget.WidgetSearchActivity.11
                                    @Override // android.widget.TextView.OnEditorActionListener
                                    public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                                        MyEditAuto myEditAuto2 = WidgetSearchActivity.this.r1;
                                        if (myEditAuto2 == null) {
                                            return true;
                                        }
                                        myEditAuto2.post(new Runnable() { // from class: com.mycompany.app.widget.WidgetSearchActivity.11.1
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                WidgetSearchActivity widgetSearchActivity3 = WidgetSearchActivity.this;
                                                MyEditAuto myEditAuto3 = widgetSearchActivity3.r1;
                                                if (myEditAuto3 == null) {
                                                    return;
                                                }
                                                WidgetSearchActivity.w0(widgetSearchActivity3, myEditAuto3.getAutoText());
                                            }
                                        });
                                        return true;
                                    }
                                });
                                widgetSearchActivity2.r1.i(-1, null);
                                widgetSearchActivity2.H0();
                                widgetSearchActivity2.I0(true);
                                widgetSearchActivity2.G0();
                            }
                            Handler handler2 = widgetSearchActivity2.O0;
                            if (handler2 == null) {
                                return;
                            }
                            handler2.post(new Runnable() { // from class: com.mycompany.app.widget.WidgetSearchActivity.4.1.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                                    final WidgetSearchActivity widgetSearchActivity3 = WidgetSearchActivity.this;
                                    if (widgetSearchActivity3.f1 != null) {
                                        if (widgetSearchActivity3.z1 == null && widgetSearchActivity3.l1 != null) {
                                            MyClipView myClipView = new MyClipView(widgetSearchActivity3);
                                            widgetSearchActivity3.z1 = myClipView;
                                            myClipView.setVisibility(8);
                                            MyClipView myClipView2 = widgetSearchActivity3.z1;
                                            Context context = widgetSearchActivity3.f1;
                                            boolean z = !widgetSearchActivity3.B0();
                                            MyClipView.MyClipListener myClipListener = new MyClipView.MyClipListener() { // from class: com.mycompany.app.widget.WidgetSearchActivity.14
                                                @Override // com.mycompany.app.view.MyClipView.MyClipListener
                                                public final void i(String str) {
                                                    WidgetSearchActivity.w0(WidgetSearchActivity.this, str);
                                                }

                                                @Override // com.mycompany.app.view.MyClipView.MyClipListener
                                                public final void j(String str) {
                                                    MyEditAuto myEditAuto2;
                                                    if (TextUtils.isEmpty(str) || (myEditAuto2 = WidgetSearchActivity.this.r1) == null) {
                                                        return;
                                                    }
                                                    myEditAuto2.i(str.length(), str);
                                                }
                                            };
                                            myClipView2.f18611c = context;
                                            myClipView2.f = false;
                                            myClipView2.g = false;
                                            myClipView2.h = MainUtil.U4();
                                            myClipView2.i = PrefWeb.U;
                                            myClipView2.j = MainApp.K1;
                                            myClipView2.k = z;
                                            myClipView2.l = myClipListener;
                                            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, MainApp.h1);
                                            widgetSearchActivity3.D0(layoutParams);
                                            widgetSearchActivity3.l1.addView(widgetSearchActivity3.z1, layoutParams);
                                            widgetSearchActivity3.l1.post(new Runnable() { // from class: com.mycompany.app.widget.WidgetSearchActivity.15
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    MyClipView myClipView3 = WidgetSearchActivity.this.z1;
                                                    if (myClipView3 != null) {
                                                        myClipView3.c();
                                                    }
                                                }
                                            });
                                        }
                                        WidgetSearchActivity widgetSearchActivity4 = WidgetSearchActivity.this;
                                        if (PrefWeb.V != 0 || PrefWeb.W != 0) {
                                            widgetSearchActivity4.y0();
                                            if (widgetSearchActivity4.m1 != null) {
                                                SearchTask searchTask = new SearchTask(widgetSearchActivity4);
                                                widgetSearchActivity4.w1 = searchTask;
                                                searchTask.c(widgetSearchActivity4.f1);
                                            }
                                        }
                                        WidgetSearchActivity widgetSearchActivity5 = WidgetSearchActivity.this;
                                        boolean z2 = widgetSearchActivity5.C1;
                                        boolean z3 = MainApp.K1;
                                        if (z2 != z3) {
                                            widgetSearchActivity5.C1 = z3;
                                            widgetSearchActivity5.J0();
                                            WidgetSearchActivity.this.G0();
                                            WebSearchAdapter2 webSearchAdapter2 = WidgetSearchActivity.this.v1;
                                            if (webSearchAdapter2 != null) {
                                                webSearchAdapter2.notifyDataSetChanged();
                                            }
                                        }
                                        WidgetSearchActivity widgetSearchActivity6 = WidgetSearchActivity.this;
                                        if (widgetSearchActivity6.i1) {
                                            widgetSearchActivity6.z0();
                                            return;
                                        }
                                        MyEditAuto myEditAuto2 = widgetSearchActivity6.r1;
                                        if (myEditAuto2 == null) {
                                            return;
                                        }
                                        myEditAuto2.post(new AnonymousClass19());
                                    }
                                }
                            });
                        }
                    }
                });
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class SearchTask extends MyAsyncTask {
        public final WeakReference e;
        public final boolean f;
        public final boolean g;
        public final boolean h;
        public final boolean i;
        public ArrayList j;
        public ArrayList k;
        public ArrayList l;
        public ArrayList m;

        public SearchTask(WidgetSearchActivity widgetSearchActivity) {
            boolean z;
            boolean z2;
            boolean z3;
            this.e = new WeakReference(widgetSearchActivity);
            int i = PrefWeb.W;
            if ((i & 2) == 2) {
                z = true;
            } else {
                z = false;
            }
            this.f = z;
            if ((i & 4) == 4) {
                z2 = true;
            } else {
                z2 = false;
            }
            this.g = z2;
            if ((i & 8) == 8) {
                z3 = true;
            } else {
                z3 = false;
            }
            this.h = z3;
            this.i = (i & 16) == 16;
        }

        /* JADX WARN: Removed duplicated region for block: B:117:0x023e A[LOOP:1: B:110:0x01c7->B:117:0x023e, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:118:0x024b A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:65:0x032b A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:66:? A[LOOP:0: B:58:0x02bb->B:66:?, LOOP_END, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:94:0x024d  */
        /* JADX WARN: Removed duplicated region for block: B:97:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r15v3, types: [com.mycompany.app.web.WebSearchAdapter$SearchItem, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r15v9, types: [com.mycompany.app.web.WebSearchAdapter$SearchItem, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r9v5, types: [com.mycompany.app.web.WebSearchAdapter$SearchItem, java.lang.Object] */
        @Override // com.mycompany.app.async.MyAsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                Method dump skipped, instructions count: 830
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.widget.WidgetSearchActivity.SearchTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            WidgetSearchActivity widgetSearchActivity;
            WeakReference weakReference = this.e;
            if (weakReference == null || (widgetSearchActivity = (WidgetSearchActivity) weakReference.get()) == null) {
                return;
            }
            widgetSearchActivity.w1 = null;
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            final WidgetSearchActivity widgetSearchActivity;
            WeakReference weakReference = this.e;
            if (weakReference != null && (widgetSearchActivity = (WidgetSearchActivity) weakReference.get()) != null) {
                widgetSearchActivity.w1 = null;
                ArrayList arrayList = this.j;
                ArrayList arrayList2 = this.k;
                ArrayList arrayList3 = this.l;
                ArrayList arrayList4 = this.m;
                if (widgetSearchActivity.r1 == null) {
                    return;
                }
                boolean z = widgetSearchActivity.y1;
                Handler handler = widgetSearchActivity.O0;
                if (handler != null) {
                    if (z && z && widgetSearchActivity.z1 != null) {
                        handler.post(new Runnable() { // from class: com.mycompany.app.widget.WidgetSearchActivity.16
                            @Override // java.lang.Runnable
                            public final void run() {
                                WidgetSearchActivity widgetSearchActivity2 = WidgetSearchActivity.this;
                                if (widgetSearchActivity2.y1 && widgetSearchActivity2.z1 != null) {
                                    widgetSearchActivity2.E0();
                                    widgetSearchActivity2.F0(true);
                                }
                            }
                        });
                    } else {
                        widgetSearchActivity.F0(false);
                    }
                }
                if (PrefZtwo.B) {
                    widgetSearchActivity.r1.setAutoList(arrayList4);
                }
                WebSearchAdapter2 webSearchAdapter2 = new WebSearchAdapter2(widgetSearchActivity, arrayList, arrayList2, arrayList3, !widgetSearchActivity.B0(), 1, new AnonymousClass20());
                widgetSearchActivity.v1 = webSearchAdapter2;
                widgetSearchActivity.r1.setDropDownAdapter(webSearchAdapter2);
            }
        }
    }

    public static void u0(WidgetSearchActivity widgetSearchActivity) {
        if (widgetSearchActivity.m1 != null) {
            return;
        }
        MyAddrView myAddrView = new MyAddrView(widgetSearchActivity);
        myAddrView.setGravity(16);
        myAddrView.setBaselineAligned(false);
        myAddrView.setOrientation(0);
        myAddrView.setVisibility(8);
        MyIconView myIconView = new MyIconView(widgetSearchActivity);
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
        myIconView.setScaleType(scaleType);
        myAddrView.addView(myIconView, MainApp.g1, MainApp.Y0);
        MyEditAuto myEditAuto = new MyEditAuto(widgetSearchActivity);
        myEditAuto.setGravity(16);
        myEditAuto.setFocusable(true);
        myEditAuto.setFocusableInTouchMode(true);
        myEditAuto.setSingleLine(true);
        myEditAuto.setTextDirection(3);
        myEditAuto.setTextSize(1, 16.0f);
        if (Build.VERSION.SDK_INT >= 29) {
            myEditAuto.setTextCursorDrawable(R.drawable.edit_cursor);
        }
        myEditAuto.setHint(R.string.web_edit_hint);
        myEditAuto.setImeOptions(268435459);
        myEditAuto.setSelectAllOnFocus(true);
        myEditAuto.setBackground(null);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, MainApp.Y0);
        layoutParams.weight = 1.0f;
        myAddrView.addView(myEditAuto, layoutParams);
        MyIconView myIconView2 = new MyIconView(widgetSearchActivity);
        myIconView2.setScaleType(scaleType);
        myIconView2.setVisibility(8);
        myAddrView.addView(myIconView2, MainApp.g1, MainApp.Y0);
        MyIconView myIconView3 = new MyIconView(widgetSearchActivity);
        myIconView3.setScaleType(scaleType);
        myIconView3.setVisibility(8);
        myAddrView.addView(myIconView3, MainApp.g1, MainApp.Y0);
        MyIconView myIconView4 = new MyIconView(widgetSearchActivity);
        myIconView4.setScaleType(scaleType);
        myIconView4.setVisibility(8);
        myAddrView.addView(myIconView4, MainApp.g1, MainApp.Y0);
        widgetSearchActivity.m1 = myAddrView;
        widgetSearchActivity.n1 = myIconView;
        widgetSearchActivity.o1 = myIconView2;
        widgetSearchActivity.p1 = myIconView3;
        widgetSearchActivity.q1 = myIconView4;
        widgetSearchActivity.r1 = myEditAuto;
        widgetSearchActivity.s1 = false;
        widgetSearchActivity.t1 = 0;
        widgetSearchActivity.u1 = 1234;
    }

    public static void v0(WidgetSearchActivity widgetSearchActivity, Intent intent, boolean z) {
        int i;
        boolean z2;
        int i2;
        MainApp p;
        Resources resources = widgetSearchActivity.getResources();
        MainApp.u(widgetSearchActivity.f1, resources);
        boolean z3 = false;
        if (z) {
            MainApp.K1 = MainUtil.h5(resources, true);
            MainApp.L1 = MainUtil.h5(resources, false);
            widgetSearchActivity.C1 = MainApp.K1;
        } else {
            widgetSearchActivity.C1 = MainApp.K1;
            MainApp.K1 = MainUtil.h5(resources, true);
            MainApp.L1 = MainUtil.h5(resources, false);
        }
        if (intent != null) {
            widgetSearchActivity.h1 = intent.getBooleanExtra("EXTRA_LOCK", false);
            widgetSearchActivity.i1 = intent.getBooleanExtra("EXTRA_VOICE", false);
            if ((widgetSearchActivity.h1 || MainUtil.z6()) && (p = MainApp.p(widgetSearchActivity.getApplicationContext())) != null) {
                p.p = true;
            }
        }
        if (widgetSearchActivity.h1 || !MainUtil.z6()) {
            int[] a2 = MainUtil.a2(PrefMain.E);
            if (a2 != null) {
                i = a2.length;
            } else {
                i = 0;
            }
            if (i != 0) {
                for (int i3 = 0; i3 < i; i3++) {
                    if (a2[i3] == 1) {
                        z2 = true;
                        break;
                    }
                }
            }
            z2 = false;
            widgetSearchActivity.k1 = z2;
            if (!z2) {
                int[] a22 = MainUtil.a2(PrefMain.D);
                if (a22 != null) {
                    i2 = a22.length;
                } else {
                    i2 = 0;
                }
                if (i2 != 0) {
                    int i4 = 0;
                    while (true) {
                        if (i4 >= i2) {
                            break;
                        }
                        if (a22[i4] == 1) {
                            z3 = true;
                            break;
                        }
                        i4++;
                    }
                }
                widgetSearchActivity.j1 = z3;
            }
            Handler handler = widgetSearchActivity.O0;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.widget.WidgetSearchActivity.3
                @Override // java.lang.Runnable
                public final void run() {
                    int i5 = WidgetSearchActivity.I1;
                    WidgetSearchActivity widgetSearchActivity2 = WidgetSearchActivity.this;
                    Handler handler2 = widgetSearchActivity2.O0;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new AnonymousClass4());
                }
            });
            return;
        }
        widgetSearchActivity.E1 = true;
        widgetSearchActivity.finishAffinity();
        Intent i22 = MainUtil.i2(widgetSearchActivity.f1, PrefSecret.s);
        i22.putExtra("EXTRA_TYPE", 4);
        i22.putExtra("EXTRA_VOICE", widgetSearchActivity.i1);
        widgetSearchActivity.startActivity(i22);
    }

    public static void w0(WidgetSearchActivity widgetSearchActivity, String str) {
        if (!TextUtils.isEmpty(str)) {
            widgetSearchActivity.C0(MainUtil.q4(widgetSearchActivity.f1, str));
        }
    }

    public static void x0(WidgetSearchActivity widgetSearchActivity, boolean z, int i, boolean z2) {
        MyClipView myClipView;
        if (!z2 && (myClipView = widgetSearchActivity.z1) != null) {
            myClipView.setSearchList(z);
        }
        MyEditAuto myEditAuto = widgetSearchActivity.r1;
        if (myEditAuto != null && myEditAuto.B != null) {
            if (!z) {
                myEditAuto.d();
                return;
            }
            if (!myEditAuto.f()) {
                myEditAuto.j();
            }
            if (i >= 0) {
                myEditAuto.B.setSelection(i);
            }
        }
    }

    public final void A0() {
        DialogSetMsg dialogSetMsg = this.x1;
        if (dialogSetMsg != null) {
            dialogSetMsg.dismiss();
            this.x1 = null;
        }
    }

    public final boolean B0() {
        if (this.t1 == 1) {
            return true;
        }
        return false;
    }

    public final void C0(String str) {
        this.E1 = true;
        finishAffinity();
        Intent o4 = MainUtil.o4(getApplicationContext());
        o4.putExtra("EXTRA_PATH", str);
        startActivity(o4);
    }

    public final boolean D0(FrameLayout.LayoutParams layoutParams) {
        int i;
        int i2;
        int i3;
        if (layoutParams == null) {
            return false;
        }
        if (B0()) {
            i3 = PrefPdf.A;
            int i4 = MainApp.Y0;
            if (i3 < i4) {
                i3 = i4;
            }
            i = 48;
            i2 = 0;
        } else {
            int i5 = PrefPdf.B;
            int i6 = MainApp.Y0;
            if (i5 < i6) {
                i5 = i6;
            }
            i = 80;
            i2 = i5;
            i3 = 0;
        }
        if (layoutParams.topMargin == i3 && layoutParams.bottomMargin == i2 && layoutParams.gravity == i) {
            return false;
        }
        layoutParams.topMargin = i3;
        layoutParams.bottomMargin = i2;
        layoutParams.gravity = i;
        return true;
    }

    public final void E0() {
        MyClipView myClipView = this.z1;
        if (myClipView != null && D0((FrameLayout.LayoutParams) myClipView.getLayoutParams())) {
            this.z1.requestLayout();
        }
    }

    public final void F0(boolean z) {
        MyClipView myClipView = this.z1;
        if (myClipView == null) {
            return;
        }
        myClipView.h(z, false, !B0());
    }

    public final void G0() {
        if (this.m1 == null) {
            return;
        }
        boolean B0 = B0();
        int s0 = MainUtil.s0(0, false);
        if (this.u1 != s0) {
            this.u1 = s0;
            int P1 = MainUtil.P1(s0, 0);
            this.m1.c(s0, P1);
            this.m1.b(s0, 0, false, B0);
            this.r1.setTextColor(MyIconView.k(s0, false));
            this.r1.setHintTextColor(MyIconView.k(s0, true));
            if (s0 == 0) {
                this.o1.setImageResource(R.drawable.outline_cancel_black_18);
                this.p1.setImageResource(R.drawable.outline_content_copy_black_18);
                this.q1.setImageResource(R.drawable.outline_delete_black_20);
            } else {
                this.o1.setImageResource(R.drawable.outline_cancel_dark_18);
                this.p1.setImageResource(R.drawable.outline_content_copy_dark_18);
                this.q1.setImageResource(R.drawable.outline_delete_dark_20);
            }
            float i = MyIconView.i(s0);
            this.o1.setMaxAlpha(i);
            this.p1.setMaxAlpha(i);
            this.q1.setMaxAlpha(i);
            this.n1.setBgPreColor(P1);
            this.o1.setBgPreColor(P1);
            this.p1.setBgPreColor(P1);
            this.q1.setBgPreColor(P1);
        } else {
            MyAddrView myAddrView = this.m1;
            if (B0 != myAddrView.h) {
                myAddrView.b(s0, 0, false, B0);
            }
        }
        this.n1.w();
    }

    public final void H0() {
        int i;
        int i2;
        if (this.m1 != null && this.l1 != null) {
            int i3 = this.t1;
            if (this.k1) {
                this.t1 = 2;
            } else if (this.j1) {
                if (PrefPdf.z) {
                    this.t1 = 2;
                } else {
                    this.t1 = 1;
                }
            } else if (MainUtil.R4()) {
                this.t1 = 2;
            } else {
                this.t1 = 1;
            }
            if (B0()) {
                i = PrefPdf.A;
                i2 = 48;
            } else {
                i = PrefPdf.B;
                i2 = 80;
            }
            int i4 = MainApp.Y0;
            if (i < i4) {
                i = i4;
            }
            if (i3 == 0) {
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, i);
                layoutParams.height = i;
                layoutParams.gravity = i2;
                this.l1.addView(this.m1, layoutParams);
                return;
            }
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.m1.getLayoutParams();
            if (layoutParams2 != null) {
                if (layoutParams2.height != i || layoutParams2.gravity != i2) {
                    layoutParams2.height = i;
                    layoutParams2.gravity = i2;
                    this.m1.requestLayout();
                }
            }
        }
    }

    public final void I0(boolean z) {
        MyAddrView myAddrView = this.m1;
        if (myAddrView == null) {
            return;
        }
        myAddrView.d(z);
        if (z) {
            this.o1.setVisibility(8);
            this.p1.setVisibility(8);
            this.q1.setVisibility(8);
        } else {
            this.o1.setVisibility(0);
            this.p1.setVisibility(0);
            if (DbBookRecent.l()) {
                this.q1.setVisibility(0);
            } else {
                this.q1.setVisibility(8);
            }
        }
    }

    public final void J0() {
        FrameLayout frameLayout = this.l1;
        if (frameLayout != null) {
            if (MainApp.K1) {
                frameLayout.setBackgroundColor(-16777216);
            } else {
                frameLayout.setBackgroundColor(-1);
            }
            Handler handler = this.O0;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.widget.WidgetSearchActivity.17
                @Override // java.lang.Runnable
                public final void run() {
                    int i;
                    int i2 = WidgetSearchActivity.I1;
                    int i3 = Build.VERSION.SDK_INT;
                    final WidgetSearchActivity widgetSearchActivity = WidgetSearchActivity.this;
                    Window window = widgetSearchActivity.getWindow();
                    if (window != null) {
                        if (!MainConst.e) {
                            int i4 = -1;
                            int i5 = -16777216;
                            if (MainApp.K1) {
                                i = -16777216;
                            } else {
                                i = -1;
                            }
                            if (MainUtil.x3(window) != i) {
                                MainUtil.D7(window, i);
                            }
                            if (i3 >= 26) {
                                if (MainApp.K1) {
                                    i4 = -16777216;
                                }
                                i5 = i4;
                            }
                            if (MainUtil.O2(window) != i5) {
                                MainUtil.t7(window, i5);
                            }
                        }
                        Handler handler2 = widgetSearchActivity.O0;
                        if (handler2 == null) {
                            return;
                        }
                        handler2.post(new Runnable() { // from class: com.mycompany.app.widget.WidgetSearchActivity.18
                            @Override // java.lang.Runnable
                            public final void run() {
                                WidgetSearchActivity widgetSearchActivity2 = WidgetSearchActivity.this;
                                Window window2 = widgetSearchActivity2.getWindow();
                                View a0 = widgetSearchActivity2.a0();
                                WindowInsetsControllerCompat c0 = widgetSearchActivity2.c0();
                                boolean z = MainApp.K1;
                                MainUtil.E7(window2, a0, c0, z, z);
                            }
                        });
                    }
                }
            });
        }
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void k0(int i, int i2, Intent intent) {
        if (i == 17) {
            this.E1 = false;
            if (i2 != -1 || intent == null) {
                return;
            }
            ArrayList<String> stringArrayListExtra = intent.getStringArrayListExtra("android.speech.extra.RESULTS");
            if (stringArrayListExtra != null && !stringArrayListExtra.isEmpty()) {
                String str = stringArrayListExtra.get(0);
                if (!TextUtils.isEmpty(str)) {
                    C0(MainUtil.q3(str));
                    return;
                }
            }
            MainUtil.e8(this, R.string.fail);
        }
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.C1 = MainApp.K1;
        MainApp.K1 = MainUtil.i5(true, configuration);
        MainApp.L1 = MainUtil.i5(false, configuration);
        boolean z = this.C1;
        boolean z2 = MainApp.K1;
        if (z != z2) {
            this.C1 = z2;
            J0();
            G0();
            WebSearchAdapter2 webSearchAdapter2 = this.v1;
            if (webSearchAdapter2 != null) {
                webSearchAdapter2.notifyDataSetChanged();
            }
        }
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        this.W0 = true;
        super.onCreate(bundle);
        SplashScreen.a(this);
        e0(this.G1);
        this.E0 = true;
        f0();
        this.f1 = getApplicationContext();
        o0(null, 17);
        FrameLayout frameLayout = new FrameLayout(this.f1);
        this.l1 = frameLayout;
        setContentView(frameLayout, new ViewGroup.LayoutParams(-1, -1));
        setMainInsetView(this.l1);
        J0();
        initMainScreenOn(this.l1);
        m0(new Runnable() { // from class: com.mycompany.app.widget.WidgetSearchActivity.1
            @Override // java.lang.Runnable
            public final void run() {
                WidgetSearchActivity widgetSearchActivity = WidgetSearchActivity.this;
                WidgetSearchActivity.v0(widgetSearchActivity, widgetSearchActivity.getIntent(), true);
            }
        });
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        A0();
        MyEngineMenu myEngineMenu = this.A1;
        if (myEngineMenu != null) {
            this.Z0 = null;
            myEngineMenu.a();
            this.A1 = null;
        }
        MyPopupMenu myPopupMenu = this.B1;
        if (myPopupMenu != null) {
            this.Z0 = null;
            myPopupMenu.a();
            this.B1 = null;
        }
        y0();
        MyAddrView myAddrView = this.m1;
        if (myAddrView != null) {
            myAddrView.f18517c = null;
            myAddrView.f = null;
            myAddrView.g = null;
            myAddrView.k = null;
            myAddrView.l = null;
            myAddrView.n = null;
            this.m1 = null;
        }
        MyIconView myIconView = this.n1;
        if (myIconView != null) {
            myIconView.m();
            this.n1 = null;
        }
        MyIconView myIconView2 = this.o1;
        if (myIconView2 != null) {
            myIconView2.m();
            this.o1 = null;
        }
        MyIconView myIconView3 = this.p1;
        if (myIconView3 != null) {
            myIconView3.m();
            this.p1 = null;
        }
        MyIconView myIconView4 = this.q1;
        if (myIconView4 != null) {
            myIconView4.m();
            this.q1 = null;
        }
        MyEditAuto myEditAuto = this.r1;
        if (myEditAuto != null) {
            myEditAuto.g();
            this.r1 = null;
        }
        MyClipView myClipView = this.z1;
        if (myClipView != null) {
            MyButtonImage myButtonImage = myClipView.o;
            if (myButtonImage != null) {
                myButtonImage.j();
                myClipView.o = null;
            }
            MyButtonImage myButtonImage2 = myClipView.p;
            if (myButtonImage2 != null) {
                myButtonImage2.j();
                myClipView.p = null;
            }
            myClipView.f18611c = null;
            myClipView.l = null;
            myClipView.m = null;
            myClipView.n = null;
            myClipView.s = null;
            myClipView.t = null;
            myClipView.w = null;
            this.z1 = null;
        }
        this.f1 = null;
        this.l1 = null;
        this.D1 = null;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.g1 = intent;
        m0(new Runnable() { // from class: com.mycompany.app.widget.WidgetSearchActivity.2
            @Override // java.lang.Runnable
            public final void run() {
                WidgetSearchActivity widgetSearchActivity = WidgetSearchActivity.this;
                Intent intent2 = widgetSearchActivity.g1;
                widgetSearchActivity.g1 = null;
                WidgetSearchActivity.v0(widgetSearchActivity, intent2, false);
            }
        });
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        this.C1 = MainApp.K1;
        this.D1 = PrefMain.H;
        if (!this.E1) {
            finishAffinity();
        }
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        boolean z;
        super.onResume();
        if (!MainApp.O1) {
            MainApp.u(this.f1, getResources());
        }
        if (!MainUtil.q5(this.D1, PrefMain.H)) {
            this.D1 = null;
            if (this.m1 != null) {
                int s0 = MainUtil.s0(0, false);
                int P1 = MainUtil.P1(s0, 0);
                this.m1.a(MainUtil.a2(PrefMain.H));
                this.m1.c(s0, P1);
            }
        }
        MyClipView myClipView = this.z1;
        if (myClipView != null) {
            myClipView.b();
        }
        H0();
        E0();
        boolean z2 = this.C1;
        boolean z3 = MainApp.K1;
        if (z2 != z3) {
            this.C1 = z3;
            J0();
            G0();
            MyClipView myClipView2 = this.z1;
            if (myClipView2 != null) {
                myClipView2.setColor(false);
            }
            WebSearchAdapter2 webSearchAdapter2 = this.v1;
            if (webSearchAdapter2 != null) {
                webSearchAdapter2.notifyDataSetChanged();
            }
        }
        WebSearchAdapter2 webSearchAdapter22 = this.v1;
        if (webSearchAdapter22 != null && webSearchAdapter22.r != (!B0())) {
            webSearchAdapter22.r = z;
            webSearchAdapter22.s = 0;
            webSearchAdapter22.notifyDataSetChanged();
        }
    }

    public final void y0() {
        MyEditAuto myEditAuto;
        SearchTask searchTask = this.w1;
        if (searchTask != null) {
            searchTask.f12839c = true;
        }
        this.w1 = null;
        WebSearchAdapter2 webSearchAdapter2 = this.v1;
        if (webSearchAdapter2 != null) {
            webSearchAdapter2.f();
            this.v1 = null;
        }
        if (PrefZtwo.B && (myEditAuto = this.r1) != null) {
            myEditAuto.e();
        }
    }

    public final void z0() {
        this.E1 = true;
        try {
            Intent intent = new Intent("android.speech.action.RECOGNIZE_SPEECH");
            intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
            String f2 = MainUtil.f2(MainApp.I1);
            if (!TextUtils.isEmpty(f2)) {
                intent.putExtra("android.speech.extra.LANGUAGE", f2);
            }
            o0(intent, 17);
        } catch (ActivityNotFoundException unused) {
            this.E1 = false;
            MainUtil.e8(this, R.string.apps_none);
        } catch (Exception unused2) {
            this.E1 = false;
            MainUtil.e8(this, R.string.not_supported);
        }
    }
}
