package com.mycompany.app.dialog;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.mycompany.app.fragment.FragmentExpandView;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainListListener;
import com.mycompany.app.main.MainListView;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonCheck;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogNormal;
import com.mycompany.app.view.MyFadeImage;
import com.mycompany.app.view.MyHeaderView;
import com.mycompany.app.view.MyMainRelative;
import com.mycompany.app.view.MyProgressBar;
import com.mycompany.app.view.MyScrollBar;
import com.mycompany.app.web.WebViewActivity;

/* loaded from: classes3.dex */
public class DialogTabFind {

    /* renamed from: a, reason: collision with root package name */
    public MainActivity f14708a;
    public Context b;

    /* renamed from: c, reason: collision with root package name */
    public TabFindListener f14709c;
    public ViewGroup d;
    public MyMainRelative e;
    public MainListView f;
    public final boolean g;
    public final boolean h;
    public MyDialogNormal i;
    public MyDialogBottom j;
    public MainListView.ListViewHolder k;

    /* renamed from: com.mycompany.app.dialog.DialogTabFind$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass4 implements Runnable {
        public AnonymousClass4() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            DialogTabFind dialogTabFind = DialogTabFind.this;
            MainListView mainListView = dialogTabFind.f;
            if (mainListView != null) {
                mainListView.I();
                ViewGroup viewGroup = dialogTabFind.d;
                if (viewGroup == null) {
                    return;
                }
                viewGroup.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabFind.4.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        MyMainRelative myMainRelative;
                        DialogTabFind dialogTabFind2 = DialogTabFind.this;
                        ViewGroup viewGroup2 = dialogTabFind2.d;
                        if (viewGroup2 != null && (myMainRelative = dialogTabFind2.e) != null) {
                            viewGroup2.addView(myMainRelative, -1, -1);
                            ViewGroup viewGroup3 = dialogTabFind2.d;
                            if (viewGroup3 != null) {
                                viewGroup3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabFind.4.1.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        MainListView mainListView2 = DialogTabFind.this.f;
                                        if (mainListView2 == null) {
                                            return;
                                        }
                                        mainListView2.M(null);
                                    }
                                });
                            }
                        }
                    }
                });
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface TabFindListener {
        void a();

        void b(int i);

        void c();
    }

    public DialogTabFind(WebViewActivity webViewActivity, Context context, ViewGroup viewGroup, boolean z, boolean z2, TabFindListener tabFindListener) {
        this.f14708a = webViewActivity;
        this.b = context;
        this.d = viewGroup;
        this.f14709c = tabFindListener;
        this.g = z;
        this.h = z2;
        if (viewGroup == null) {
            return;
        }
        viewGroup.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabFind.1
            /* JADX WARN: Type inference failed for: r2v5, types: [java.lang.Object, com.mycompany.app.main.MainListView$ListViewHolder] */
            @Override // java.lang.Runnable
            public final void run() {
                final DialogTabFind dialogTabFind = DialogTabFind.this;
                MainActivity mainActivity = dialogTabFind.f14708a;
                if (mainActivity != null) {
                    int i = R.id.list_icon_frame;
                    int i2 = R.id.list_bottom_view;
                    int i3 = R.id.list_cast_icon;
                    MyMainRelative myMainRelative = new MyMainRelative(mainActivity);
                    myMainRelative.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
                    FrameLayout frameLayout = new FrameLayout(mainActivity);
                    myMainRelative.addView(frameLayout, androidx.work.impl.workers.a.h(-1, -1, 2, i2));
                    FragmentExpandView fragmentExpandView = new FragmentExpandView(mainActivity);
                    fragmentExpandView.setGroupIndicator(null);
                    fragmentExpandView.setChildDivider(null);
                    fragmentExpandView.setDivider(null);
                    fragmentExpandView.setVerticalScrollBarEnabled(false);
                    fragmentExpandView.setHorizontalScrollBarEnabled(false);
                    fragmentExpandView.setSelector(new ColorDrawable(0));
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
                    layoutParams.topMargin = MainApp.b1;
                    frameLayout.addView(fragmentExpandView, layoutParams);
                    MyScrollBar myScrollBar = new MyScrollBar(mainActivity);
                    int i4 = MainApp.b1;
                    int i5 = MainApp.i1;
                    myScrollBar.O = i4;
                    myScrollBar.P = i5;
                    myScrollBar.setVisibility(4);
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(MainApp.g1, -1);
                    layoutParams2.gravity = 8388613;
                    frameLayout.addView(myScrollBar, layoutParams2);
                    MyFadeImage myFadeImage = new MyFadeImage(mainActivity);
                    ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
                    myFadeImage.setScaleType(scaleType);
                    myFadeImage.setImageResource(R.drawable.logo_gray);
                    myFadeImage.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -1);
                    layoutParams3.topMargin = MainApp.b1;
                    frameLayout.addView(myFadeImage, layoutParams3);
                    MyCoverView myCoverView = new MyCoverView(mainActivity);
                    myCoverView.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, -1);
                    layoutParams4.topMargin = MainApp.b1;
                    frameLayout.addView(myCoverView, layoutParams4);
                    MyHeaderView myHeaderView = new MyHeaderView(mainActivity);
                    frameLayout.addView(myHeaderView, -1, MainApp.b1);
                    MyButtonImage myButtonImage = new MyButtonImage(mainActivity);
                    myButtonImage.setScaleType(scaleType);
                    RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(MainApp.g1, MainApp.b1);
                    layoutParams5.setMarginStart(MainApp.F1);
                    myHeaderView.addView(myButtonImage, layoutParams5);
                    AppCompatTextView appCompatTextView = new AppCompatTextView(mainActivity, null);
                    appCompatTextView.setGravity(16);
                    appCompatTextView.setSingleLine(true);
                    appCompatTextView.setTextSize(1, 18.0f);
                    RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-1, MainApp.b1);
                    layoutParams6.addRule(16, i);
                    layoutParams6.setMarginStart(MainApp.i1);
                    myHeaderView.addView(appCompatTextView, layoutParams6);
                    FrameLayout frameLayout2 = new FrameLayout(mainActivity);
                    frameLayout2.setId(i);
                    RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-2, MainApp.g1);
                    layoutParams7.addRule(16, i3);
                    layoutParams7.topMargin = MainApp.G1;
                    myHeaderView.addView(frameLayout2, layoutParams7);
                    AppCompatTextView appCompatTextView2 = new AppCompatTextView(mainActivity, null);
                    int i6 = MainApp.F1;
                    appCompatTextView2.setPadding(i6, 0, i6, 0);
                    appCompatTextView2.setGravity(16);
                    appCompatTextView2.setTextDirection(3);
                    appCompatTextView2.setTextSize(1, 16.0f);
                    appCompatTextView2.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams8 = new FrameLayout.LayoutParams(-2, MainApp.g1);
                    layoutParams8.gravity = 8388613;
                    layoutParams8.setMarginEnd((int) MainUtil.G(mainActivity, 52.0f));
                    frameLayout2.addView(appCompatTextView2, layoutParams8);
                    MyButtonCheck myButtonCheck = new MyButtonCheck(mainActivity);
                    myButtonCheck.setVisibility(8);
                    int i7 = MainApp.g1;
                    FrameLayout.LayoutParams layoutParams9 = new FrameLayout.LayoutParams(i7, i7);
                    layoutParams9.gravity = 8388613;
                    frameLayout2.addView(myButtonCheck, layoutParams9);
                    FrameLayout frameLayout3 = new FrameLayout(mainActivity);
                    frameLayout3.setId(i3);
                    frameLayout3.setVisibility(4);
                    RelativeLayout.LayoutParams layoutParams10 = new RelativeLayout.LayoutParams(-2, MainApp.b1);
                    layoutParams10.addRule(21);
                    myHeaderView.addView(frameLayout3, layoutParams10);
                    MyProgressBar myProgressBar = new MyProgressBar(mainActivity);
                    myProgressBar.d((int) MainUtil.G(mainActivity, 1.5f));
                    FrameLayout.LayoutParams layoutParams11 = new FrameLayout.LayoutParams(-1, (int) MainUtil.G(mainActivity, 2.0f));
                    layoutParams11.topMargin = MainApp.b1;
                    frameLayout.addView(myProgressBar, layoutParams11);
                    RelativeLayout relativeLayout = new RelativeLayout(mainActivity);
                    relativeLayout.setId(i2);
                    RelativeLayout.LayoutParams layoutParams12 = new RelativeLayout.LayoutParams(-1, -2);
                    layoutParams12.addRule(12);
                    myMainRelative.addView(relativeLayout, layoutParams12);
                    FrameLayout frameLayout4 = new FrameLayout(mainActivity);
                    frameLayout4.setVisibility(8);
                    relativeLayout.addView(frameLayout4, -1, -2);
                    dialogTabFind.e = myMainRelative;
                    myMainRelative.setWindow(dialogTabFind.f14708a.getWindow());
                    if (dialogTabFind.h) {
                        dialogTabFind.e.a();
                    }
                    ?? obj = new Object();
                    obj.f16736a = myMainRelative;
                    obj.b = frameLayout;
                    obj.d = myHeaderView;
                    obj.e = myButtonImage;
                    obj.f = appCompatTextView;
                    obj.o = appCompatTextView2;
                    obj.p = myButtonCheck;
                    obj.q = myProgressBar;
                    obj.r = fragmentExpandView;
                    obj.s = myScrollBar;
                    obj.t = myFadeImage;
                    obj.u = myCoverView;
                    obj.v = frameLayout3;
                    obj.w = frameLayout4;
                    dialogTabFind.k = obj;
                    ViewGroup viewGroup2 = dialogTabFind.d;
                    if (viewGroup2 == null) {
                        return;
                    }
                    viewGroup2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogTabFind.2
                        /* JADX WARN: Type inference failed for: r4v0, types: [com.mycompany.app.main.MainListView$ListViewConfig, java.lang.Object] */
                        @Override // java.lang.Runnable
                        public final void run() {
                            MainActivity mainActivity2;
                            Context context2;
                            final DialogTabFind dialogTabFind2 = DialogTabFind.this;
                            MainListView.ListViewHolder listViewHolder = dialogTabFind2.k;
                            dialogTabFind2.k = null;
                            if (listViewHolder != null && (mainActivity2 = dialogTabFind2.f14708a) != null && (context2 = dialogTabFind2.b) != null) {
                                ?? obj2 = new Object();
                                obj2.f16734a = 42;
                                obj2.b = true;
                                obj2.f16735c = true;
                                obj2.e = listViewHolder;
                                obj2.g = MainApp.b1;
                                obj2.h = true;
                                obj2.j = true;
                                obj2.k = true;
                                obj2.l = dialogTabFind2.g;
                                MainListView mainListView = new MainListView(mainActivity2, context2, obj2, new MainListListener() { // from class: com.mycompany.app.dialog.DialogTabFind.3
                                    @Override // com.mycompany.app.main.MainListListener
                                    public final void f(int i8, MainItem.ChildItem childItem, boolean z3) {
                                        TabFindListener tabFindListener2 = DialogTabFind.this.f14709c;
                                        if (tabFindListener2 != null) {
                                            tabFindListener2.b(childItem.t);
                                        }
                                    }

                                    @Override // com.mycompany.app.main.MainListListener
                                    public final void g() {
                                        TabFindListener tabFindListener2 = DialogTabFind.this.f14709c;
                                        if (tabFindListener2 != null) {
                                            tabFindListener2.c();
                                        }
                                    }

                                    @Override // com.mycompany.app.main.MainListListener
                                    public final void j() {
                                        TabFindListener tabFindListener2 = DialogTabFind.this.f14709c;
                                        if (tabFindListener2 != null) {
                                            tabFindListener2.a();
                                        }
                                    }
                                });
                                dialogTabFind2.f = mainListView;
                                MyDialogNormal myDialogNormal = dialogTabFind2.i;
                                if (myDialogNormal != null) {
                                    mainListView.V0 = myDialogNormal;
                                } else {
                                    MyDialogBottom myDialogBottom = dialogTabFind2.j;
                                    if (myDialogBottom != null) {
                                        mainListView.W0 = myDialogBottom;
                                    }
                                }
                                ViewGroup viewGroup3 = dialogTabFind2.d;
                                if (viewGroup3 != null) {
                                    viewGroup3.post(new AnonymousClass4());
                                }
                            }
                        }
                    });
                }
            }
        });
    }

    public final void a() {
        MyMainRelative myMainRelative;
        int i;
        MainListView mainListView = this.f;
        if (mainListView != null && mainListView.b0(null) && (myMainRelative = this.e) != null) {
            Window window = this.f14708a.getWindow();
            if (MainApp.K1) {
                i = -16777216;
            } else {
                i = -460552;
            }
            myMainRelative.b(window, i);
        }
    }

    public final void b() {
        MainListView mainListView = this.f;
        if (mainListView != null) {
            mainListView.Q(true);
            this.f.O();
            this.f = null;
        }
        ViewGroup viewGroup = this.d;
        if (viewGroup != null) {
            MyMainRelative myMainRelative = this.e;
            if (myMainRelative != null) {
                viewGroup.removeView(myMainRelative);
            }
            this.d = null;
        }
        this.f14708a = null;
        this.b = null;
        this.f14709c = null;
        this.e = null;
        this.i = null;
        this.j = null;
    }
}
