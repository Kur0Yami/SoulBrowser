package com.mycompany.app.main;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.impl.workers.a;
import com.mycompany.app.db.book.DbBookMemo;
import com.mycompany.app.db.book.DbBookWeb;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainListAdapter;
import com.mycompany.app.main.MainListView2;
import com.mycompany.app.pref.PrefList;
import com.mycompany.app.pref.PrefUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyListChild;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.view.MyRoundImage;
import com.mycompany.app.view.MyScrollBar;
import com.mycompany.app.view.MySelectView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public class MainListAdapter2 extends RecyclerView.Adapter<MainListHolder> {
    public Context d;
    public int e;
    public MyRecyclerView f;
    public List g;
    public boolean[] h;
    public int i;
    public int j;
    public int k;
    public int l;
    public boolean m;
    public boolean n;
    public String o;
    public MainListLoader p;
    public List2Listener q;
    public MainListAdapter.ListMoreListener r;
    public String s;
    public Pattern t;
    public boolean u;
    public int v;

    /* renamed from: com.mycompany.app.main.MainListAdapter2$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass3 implements View.OnTouchListener {
        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    /* loaded from: classes3.dex */
    public interface List2Listener {
    }

    /* loaded from: classes3.dex */
    public static class MainListHolder extends RecyclerView.ViewHolder {
        public RelativeLayout A;
        public AppCompatTextView B;
        public AppCompatTextView C;
        public AppCompatTextView D;
        public FrameLayout E;
        public MyButtonImage F;
        public int G;
        public int H;
        public boolean I;
        public int u;
        public MyListChild v;
        public MySelectView w;
        public FrameLayout x;
        public MyRoundImage y;
        public MyRoundImage z;
    }

    public final int A(int i) {
        List list;
        if (this.f != null && (list = this.g) != null && i >= 0 && i < list.size()) {
            return i + 1;
        }
        return -1;
    }

    public final int B() {
        List list = this.g;
        if (list == null) {
            return 0;
        }
        return (list.size() - this.j) - this.k;
    }

    public final boolean C(int i) {
        boolean[] zArr = this.h;
        if (zArr != null && i >= this.j && i < zArr.length - this.k) {
            return zArr[i];
        }
        return false;
    }

    public final boolean D() {
        List list = this.g;
        if (list == null || this.i != (list.size() - this.j) - this.k) {
            return false;
        }
        return true;
    }

    public final boolean E(int i) {
        MainItem.ChildItem childItem;
        List list = this.g;
        if (list != null && i >= 0 && i < list.size() && (childItem = (MainItem.ChildItem) this.g.get(i)) != null && childItem.b == 0) {
            return false;
        }
        return true;
    }

    public final boolean F(int i, int i2) {
        int i3;
        int size;
        MainItem.ChildItem z;
        boolean[] zArr;
        List list = this.g;
        if (list == null || i < (i3 = this.j) || i2 < i3 || i >= (size = list.size() - this.k) || i2 >= size || (z = z(i)) == null) {
            return false;
        }
        this.g.remove(i);
        this.g.add(i2, z);
        if (this.i > 0 && !D() && (zArr = this.h) != null && zArr.length > 0) {
            ArrayList arrayList = new ArrayList();
            int length = this.h.length;
            for (int i4 = 0; i4 < length; i4++) {
                arrayList.add(Boolean.valueOf(this.h[i4]));
            }
            arrayList.remove(i);
            arrayList.add(i2, Boolean.valueOf(this.h[i]));
            for (int i5 = 0; i5 < length; i5++) {
                this.h[i5] = ((Boolean) arrayList.get(i5)).booleanValue();
            }
        }
        return true;
    }

    public final void G(int i, boolean z) {
        boolean[] zArr;
        MainItem.ChildItem childItem;
        Object tag;
        List list = this.g;
        if (list != null && i >= 0 && i < list.size() && (zArr = this.h) != null && i >= 0 && i < zArr.length && (childItem = (MainItem.ChildItem) this.g.get(i)) != null && childItem.b == 0) {
            boolean[] zArr2 = this.h;
            if (zArr2[i] != z) {
                zArr2[i] = z;
                if (z) {
                    if (this.i < this.g.size()) {
                        this.i++;
                    }
                } else {
                    int i2 = this.i;
                    if (i2 > 0) {
                        this.i = i2 - 1;
                    }
                }
                MyRecyclerView myRecyclerView = this.f;
                if (myRecyclerView != null) {
                    int childCount = myRecyclerView.getChildCount();
                    MainListHolder mainListHolder = null;
                    int i3 = 0;
                    View view = null;
                    while (true) {
                        if (i3 >= childCount) {
                            break;
                        }
                        view = this.f.getChildAt(i3);
                        if (view != null && (tag = view.getTag()) != null && (tag instanceof MainListHolder)) {
                            MainListHolder mainListHolder2 = (MainListHolder) tag;
                            if (mainListHolder2.H == i) {
                                mainListHolder = mainListHolder2;
                                break;
                            }
                        }
                        i3++;
                    }
                    v(view, mainListHolder, z);
                }
            }
        }
    }

    public final void H(boolean z) {
        List list;
        Object tag;
        int i;
        if (this.f != null && (list = this.g) != null && list.size() != 0) {
            if (this.m) {
                boolean[] zArr = this.h;
                if (zArr != null) {
                    MainUtil.b(zArr, z);
                    if (z) {
                        i = (this.g.size() - this.j) - this.k;
                    } else {
                        i = 0;
                    }
                    if (i != this.i) {
                        this.i = i;
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            }
            int childCount = this.f.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = this.f.getChildAt(i2);
                if (childAt != null && (tag = childAt.getTag()) != null && (tag instanceof MainListHolder)) {
                    v(childAt, (MainListHolder) tag, z);
                }
            }
        }
    }

    public final void I(int i) {
        Object tag;
        MyRecyclerView myRecyclerView = this.f;
        if (myRecyclerView != null) {
            this.l = i;
            int childCount = myRecyclerView.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = this.f.getChildAt(i2);
                if (childAt != null && (tag = childAt.getTag()) != null && (tag instanceof MainListHolder)) {
                    MainListHolder mainListHolder = (MainListHolder) tag;
                    if (mainListHolder.B != null) {
                        if (mainListHolder.H == this.l && PrefUtil.b(this.e)) {
                            mainListHolder.B.setTextColor(-769226);
                        } else {
                            int i3 = -16777216;
                            if (this.n) {
                                AppCompatTextView appCompatTextView = mainListHolder.B;
                                if (MainApp.K1) {
                                    i3 = -4079167;
                                }
                                appCompatTextView.setTextColor(i3);
                            } else {
                                AppCompatTextView appCompatTextView2 = mainListHolder.B;
                                if (MainApp.K1) {
                                    i3 = -328966;
                                }
                                appCompatTextView2.setTextColor(i3);
                            }
                        }
                        if (this.r != null) {
                            if (this.m) {
                                mainListHolder.F.setVisibility(4);
                            } else {
                                mainListHolder.F.setVisibility(0);
                            }
                            mainListHolder.F.setTag(Integer.valueOf(mainListHolder.H));
                            mainListHolder.F.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainListAdapter2.7
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    MainListAdapter.ListMoreListener listMoreListener = MainListAdapter2.this.r;
                                    if (listMoreListener != null) {
                                        listMoreListener.a(view, ((Integer) view.getTag()).intValue());
                                    }
                                }
                            });
                        }
                    }
                }
            }
        }
    }

    public final void J() {
        Object tag;
        MainListHolder mainListHolder;
        MySelectView mySelectView;
        MyRecyclerView myRecyclerView = this.f;
        if (myRecyclerView != null) {
            int childCount = myRecyclerView.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.f.getChildAt(i);
                if (childAt != null && (tag = childAt.getTag()) != null && (tag instanceof MainListHolder) && (mySelectView = (mainListHolder = (MainListHolder) tag).w) != null) {
                    if (mainListHolder.I) {
                        mySelectView.c(mainListHolder.H);
                    } else {
                        mySelectView.b();
                    }
                }
            }
        }
    }

    public final void K(int i) {
        Object tag;
        MainListHolder mainListHolder;
        MySelectView mySelectView;
        MyRecyclerView myRecyclerView = this.f;
        if (myRecyclerView != null) {
            int childCount = myRecyclerView.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = this.f.getChildAt(i2);
                if (childAt != null && (tag = childAt.getTag()) != null && (tag instanceof MainListHolder) && (mySelectView = (mainListHolder = (MainListHolder) tag).w) != null) {
                    if (mainListHolder.H == i) {
                        mySelectView.c(i);
                    } else {
                        mySelectView.b();
                    }
                }
            }
        }
    }

    public final void L() {
        List list;
        MyRecyclerView myRecyclerView;
        Context context = this.d;
        if (context != null && (list = this.g) != null && !list.isEmpty()) {
            int i = 0;
            if (this.e == 37) {
                int i2 = 0;
                for (MainItem.ChildItem childItem : this.g) {
                    if (childItem.J != i2) {
                        childItem.J = i2;
                        childItem.p = i2;
                        DbBookMemo.b(context, childItem.y, i2);
                        i = 1;
                    }
                    i2++;
                }
            } else {
                int i3 = 0;
                for (MainItem.ChildItem childItem2 : this.g) {
                    if (childItem2.J != i) {
                        childItem2.J = i;
                        childItem2.p = i;
                        DbBookWeb.z(context, childItem2, i);
                        i3 = 1;
                    }
                    i++;
                }
                i = i3;
            }
            if (i != 0 && (myRecyclerView = this.f) != null) {
                myRecyclerView.post(new Runnable() { // from class: com.mycompany.app.main.MainListAdapter2.9
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainListAdapter2.this.g();
                    }
                });
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int d() {
        int i = this.v;
        if (i != 0) {
            return i;
        }
        List list = this.g;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final long e(int i) {
        return 0L;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int f(int i) {
        MainItem.ChildItem z = z(i);
        if (z == null) {
            return 0;
        }
        return z.b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v20, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v25, types: [java.lang.Object, android.view.View$OnTouchListener] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void n(RecyclerView.ViewHolder viewHolder, int i) {
        int i2;
        boolean z;
        int i3;
        int i4;
        int i5;
        MyRoundImage myRoundImage;
        MainItem.ChildItem childItem;
        int i6;
        int i7;
        int i8;
        int i9;
        MainListHolder mainListHolder = (MainListHolder) viewHolder;
        int i10 = this.e;
        View view = mainListHolder.f1589a;
        if (view == null) {
            return;
        }
        view.setTag(mainListHolder);
        view.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainListAdapter2.2
            /* JADX WARN: Type inference failed for: r6v8, types: [com.mycompany.app.main.MainListView2$ListPos, java.lang.Object] */
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MainListHolder mainListHolder2;
                int i11;
                MainListAdapter2 mainListAdapter2;
                MainItem.ChildItem z2;
                int i12;
                Object tag;
                Object tag2;
                MainListAdapter2 mainListAdapter22 = MainListAdapter2.this;
                if (mainListAdapter22.q != null) {
                    String str = null;
                    if (view2 == null || (tag2 = view2.getTag()) == null || !(tag2 instanceof MainListHolder)) {
                        mainListHolder2 = null;
                    } else {
                        mainListHolder2 = (MainListHolder) tag2;
                    }
                    if (mainListHolder2 != null && mainListHolder2.f1589a != null) {
                        i11 = mainListHolder2.c();
                    } else {
                        i11 = -1;
                    }
                    final MainListView2.AnonymousClass38 anonymousClass38 = (MainListView2.AnonymousClass38) mainListAdapter22.q;
                    MainListView2 mainListView2 = MainListView2.this;
                    MainActivity mainActivity = mainListView2.b;
                    if (!mainListView2.m() && (mainListAdapter2 = mainListView2.T) != null && mainListView2.y != null && (z2 = mainListAdapter2.z(i11)) != null) {
                        if (z2.b == 2) {
                            mainListView2.y.i0(0);
                            mainListView2.y.post(new Runnable() { // from class: com.mycompany.app.main.MainListView2.38.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    MyScrollBar myScrollBar = MainListView2.this.E;
                                    if (myScrollBar != null) {
                                        myScrollBar.o();
                                    }
                                }
                            });
                            return;
                        }
                        if (mainListView2.k) {
                            MainListAdapter2 mainListAdapter23 = mainListView2.T;
                            if (mainListAdapter23.m) {
                                if (!mainListAdapter23.E(i11)) {
                                    MainListAdapter2 mainListAdapter24 = mainListView2.T;
                                    boolean[] zArr = mainListAdapter24.h;
                                    if (zArr != null && i11 >= mainListAdapter24.j && i11 < zArr.length - mainListAdapter24.k) {
                                        mainListAdapter24.G(i11, !zArr[i11]);
                                    }
                                    mainListView2.A();
                                    mainListView2.y();
                                    return;
                                }
                                return;
                            }
                        }
                        if (mainListView2.l == null) {
                            return;
                        }
                        if (mainListView2.e == 37) {
                            MainUtil.s(R.string.copied_clipboard, mainActivity, "Copied memo", z2.h);
                            return;
                        }
                        if (TextUtils.isEmpty(z2.g)) {
                            MainUtil.e8(mainActivity, R.string.invalid_path);
                            return;
                        }
                        int i13 = mainListView2.i;
                        if (i11 >= mainListView2.V && mainListView2.y != null && mainListView2.T != null) {
                            String b = mainListView2.S.b();
                            if (!TextUtils.isEmpty(b)) {
                                int childCount = mainListView2.y.getChildCount();
                                int i14 = 0;
                                while (true) {
                                    if (i14 < childCount) {
                                        View childAt = mainListView2.y.getChildAt(i14);
                                        if (childAt != null && (tag = childAt.getTag()) != null && (tag instanceof MainListHolder) && i11 == ((MainListHolder) tag).H) {
                                            i12 = Math.round(childAt.getY() + i13);
                                            break;
                                        }
                                        i14++;
                                    } else {
                                        i12 = 0;
                                        break;
                                    }
                                }
                                if (mainListView2.o == null || i12 >= i13) {
                                    i13 = i12;
                                }
                                if (mainListView2.Y == null) {
                                    mainListView2.Y = new HashMap();
                                }
                                ?? obj = new Object();
                                MainListAdapter2 mainListAdapter25 = mainListView2.T;
                                List list = mainListAdapter25.g;
                                if (list != null && i11 >= 0 && i11 < list.size()) {
                                    str = ((MainItem.ChildItem) mainListAdapter25.g.get(i11)).g;
                                }
                                obj.f16808a = str;
                                obj.b = i11;
                                obj.f16809c = i13;
                                mainListView2.Y.put(b, obj);
                            }
                        }
                        mainListView2.l.f(0, z2, true);
                    }
                }
            }
        });
        if (mainListHolder.v == null) {
            if (view instanceof ImageView) {
                if (MainApp.K1) {
                    ((ImageView) view).setImageResource(R.drawable.outline_list_footer_dark_24);
                } else {
                    ((ImageView) view).setImageResource(R.drawable.outline_list_footer_black_24);
                }
            }
            mainListHolder.H = -1;
            mainListHolder.I = false;
            if (B() > 20) {
                if (MainApp.K1) {
                    i9 = R.drawable.selector_list_book_dark;
                } else {
                    i9 = R.drawable.selector_list_book;
                }
                view.setBackgroundResource(i9);
                view.setActivated(false);
                view.setVisibility(0);
                return;
            }
            view.setVisibility(4);
            return;
        }
        if (MainApp.K1) {
            mainListHolder.C.setTextColor(-4079167);
            mainListHolder.D.setTextColor(-4079167);
            mainListHolder.F.setImageResource(R.drawable.outline_more_vert_dark_24);
        } else {
            mainListHolder.C.setTextColor(-10395295);
            mainListHolder.D.setTextColor(-10395295);
            mainListHolder.F.setImageResource(R.drawable.outline_more_vert_black_24);
        }
        List list = this.g;
        if (list == null) {
            mainListHolder.H = -1;
            mainListHolder.I = false;
            mainListHolder.w.setVisibility(8);
            mainListHolder.v.setBackground(null);
            mainListHolder.v.setActivated(false);
            return;
        }
        if (i >= 0 && i < list.size()) {
            MainItem.ChildItem childItem2 = (MainItem.ChildItem) this.g.get(i);
            if (childItem2 == null) {
                mainListHolder.H = -1;
                mainListHolder.I = false;
                mainListHolder.w.setVisibility(8);
                mainListHolder.v.setBackground(null);
                mainListHolder.v.setActivated(false);
                return;
            }
            int i11 = childItem2.b;
            mainListHolder.G = i11;
            if (i11 == 1) {
                mainListHolder.H = -1;
                mainListHolder.I = false;
                mainListHolder.w.setVisibility(8);
                mainListHolder.x.setVisibility(0);
                mainListHolder.A.setVisibility(0);
                mainListHolder.B.setVisibility(0);
                mainListHolder.C.setVisibility(8);
                mainListHolder.D.setVisibility(8);
                mainListHolder.F.setVisibility(8);
                mainListHolder.E.setOnTouchListener(new Object());
                mainListHolder.y.setVisibility(4);
                mainListHolder.y.setActivated(false);
                mainListHolder.z.setScaleX(1.0f);
                mainListHolder.z.setVisibility(0);
                mainListHolder.z.o(0, childItem2.w);
                mainListHolder.B.setText(childItem2.h);
                AppCompatTextView appCompatTextView = mainListHolder.B;
                if (MainApp.K1) {
                    i7 = -328966;
                } else {
                    i7 = -16777216;
                }
                appCompatTextView.setTextColor(i7);
                MyListChild myListChild = mainListHolder.v;
                if (MainApp.K1) {
                    i8 = R.drawable.selector_list_book_dark;
                } else {
                    i8 = R.drawable.selector_list_book;
                }
                myListChild.setBackgroundResource(i8);
                mainListHolder.v.setActivated(false);
                return;
            }
            view.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.mycompany.app.main.MainListAdapter2.4
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view2) {
                    MainListHolder mainListHolder2;
                    ItemTouchHelper itemTouchHelper;
                    Object tag;
                    MainListAdapter2 mainListAdapter2 = MainListAdapter2.this;
                    if (mainListAdapter2.q != null) {
                        if (view2 == null || (tag = view2.getTag()) == null || !(tag instanceof MainListHolder)) {
                            mainListHolder2 = null;
                        } else {
                            mainListHolder2 = (MainListHolder) tag;
                        }
                        if (mainListHolder2 != null && mainListHolder2.f1589a != null) {
                            int c2 = mainListHolder2.c();
                            MainListView2 mainListView2 = MainListView2.this;
                            int i12 = mainListView2.e;
                            boolean z2 = mainListView2.k;
                            if (z2 && !mainListView2.B && mainListView2.T != null && mainListView2.y != null && !mainListView2.m() && !mainListView2.T.E(c2)) {
                                MainListAdapter2 mainListAdapter22 = mainListView2.T;
                                if (!mainListAdapter22.m) {
                                    mainListView2.B(c2, true, true);
                                } else if (!z2 || mainListView2.E0 || (i12 == 17 && !PrefList.F)) {
                                    boolean[] zArr = mainListAdapter22.h;
                                    if (zArr != null && c2 >= mainListAdapter22.j && c2 < zArr.length - mainListAdapter22.k) {
                                        mainListAdapter22.G(c2, !zArr[c2]);
                                    }
                                    mainListView2.A();
                                    mainListView2.y();
                                }
                                if (z2 && !mainListView2.E0 && ((i12 != 17 || PrefList.F) && (itemTouchHelper = mainListView2.A) != null)) {
                                    mainListView2.C = c2;
                                    mainListView2.D = c2;
                                    itemTouchHelper.t(mainListHolder2);
                                }
                            }
                        }
                    }
                    return true;
                }
            });
            mainListHolder.H = i;
            mainListHolder.I = childItem2.L;
            boolean C = C(i);
            if (mainListHolder.w.getVisibility() == 0 && mainListHolder.w.getChildPos() != mainListHolder.H) {
                mainListHolder.w.setVisibility(8);
            }
            mainListHolder.x.setVisibility(0);
            mainListHolder.A.setVisibility(0);
            mainListHolder.B.setVisibility(0);
            mainListHolder.C.setVisibility(8);
            mainListHolder.D.setVisibility(8);
            mainListHolder.F.setVisibility(8);
            mainListHolder.E.setOnTouchListener(new View.OnTouchListener() { // from class: com.mycompany.app.main.MainListAdapter2.5
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view2, MotionEvent motionEvent) {
                    return !MainListAdapter2.this.m;
                }
            });
            if (C) {
                mainListHolder.y.setScaleX(1.0f);
                MyRoundImage myRoundImage2 = mainListHolder.y;
                if (MainApp.K1) {
                    i6 = R.drawable.baseline_check_circle_dark_24;
                } else {
                    i6 = R.drawable.baseline_check_circle_black_24;
                }
                myRoundImage2.o(0, i6);
                mainListHolder.y.setVisibility(0);
                mainListHolder.y.setActivated(true);
                mainListHolder.z.setVisibility(4);
            } else {
                mainListHolder.y.setVisibility(4);
                mainListHolder.y.setActivated(false);
                mainListHolder.z.setScaleX(1.0f);
                mainListHolder.z.setVisibility(0);
            }
            MyListChild myListChild2 = mainListHolder.v;
            if (myListChild2 != null && (myRoundImage = mainListHolder.z) != null && this.p != null) {
                if (childItem2.k) {
                    myRoundImage.o(0, childItem2.w);
                } else {
                    int i12 = childItem2.f16551c;
                    if (i12 != 1 && i12 != 2 && i12 != 3 && i12 != 4 && i12 != 5 && i12 != 6 && i12 != 11) {
                        myRoundImage.o(childItem2.v, childItem2.w);
                    } else {
                        ?? obj = new Object();
                        if (i12 == 11) {
                            obj.f16550a = i10;
                            obj.f16551c = i12;
                            String str = childItem2.z;
                            obj.g = str;
                            obj.z = str;
                            obj.y = childItem2.y;
                            obj.J = childItem2.J;
                            obj.v = childItem2.v;
                            obj.w = childItem2.w;
                            childItem = obj;
                        } else {
                            childItem = childItem2;
                        }
                        if (TextUtils.isEmpty(childItem.g)) {
                            MyRoundImage myRoundImage3 = mainListHolder.z;
                            int i13 = childItem2.v;
                            int i14 = childItem2.w;
                            String str2 = childItem2.h;
                            if (this.t == null) {
                                this.t = Pattern.compile("\\p{Punct}");
                            }
                            myRoundImage3.p(i13, i14, str2, this.t);
                        } else {
                            Bitmap b = MainListLoader.b(childItem);
                            if (MainUtil.f6(b)) {
                                if (childItem.f16551c == 4) {
                                    mainListHolder.z.setBackColor(-460552);
                                }
                                mainListHolder.z.r(childItem.g, false);
                                mainListHolder.z.setImageBitmap(b);
                            } else {
                                MyRoundImage myRoundImage4 = mainListHolder.z;
                                int i15 = childItem2.v;
                                int i16 = childItem2.w;
                                String str3 = childItem2.h;
                                if (this.t == null) {
                                    this.t = Pattern.compile("\\p{Punct}");
                                }
                                myRoundImage4.p(i15, i16, str3, this.t);
                                this.p.e(childItem, myListChild2);
                            }
                        }
                    }
                }
            }
            if (this.n && !TextUtils.isEmpty(this.o)) {
                if (MainApp.K1) {
                    i2 = -1;
                } else {
                    i2 = -769226;
                }
                mainListHolder.B.setText(MainUtil.t6(childItem2.h, i2, 0, this.o), TextView.BufferType.SPANNABLE);
                z = true;
            } else {
                mainListHolder.B.setText(childItem2.h);
                i2 = 0;
                z = false;
            }
            mainListHolder.B.setSingleLine(PrefUtil.c(i10));
            if (i == this.l && PrefUtil.b(i10)) {
                mainListHolder.B.setTextColor(-769226);
            } else if (this.n) {
                AppCompatTextView appCompatTextView2 = mainListHolder.B;
                if (MainApp.K1) {
                    i4 = -4079167;
                } else {
                    i4 = -16777216;
                }
                appCompatTextView2.setTextColor(i4);
            } else {
                AppCompatTextView appCompatTextView3 = mainListHolder.B;
                if (MainApp.K1) {
                    i3 = -328966;
                } else {
                    i3 = -16777216;
                }
                appCompatTextView3.setTextColor(i3);
            }
            if (TextUtils.isEmpty(childItem2.F)) {
                long j = childItem2.A;
                if (j != -1) {
                    childItem2.F = MainUtil.y1(j, this.s, "yyyy.MM.dd");
                }
            }
            if (PrefUtil.a(i10)) {
                if (!TextUtils.isEmpty(childItem2.F)) {
                    if (childItem2.w == R.drawable.outline_folder_black_24) {
                        mainListHolder.C.setText(childItem2.F);
                    } else {
                        mainListHolder.C.setText(childItem2.F);
                    }
                    mainListHolder.C.setVisibility(0);
                }
                if (!TextUtils.isEmpty(childItem2.G)) {
                    if (childItem2.w == R.drawable.outline_folder_black_24) {
                        mainListHolder.D.setText(childItem2.G);
                    } else if (z) {
                        mainListHolder.D.setText(MainUtil.t6(childItem2.G, i2, 0, this.o), TextView.BufferType.SPANNABLE);
                    } else {
                        mainListHolder.D.setText(childItem2.G);
                    }
                    mainListHolder.D.setVisibility(0);
                }
            }
            if (this.r != null) {
                if (this.m) {
                    mainListHolder.F.setVisibility(4);
                } else {
                    mainListHolder.F.setVisibility(0);
                }
                mainListHolder.F.setTag(Integer.valueOf(i));
                mainListHolder.F.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainListAdapter2.6
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        MainListAdapter.ListMoreListener listMoreListener = MainListAdapter2.this.r;
                        if (listMoreListener != null) {
                            listMoreListener.a(view2, ((Integer) view2.getTag()).intValue());
                        }
                    }
                });
            }
            MyListChild myListChild3 = mainListHolder.v;
            if (MainApp.K1) {
                i5 = R.drawable.selector_list_book_dark;
            } else {
                i5 = R.drawable.selector_list_book;
            }
            myListChild3.setBackgroundResource(i5);
            mainListHolder.v.setActivated(C);
            return;
        }
        mainListHolder.H = -1;
        mainListHolder.I = false;
        mainListHolder.w.setVisibility(8);
        mainListHolder.v.setBackground(null);
        mainListHolder.v.setActivated(false);
    }

    /* JADX WARN: Type inference failed for: r1v10, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.main.MainListAdapter2$MainListHolder] */
    /* JADX WARN: Type inference failed for: r1v6, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.main.MainListAdapter2$MainListHolder] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder o(ViewGroup viewGroup, int i) {
        int i2;
        Context context = viewGroup.getContext();
        if (context == null) {
            return null;
        }
        if (i == 2) {
            ImageView imageView = new ImageView(context);
            imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            imageView.setLayoutParams(new ViewGroup.LayoutParams(-1, MainApp.i1));
            ?? viewHolder = new RecyclerView.ViewHolder(imageView);
            viewHolder.u = i;
            return viewHolder;
        }
        MyListChild myListChild = new MyListChild(context);
        myListChild.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        int i3 = R.id.mai2_item_ftext;
        int i4 = R.id.mai2_item_button;
        MySelectView mySelectView = new MySelectView(context);
        mySelectView.setVisibility(8);
        RelativeLayout.LayoutParams h = a.h(-1, -1, 10, i3);
        h.addRule(8, i3);
        myListChild.addView(mySelectView, h);
        FrameLayout frameLayout = new FrameLayout(context);
        int i5 = MainApp.h1;
        myListChild.addView(frameLayout, i5, i5);
        MyRoundImage myRoundImage = new MyRoundImage(context);
        int G = (int) MainUtil.G(context, 24.0f);
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_CROP;
        myRoundImage.setScaleType(scaleType);
        myRoundImage.setRoundRadius(MainApp.G1);
        myRoundImage.setCircleRadius(G / 2);
        myRoundImage.setVisibility(4);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(G, G);
        layoutParams.gravity = 17;
        frameLayout.addView(myRoundImage, layoutParams);
        MyRoundImage myRoundImage2 = new MyRoundImage(context);
        int G2 = (int) MainUtil.G(context, 24.0f);
        myRoundImage2.setScaleType(scaleType);
        myRoundImage2.setRoundRadius(MainApp.G1);
        myRoundImage2.setCircleRadius(G2 / 2);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(G2, G2);
        layoutParams2.gravity = 17;
        frameLayout.addView(myRoundImage2, layoutParams2);
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setId(i3);
        relativeLayout.setGravity(16);
        int i6 = MainApp.F1;
        relativeLayout.setPadding(0, i6, 0, i6);
        relativeLayout.setMinimumHeight(MainApp.h1);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams3.addRule(16, i4);
        layoutParams3.setMarginStart(MainApp.h1);
        myListChild.addView(relativeLayout, layoutParams3);
        AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
        int i7 = R.id.mai2_item_name;
        appCompatTextView.setId(i7);
        appCompatTextView.setSingleLine(true);
        appCompatTextView.setTextSize(1, 16.0f);
        relativeLayout.addView(appCompatTextView, -2, -2);
        AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
        int i8 = R.id.mai2_item_date;
        appCompatTextView2.setId(i8);
        appCompatTextView2.setSingleLine(true);
        appCompatTextView2.setTextSize(1, 14.0f);
        RelativeLayout.LayoutParams h2 = a.h(-2, -2, 3, i7);
        h2.topMargin = MainApp.G1;
        relativeLayout.addView(appCompatTextView2, h2);
        AppCompatTextView appCompatTextView3 = new AppCompatTextView(context, null);
        appCompatTextView3.setSingleLine(true);
        appCompatTextView3.setTextSize(1, 14.0f);
        RelativeLayout.LayoutParams h3 = a.h(-2, -2, 3, i7);
        h3.addRule(17, i8);
        h3.topMargin = MainApp.G1;
        h3.setMarginStart(MainApp.E1);
        relativeLayout.addView(appCompatTextView3, h3);
        FrameLayout frameLayout2 = new FrameLayout(context);
        frameLayout2.setId(i4);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(MainApp.g1, -1);
        layoutParams4.addRule(21);
        layoutParams4.addRule(10, i3);
        layoutParams4.addRule(8, i3);
        myListChild.addView(frameLayout2, layoutParams4);
        MyButtonImage myButtonImage = new MyButtonImage(context);
        myButtonImage.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        if (MainApp.K1) {
            i2 = -12632257;
        } else {
            i2 = -2039584;
        }
        myButtonImage.setBgPreColor(i2);
        myButtonImage.setVisibility(8);
        int i9 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(i9, i9);
        layoutParams5.topMargin = MainApp.F1;
        frameLayout2.addView(myButtonImage, layoutParams5);
        ?? viewHolder2 = new RecyclerView.ViewHolder(myListChild);
        viewHolder2.u = i;
        viewHolder2.v = myListChild;
        viewHolder2.w = mySelectView;
        viewHolder2.x = frameLayout;
        viewHolder2.y = myRoundImage;
        viewHolder2.z = myRoundImage2;
        viewHolder2.A = relativeLayout;
        viewHolder2.B = appCompatTextView;
        viewHolder2.C = appCompatTextView2;
        viewHolder2.D = appCompatTextView3;
        viewHolder2.E = frameLayout2;
        viewHolder2.F = myButtonImage;
        return viewHolder2;
    }

    public final void v(final View view, final MainListHolder mainListHolder, boolean z) {
        int i;
        AnimatorSet L;
        int i2;
        if (view != null && mainListHolder != null && mainListHolder.G == 0 && mainListHolder.y != null && z != view.isActivated()) {
            MyRoundImage myRoundImage = mainListHolder.y;
            if (MainApp.K1) {
                i = R.drawable.baseline_check_circle_dark_24;
            } else {
                i = R.drawable.baseline_check_circle_black_24;
            }
            myRoundImage.o(0, i);
            if (z) {
                L = MainUtil.L(mainListHolder.z, mainListHolder.y);
            } else {
                L = MainUtil.L(mainListHolder.y, mainListHolder.z);
            }
            if (L != null) {
                L.addListener(new Animator.AnimatorListener() { // from class: com.mycompany.app.main.MainListAdapter2.8
                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationCancel(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        MainListHolder mainListHolder2;
                        int i3;
                        if (view != null && (mainListHolder2 = mainListHolder) != null && mainListHolder2.y != null) {
                            if (MainListAdapter2.this.C(mainListHolder2.H)) {
                                mainListHolder2.y.setScaleX(1.0f);
                                MyRoundImage myRoundImage2 = mainListHolder2.y;
                                if (MainApp.K1) {
                                    i3 = R.drawable.baseline_check_circle_dark_24;
                                } else {
                                    i3 = R.drawable.baseline_check_circle_black_24;
                                }
                                myRoundImage2.o(0, i3);
                                mainListHolder2.y.setVisibility(0);
                                mainListHolder2.y.setActivated(true);
                                mainListHolder2.z.setVisibility(4);
                                return;
                            }
                            mainListHolder2.y.setVisibility(4);
                            mainListHolder2.y.setActivated(false);
                            mainListHolder2.z.setScaleX(1.0f);
                            mainListHolder2.z.setVisibility(0);
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
                i2 = R.drawable.selector_list_book_dark;
            } else {
                i2 = R.drawable.selector_list_book;
            }
            view.setBackgroundResource(i2);
            view.setActivated(z);
        }
    }

    public final int w(String str) {
        List list;
        if (!TextUtils.isEmpty(str) && (list = this.g) != null && !list.isEmpty()) {
            for (MainItem.ChildItem childItem : this.g) {
                if (childItem != null && childItem.b == 0) {
                    if (str.startsWith(childItem.g + "/")) {
                        return childItem.J;
                    }
                }
            }
            return -1;
        }
        return -1;
    }

    public final ArrayList x() {
        boolean[] zArr;
        List list = this.g;
        if (list == null || (zArr = this.h) == null || zArr.length != list.size() || this.i <= 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (D()) {
            for (MainItem.ChildItem childItem : this.g) {
                if (childItem != null && childItem.b == 0) {
                    arrayList.add(Long.valueOf(childItem.y));
                }
            }
        } else {
            int size = this.g.size() - this.k;
            for (int i = this.j; i < size; i++) {
                MainItem.ChildItem childItem2 = (MainItem.ChildItem) this.g.get(i);
                if (childItem2 != null && childItem2.b == 0 && this.h[i]) {
                    arrayList.add(Long.valueOf(childItem2.y));
                }
            }
        }
        return arrayList;
    }

    public final List y() {
        boolean[] zArr;
        List list = this.g;
        if (list == null || (zArr = this.h) == null || zArr.length != list.size() || this.i <= 0) {
            return null;
        }
        if (D()) {
            int i = this.j;
            if (i <= 0 && this.k <= 0) {
                return new ArrayList(this.g);
            }
            List list2 = this.g;
            return list2.subList(i, list2.size() - this.k);
        }
        ArrayList arrayList = new ArrayList();
        int size = this.g.size() - this.k;
        for (int i2 = this.j; i2 < size; i2++) {
            MainItem.ChildItem childItem = (MainItem.ChildItem) this.g.get(i2);
            if (childItem != null && childItem.b == 0 && this.h[i2]) {
                arrayList.add(childItem);
            }
        }
        return arrayList;
    }

    public final MainItem.ChildItem z(int i) {
        List list = this.g;
        if (list != null && i >= 0 && i < list.size()) {
            return (MainItem.ChildItem) this.g.get(i);
        }
        return null;
    }
}
