package com.mycompany.app.web;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Paint;
import android.graphics.RectF;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainListLoader;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefPdf;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyIconView;
import com.mycompany.app.view.MyManagerLinear;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.view.MyTabFrame;
import com.mycompany.app.view.MyTextFast;
import com.mycompany.app.view.MyTextImage;
import com.mycompany.app.web.WebTabAdapter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public class WebTabBarAdapter extends RecyclerView.Adapter<WebTabBarHolder> {
    public boolean A;
    public int B;
    public int C;
    public int D;
    public int E;
    public int F;
    public Context d;
    public MyRecyclerView e;
    public MyManagerLinear f;
    public List g;
    public int h;
    public ArrayList i;
    public int j;
    public boolean k;
    public TabBarListener l;
    public int m;
    public int n;
    public int o;
    public boolean p;
    public boolean q;
    public int r;
    public boolean s;
    public int t;
    public MainListLoader u;
    public Pattern v;
    public final int w;
    public final int x;
    public final int y;
    public TabBarChangeListener z;

    /* loaded from: classes3.dex */
    public interface TabBarChangeListener {
        void a();
    }

    /* loaded from: classes3.dex */
    public interface TabBarListener {
        void a();

        void b(int i, View view, boolean z);

        void c(WebTabBarHolder webTabBarHolder, View view, int i, int i2, boolean z);

        void d(int i, int i2, int i3, boolean z);

        void e(int i, ArrayList arrayList);
    }

    /* loaded from: classes3.dex */
    public static class WebTabBarHolder extends RecyclerView.ViewHolder {
        public MyTabFrame u;
        public MyTextImage v;
        public MyTextFast w;
        public MyButtonImage x;
        public int y;
        public int z;
    }

    public WebTabBarAdapter(Context context, List list, int i, boolean z, int i2, int i3, TabBarListener tabBarListener) {
        if (MainUtil.j(i2, z)) {
            i2 = 0;
            i3 = 0;
        }
        this.d = context;
        this.k = MainUtil.k5(z);
        this.m = i2;
        this.n = i2 == 0 ? 0 : i3;
        this.o = MainUtil.s0(i2, z);
        this.l = tabBarListener;
        this.w = Math.round(MainUtil.G(this.d, 44.0f));
        this.x = Math.round(MainUtil.G(this.d, 32.0f));
        this.y = Math.round(MainUtil.G(this.d, 8.0f));
        try {
            J(i, list);
        } catch (Exception unused) {
            TabBarListener tabBarListener2 = this.l;
            if (tabBarListener2 != null) {
                tabBarListener2.a();
            }
        }
        this.u = new MainListLoader(this.d, false, new MainListLoader.ListLoadListener() { // from class: com.mycompany.app.web.WebTabBarAdapter.1
            @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
            public final void a(MainItem.ChildItem childItem, View view) {
            }

            @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
            public final void b(MainItem.ChildItem childItem, View view, Bitmap bitmap) {
                int i4;
                WebTabBarAdapter webTabBarAdapter;
                WebTabAdapter.WebTabItem B;
                WebTabAdapter.WebTabItem E;
                if (childItem != null && view != null) {
                    WebTabBarHolder F = WebTabBarAdapter.F(view);
                    if (F != null && F.f1589a != null) {
                        i4 = F.c();
                    } else {
                        i4 = -1;
                    }
                    if (i4 == childItem.J && (B = (webTabBarAdapter = WebTabBarAdapter.this).B(i4)) != null && (E = webTabBarAdapter.E(WebTabBarAdapter.D(B))) != null && MainUtil.q5(MainUtil.O1(E.j), MainUtil.O1(childItem.g)) && (view instanceof MyTextImage)) {
                        ((MyTextImage) view).setImageBitmap(bitmap);
                    }
                }
            }
        });
    }

    public static int A(int i, ArrayList arrayList, int i2, int i3) {
        int i4 = i3;
        while (i3 < i2) {
            WebTabAdapter.WebTabItem webTabItem = (WebTabAdapter.WebTabItem) arrayList.get(i3);
            if (webTabItem != null) {
                List<WebTabAdapter.WebTabItem> list = webTabItem.q;
                if (list != null) {
                    for (WebTabAdapter.WebTabItem webTabItem2 : list) {
                        if (webTabItem2 != null && webTabItem2.h == i) {
                            return i4;
                        }
                    }
                    i4++;
                } else {
                    if (webTabItem.h == i) {
                        return i4;
                    }
                    i4++;
                }
            }
            i3++;
        }
        return -1;
    }

    public static int D(WebTabAdapter.WebTabItem webTabItem) {
        List list = webTabItem.q;
        if (list == null) {
            return webTabItem.h;
        }
        if (list.size() == 0) {
            return webTabItem.h;
        }
        return ((WebTabAdapter.WebTabItem) webTabItem.q.get(0)).h;
    }

    public static WebTabBarHolder F(View view) {
        Object tag;
        if (view == null || (tag = view.getTag()) == null || !(tag instanceof WebTabBarHolder)) {
            return null;
        }
        return (WebTabBarHolder) tag;
    }

    public static int y(int i, boolean z) {
        if (i == 0) {
            i = PrefWeb.b0;
        }
        int length = MainConst.b0.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (i == MainConst.b0[i2]) {
                if (i == -16777216 && z) {
                    return R.drawable.baseline_folder_2_black_24;
                }
                return MainConst.c0[i2];
            }
        }
        return MainConst.c0[0];
    }

    public static int z(ArrayList arrayList, int i, int i2) {
        int i3 = i2;
        while (i2 > -1) {
            WebTabAdapter.WebTabItem webTabItem = (WebTabAdapter.WebTabItem) arrayList.get(i2);
            if (webTabItem != null) {
                List<WebTabAdapter.WebTabItem> list = webTabItem.q;
                if (list != null) {
                    for (WebTabAdapter.WebTabItem webTabItem2 : list) {
                        if (webTabItem2 != null && webTabItem2.h == i) {
                            return i3;
                        }
                    }
                    i3--;
                } else {
                    if (webTabItem.h == i) {
                        return i3;
                    }
                    i3--;
                }
            }
            i2--;
        }
        return -1;
    }

    public final WebTabAdapter.WebTabItem B(int i) {
        try {
            ArrayList arrayList = this.i;
            if (arrayList != null && i >= 0 && i < arrayList.size()) {
                return (WebTabAdapter.WebTabItem) this.i.get(i);
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public final int C(int i) {
        int size;
        List list;
        ArrayList arrayList = this.i;
        if (arrayList == null || (size = arrayList.size()) == 0 || (list = this.g) == null || list.size() == 0) {
            return -1;
        }
        int i2 = this.h;
        if (i2 == i) {
            return this.j;
        }
        int i3 = this.j;
        if (i3 < 0) {
            i3 = 0;
        } else if (i3 >= size) {
            i3 = size - 1;
        }
        if (i2 < i) {
            int A = A(i, arrayList, size, i3);
            if (A != -1) {
                return A;
            }
            return z(arrayList, i, i3 - 1);
        }
        int z = z(arrayList, i, i3);
        if (z != -1) {
            return z;
        }
        return A(i, arrayList, size, i3 + 1);
    }

    public final WebTabAdapter.WebTabItem E(int i) {
        try {
            List list = this.g;
            if (list != null && i >= 0 && i < list.size()) {
                return (WebTabAdapter.WebTabItem) this.g.get(i);
            }
        } catch (Exception unused) {
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: G, reason: merged with bridge method [inline-methods] */
    public final void n(WebTabBarHolder webTabBarHolder, int i) {
        WebTabAdapter.WebTabItem B;
        WebTabAdapter.WebTabItem E;
        boolean z;
        int i2;
        boolean z2;
        int i3;
        int i4;
        boolean z3;
        boolean z4;
        int i5;
        int i6;
        int i7;
        int i8;
        boolean z5;
        int i9;
        boolean z6;
        boolean z7;
        int i10;
        int i11;
        int i12;
        boolean z8;
        int i13;
        if (webTabBarHolder.f1589a != null && webTabBarHolder.u != null && (B = B(i)) != null && (E = E(D(B))) != null) {
            webTabBarHolder.u.setTag(webTabBarHolder);
            webTabBarHolder.v.setTag(webTabBarHolder);
            webTabBarHolder.x.setTag(webTabBarHolder);
            if (this.p) {
                z = this.q;
                i2 = this.r;
                z2 = this.s;
                i3 = this.t;
            } else {
                z = PrefWeb.y;
                i2 = PrefWeb.z;
                z2 = PrefPdf.D;
                i3 = PrefPdf.E;
            }
            boolean z9 = z;
            boolean z10 = z2;
            if (webTabBarHolder.y != i3) {
                webTabBarHolder.y = i3;
                ViewGroup.LayoutParams layoutParams = webTabBarHolder.u.getLayoutParams();
                if (layoutParams != null && layoutParams.width != i3) {
                    layoutParams.width = i3;
                    webTabBarHolder.u.requestLayout();
                }
            }
            int i14 = this.x;
            if (z10) {
                i4 = i14;
            } else {
                i4 = this.y;
            }
            if (webTabBarHolder.z == 0) {
                webTabBarHolder.z = i14;
            }
            if (webTabBarHolder.z != i4) {
                webTabBarHolder.z = i4;
                if (webTabBarHolder.w.getPaddingEnd() != i4) {
                    webTabBarHolder.w.setPaddingRelative(this.w, 0, i4, 0);
                }
            }
            if (i == this.j) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (z3 && !z9) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (z3) {
                if (i2 < 0 || i2 >= MainConst.s.length) {
                    i2 = 5;
                }
                if (z4) {
                    i13 = MainConst.t[i2];
                } else {
                    i13 = MainConst.s[i2];
                }
                i5 = i13;
            } else {
                i5 = 0;
            }
            if (B.q != null) {
                int i15 = E.g;
                if (i15 == 0) {
                    i15 = PrefWeb.b0;
                }
                if (z3) {
                    i6 = this.h - D(B);
                } else {
                    i6 = 0;
                }
                i7 = B.q.size();
                MyTextImage myTextImage = webTabBarHolder.v;
                if (this.o != 0) {
                    z8 = true;
                } else {
                    z8 = false;
                }
                myTextImage.c(y(i15, z8), i7);
                if (!TextUtils.isEmpty(E.f)) {
                    webTabBarHolder.w.setText(E.f);
                } else {
                    webTabBarHolder.w.setText(R.string.group_title);
                }
            } else {
                String q3 = WebViewActivity.q3(this.d, E);
                K(E, webTabBarHolder.v, q3, i, z4, null);
                webTabBarHolder.w.setText(q3);
                i6 = 0;
                i7 = 0;
            }
            webTabBarHolder.u.setAlpha(1.0f);
            MyTabFrame myTabFrame = webTabBarHolder.u;
            int i16 = this.o;
            int i17 = this.n;
            myTabFrame.getClass();
            if (z3) {
                if (z9) {
                    int i18 = MyIconView.k1;
                    if (i16 == 0) {
                        i17 = -1;
                    } else if (i16 == 1) {
                        i17 = -16777216;
                    } else {
                        i17 = i16;
                    }
                    i8 = i5;
                } else {
                    i8 = 0;
                    i17 = i5;
                }
            } else {
                int i19 = MyIconView.k1;
                if (i16 == 0) {
                    i17 = -460552;
                } else if (i16 == 1) {
                    i17 = -14606047;
                }
                i7 = 0;
                i8 = 0;
            }
            if (myTabFrame.i != i17) {
                myTabFrame.i = i17;
                if (i17 != 0) {
                    if (myTabFrame.h == null) {
                        myTabFrame.h = new RectF();
                    }
                    int width = myTabFrame.getWidth();
                    int height = myTabFrame.getHeight();
                    if (width != 0 && height != 0) {
                        myTabFrame.u = width / 2.0f;
                        myTabFrame.v = height / 2.0f;
                        myTabFrame.f(width, height);
                    }
                    if (myTabFrame.j == null) {
                        Paint paint = new Paint();
                        myTabFrame.j = paint;
                        paint.setAntiAlias(true);
                        myTabFrame.j.setStyle(Paint.Style.FILL);
                    }
                    myTabFrame.j.setColor(myTabFrame.i);
                } else {
                    myTabFrame.h = null;
                    myTabFrame.j = null;
                }
                z5 = true;
            } else {
                z5 = false;
            }
            if (myTabFrame.i(i8, false, false)) {
                z5 = true;
            }
            if (i7 == 0) {
                if (myTabFrame.q != 0 || myTabFrame.r != null || myTabFrame.t != null) {
                    myTabFrame.p = 0;
                    myTabFrame.q = 0;
                    myTabFrame.r = null;
                    myTabFrame.t = null;
                    z7 = true;
                }
                z7 = false;
            } else {
                if (i6 < 0) {
                    i6 = 0;
                } else if (i6 >= i7) {
                    i6 = i7 - 1;
                }
                if (i16 == 0) {
                    i9 = -16777216;
                } else {
                    i9 = -4144960;
                }
                if (myTabFrame.p == i6 && myTabFrame.q == i7) {
                    z6 = false;
                } else {
                    myTabFrame.p = i6;
                    myTabFrame.q = i7;
                    z6 = true;
                }
                if (myTabFrame.r == null) {
                    myTabFrame.r = new RectF();
                    z6 = true;
                }
                if (myTabFrame.t == null) {
                    Paint paint2 = new Paint();
                    myTabFrame.t = paint2;
                    paint2.setAntiAlias(true);
                    myTabFrame.t.setStyle(Paint.Style.FILL);
                    myTabFrame.t.setColor(i9);
                    myTabFrame.s = i9;
                    z6 = true;
                }
                if (myTabFrame.s != i9) {
                    myTabFrame.s = i9;
                    myTabFrame.t.setColor(i9);
                    z6 = true;
                }
                if (z6) {
                    int width2 = myTabFrame.getWidth();
                    int height2 = myTabFrame.getHeight();
                    if (width2 != 0 && height2 != 0) {
                        myTabFrame.u = width2 / 2.0f;
                        myTabFrame.v = height2 / 2.0f;
                        myTabFrame.h(width2, height2);
                    }
                    z7 = true;
                }
                z7 = false;
            }
            if (z7) {
                z5 = true;
            }
            if (z5) {
                myTabFrame.invalidate();
            }
            MyButtonImage myButtonImage = webTabBarHolder.x;
            if (z10) {
                i10 = 0;
            } else {
                i10 = 8;
            }
            myButtonImage.setVisibility(i10);
            if (!this.p && MainUtil.S4()) {
                webTabBarHolder.x.setNoAnim(true);
            } else {
                webTabBarHolder.x.setNoAnim(false);
            }
            webTabBarHolder.u.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebTabBarAdapter.6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    int i20;
                    boolean z11;
                    WebTabBarAdapter webTabBarAdapter = WebTabBarAdapter.this;
                    if (webTabBarAdapter.l != null) {
                        WebTabBarHolder F = WebTabBarAdapter.F(view);
                        if (F != null && F.f1589a != null) {
                            i20 = F.c();
                        } else {
                            i20 = -1;
                        }
                        WebTabAdapter.WebTabItem B2 = webTabBarAdapter.B(i20);
                        if (B2 == null) {
                            return;
                        }
                        int width3 = (view.getWidth() / 2) + ((int) view.getX());
                        TabBarListener tabBarListener = webTabBarAdapter.l;
                        int D = WebTabBarAdapter.D(B2);
                        if (B2.q != null) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        tabBarListener.d(width3, D, i20, z11);
                    }
                }
            });
            webTabBarHolder.u.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.mycompany.app.web.WebTabBarAdapter.7
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    WebTabBarHolder F;
                    int c2;
                    WebTabAdapter.WebTabItem B2;
                    boolean z11;
                    WebTabBarAdapter webTabBarAdapter = WebTabBarAdapter.this;
                    if (webTabBarAdapter.l != null && (F = WebTabBarAdapter.F(view)) != null && F.f1589a != null && (B2 = webTabBarAdapter.B((c2 = F.c()))) != null) {
                        TabBarListener tabBarListener = webTabBarAdapter.l;
                        int D = WebTabBarAdapter.D(B2);
                        if (B2.q != null) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        tabBarListener.c(F, view, D, c2, z11);
                    }
                    return true;
                }
            });
            webTabBarHolder.x.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebTabBarAdapter.8
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    int i20;
                    boolean z11;
                    WebTabBarAdapter webTabBarAdapter = WebTabBarAdapter.this;
                    if (webTabBarAdapter.l != null) {
                        WebTabBarHolder F = WebTabBarAdapter.F(view);
                        if (F != null && F.f1589a != null) {
                            i20 = F.c();
                        } else {
                            i20 = -1;
                        }
                        WebTabAdapter.WebTabItem B2 = webTabBarAdapter.B(i20);
                        if (B2 == null) {
                            return;
                        }
                        TabBarListener tabBarListener = webTabBarAdapter.l;
                        int D = WebTabBarAdapter.D(B2);
                        if (B2.q != null) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        tabBarListener.b(D, view, z11);
                    }
                }
            });
            MyTextFast myTextFast = webTabBarHolder.w;
            if (z4) {
                i11 = -1;
            } else if (this.o == 0) {
                i11 = -16777216;
            } else {
                i11 = -1040187393;
            }
            myTextFast.setTextColor(i11);
            if (!z4) {
                i5 = MainUtil.P1(this.o, this.n);
            }
            webTabBarHolder.u.setBgPreColor(i5);
            webTabBarHolder.x.setBgPreColor(i5);
            if (B.q != null) {
                if (z4) {
                    i12 = R.drawable.outline_more_vert_white_20;
                } else if (this.o == 0) {
                    i12 = R.drawable.outline_more_vert_black_20;
                } else {
                    i12 = R.drawable.outline_more_vert_dark_20;
                }
            } else if (z4) {
                i12 = R.drawable.outline_close_white_18;
            } else if (this.o == 0) {
                i12 = R.drawable.outline_close_black_18;
            } else {
                i12 = R.drawable.outline_close_dark_18;
            }
            webTabBarHolder.x.setImageResource(i12);
        }
    }

    public final void H() {
        this.F = d();
        MainListLoader mainListLoader = this.u;
        if (mainListLoader != null) {
            mainListLoader.f();
            this.u = null;
        }
        this.d = null;
        this.e = null;
        this.f = null;
        this.l = null;
        this.g = null;
        this.i = null;
        this.v = null;
    }

    public final boolean I(int i, int i2) {
        int size;
        WebTabAdapter.WebTabItem webTabItem;
        ArrayList arrayList = this.i;
        if (arrayList != null && i >= 0 && i2 >= 0 && i < (size = arrayList.size()) && i2 < size && (webTabItem = (WebTabAdapter.WebTabItem) this.i.remove(i)) != null) {
            this.i.add(i2, webTabItem);
            j(i, i2);
            return true;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r15v0, types: [java.lang.Object, com.mycompany.app.web.WebTabAdapter$WebTabItem] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object, com.mycompany.app.web.WebTabAdapter$WebTabItem] */
    /* JADX WARN: Type inference failed for: r6v7, types: [java.lang.Object, com.mycompany.app.web.WebTabAdapter$WebTabItem] */
    public final void J(int i, List list) {
        WebTabAdapter.WebTabItem webTabItem;
        WebTabAdapter.WebTabItem webTabItem2;
        this.g = list;
        this.h = i;
        int i2 = -1;
        if (list != null && !list.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            ArrayList arrayList2 = null;
            int i3 = 0;
            long j = 0;
            while (it.hasNext()) {
                WebTabAdapter.WebTabItem webTabItem3 = (WebTabAdapter.WebTabItem) it.next();
                if (webTabItem3 != null) {
                    ?? obj = new Object();
                    obj.d = webTabItem3.d;
                    obj.h = webTabItem3.h;
                    if (arrayList2 != null) {
                        long j2 = webTabItem3.e;
                        if (j2 == 0 || j2 != j) {
                            if (arrayList2.size() == 1) {
                                WebTabAdapter.WebTabItem webTabItem4 = (WebTabAdapter.WebTabItem) arrayList2.get(0);
                                webTabItem4.q = null;
                                webTabItem2 = webTabItem4;
                            } else {
                                ?? obj2 = new Object();
                                obj2.q = arrayList2;
                                webTabItem2 = obj2;
                            }
                            webTabItem2.i = i3;
                            arrayList.add(webTabItem2);
                            i3++;
                            arrayList2 = null;
                        }
                    }
                    if (i == webTabItem3.h) {
                        i2 = i3;
                    }
                    if (webTabItem3.e != 0) {
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                        }
                        arrayList2.add(obj);
                    } else {
                        obj.i = i3;
                        arrayList.add(obj);
                        i3++;
                    }
                    j = webTabItem3.e;
                }
            }
            if (arrayList2 != null) {
                if (arrayList2.size() == 1) {
                    WebTabAdapter.WebTabItem webTabItem5 = (WebTabAdapter.WebTabItem) arrayList2.get(0);
                    webTabItem5.q = null;
                    webTabItem = webTabItem5;
                } else {
                    ?? obj3 = new Object();
                    obj3.q = arrayList2;
                    webTabItem = obj3;
                }
                arrayList.add(webTabItem);
            }
            this.i = arrayList;
            this.j = i2;
            return;
        }
        this.i = null;
        this.j = -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
    public final void K(WebTabAdapter.WebTabItem webTabItem, MyTextImage myTextImage, String str, int i, boolean z, Bitmap bitmap) {
        int i2;
        int i3;
        int i4;
        if (myTextImage != null && this.u != null) {
            int i5 = -1040187393;
            if (TextUtils.isEmpty(webTabItem.j)) {
                if (z) {
                    i4 = R.drawable.outline_public_white_24;
                } else if (this.o == 0) {
                    i4 = R.drawable.outline_public_black_24;
                } else {
                    i4 = R.drawable.outline_public_dark_24;
                }
                if (z) {
                    i5 = -1;
                } else if (this.o == 0) {
                    i5 = -16777216;
                }
                if (this.v == null) {
                    this.v = Pattern.compile("\\p{Punct}");
                }
                myTextImage.b(i4, i5, str, this.v);
                return;
            }
            if (!webTabItem.j.startsWith("file:///") && !webTabItem.j.startsWith("/data/")) {
                ?? obj = new Object();
                obj.f16550a = 40;
                obj.f16551c = 11;
                obj.y = webTabItem.f19520c;
                obj.g = webTabItem.j;
                obj.J = i;
                if (!MainUtil.f6(bitmap)) {
                    bitmap = MainListLoader.b(obj);
                }
                if (MainUtil.f6(bitmap)) {
                    myTextImage.setImageBitmap(bitmap);
                    return;
                }
                if (z) {
                    i3 = R.drawable.outline_public_white_24;
                } else if (this.o == 0) {
                    i3 = R.drawable.outline_public_black_24;
                } else {
                    i3 = R.drawable.outline_public_dark_24;
                }
                if (z) {
                    i5 = -1;
                } else if (this.o == 0) {
                    i5 = -16777216;
                }
                if (this.v == null) {
                    this.v = Pattern.compile("\\p{Punct}");
                }
                myTextImage.b(i3, i5, str, this.v);
                this.u.e(obj, myTextImage);
                return;
            }
            if ("file:///android_asset/shortcut.html".equals(webTabItem.j)) {
                if (z) {
                    i2 = R.drawable.outline_home_white_24;
                } else if (this.o == 0) {
                    i2 = R.drawable.outline_home_black_24;
                } else {
                    i2 = R.drawable.outline_home_dark_24;
                }
            } else if (z) {
                i2 = R.drawable.outline_offline_pin_white_24;
            } else if (this.o == 0) {
                i2 = R.drawable.outline_offline_pin_black_24;
            } else {
                i2 = R.drawable.outline_offline_pin_dark_24;
            }
            myTextImage.setImageResource(i2);
        }
    }

    public final void L(List list, int i, boolean z, int i2, int i3, boolean z2) {
        List list2;
        int i4 = 0;
        if (MainUtil.j(i2, z)) {
            i2 = 0;
            i3 = 0;
        }
        MainListLoader mainListLoader = this.u;
        if (mainListLoader != null) {
            mainListLoader.f16599c = null;
        }
        if (!z2 && (list2 = this.g) != null && !list2.isEmpty()) {
            this.j = C(i);
            this.h = i;
        } else {
            try {
                J(i, list);
            } catch (Exception unused) {
                TabBarListener tabBarListener = this.l;
                if (tabBarListener != null) {
                    tabBarListener.a();
                }
            }
        }
        this.k = MainUtil.k5(z);
        this.m = i2;
        if (i2 != 0) {
            i4 = i3;
        }
        this.n = i4;
        this.o = MainUtil.s0(i2, z);
        MyRecyclerView myRecyclerView = this.e;
        if (myRecyclerView == null) {
            return;
        }
        myRecyclerView.post(new Runnable() { // from class: com.mycompany.app.web.WebTabBarAdapter.2
            @Override // java.lang.Runnable
            public final void run() {
                WebTabBarAdapter webTabBarAdapter = WebTabBarAdapter.this;
                if (webTabBarAdapter.e == null) {
                    return;
                }
                webTabBarAdapter.g();
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0098  */
    /* JADX WARN: Type inference failed for: r3v8, types: [java.lang.Object, com.mycompany.app.web.WebTabAdapter$WebTabItem] */
    /* JADX WARN: Type inference failed for: r7v19, types: [java.lang.Object, com.mycompany.app.web.WebTabAdapter$WebTabItem] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void M(boolean r23) {
        /*
            Method dump skipped, instructions count: 439
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebTabBarAdapter.M(boolean):void");
    }

    public final void N(int i, boolean z) {
        int i2;
        this.q = z;
        this.r = i;
        ArrayList arrayList = this.i;
        if (arrayList != null && (i2 = this.j) >= 0 && i2 < arrayList.size()) {
            x(this.j);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int d() {
        int i = this.F;
        if (i != 0) {
            return i;
        }
        ArrayList arrayList = this.i;
        if (arrayList == null) {
            return 0;
        }
        return arrayList.size();
    }

    /* JADX WARN: Type inference failed for: r10v5, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.web.WebTabBarAdapter$WebTabBarHolder] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder o(ViewGroup viewGroup, int i) {
        Context context = viewGroup.getContext();
        if (context == null) {
            return null;
        }
        MyTabFrame myTabFrame = new MyTabFrame(context);
        myTabFrame.setLayoutParams(new ViewGroup.LayoutParams(MainApp.Z0, -1));
        MyTextImage myTextImage = new MyTextImage(context);
        myTextImage.setScaleType(ImageView.ScaleType.CENTER_CROP);
        myTextImage.setRoundClip(true);
        int G = (int) MainUtil.G(context, 20.0f);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(G, G);
        layoutParams.gravity = 8388627;
        layoutParams.setMarginStart((int) MainUtil.G(context, 14.0f));
        myTabFrame.addView(myTextImage, layoutParams);
        MyButtonImage myButtonImage = new MyButtonImage(context);
        myButtonImage.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(MainApp.f1, -1);
        layoutParams2.gravity = 8388613;
        myTabFrame.addView(myButtonImage, layoutParams2);
        MyTextFast myTextFast = new MyTextFast(context);
        myTextFast.setPaddingRelative((int) MainUtil.G(context, 44.0f), 0, (int) MainUtil.G(context, 32.0f), 0);
        myTextFast.setSingleLine(true);
        myTextFast.setTextSize(1, 14.0f);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -2);
        layoutParams3.gravity = 8388627;
        myTabFrame.addView(myTextFast, layoutParams3);
        ?? viewHolder = new RecyclerView.ViewHolder(myTabFrame);
        viewHolder.u = myTabFrame;
        viewHolder.v = myTextImage;
        viewHolder.x = myButtonImage;
        viewHolder.w = myTextFast;
        viewHolder.y = MainApp.Z0;
        viewHolder.z = 0;
        return viewHolder;
    }

    public final void v(List list, int i, int i2, boolean z, TabBarChangeListener tabBarChangeListener) {
        int i3;
        if (this.z == null) {
            this.z = tabBarChangeListener;
            int i4 = this.j;
            int C = C(i2);
            ArrayList arrayList = this.i;
            int i5 = 0;
            if (arrayList != null) {
                i3 = arrayList.size();
            } else {
                i3 = 0;
            }
            try {
                J(i, list);
            } catch (Exception unused) {
                TabBarListener tabBarListener = this.l;
                if (tabBarListener != null) {
                    tabBarListener.a();
                }
            }
            ArrayList arrayList2 = this.i;
            if (arrayList2 != null) {
                i5 = arrayList2.size();
            }
            this.A = z;
            this.B = i4;
            this.C = C;
            this.D = i3;
            this.E = i5;
            MyRecyclerView myRecyclerView = this.e;
            if (myRecyclerView == null) {
                return;
            }
            myRecyclerView.post(new Runnable() { // from class: com.mycompany.app.web.WebTabBarAdapter.4
                @Override // java.lang.Runnable
                public final void run() {
                    final WebTabBarAdapter webTabBarAdapter = WebTabBarAdapter.this;
                    boolean z2 = webTabBarAdapter.A;
                    int i6 = webTabBarAdapter.B;
                    int i7 = webTabBarAdapter.C;
                    int i8 = webTabBarAdapter.D;
                    int i9 = webTabBarAdapter.E;
                    if (z2) {
                        if (i9 > i8 && i7 >= 0 && i7 < i8) {
                            webTabBarAdapter.i(i7);
                        }
                    } else if (i9 < i8 && i7 >= 0 && i7 < i8) {
                        webTabBarAdapter.l(i7);
                    }
                    if (i6 == webTabBarAdapter.j) {
                        TabBarChangeListener tabBarChangeListener2 = webTabBarAdapter.z;
                        if (tabBarChangeListener2 != null) {
                            tabBarChangeListener2.a();
                            webTabBarAdapter.z = null;
                            return;
                        }
                        return;
                    }
                    MyRecyclerView myRecyclerView2 = webTabBarAdapter.e;
                    if (myRecyclerView2 == null) {
                        return;
                    }
                    myRecyclerView2.post(new Runnable() { // from class: com.mycompany.app.web.WebTabBarAdapter.5
                        @Override // java.lang.Runnable
                        public final void run() {
                            WebTabBarAdapter webTabBarAdapter2 = WebTabBarAdapter.this;
                            int i10 = webTabBarAdapter2.B;
                            int i11 = webTabBarAdapter2.D;
                            if (i10 >= 0 && i10 < i11) {
                                webTabBarAdapter2.x(i10);
                            }
                            MyRecyclerView myRecyclerView3 = webTabBarAdapter2.e;
                            if (myRecyclerView3 == null) {
                                return;
                            }
                            myRecyclerView3.post(new Runnable() { // from class: com.mycompany.app.web.WebTabBarAdapter.5.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                                    WebTabBarAdapter webTabBarAdapter3 = WebTabBarAdapter.this;
                                    int i12 = webTabBarAdapter3.E;
                                    int i13 = webTabBarAdapter3.j;
                                    if (i13 >= 0 && i13 < i12) {
                                        webTabBarAdapter3.x(i13);
                                    }
                                    TabBarChangeListener tabBarChangeListener3 = WebTabBarAdapter.this.z;
                                    if (tabBarChangeListener3 != null) {
                                        tabBarChangeListener3.a();
                                        WebTabBarAdapter.this.z = null;
                                    }
                                }
                            });
                        }
                    });
                }
            });
        }
    }

    public final void w() {
        WebTabBarHolder F;
        MyRecyclerView myRecyclerView = this.e;
        if (myRecyclerView != null) {
            int childCount = myRecyclerView.getChildCount();
            for (int i = 0; i < childCount; i++) {
                MyRecyclerView myRecyclerView2 = this.e;
                if (myRecyclerView2 != null) {
                    try {
                        View childAt = myRecyclerView2.getChildAt(i);
                        if (childAt != null && (F = F(childAt)) != null) {
                            n(F, F.c());
                        }
                    } catch (Exception unused) {
                    }
                }
            }
        }
    }

    public final void x(int i) {
        WebTabBarHolder F;
        MyManagerLinear myManagerLinear = this.f;
        if (myManagerLinear != null) {
            try {
                View s = myManagerLinear.s(i);
                if (s != null && (F = F(s)) != null) {
                    n(F, i);
                }
            } catch (Exception unused) {
            }
        }
    }
}
