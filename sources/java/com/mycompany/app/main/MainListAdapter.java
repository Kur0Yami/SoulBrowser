package com.mycompany.app.main;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.ContentValues;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.URLUtil;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.documentfile.provider.DocumentFile;
import androidx.work.impl.workers.a;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.data.book.DataBookFilter;
import com.mycompany.app.data.book.DataBookUser;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.db.book.DbBookFilter;
import com.mycompany.app.db.book.DbBookScript;
import com.mycompany.app.db.book.DbBookUser;
import com.mycompany.app.expand.ExpandListAdapter;
import com.mycompany.app.fragment.FragmentExpandView;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainListView;
import com.mycompany.app.pref.PrefList;
import com.mycompany.app.pref.PrefUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonCheck;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyLineRelative;
import com.mycompany.app.view.MyListChild;
import com.mycompany.app.view.MyProgressBar;
import com.mycompany.app.view.MyRoundImage;
import com.mycompany.app.view.MySelectView;
import com.mycompany.app.view.MySwitchView;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener;
import com.nostra13.universalimageloader.utils.MemoryCacheUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public class MainListAdapter extends ExpandListAdapter {
    public String A;
    public Pattern B;
    public boolean C;
    public Context d;
    public int e;
    public boolean f;
    public FragmentExpandView g;
    public List h;
    public List i;
    public boolean[] j;
    public int[] k;
    public boolean[] l;
    public int m;
    public int n;
    public boolean o;
    public int p;
    public boolean q;
    public boolean r;
    public String s;
    public boolean t;
    public int u;
    public MainListLoader v;
    public DisplayImageOptions w;
    public ListMoreListener x;
    public ListRectListener y;
    public ListHeadListener z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.main.MainListAdapter$10, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass10 extends SimpleImageLoadingListener {
        @Override // com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener, com.nostra13.universalimageloader.core.listener.ImageLoadingListener
        public final void c(MainItem.ViewItem viewItem, View view, Bitmap bitmap) {
            Object tag;
            if (viewItem != null && view != null && (tag = view.getTag()) != null && (tag instanceof ChildHolder)) {
                ChildHolder childHolder = (ChildHolder) tag;
                if (childHolder.v == viewItem.f) {
                    if (!childHolder.e.isActivated()) {
                        childHolder.e.o(-460552, R.drawable.outline_image_black_24);
                        childHolder.e.s();
                    }
                    childHolder.f.r(viewItem.q, true);
                    childHolder.f.setImageBitmap(bitmap);
                }
            }
        }
    }

    /* renamed from: com.mycompany.app.main.MainListAdapter$7, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass7 implements View.OnClickListener {

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ ChildHolder f16577c;
        public final /* synthetic */ MainItem.ChildItem f;

        public AnonymousClass7(ChildHolder childHolder, MainItem.ChildItem childItem) {
            this.f16577c = childHolder;
            this.f = childItem;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ChildHolder childHolder = this.f16577c;
            MyButtonImage myButtonImage = childHolder.p;
            if (myButtonImage != null && myButtonImage.isEnabled()) {
                childHolder.p.setEnabled(false);
                MainApp.J(MainListAdapter.this.d, new Runnable() { // from class: com.mycompany.app.main.MainListAdapter.7.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        boolean z;
                        MainDownSvc mainDownSvc;
                        AnonymousClass7 anonymousClass7 = AnonymousClass7.this;
                        MainListAdapter mainListAdapter = MainListAdapter.this;
                        MainItem.ChildItem childItem = anonymousClass7.f;
                        if (childItem.d == 4) {
                            MainApp p = MainApp.p(mainListAdapter.d);
                            if (p != null) {
                                p.g(childItem.y);
                            }
                        } else {
                            MainApp p2 = MainApp.p(mainListAdapter.d);
                            if (p2 != null) {
                                long j = childItem.y;
                                if (childItem.d != 2) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                if (!z && p2.v == null) {
                                    if (!p2.w) {
                                        p2.w = true;
                                        p2.x = j;
                                        p2.y = 1;
                                        p2.S();
                                    }
                                } else if (p2.u && (mainDownSvc = p2.v) != null) {
                                    mainDownSvc.S(j, z);
                                }
                            }
                        }
                        MyButtonImage myButtonImage2 = anonymousClass7.f16577c.p;
                        if (myButtonImage2 == null) {
                            return;
                        }
                        myButtonImage2.post(new Runnable() { // from class: com.mycompany.app.main.MainListAdapter.7.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                AnonymousClass7 anonymousClass72 = AnonymousClass7.this;
                                MainListAdapter.this.x(anonymousClass72.f16577c, anonymousClass72.f);
                            }
                        });
                    }
                });
            }
        }
    }

    /* renamed from: com.mycompany.app.main.MainListAdapter$9, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass9 implements View.OnClickListener {

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ ChildHolder f16581c;
        public final /* synthetic */ MainItem.ChildItem f;

        public AnonymousClass9(ChildHolder childHolder, MainItem.ChildItem childItem) {
            this.f16581c = childHolder;
            this.f = childItem;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ChildHolder childHolder = this.f16581c;
            MySwitchView mySwitchView = childHolder.r;
            if (mySwitchView != null && mySwitchView.isEnabled()) {
                childHolder.r.setEnabled(false);
                MainItem.ChildItem childItem = this.f;
                boolean z = !childItem.M;
                childItem.M = z;
                childHolder.r.b(z, true);
                MainApp.J(MainListAdapter.this.d, new Runnable() { // from class: com.mycompany.app.main.MainListAdapter.9.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        AnonymousClass9 anonymousClass9 = AnonymousClass9.this;
                        MainItem.ChildItem childItem2 = anonymousClass9.f;
                        MainListAdapter mainListAdapter = MainListAdapter.this;
                        Context context = mainListAdapter.d;
                        int i = mainListAdapter.e;
                        if (i == 26) {
                            DbBookUser.i(context, childItem2.y, childItem2.M);
                            DataBookUser k = DataBookUser.k(mainListAdapter.d);
                            long j = childItem2.y;
                            boolean z2 = childItem2.M;
                            MainItem.ChildItem e = k.e(j);
                            if (e != null) {
                                e.M = z2;
                            }
                            DataBookFilter.k(mainListAdapter.d).j(DbBookFilter.i(mainListAdapter.d, "sb_user_filter_path", "sb_user_filter_path"));
                        } else if (i == 27) {
                            String str = childItem2.h;
                            String str2 = childItem2.i;
                            boolean z3 = childItem2.M;
                            DbBookScript dbBookScript = DbBookScript.f12949c;
                            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                                ContentValues contentValues = new ContentValues();
                                contentValues.put("_enabled", Integer.valueOf(z3 ? 1 : 0));
                                DbUtil.h(DbBookScript.d(context).getWritableDatabase(), "DbBookScript_table", contentValues, "_name=? AND _namespace=?", new String[]{str, str2});
                            }
                        } else {
                            long j2 = childItem2.y;
                            boolean z4 = childItem2.M;
                            DbBookFilter dbBookFilter = DbBookFilter.f12931c;
                            if (context != null) {
                                ContentValues contentValues2 = new ContentValues();
                                contentValues2.put("_use", Integer.valueOf(z4 ? 1 : 0));
                                DbUtil.h(DbBookFilter.f(context).getWritableDatabase(), "DbBookFilter_table", contentValues2, "_id=?", new String[]{Long.toString(j2)});
                            }
                        }
                        MySwitchView mySwitchView2 = anonymousClass9.f16581c.r;
                        if (mySwitchView2 == null) {
                            return;
                        }
                        mySwitchView2.post(new Runnable() { // from class: com.mycompany.app.main.MainListAdapter.9.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                MySwitchView mySwitchView3 = AnonymousClass9.this.f16581c.r;
                                if (mySwitchView3 == null) {
                                    return;
                                }
                                mySwitchView3.setEnabled(true);
                            }
                        });
                    }
                });
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class ChildHolder {

        /* renamed from: a, reason: collision with root package name */
        public MyListChild f16584a;
        public MyListChild b;

        /* renamed from: c, reason: collision with root package name */
        public MySelectView f16585c;
        public FrameLayout d;
        public MyRoundImage e;
        public MyRoundImage f;
        public RelativeLayout g;
        public AppCompatTextView h;
        public AppCompatTextView i;
        public AppCompatTextView j;
        public MyProgressBar k;
        public AppCompatTextView l;
        public AppCompatTextView m;
        public ViewGroup n;
        public MyButtonImage o;
        public MyButtonImage p;
        public MyButtonImage q;
        public MySwitchView r;
        public int s;
        public int t;
        public int u;
        public int v;
        public long w;
        public boolean x;
    }

    /* loaded from: classes3.dex */
    public static class GroupHolder {

        /* renamed from: a, reason: collision with root package name */
        public MyLineRelative f16586a;
        public MySelectView b;

        /* renamed from: c, reason: collision with root package name */
        public View f16587c;
        public FrameLayout d;
        public MyRoundImage e;
        public MyButtonCheck f;
        public RelativeLayout g;
        public AppCompatTextView h;
        public AppCompatTextView i;
        public FrameLayout j;
        public MyButtonImage k;
        public MyButtonCheck l;
        public int m;
    }

    /* loaded from: classes3.dex */
    public interface ListHeadListener {
    }

    /* loaded from: classes3.dex */
    public interface ListMoreListener {
        void a(View view, int i);
    }

    /* loaded from: classes3.dex */
    public interface ListRectListener {
    }

    /* JADX WARN: Type inference failed for: r5v3, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
    public final void A(int i, View view, ChildHolder childHolder, MainItem.ChildItem childItem) {
        boolean z;
        MainItem.ChildItem childItem2;
        int i2 = this.e;
        if (view != null && this.v != null) {
            boolean z2 = false;
            if (i2 == 32) {
                if (childItem.f16550a == 8) {
                    z = true;
                } else {
                    z = false;
                }
                childHolder.f.setIconSmall(false);
                if (childItem.d != 3) {
                    childHolder.f.o(childItem.v, childItem.w);
                    return;
                }
            } else {
                if (i2 == 18) {
                    int i3 = childItem.w;
                    if (i3 == R.drawable.outline_offline_pin_black_24) {
                        childHolder.f.o(childItem.v, i3);
                        return;
                    }
                } else if (i2 == 35) {
                    int i4 = childItem.v;
                    if (i4 != 0) {
                        childHolder.f.o(i4, childItem.w);
                        return;
                    }
                } else if (i2 == 36) {
                    childHolder.f.p(childItem.v, childItem.w, childItem.h, r());
                    return;
                }
                z = false;
            }
            if (childItem.k) {
                childHolder.f.o(0, childItem.w);
                return;
            }
            int i5 = childItem.f16551c;
            if (i5 != 1 && i5 != 2 && i5 != 3 && i5 != 4 && i5 != 5 && i5 != 6 && i5 != 11) {
                childHolder.f.o(childItem.v, childItem.w);
                return;
            }
            ?? obj = new Object();
            if (i5 == 11) {
                if (i2 == 42) {
                    obj.f16550a = 40;
                    obj.g = childItem.g;
                    obj.y = childItem.E;
                } else {
                    obj.f16550a = i2;
                    obj.g = childItem.z;
                    obj.y = childItem.y;
                }
                obj.f16551c = i5;
                obj.z = childItem.z;
                obj.J = childItem.J;
                obj.v = childItem.v;
                obj.w = childItem.w;
                childItem2 = obj;
            } else {
                childItem2 = childItem;
            }
            childItem2.O = z;
            if (TextUtils.isEmpty(childItem2.g)) {
                if (i2 == 18) {
                    childHolder.f.p(childItem.v, childItem.w, childItem.h, r());
                    return;
                } else {
                    childHolder.f.o(childItem2.v, childItem2.w);
                    return;
                }
            }
            Bitmap b = MainListLoader.b(childItem2);
            if (MainUtil.f6(b)) {
                FragmentExpandView fragmentExpandView = this.g;
                if (fragmentExpandView != null && fragmentExpandView.h != 0) {
                    z2 = true;
                }
                if (z2 && !childHolder.e.isActivated()) {
                    if (i2 == 18) {
                        childHolder.e.p(childItem.v, childItem.w, childItem.h, r());
                    } else {
                        childHolder.e.o(childItem2.v, childItem2.w);
                    }
                    childHolder.e.s();
                }
                if (childItem2.f16551c == 4) {
                    childHolder.f.setBackColor(-460552);
                }
                childHolder.f.r(childItem2.g, z2);
                if (i2 == 32 && z) {
                    childHolder.f.setIconSmall(true);
                }
                childHolder.f.setImageBitmap(b);
                return;
            }
            if (i2 == 18) {
                childHolder.f.p(childItem.v, childItem.w, childItem.h, r());
            } else {
                childHolder.f.o(childItem2.v, childItem2.w);
            }
            if (!e(i)) {
                this.v.e(childItem2, view);
            }
        }
    }

    public final boolean B(int i, boolean z) {
        Object tag;
        int i2;
        int i3 = this.e;
        FragmentExpandView fragmentExpandView = this.g;
        if (fragmentExpandView == null || (!z && this.p == i)) {
            return false;
        }
        this.p = i;
        int childCount = fragmentExpandView.getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = this.g.getChildAt(i4);
            if (childAt != null && (tag = childAt.getTag()) != null) {
                int i5 = -328966;
                int i6 = -16777216;
                if (tag instanceof GroupHolder) {
                    GroupHolder groupHolder = (GroupHolder) tag;
                    if (groupHolder.m == l(this.p)) {
                        if (PrefUtil.b(i3)) {
                            groupHolder.h.setTextColor(-769226);
                        } else {
                            AppCompatTextView appCompatTextView = groupHolder.h;
                            if (!MainApp.K1) {
                                i5 = -16777216;
                            }
                            appCompatTextView.setTextColor(i5);
                        }
                    } else {
                        AppCompatTextView appCompatTextView2 = groupHolder.h;
                        if (!MainApp.K1) {
                            i5 = -16777216;
                        }
                        appCompatTextView2.setTextColor(i5);
                    }
                } else if (tag instanceof ChildHolder) {
                    ChildHolder childHolder = (ChildHolder) tag;
                    if (childHolder.v == this.p && PrefUtil.b(i3)) {
                        childHolder.h.setTextColor(-769226);
                    } else if (this.r) {
                        AppCompatTextView appCompatTextView3 = childHolder.h;
                        if (MainApp.K1) {
                            i6 = -4079167;
                        }
                        appCompatTextView3.setTextColor(i6);
                    } else {
                        AppCompatTextView appCompatTextView4 = childHolder.h;
                        if (!MainApp.K1) {
                            i5 = -16777216;
                        }
                        appCompatTextView4.setTextColor(i5);
                    }
                    if (this.x != null) {
                        MyButtonImage myButtonImage = childHolder.o;
                        int i7 = 4;
                        if (this.q) {
                            i2 = 4;
                        } else {
                            i2 = 0;
                        }
                        myButtonImage.setVisibility(i2);
                        childHolder.o.setTag(Integer.valueOf(childHolder.v));
                        childHolder.o.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainListAdapter.11
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                ListMoreListener listMoreListener = MainListAdapter.this.x;
                                if (listMoreListener != null) {
                                    listMoreListener.a(view, ((Integer) view.getTag()).intValue());
                                }
                            }
                        });
                        MySwitchView mySwitchView = childHolder.r;
                        if (mySwitchView != null) {
                            if (!this.q) {
                                i7 = 0;
                            }
                            mySwitchView.setVisibility(i7);
                        }
                    } else {
                        childHolder.o.setVisibility(8);
                        MySwitchView mySwitchView2 = childHolder.r;
                        if (mySwitchView2 != null) {
                            mySwitchView2.setVisibility(8);
                        }
                    }
                }
            }
        }
        return true;
    }

    public final void C() {
        Object tag;
        FragmentExpandView fragmentExpandView = this.g;
        if (fragmentExpandView != null) {
            int childCount = fragmentExpandView.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.g.getChildAt(i);
                if (childAt != null && (tag = childAt.getTag()) != null && (tag instanceof ChildHolder)) {
                    ChildHolder childHolder = (ChildHolder) tag;
                    if (childHolder.x) {
                        childHolder.f16585c.c(childHolder.v);
                    } else {
                        childHolder.f16585c.b();
                    }
                }
            }
        }
    }

    public final void D(int i) {
        Object tag;
        FragmentExpandView fragmentExpandView = this.g;
        if (fragmentExpandView != null) {
            int childCount = fragmentExpandView.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = this.g.getChildAt(i2);
                if (childAt != null && (tag = childAt.getTag()) != null && (tag instanceof ChildHolder)) {
                    ChildHolder childHolder = (ChildHolder) tag;
                    if (childHolder.v == i) {
                        childHolder.f16585c.c(i);
                    } else {
                        childHolder.f16585c.b();
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:168:0x0d7e  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x0db0  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0dd4  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0dfd  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0e00  */
    /* JADX WARN: Type inference failed for: r11v26, types: [java.lang.Object, com.mycompany.app.main.MainListAdapter$ChildHolder] */
    /* JADX WARN: Type inference failed for: r2v15, types: [java.lang.Object, com.mycompany.app.main.MainListAdapter$ChildHolder] */
    /* JADX WARN: Type inference failed for: r4v32, types: [java.lang.Object, com.mycompany.app.main.MainListAdapter$ChildHolder] */
    /* JADX WARN: Type inference failed for: r5v81, types: [java.lang.Object, com.mycompany.app.main.MainListAdapter$ChildHolder] */
    /* JADX WARN: Type inference failed for: r6v29, types: [java.lang.Object, com.mycompany.app.main.MainListAdapter$ChildHolder] */
    @Override // com.mycompany.app.expand.ExpandListAdapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View c(android.view.View r27, int r28, int r29) {
        /*
            Method dump skipped, instructions count: 3648
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainListAdapter.c(android.view.View, int, int):android.view.View");
    }

    @Override // com.mycompany.app.expand.ExpandListAdapter
    public final int d(int i) {
        List list = this.h;
        if (list != null && i >= 0 && i < list.size()) {
            return ((MainItem.GroupItem) this.h.get(i)).f16553c;
        }
        return 0;
    }

    public final void f(final View view, final ChildHolder childHolder, boolean z) {
        int i;
        AnimatorSet L;
        int i2;
        if (view != null && childHolder != null && childHolder.s == 0 && childHolder.e != null && z != view.isActivated()) {
            MyRoundImage myRoundImage = childHolder.e;
            if (MainApp.K1) {
                i = R.drawable.baseline_check_circle_dark_24;
            } else {
                i = R.drawable.baseline_check_circle_black_24;
            }
            myRoundImage.o(0, i);
            if (z) {
                L = MainUtil.L(childHolder.f, childHolder.e);
            } else {
                L = MainUtil.L(childHolder.e, childHolder.f);
            }
            if (L != null) {
                L.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.main.MainListAdapter.13
                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationCancel(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        ChildHolder childHolder2;
                        MyRoundImage myRoundImage2;
                        boolean z2;
                        int i3;
                        if (view != null && (childHolder2 = childHolder) != null && (myRoundImage2 = childHolder2.e) != null) {
                            int i4 = childHolder2.v;
                            MainListAdapter mainListAdapter = MainListAdapter.this;
                            boolean[] zArr = mainListAdapter.l;
                            if (zArr == null || i4 < 0 || i4 >= zArr.length || i4 < mainListAdapter.n) {
                                z2 = false;
                            } else {
                                z2 = zArr[i4];
                            }
                            if (z2) {
                                myRoundImage2.setScaleX(1.0f);
                                MyRoundImage myRoundImage3 = childHolder2.e;
                                if (MainApp.K1) {
                                    i3 = R.drawable.baseline_check_circle_dark_24;
                                } else {
                                    i3 = R.drawable.baseline_check_circle_black_24;
                                }
                                myRoundImage3.o(0, i3);
                                childHolder2.e.setVisibility(0);
                                childHolder2.e.setActivated(true);
                                childHolder2.f.setVisibility(4);
                                return;
                            }
                            myRoundImage2.setVisibility(4);
                            childHolder2.e.setActivated(false);
                            childHolder2.f.setScaleX(1.0f);
                            childHolder2.f.setVisibility(0);
                        }
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationRepeat(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationStart(Animator animator) {
                    }
                });
            }
            if (MainApp.K1) {
                i2 = R.drawable.selector_list_back_dark;
            } else {
                i2 = R.drawable.selector_list_back;
            }
            view.setBackgroundResource(i2);
            view.setActivated(z);
        }
    }

    public final void g(int i, boolean z) {
        Object tag;
        FragmentExpandView fragmentExpandView = this.g;
        if (fragmentExpandView == null) {
            return;
        }
        int childCount = fragmentExpandView.getChildCount();
        GroupHolder groupHolder = null;
        int i2 = 0;
        View view = null;
        while (true) {
            if (i2 >= childCount) {
                break;
            }
            view = this.g.getChildAt(i2);
            if (view != null && (tag = view.getTag()) != null && (tag instanceof GroupHolder)) {
                GroupHolder groupHolder2 = (GroupHolder) tag;
                if (groupHolder2.m == i) {
                    groupHolder = groupHolder2;
                    break;
                }
            }
            i2++;
        }
        h(view, groupHolder, z);
    }

    @Override // android.widget.ExpandableListAdapter
    public final Object getChild(int i, int i2) {
        return null;
    }

    @Override // android.widget.ExpandableListAdapter
    public final long getChildId(int i, int i2) {
        return 0L;
    }

    @Override // android.widget.ExpandableListAdapter
    public final int getGroupCount() {
        List list = this.h;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // android.widget.ExpandableListAdapter
    public final long getGroupId(int i) {
        return 0L;
    }

    /* JADX WARN: Type inference failed for: r2v6, types: [com.mycompany.app.main.MainListAdapter$GroupHolder, java.lang.Object] */
    @Override // android.widget.ExpandableListAdapter
    public final View getGroupView(int i, boolean z, View view, ViewGroup viewGroup) {
        Context context;
        int i2;
        View view2;
        GroupHolder groupHolder;
        int i3;
        int i4;
        GroupHolder groupHolder2;
        Context context2 = this.d;
        int i5 = this.e;
        if (view == null) {
            if (context2 == null) {
                context = context2;
                i2 = i5;
                groupHolder2 = null;
            } else {
                MyLineRelative myLineRelative = new MyLineRelative(context2);
                myLineRelative.b(MainApp.E1);
                myLineRelative.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
                int i6 = R.id.main_group_ftext;
                MySelectView mySelectView = new MySelectView(context2);
                mySelectView.setVisibility(8);
                RelativeLayout.LayoutParams h = a.h(-1, -1, 6, i6);
                h.addRule(8, i6);
                myLineRelative.addView(mySelectView, h);
                View view3 = new View(context2);
                view3.setVisibility(8);
                myLineRelative.addView(view3, -1, MainApp.b1);
                FrameLayout frameLayout = new FrameLayout(context2);
                frameLayout.setVisibility(8);
                int i7 = MainApp.i1;
                myLineRelative.addView(frameLayout, i7, i7);
                MyRoundImage myRoundImage = new MyRoundImage(context2);
                myRoundImage.setCircleRadius(MainApp.j1);
                myRoundImage.o(-6381922, R.drawable.outline_check_white_24);
                myRoundImage.setVisibility(4);
                int i8 = MainApp.f1;
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i8, i8);
                layoutParams.gravity = 17;
                frameLayout.addView(myRoundImage, layoutParams);
                MyButtonCheck myButtonCheck = new MyButtonCheck(context2);
                myButtonCheck.o(MainApp.j1, MainApp.k1);
                myButtonCheck.p(R.drawable.baseline_folder_white_24, R.drawable.outline_folder_white_24);
                int i9 = MainApp.f1;
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i9, i9);
                layoutParams2.gravity = 17;
                frameLayout.addView(myButtonCheck, layoutParams2);
                RelativeLayout relativeLayout = new RelativeLayout(context2);
                relativeLayout.setId(i6);
                relativeLayout.setGravity(16);
                relativeLayout.setPaddingRelative(MainApp.i1, MainApp.F1, MainApp.g1, MainApp.F1);
                relativeLayout.setMinimumHeight(MainApp.i1);
                myLineRelative.addView(relativeLayout, -1, -2);
                AppCompatTextView appCompatTextView = new AppCompatTextView(context2, null);
                int i10 = R.id.main_group_name;
                appCompatTextView.setId(i10);
                appCompatTextView.setSingleLine(true);
                appCompatTextView.setTextSize(1, 16.0f);
                relativeLayout.addView(appCompatTextView, -2, -2);
                AppCompatTextView appCompatTextView2 = new AppCompatTextView(context2, null);
                appCompatTextView2.setSingleLine(true);
                appCompatTextView2.setTextSize(1, 14.0f);
                appCompatTextView2.setVisibility(8);
                RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
                layoutParams3.addRule(3, i10);
                layoutParams3.topMargin = MainApp.G1;
                relativeLayout.addView(appCompatTextView2, layoutParams3);
                FrameLayout frameLayout2 = new FrameLayout(context2);
                frameLayout2.setVisibility(8);
                i2 = i5;
                RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(MainApp.g1, MainApp.i1);
                layoutParams4.addRule(21);
                myLineRelative.addView(frameLayout2, layoutParams4);
                MyButtonImage myButtonImage = new MyButtonImage(context2);
                myButtonImage.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                myButtonImage.setVisibility(8);
                frameLayout2.addView(myButtonImage, MainApp.g1, MainApp.i1);
                MyButtonCheck myButtonCheck2 = new MyButtonCheck(context2);
                myButtonCheck2.setVisibility(8);
                context = context2;
                frameLayout2.addView(myButtonCheck2, MainApp.g1, MainApp.i1);
                ?? obj = new Object();
                obj.f16586a = myLineRelative;
                obj.b = mySelectView;
                obj.f16587c = view3;
                obj.d = frameLayout;
                obj.e = myRoundImage;
                obj.f = myButtonCheck;
                obj.g = relativeLayout;
                obj.h = appCompatTextView;
                obj.i = appCompatTextView2;
                obj.j = frameLayout2;
                obj.k = myButtonImage;
                obj.l = myButtonCheck2;
                groupHolder2 = obj;
            }
            if (groupHolder2 == null) {
                return view;
            }
            MyLineRelative myLineRelative2 = groupHolder2.f16586a;
            if (myLineRelative2 == null) {
                return myLineRelative2;
            }
            myLineRelative2.setTag(groupHolder2);
            groupHolder = groupHolder2;
            view2 = myLineRelative2;
        } else {
            context = context2;
            i2 = i5;
            GroupHolder groupHolder3 = (GroupHolder) view.getTag();
            if (groupHolder3 == null) {
                return view;
            }
            view2 = view;
            groupHolder = groupHolder3;
        }
        int i11 = -328966;
        if (MainApp.K1) {
            groupHolder.i.setTextColor(-328966);
            groupHolder.k.setImageResource(R.drawable.outline_more_vert_dark_24);
            groupHolder.k.setBgPreColor(-12632257);
            groupHolder.l.p(R.drawable.baseline_check_circle_dark_24, R.drawable.outline_radio_button_unchecked_dark_24);
            groupHolder.l.setBgPreColor(-12632257);
        } else {
            groupHolder.i.setTextColor(-10395295);
            groupHolder.k.setImageResource(R.drawable.outline_more_vert_black_24);
            groupHolder.k.setBgPreColor(553648128);
            groupHolder.l.p(R.drawable.baseline_check_circle_black_24, R.drawable.outline_radio_button_unchecked_black_24);
            groupHolder.l.setBgPreColor(553648128);
        }
        List list = this.h;
        if (list != null && i >= 0 && i < list.size()) {
            MainItem.GroupItem groupItem = (MainItem.GroupItem) this.h.get(i);
            if (groupItem == null) {
                groupHolder.m = -1;
                groupHolder.b.setVisibility(8);
                view2.setBackground(null);
                view2.setActivated(false);
                return view2;
            }
            groupHolder.f16587c.setVisibility(8);
            groupHolder.d.setVisibility(8);
            groupHolder.g.setVisibility(8);
            groupHolder.j.setVisibility(8);
            groupHolder.i.setVisibility(8);
            groupHolder.k.setVisibility(8);
            groupHolder.l.setVisibility(8);
            if (groupItem.f16552a == 1) {
                groupHolder.m = -1;
                groupHolder.b.setVisibility(8);
                groupHolder.f16587c.setVisibility(0);
                view2.setBackground(null);
                view2.setActivated(false);
                return view2;
            }
            groupHolder.m = i;
            if (TextUtils.isEmpty(groupItem.b)) {
                groupHolder.b.setVisibility(8);
                view2.setBackground(null);
                view2.setActivated(false);
                return view2;
            }
            boolean u = u(i);
            if (groupHolder.b.getVisibility() == 0 && groupHolder.b.getChildPos() != groupHolder.m) {
                groupHolder.b.setVisibility(8);
            }
            groupHolder.d.setVisibility(0);
            groupHolder.f.setBgNorColor(-16777216);
            if (this.u == i) {
                this.u = -1;
                groupHolder.f.q(!z, true);
            } else {
                groupHolder.f.q(!z, false);
            }
            if (u) {
                groupHolder.f.setVisibility(4);
                groupHolder.e.setScaleX(1.0f);
                groupHolder.e.setVisibility(0);
            } else {
                groupHolder.e.setVisibility(4);
                groupHolder.f.setScaleX(1.0f);
                groupHolder.f.setVisibility(0);
            }
            groupHolder.g.setVisibility(0);
            groupHolder.h.setText(groupItem.b);
            groupHolder.h.setSingleLine(PrefUtil.c(i2));
            if (i == l(this.p)) {
                if (PrefUtil.b(i2)) {
                    groupHolder.h.setTextColor(-769226);
                } else {
                    AppCompatTextView appCompatTextView3 = groupHolder.h;
                    if (!MainApp.K1) {
                        i11 = -16777216;
                    }
                    appCompatTextView3.setTextColor(i11);
                }
            } else {
                AppCompatTextView appCompatTextView4 = groupHolder.h;
                if (!MainApp.K1) {
                    i11 = -16777216;
                }
                appCompatTextView4.setTextColor(i11);
            }
            if (PrefUtil.a(i2)) {
                AppCompatTextView appCompatTextView5 = groupHolder.i;
                StringBuilder sb = new StringBuilder();
                sb.append(groupItem.f16553c);
                if (groupItem.f16553c > 1) {
                    i4 = R.string.items;
                } else {
                    i4 = R.string.item;
                }
                sb.append(context.getString(i4));
                appCompatTextView5.setText(sb.toString());
                groupHolder.i.setVisibility(0);
            }
            if (this.x != null || this.y != null) {
                groupHolder.j.setVisibility(0);
                groupHolder.j.setOnTouchListener(new View.OnTouchListener() { // from class: com.mycompany.app.main.MainListAdapter.2
                    @Override // android.view.View.OnTouchListener
                    public final boolean onTouch(View view4, MotionEvent motionEvent) {
                        return MainListAdapter.this.q;
                    }
                });
                if (this.x != null) {
                    if (!this.q) {
                        groupHolder.k.setVisibility(0);
                    }
                    groupHolder.k.setTag(Integer.valueOf(i));
                    groupHolder.k.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainListAdapter.3
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view4) {
                            ListMoreListener listMoreListener = MainListAdapter.this.x;
                            if (listMoreListener != null) {
                                ((MainListView.AnonymousClass71) listMoreListener).b(view4, ((Integer) view4.getTag()).intValue());
                            }
                        }
                    });
                }
                if (this.y != null) {
                    if (this.q) {
                        groupHolder.l.setVisibility(0);
                        groupHolder.l.q(u, false);
                    }
                    groupHolder.l.setTag(Integer.valueOf(i));
                    groupHolder.l.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainListAdapter.4
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view4) {
                            ListRectListener listRectListener = MainListAdapter.this.y;
                            if (listRectListener != null) {
                                ((MainListView.AnonymousClass72) listRectListener).a(((Integer) view4.getTag()).intValue());
                            }
                        }
                    });
                }
            }
            if (MainApp.K1) {
                i3 = R.drawable.selector_list_back_dark;
            } else {
                i3 = R.drawable.selector_list_back;
            }
            view2.setBackgroundResource(i3);
            view2.setActivated(u);
            return view2;
        }
        groupHolder.m = -1;
        groupHolder.b.setVisibility(8);
        view2.setBackground(null);
        view2.setActivated(false);
        return view2;
    }

    public final void h(final View view, final GroupHolder groupHolder, boolean z) {
        AnimatorSet L;
        int i;
        if (view != null && groupHolder != null && groupHolder.e != null && z != view.isActivated()) {
            if (z) {
                L = MainUtil.L(groupHolder.f, groupHolder.e);
            } else {
                L = MainUtil.L(groupHolder.e, groupHolder.f);
            }
            if (L != null) {
                L.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.main.MainListAdapter.12
                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationCancel(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        GroupHolder groupHolder2;
                        if (view != null && (groupHolder2 = groupHolder) != null && groupHolder2.e != null) {
                            if (MainListAdapter.this.u(groupHolder2.m)) {
                                groupHolder2.f.setVisibility(4);
                                groupHolder2.e.setScaleX(1.0f);
                                groupHolder2.e.setVisibility(0);
                            } else {
                                groupHolder2.e.setVisibility(4);
                                groupHolder2.f.setScaleX(1.0f);
                                groupHolder2.f.setVisibility(0);
                            }
                        }
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationRepeat(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationStart(Animator animator) {
                    }
                });
            }
            groupHolder.l.q(z, true);
            if (MainApp.K1) {
                i = R.drawable.selector_list_back_dark;
            } else {
                i = R.drawable.selector_list_back;
            }
            view.setBackgroundResource(i);
            view.setActivated(z);
        }
    }

    @Override // android.widget.ExpandableListAdapter
    public final boolean hasStableIds() {
        return false;
    }

    public final ArrayList i() {
        boolean[] zArr;
        boolean[] zArr2;
        int i;
        boolean z;
        List list = this.h;
        if (list == null || this.i == null || (zArr = this.j) == null || zArr.length != list.size() || (zArr2 = this.l) == null || zArr2.length != this.i.size() || this.m <= 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (s()) {
            for (MainItem.ChildItem childItem : this.i) {
                if (childItem != null && childItem.b == 0) {
                    arrayList.add(Long.valueOf(childItem.y));
                }
            }
        } else {
            for (MainItem.GroupItem groupItem : this.h) {
                if (groupItem != null && (i = this.k[groupItem.d]) != 0) {
                    int i2 = this.n;
                    if (i + i2 == groupItem.f16553c) {
                        z = true;
                    } else {
                        z = false;
                    }
                    int min = Math.min(groupItem.e + groupItem.f16553c, this.i.size());
                    for (int max = Math.max(groupItem.e + i2, 0); max < min; max++) {
                        MainItem.ChildItem childItem2 = (MainItem.ChildItem) this.i.get(max);
                        if (childItem2 != null && childItem2.b == 0 && (z || this.l[max])) {
                            arrayList.add(Long.valueOf(childItem2.y));
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    @Override // android.widget.ExpandableListAdapter
    public final boolean isChildSelectable(int i, int i2) {
        return true;
    }

    public final List j() {
        boolean[] zArr;
        boolean[] zArr2;
        int i;
        List list = this.h;
        if (list == null || this.i == null || (zArr = this.j) == null || zArr.length != list.size() || (zArr2 = this.l) == null || zArr2.length != this.i.size() || this.m <= 0) {
            return null;
        }
        if (s()) {
            int i2 = this.n;
            if (i2 > 0) {
                List list2 = this.i;
                return list2.subList(i2, list2.size());
            }
            return new ArrayList(this.i);
        }
        ArrayList arrayList = new ArrayList();
        for (MainItem.GroupItem groupItem : this.h) {
            if (groupItem != null && (i = this.k[groupItem.d]) != 0) {
                int i3 = this.n;
                int i4 = i + i3;
                int i5 = groupItem.f16553c;
                if (i4 == i5) {
                    List list3 = this.i;
                    int i6 = groupItem.e;
                    arrayList.addAll(list3.subList(i3 + i6, Math.min(i6 + i5, list3.size())));
                } else {
                    int min = Math.min(groupItem.e + groupItem.f16553c, this.i.size());
                    for (int max = Math.max(groupItem.e + i3, 0); max < min; max++) {
                        MainItem.ChildItem childItem = (MainItem.ChildItem) this.i.get(max);
                        if (childItem != null && childItem.b == 0 && this.l[max]) {
                            arrayList.add(childItem);
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    public final ArrayList k() {
        boolean[] zArr;
        boolean[] zArr2;
        int i;
        boolean z;
        List list = this.h;
        if (list == null || this.i == null || (zArr = this.j) == null || zArr.length != list.size() || (zArr2 = this.l) == null || zArr2.length != this.i.size() || this.m <= 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (s()) {
            for (MainItem.ChildItem childItem : this.i) {
                if (childItem != null && childItem.b == 0) {
                    arrayList.add(childItem.g);
                }
            }
        } else {
            for (MainItem.GroupItem groupItem : this.h) {
                if (groupItem != null && (i = this.k[groupItem.d]) != 0) {
                    int i2 = this.n;
                    if (i + i2 == groupItem.f16553c) {
                        z = true;
                    } else {
                        z = false;
                    }
                    int min = Math.min(groupItem.e + groupItem.f16553c, this.i.size());
                    for (int max = Math.max(groupItem.e + i2, 0); max < min; max++) {
                        MainItem.ChildItem childItem2 = (MainItem.ChildItem) this.i.get(max);
                        if (childItem2 != null && childItem2.b == 0 && (z || this.l[max])) {
                            arrayList.add(childItem2.g);
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    public final int l(int i) {
        MainItem.ChildItem childItem;
        List list = this.i;
        if (list == null || i < 0 || i >= list.size() || (childItem = (MainItem.ChildItem) this.i.get(i)) == null) {
            return 0;
        }
        return childItem.H;
    }

    public final MainItem.ChildItem m(int i) {
        List list = this.i;
        if (list != null && i >= 0 && i < list.size()) {
            return (MainItem.ChildItem) this.i.get(i);
        }
        return null;
    }

    public final int n(int i) {
        List list;
        if (this.g != null && this.h != null && (list = this.i) != null && i >= 0 && i < list.size()) {
            if (this.h.size() == 1) {
                return i + 1;
            }
            MainItem.ChildItem childItem = (MainItem.ChildItem) this.i.get(i);
            if (childItem == null) {
                return 0;
            }
            if (!this.o) {
                return childItem.H;
            }
            int i2 = childItem.H + childItem.I;
            for (int i3 = 0; i3 < childItem.H && i3 < this.h.size(); i3++) {
                MainItem.GroupItem groupItem = (MainItem.GroupItem) this.h.get(i3);
                if (groupItem != null && groupItem.f16553c != 0 && this.g.isGroupExpanded(i3)) {
                    i2 += groupItem.f16553c;
                }
            }
            return i2;
        }
        return -1;
    }

    public final int o() {
        List list = this.i;
        if (list == null) {
            return 0;
        }
        return list.size() - this.n;
    }

    @Override // android.widget.ExpandableListAdapter
    /* renamed from: p, reason: merged with bridge method [inline-methods] */
    public final MainItem.GroupItem getGroup(int i) {
        List list = this.h;
        if (list != null && i >= 0 && i < list.size()) {
            return (MainItem.GroupItem) this.h.get(i);
        }
        return null;
    }

    public final List q(int i) {
        MainItem.GroupItem groupItem;
        int i2;
        List list = this.h;
        if (list != null && i >= 0 && i < list.size() && (groupItem = (MainItem.GroupItem) this.h.get(i)) != null && (i2 = groupItem.f16553c) != 0) {
            int i3 = groupItem.e;
            int i4 = i2 + i3;
            List list2 = this.i;
            if (list2 != null && i3 >= 0 && i4 <= list2.size()) {
                return this.i.subList(i3, i4);
            }
        }
        return null;
    }

    public final Pattern r() {
        if (this.B == null) {
            this.B = Pattern.compile("\\p{Punct}");
        }
        return this.B;
    }

    public final boolean s() {
        List list = this.i;
        if (list == null || this.m != list.size() - this.n) {
            return false;
        }
        return true;
    }

    public final boolean t(int i) {
        MainItem.ChildItem childItem;
        List list = this.i;
        if (list != null && i >= 0 && i < list.size() && (childItem = (MainItem.ChildItem) this.i.get(i)) != null && childItem.b == 0) {
            return false;
        }
        return true;
    }

    public final boolean u(int i) {
        boolean[] zArr = this.j;
        if (zArr != null && i >= 0 && i < zArr.length) {
            return zArr[i];
        }
        return false;
    }

    public final void v(int i, boolean z) {
        boolean[] zArr;
        MainItem.ChildItem childItem;
        MainItem.GroupItem groupItem;
        int i2;
        Object tag;
        List list = this.i;
        if (list != null && i >= 0 && i < list.size() && (zArr = this.l) != null && i >= 0 && i < zArr.length && (childItem = (MainItem.ChildItem) this.i.get(i)) != null && childItem.b == 0) {
            boolean[] zArr2 = this.l;
            if (zArr2[i] != z) {
                zArr2[i] = z;
                boolean z2 = true;
                if (z) {
                    if (this.m < this.i.size()) {
                        this.m++;
                    }
                } else {
                    int i3 = this.m;
                    if (i3 > 0) {
                        this.m = i3 - 1;
                    }
                }
                FragmentExpandView fragmentExpandView = this.g;
                if (fragmentExpandView != null) {
                    int childCount = fragmentExpandView.getChildCount();
                    ChildHolder childHolder = null;
                    int i4 = 0;
                    View view = null;
                    while (true) {
                        if (i4 >= childCount) {
                            break;
                        }
                        view = this.g.getChildAt(i4);
                        if (view != null && (tag = view.getTag()) != null && (tag instanceof ChildHolder)) {
                            ChildHolder childHolder2 = (ChildHolder) tag;
                            if (childHolder2.v == i) {
                                childHolder = childHolder2;
                                break;
                            }
                        }
                        i4++;
                    }
                    f(view, childHolder, z);
                }
                int i5 = childItem.H;
                List list2 = this.h;
                if (list2 != null && i5 >= 0 && i5 < list2.size() && (groupItem = (MainItem.GroupItem) this.h.get(i5)) != null && (i2 = groupItem.f16553c) != 0) {
                    if (z) {
                        int[] iArr = this.k;
                        int i6 = iArr[i5];
                        if (i6 < i2) {
                            iArr[i5] = i6 + 1;
                        }
                    } else {
                        int[] iArr2 = this.k;
                        int i7 = iArr2[i5];
                        if (i7 > 0) {
                            iArr2[i5] = i7 - 1;
                        }
                    }
                    if (this.k[i5] != i2) {
                        z2 = false;
                    }
                    boolean[] zArr3 = this.j;
                    if (zArr3[i5] != z2) {
                        zArr3[i5] = z2;
                        g(i5, z);
                    }
                }
            }
        }
    }

    public final void w(boolean z) {
        List list;
        Object tag;
        int i;
        int i2;
        int i3;
        if (this.g != null && (list = this.i) != null && list.size() != 0) {
            if (this.q) {
                boolean[] zArr = this.j;
                if (zArr != null && this.l != null) {
                    MainUtil.b(zArr, z);
                    MainUtil.b(this.l, z);
                    for (MainItem.GroupItem groupItem : this.h) {
                        if (groupItem != null && (i2 = groupItem.f16553c) != 0) {
                            int[] iArr = this.k;
                            int i4 = groupItem.d;
                            if (z) {
                                i3 = i2 - this.n;
                            } else {
                                i3 = 0;
                            }
                            iArr[i4] = i3;
                        }
                    }
                    if (z) {
                        i = this.i.size() - this.n;
                    } else {
                        i = 0;
                    }
                    if (i != this.m) {
                        this.m = i;
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            }
            int childCount = this.g.getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = this.g.getChildAt(i5);
                if (childAt != null && (tag = childAt.getTag()) != null) {
                    if (tag instanceof GroupHolder) {
                        h(childAt, (GroupHolder) tag, z);
                    } else if (tag instanceof ChildHolder) {
                        f(childAt, (ChildHolder) tag, z);
                    }
                }
            }
        }
    }

    public final void x(ChildHolder childHolder, MainItem.ChildItem childItem) {
        int i;
        String v;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        DocumentFile f;
        Context context = this.d;
        if (childItem == null) {
            return;
        }
        int i11 = childItem.d;
        int i12 = 0;
        if (i11 != 2) {
            childItem.N = false;
        }
        if (i11 == 3) {
            if (TextUtils.isEmpty(childItem.F) || TextUtils.isEmpty(childItem.G)) {
                if (TextUtils.isEmpty(childItem.g)) {
                    if (PrefList.d1) {
                        childHolder.i.setVisibility(0);
                        childHolder.j.setVisibility(8);
                    } else {
                        childHolder.i.setVisibility(8);
                        childHolder.j.setVisibility(8);
                    }
                    childHolder.k.setVisibility(8);
                    childHolder.l.setVisibility(8);
                    childHolder.m.setVisibility(8);
                    childHolder.p.setVisibility(8);
                    childHolder.q.setVisibility(8);
                    MyButtonImage myButtonImage = childHolder.o;
                    if (this.q) {
                        i12 = 4;
                    }
                    myButtonImage.setVisibility(i12);
                    childHolder.i.setText(R.string.down_fail);
                    return;
                }
                if ((childItem.A == -1 || childItem.B == -1) && (f = MainUri.f(context, childItem.g)) != null) {
                    childItem.A = f.f();
                    childItem.B = f.g();
                }
                long j = childItem.A;
                if (j != -1) {
                    childItem.F = MainUtil.y1(j, this.A, "yyyy.MM.dd");
                }
                long j2 = childItem.B;
                if (j2 != -1) {
                    childItem.G = MainUtil.h1(j2);
                }
                MainUtil.Z0(childItem);
            }
            if (PrefList.d1) {
                childHolder.i.setVisibility(0);
                childHolder.j.setVisibility(0);
            } else {
                childHolder.i.setVisibility(8);
                childHolder.j.setVisibility(8);
            }
            childHolder.k.setVisibility(8);
            childHolder.l.setVisibility(8);
            childHolder.m.setVisibility(8);
            childHolder.p.setVisibility(8);
            childHolder.q.setVisibility(8);
            MyButtonImage myButtonImage2 = childHolder.o;
            if (this.q) {
                i12 = 4;
            }
            myButtonImage2.setVisibility(i12);
            childHolder.i.setText(childItem.F);
            childHolder.j.setText(childItem.G);
            return;
        }
        if (i11 == 5) {
            if (PrefList.d1) {
                childHolder.i.setVisibility(0);
                childHolder.j.setVisibility(8);
            } else {
                childHolder.i.setVisibility(8);
                childHolder.j.setVisibility(8);
            }
            childHolder.k.setVisibility(8);
            childHolder.l.setVisibility(8);
            childHolder.m.setVisibility(8);
            childHolder.p.setVisibility(8);
            childHolder.q.setVisibility(8);
            MyButtonImage myButtonImage3 = childHolder.o;
            if (this.q) {
                i12 = 4;
            }
            myButtonImage3.setVisibility(i12);
            childHolder.i.setText(R.string.invalid_url);
            return;
        }
        float f2 = 0.0f;
        if (i11 == 4) {
            long j3 = childItem.B;
            if (j3 == 0 && childItem.C > 0) {
                childHolder.k.h(true, false);
                childHolder.l.setText(MainUtil.h1(childItem.C));
                MyButtonImage myButtonImage4 = childHolder.q;
                if (MainApp.K1) {
                    i10 = R.drawable.baseline_stop_dark_24;
                } else {
                    i10 = R.drawable.baseline_stop_black_24;
                }
                myButtonImage4.setImageResource(i10);
            } else {
                if (j3 > 0) {
                    f2 = (((float) childItem.C) * 100.0f) / ((float) j3);
                }
                childHolder.k.h(false, false);
                childHolder.k.setProgress(f2);
                childHolder.l.setText(MainUtil.e1(childItem.C, childItem.B));
                MyButtonImage myButtonImage5 = childHolder.q;
                if (MainApp.K1) {
                    i8 = R.drawable.outline_close_dark_18;
                } else {
                    i8 = R.drawable.outline_close_black_18;
                }
                myButtonImage5.setImageResource(i8);
            }
            childHolder.m.setText(R.string.fail);
            childHolder.i.setVisibility(8);
            childHolder.j.setVisibility(8);
            childHolder.k.setVisibility(0);
            childHolder.l.setVisibility(0);
            childHolder.m.setVisibility(0);
            childHolder.p.setVisibility(0);
            childHolder.p.setEnabled(true);
            MyButtonImage myButtonImage6 = childHolder.p;
            if (MainApp.K1) {
                i9 = R.drawable.baseline_play_arrow_dark_24;
            } else {
                i9 = R.drawable.baseline_play_arrow_black_24;
            }
            myButtonImage6.setImageResource(i9);
            childHolder.q.setVisibility(0);
            childHolder.o.setVisibility(8);
            return;
        }
        if (i11 == 2) {
            long j4 = childItem.B;
            if (j4 == 0 && childItem.C > 0) {
                childHolder.k.h(true, false);
                childHolder.l.setText(MainUtil.h1(childItem.C));
                MyButtonImage myButtonImage7 = childHolder.q;
                if (MainApp.K1) {
                    i7 = R.drawable.baseline_stop_dark_24;
                } else {
                    i7 = R.drawable.baseline_stop_black_24;
                }
                myButtonImage7.setImageResource(i7);
            } else {
                if (j4 > 0) {
                    f2 = (((float) childItem.C) * 100.0f) / ((float) j4);
                }
                childHolder.k.h(false, false);
                childHolder.k.setProgress(f2);
                childHolder.l.setText(MainUtil.e1(childItem.C, childItem.B));
                MyButtonImage myButtonImage8 = childHolder.q;
                if (MainApp.K1) {
                    i4 = R.drawable.outline_close_dark_18;
                } else {
                    i4 = R.drawable.outline_close_black_18;
                }
                myButtonImage8.setImageResource(i4);
            }
            AppCompatTextView appCompatTextView = childHolder.m;
            if (childItem.N) {
                i5 = R.string.reserved;
            } else {
                i5 = R.string.paused;
            }
            appCompatTextView.setText(i5);
            childHolder.i.setVisibility(8);
            childHolder.j.setVisibility(8);
            childHolder.k.setVisibility(0);
            childHolder.l.setVisibility(0);
            childHolder.m.setVisibility(0);
            childHolder.p.setVisibility(0);
            childHolder.p.setEnabled(true);
            MyButtonImage myButtonImage9 = childHolder.p;
            if (MainApp.K1) {
                i6 = R.drawable.baseline_play_arrow_dark_24;
            } else {
                i6 = R.drawable.baseline_play_arrow_black_24;
            }
            myButtonImage9.setImageResource(i6);
            childHolder.q.setVisibility(0);
            childHolder.o.setVisibility(8);
            return;
        }
        long j5 = childItem.B;
        String str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        if (j5 == 0 && childItem.C > 0) {
            childHolder.k.h(true, true);
            childHolder.l.setText(MainUtil.h1(childItem.C));
            childHolder.m.setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
            MyButtonImage myButtonImage10 = childHolder.q;
            if (MainApp.K1) {
                i3 = R.drawable.baseline_stop_dark_24;
            } else {
                i3 = R.drawable.baseline_stop_black_24;
            }
            myButtonImage10.setImageResource(i3);
        } else {
            if (j5 > 0) {
                long j6 = childItem.C;
                f2 = (((float) j6) * 100.0f) / ((float) j5);
                if (j6 - childItem.E > 0) {
                    long currentTimeMillis = System.currentTimeMillis() - childItem.D;
                    long j7 = childItem.B;
                    long j8 = childItem.E;
                    long j9 = (((float) ((j7 - j8) * currentTimeMillis)) / ((float) (childItem.C - j8))) - currentTimeMillis;
                    if (context == null) {
                        v = null;
                    } else if (j9 <= 0) {
                        v = com.google.android.gms.internal.mlkit_vision_text_common.a.v(R.string.time_s, context, new StringBuilder("0"));
                    } else {
                        long j10 = j9 / 1000;
                        if (j10 == 0) {
                            v = com.google.android.gms.internal.mlkit_vision_text_common.a.v(R.string.time_s, context, new StringBuilder("1"));
                        } else {
                            long j11 = j9 / 60000;
                            if (j11 == 0) {
                                StringBuilder sb = new StringBuilder();
                                sb.append(j10);
                                v = com.google.android.gms.internal.mlkit_vision_text_common.a.v(R.string.time_s, context, sb);
                            } else {
                                long j12 = j9 / 3600000;
                                if (j12 == 0) {
                                    StringBuilder sb2 = new StringBuilder();
                                    sb2.append(j11);
                                    sb2.append(context.getString(R.string.time_m));
                                    sb2.append(" ");
                                    sb2.append((j9 % 60000) / 1000);
                                    v = com.google.android.gms.internal.mlkit_vision_text_common.a.v(R.string.time_s, context, sb2);
                                } else if (j9 / 86400000 == 0) {
                                    StringBuilder sb3 = new StringBuilder();
                                    sb3.append(j12);
                                    sb3.append(context.getString(R.string.time_h));
                                    sb3.append(" ");
                                    sb3.append((j9 % 3600000) / 60000);
                                    v = com.google.android.gms.internal.mlkit_vision_text_common.a.v(R.string.time_m, context, sb3);
                                } else {
                                    if (j12 > 999) {
                                        j12 = 999;
                                    }
                                    StringBuilder sb4 = new StringBuilder();
                                    sb4.append(j12);
                                    v = com.google.android.gms.internal.mlkit_vision_text_common.a.v(R.string.time_h, context, sb4);
                                }
                            }
                        }
                    }
                    str = v;
                    if (childItem.M) {
                        str = context.getString(R.string.finishing) + str;
                    }
                }
            }
            childHolder.k.h(false, false);
            childHolder.k.setProgress(f2);
            childHolder.l.setText(MainUtil.e1(childItem.C, childItem.B));
            childHolder.m.setText(str);
            MyButtonImage myButtonImage11 = childHolder.q;
            if (MainApp.K1) {
                i = R.drawable.outline_close_dark_18;
            } else {
                i = R.drawable.outline_close_black_18;
            }
            myButtonImage11.setImageResource(i);
        }
        childHolder.i.setVisibility(8);
        childHolder.j.setVisibility(8);
        childHolder.k.setVisibility(0);
        childHolder.l.setVisibility(0);
        childHolder.m.setVisibility(0);
        childHolder.p.setVisibility(0);
        childHolder.p.setEnabled(true);
        MyButtonImage myButtonImage12 = childHolder.p;
        if (MainApp.K1) {
            i2 = R.drawable.baseline_pause_dark_24;
        } else {
            i2 = R.drawable.baseline_pause_black_24;
        }
        myButtonImage12.setImageResource(i2);
        childHolder.q.setVisibility(0);
        childHolder.o.setVisibility(8);
    }

    public final void y(int i, boolean z) {
        List list;
        boolean[] zArr;
        MainItem.GroupItem groupItem;
        int i2;
        Object tag;
        if (this.g != null && (list = this.h) != null && i >= 0 && i < list.size() && (zArr = this.j) != null && i >= 0 && i < zArr.length && (groupItem = (MainItem.GroupItem) this.h.get(i)) != null && groupItem.f16553c != 0) {
            boolean[] zArr2 = this.j;
            if (zArr2[i] != z) {
                zArr2[i] = z;
                g(i, z);
                int[] iArr = this.k;
                int i3 = iArr[i];
                if (z) {
                    i2 = groupItem.f16553c - this.n;
                } else {
                    i2 = 0;
                }
                iArr[i] = i2;
                this.m = (i2 - i3) + this.m;
                MainUtil.a(this.l, groupItem.e, groupItem.f16553c, z);
                int childCount = this.g.getChildCount();
                for (int i4 = 0; i4 < childCount; i4++) {
                    View childAt = this.g.getChildAt(i4);
                    if (childAt != null && (tag = childAt.getTag()) != null && (tag instanceof ChildHolder)) {
                        ChildHolder childHolder = (ChildHolder) tag;
                        if (childHolder.t == i) {
                            f(childAt, childHolder, z);
                        }
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v2, types: [com.mycompany.app.main.MainItem$ViewItem, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v4, types: [java.lang.Object, com.nostra13.universalimageloader.core.display.BitmapDisplayer] */
    /* JADX WARN: Type inference failed for: r9v1, types: [com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener, java.lang.Object] */
    public final void z(int i, View view, ChildHolder childHolder, MainItem.ChildItem childItem, String str) {
        if (view != null && this.v != null) {
            childHolder.f.setTag(childHolder);
            if (!URLUtil.isNetworkUrl(str)) {
                childHolder.f.o(childItem.v, childItem.w);
                return;
            }
            Bitmap a2 = ImageLoader.f().g().a(MemoryCacheUtils.a(2, str));
            boolean z = true;
            if (MainUtil.f6(a2)) {
                FragmentExpandView fragmentExpandView = this.g;
                if (fragmentExpandView == null || fragmentExpandView.h == 0) {
                    z = false;
                }
                if (z && !childHolder.e.isActivated()) {
                    childHolder.e.o(childItem.v, childItem.w);
                    childHolder.e.s();
                }
                childHolder.f.r(childItem.g, z);
                childHolder.f.setImageBitmap(a2);
                return;
            }
            childHolder.f.o(childItem.v, childItem.w);
            if (!e(i)) {
                ?? obj = new Object();
                obj.f16554a = 7;
                obj.q = str;
                obj.r = str;
                obj.f = childItem.J;
                obj.t = 2;
                if (this.w == null) {
                    DisplayImageOptions.Builder builder = new DisplayImageOptions.Builder();
                    builder.f20960a = true;
                    Bitmap.Config config = Bitmap.Config.RGB_565;
                    builder.a();
                    builder.f = new Object();
                    this.w = new DisplayImageOptions(builder);
                }
                ImageLoader.f().c(obj, childHolder.f, this.w, new Object());
            }
        }
    }
}
