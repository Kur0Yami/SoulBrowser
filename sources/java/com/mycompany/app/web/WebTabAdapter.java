package com.mycompany.app.web;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.impl.workers.a;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.db.book.DbBookTab;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainListLoader;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefEditor;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.pref.PrefZone;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonCheck;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyFadeView;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.view.MyRoundImage;
import com.mycompany.app.view.MyTextFast;
import com.mycompany.app.view.MyTextImage;
import com.mycompany.app.view.MyThumbView;
import com.mycompany.app.web.WebTabGridItem;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.utils.MemoryCacheUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public class WebTabAdapter extends RecyclerView.Adapter<WebTabHolder> {
    public MyRecyclerView A;
    public WebNestFrame B;
    public WebTabItem C;
    public int D;
    public ArrayList E;
    public List F;
    public boolean G;
    public long H;
    public int I;
    public int J;
    public Pattern K;
    public int L;
    public List M;
    public final int d;
    public Context e;
    public final boolean f;
    public int g;
    public MyRecyclerView h;
    public LinearLayoutManager i;
    public List j;
    public List k;
    public long l;
    public int m;
    public int n;
    public int o;
    public int p;
    public int q;
    public int r;
    public int s;
    public final boolean t;
    public boolean u;
    public int selectionAnchor = -1;
    public int v;
    public int w;
    public WebTabListener x;
    public WebTabSubListener y;
    public MainListLoader z;

    /* renamed from: com.mycompany.app.web.WebTabAdapter$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements MainListLoader.ListLoadListener {
        @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
        public final void a(MainItem.ChildItem childItem, View view) {
        }

        @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
        public final void b(MainItem.ChildItem childItem, View view, Bitmap bitmap) {
            WebTabHolder L;
            if (childItem != null && (L = WebTabAdapter.L(view)) != null && L.u == childItem.y) {
                if (L.v == 2) {
                    if (view instanceof MyRoundImage) {
                        ((MyRoundImage) view).setImageBitmap(bitmap);
                    }
                } else if (childItem.f16550a == 40) {
                    if (view instanceof MyTextImage) {
                        ((MyTextImage) view).setImageBitmap(bitmap);
                    }
                } else if (view instanceof MyThumbView) {
                    ((MyThumbView) view).l(bitmap);
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class WebTabHolder extends RecyclerView.ViewHolder {
        public MyRoundImage A;
        public MyTextImage B;
        public MyFadeView C;
        public MyTextFast D;
        public MyTextFast E;
        public MyButtonImage F;
        public MyButtonCheck G;
        public long u;
        public int v;
        public int w;
        public int x;
        public WebTabGridItem y;
        public MyThumbView z;
    }

    /* loaded from: classes3.dex */
    public static class WebTabItem {

        /* renamed from: a, reason: collision with root package name */
        public int f19519a;
        public long b;

        /* renamed from: c, reason: collision with root package name */
        public long f19520c;
        public long d;
        public long e;
        public String f;
        public int g;
        public int h;
        public int i;
        public String j;
        public String k;
        public boolean l;
        public boolean m;
        public boolean n;
        public boolean o;
        public WebNestFrame p;
        public List q;
        /** Per-tab homepage URL (DbBookTab3_table._rsv1). */
        public String r;
    }

    /* loaded from: classes3.dex */
    public interface WebTabListener {
        void a();

        void b(View view, int i);

        void c(WebTabHolder webTabHolder, int i);

        void d(int i);

        void e(WebTabHolder webTabHolder, int i);
    }

    /* loaded from: classes3.dex */
    public interface WebTabSubListener {
        void a(long j);
    }

    /* JADX WARN: Type inference failed for: r6v1, types: [com.mycompany.app.main.MainListLoader$ListLoadListener, java.lang.Object] */
    public WebTabAdapter(Context context, MyRecyclerView myRecyclerView, boolean z, List list, List list2, long j, int i, int i2, int i3, int i4, boolean z2, LinearLayoutManager linearLayoutManager) {
        boolean z3;
        this.d = 1;
        if (PrefZone.D && PrefZone.C == 0) {
            z3 = true;
        } else {
            z3 = false;
        }
        this.f = z3;
        if (!z3 && !z) {
            this.d = 1;
        } else {
            this.d = 0;
        }
        this.e = context;
        this.h = myRecyclerView;
        this.j = list;
        this.k = list2;
        this.l = j;
        this.m = i;
        this.n = i2;
        this.o = PrefZone.C;
        this.p = i3;
        this.q = i4;
        this.t = z2;
        this.i = linearLayoutManager;
        W();
        this.z = new MainListLoader(this.e, false, new Object());
    }

    public static WebTabHolder L(View view) {
        Object tag;
        if (view == null || (tag = view.getTag()) == null || !(tag instanceof WebTabHolder)) {
            return null;
        }
        return (WebTabHolder) tag;
    }

    public final void A(int i, boolean z) {
        View s;
        WebTabHolder L;
        int i2;
        LinearLayoutManager linearLayoutManager = this.i;
        if (linearLayoutManager != null && (s = linearLayoutManager.s(i)) != null && (L = L(s)) != null) {
            View view = L.f1589a;
            WebTabItem H = H(L.c());
            if (H != null && H.f19519a == 0) {
                V(L.y, i);
                L.F.r(!this.u, z);
                L.G.t(this.u, z);
                L.G.q(H.m, z);
                MyFadeView myFadeView = L.C;
                if (myFadeView != null) {
                    if (H.m) {
                        myFadeView.f(z);
                    } else {
                        myFadeView.d(z);
                    }
                }
                if (L.v != 0) {
                    if (MainApp.K1) {
                        i2 = R.drawable.selector_list_back_dark;
                    } else {
                        i2 = R.drawable.selector_list_back;
                    }
                    view.setBackgroundResource(i2);
                    view.setActivated(H.m);
                }
            }
        }
    }

    public final void B() {
        LinearLayoutManager linearLayoutManager;
        View s;
        WebTabHolder L;
        WebTabItem H;
        int i;
        int i2 = this.n;
        List list = this.k;
        if (list != null && i2 >= 0 && i2 < list.size() && (linearLayoutManager = this.i) != null && (s = linearLayoutManager.s(i2)) != null && (L = L(s)) != null && (H = H(L.c())) != null && H.f19519a == 0 && (i = L.v) != 2) {
            a0(H, L.z, i, i2);
        }
    }

    public final void C(int i) {
        View s;
        WebTabHolder L;
        WebTabItem H;
        LinearLayoutManager linearLayoutManager = this.i;
        if (linearLayoutManager != null && (s = linearLayoutManager.s(i)) != null && (L = L(s)) != null && (H = H(L.c())) != null && H.f19519a == 0) {
            V(L.y, i);
        }
    }

    public final void D(boolean z) {
        List list = this.k;
        if (list != null && !list.isEmpty()) {
            C(this.n);
            if (z) {
                int i = this.n;
                if (i != this.d + 1 && i != this.k.size() - 1) {
                    C(this.n + 1);
                } else {
                    C(this.n - 1);
                }
            }
        }
    }

    public final int E() {
        List list = this.k;
        int i = 0;
        if (list != null && !list.isEmpty()) {
            for (WebTabItem webTabItem : this.k) {
                if (webTabItem != null && webTabItem.f19519a == 0 && webTabItem.m) {
                    i++;
                }
            }
        }
        return i;
    }

    public final WebTabItem F() {
        List list = this.k;
        if (list != null && !list.isEmpty()) {
            if (!this.u) {
                return H(this.d);
            }
            for (WebTabItem webTabItem : this.k) {
                if (webTabItem != null && webTabItem.f19519a == 0 && webTabItem.m) {
                    return webTabItem;
                }
            }
            return null;
        }
        return null;
    }

    public final int G(int i) {
        if (i == 1) {
            if (this.r == 0) {
                this.r = Math.round(MainUtil.G(this.e, 80.0f));
            }
            return this.r;
        }
        if (i == 2) {
            if (this.s == 0) {
                this.s = Math.round(MainUtil.G(this.e, 56.0f));
            }
            return this.s;
        }
        return this.q;
    }

    public final WebTabItem H(int i) {
        try {
            List list = this.k;
            if (list != null && i >= 0 && i < list.size()) {
                return (WebTabItem) this.k.get(i);
            }
        } catch (Exception unused) {
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0117 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0077 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r15v3, types: [java.lang.Object, com.mycompany.app.web.WebTabAdapter$WebTabItem] */
    /* JADX WARN: Type inference failed for: r1v13, types: [java.lang.Object, com.mycompany.app.web.WebTabAdapter$WebTabItem] */
    /* JADX WARN: Type inference failed for: r1v25, types: [java.lang.Object, com.mycompany.app.web.WebTabAdapter$WebTabItem] */
    /* JADX WARN: Type inference failed for: r6v6, types: [java.lang.Object, com.mycompany.app.web.WebTabAdapter$WebTabItem] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.ArrayList I(java.util.List r24, boolean r25) {
        /*
            Method dump skipped, instructions count: 533
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebTabAdapter.I(java.util.List, boolean):java.util.ArrayList");
    }

    public final int J() {
        int size;
        List list = this.k;
        if (list != null && list.size() != 0 && (size = this.k.size() - this.d) >= 0) {
            return size;
        }
        return 0;
    }

    public final Pattern K() {
        if (this.K == null) {
            this.K = Pattern.compile("\\p{Punct}");
        }
        return this.K;
    }

    /* JADX WARN: Type inference failed for: r10v1, types: [java.lang.Object, com.mycompany.app.web.WebTabAdapter$WebTabItem] */
    public final void M(View view, int i, int i2) {
        int i3;
        int size;
        WebTabItem H;
        WebTabItem H2;
        WebTabItem webTabItem;
        List list = this.k;
        if (list != null && i >= (i3 = this.d) && i2 >= i3 && i < (size = list.size()) && i2 < size && (H = H(i)) != null && (H2 = H(i2)) != null) {
            long currentTimeMillis = System.currentTimeMillis();
            if (H2.q != null) {
                this.k.remove(H);
                WebTabItem webTabItem2 = (WebTabItem) H2.q.get(0);
                if (webTabItem2 != null) {
                    List<WebTabItem> list2 = H.q;
                    if (list2 != null) {
                        for (WebTabItem webTabItem3 : list2) {
                            webTabItem3.e = webTabItem2.e;
                            webTabItem3.f = webTabItem2.f;
                            webTabItem3.g = webTabItem2.g;
                            webTabItem3.n = true;
                            H2.q.add(webTabItem3);
                        }
                    } else {
                        H.e = webTabItem2.e;
                        H.f = webTabItem2.f;
                        H.g = webTabItem2.g;
                        H.n = true;
                        H2.q.add(H);
                    }
                }
                this.j = I(this.k, false);
                if (view != null) {
                    view.post(new Runnable() { // from class: com.mycompany.app.web.WebTabAdapter.11
                        @Override // java.lang.Runnable
                        public final void run() {
                            WebTabAdapter webTabAdapter = WebTabAdapter.this;
                            if (webTabAdapter.e == null) {
                                return;
                            }
                            webTabAdapter.g();
                        }
                    });
                    return;
                }
                return;
            }
            this.k.remove(H2);
            this.k.remove(H);
            H2.e = currentTimeMillis;
            H2.n = true;
            List list3 = H.q;
            if (list3 != null && (webTabItem = (WebTabItem) list3.get(0)) != null) {
                H2.f = webTabItem.f;
                H2.g = webTabItem.g;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(H2);
            List<WebTabItem> list4 = H.q;
            if (list4 != null) {
                for (WebTabItem webTabItem4 : list4) {
                    webTabItem4.e = currentTimeMillis;
                    webTabItem4.n = true;
                    arrayList.add(webTabItem4);
                }
            } else {
                H.e = currentTimeMillis;
                H.n = true;
                arrayList.add(H);
            }
            if (i < i2) {
                i2--;
            }
            ?? obj = new Object();
            obj.q = arrayList;
            this.k.add(i2, obj);
            this.j = I(this.k, false);
            if (view != null) {
                view.post(new Runnable() { // from class: com.mycompany.app.web.WebTabAdapter.12
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebTabAdapter webTabAdapter = WebTabAdapter.this;
                        if (webTabAdapter.e == null) {
                            return;
                        }
                        webTabAdapter.g();
                    }
                });
            }
        }
    }

    public final boolean N() {
        List list = this.k;
        if (list != null && !list.isEmpty()) {
            int i = 0;
            for (WebTabItem webTabItem : this.k) {
                if (webTabItem != null && webTabItem.f19519a == 0 && webTabItem.m) {
                    i++;
                }
            }
            int size = this.k.size() - this.d;
            if (size > 0 && i >= size) {
                return true;
            }
        }
        return false;
    }

    public final void O(int i, int i2) {
        WebTabItem H;
        List list;
        WebTabItem webTabItem;
        List list2 = this.k;
        if (list2 != null && i >= this.d && i < list2.size() && (H = H(i)) != null && (list = H.q) != null && !list.isEmpty() && (webTabItem = (WebTabItem) H.q.get(i2)) != null) {
            H.q.remove(i2);
            webTabItem.e = 0L;
            webTabItem.f = null;
            webTabItem.g = 0;
            webTabItem.n = true;
            int i3 = i + 1;
            this.k.add(i3, webTabItem);
            if (H.q.size() == 0) {
                this.k.remove(H);
            } else if (H.q.size() == 1) {
                this.k.remove(H);
                WebTabItem webTabItem2 = (WebTabItem) H.q.get(0);
                if (webTabItem2 != null) {
                    H.q.remove(0);
                    webTabItem2.e = 0L;
                    webTabItem2.f = null;
                    webTabItem2.g = 0;
                    webTabItem2.n = true;
                    this.k.add(i, webTabItem2);
                }
            }
            h(i);
            i(i3);
            this.j = I(this.k, true);
        }
    }

    public final void P() {
        this.L = d();
        MainListLoader mainListLoader = this.z;
        if (mainListLoader != null) {
            mainListLoader.f();
            this.z = null;
        }
        this.e = null;
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.x = null;
        this.y = null;
        this.A = null;
        this.B = null;
        this.K = null;
    }

    public final void Q() {
        this.G = false;
        this.E = null;
        this.F = null;
        this.C = null;
        this.D = 0;
        this.H = 0L;
        this.I = 0;
        this.J = 0;
    }

    public final boolean R(int i, boolean z) {
        List list;
        if (!this.u && i >= this.d && (list = this.k) != null && i < list.size()) {
            Q();
            if (z) {
                this.D = i;
                WebTabItem H = H(i);
                this.C = H;
                if (H != null) {
                    this.H = this.l;
                    this.I = this.m;
                    this.J = this.n;
                } else {
                    return false;
                }
            }
            this.k.remove(i);
            int i2 = this.n;
            if (i <= i2) {
                this.n = i2 - 1;
                d0();
            }
            l(i);
            return true;
        }
        return false;
    }

    public final boolean S(int i, int i2) {
        int i3;
        int size;
        WebTabItem webTabItem;
        List list = this.k;
        if (list != null && i >= (i3 = this.d) && i2 >= i3 && i < (size = list.size()) && i2 < size && (webTabItem = (WebTabItem) this.k.remove(i)) != null) {
            this.k.add(i2, webTabItem);
            j(i, i2);
            return true;
        }
        return false;
    }

    public final void T(boolean z) {
        this.j = I(this.k, z);
    }

    public final int U() {
        if (!this.u) {
            WebTabItem webTabItem = this.C;
            int i = this.D;
            long j = this.H;
            int i2 = this.I;
            int i3 = this.J;
            Q();
            if (i >= this.d && webTabItem != null) {
                int i4 = this.n;
                this.l = j;
                this.m = i2;
                this.n = i3;
                List list = this.k;
                if (list == null || list.isEmpty()) {
                    this.k = new ArrayList();
                }
                if (i < this.k.size()) {
                    this.k.add(i, webTabItem);
                } else {
                    this.k.add(webTabItem);
                }
                if (i4 != this.n) {
                    h(i4);
                }
                i(i);
                return i;
            }
            return -1;
        }
        return -1;
    }

    public final void V(WebTabGridItem webTabGridItem, int i) {
        int i2;
        if (webTabGridItem == null) {
            return;
        }
        if (i == this.n) {
            webTabGridItem.a(PrefEditor.H, this.w, true);
            return;
        }
        if (MainApp.K1) {
            i2 = -12632257;
        } else {
            i2 = -2434342;
        }
        webTabGridItem.a(i2, this.v, false);
    }

    public final void W() {
        if (this.o == 0) {
            this.v = MainApp.n1;
            this.w = Math.round(MainUtil.G(this.e, 5.0f));
        } else {
            this.v = 1;
            this.w = Math.round(MainUtil.G(this.e, 3.0f));
        }
    }

    public final void X(boolean z, boolean z2) {
        List list = this.k;
        if (list != null && !list.isEmpty()) {
            for (WebTabItem webTabItem : this.k) {
                if (webTabItem != null && webTabItem.f19519a == 0) {
                    webTabItem.m = z;
                }
            }
            LinearLayoutManager linearLayoutManager = this.i;
            if (linearLayoutManager != null) {
                int V0 = linearLayoutManager.V0() + 1;
                for (int U0 = linearLayoutManager.U0(); U0 < V0; U0++) {
                    A(U0, z2);
                }
            }
        }
    }

    public final void Y(int i, boolean z) {
        if (this.u != z) {
            this.u = z;
            if (z) {
                this.selectionAnchor = i;
                WebTabItem H = H(i);
                if (H != null && H.f19519a == 0) {
                    H.m = true;
                }
                LinearLayoutManager linearLayoutManager = this.i;
                if (linearLayoutManager != null) {
                    int V0 = linearLayoutManager.V0() + 1;
                    for (int U0 = linearLayoutManager.U0(); U0 < V0; U0++) {
                        A(U0, false);
                    }
                    return;
                }
                return;
            }
            this.selectionAnchor = -1;
            X(false, false);
        }
    }

    public final void Z(int i, int i2, int i3, boolean z) {
        boolean z2;
        int i4 = this.o;
        int i5 = PrefZone.C;
        if (i4 == i5 && this.p == i2 && this.q == i3) {
            z2 = false;
        } else {
            z2 = true;
        }
        this.o = i5;
        this.p = i2;
        this.q = i3;
        W();
        int i6 = this.g;
        if (this.f) {
            this.g = 0;
        } else if (z) {
            if (PrefZone.C != 0) {
                this.g = (i - G(this.o)) - MainApp.E1;
            } else {
                this.g = i - G(this.o);
            }
            if (this.g < 1) {
                this.g = 1;
            }
        } else {
            this.g = 1;
        }
        if (!z2 && this.g == i6) {
            return;
        }
        g();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v7, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
    public final void a0(WebTabItem webTabItem, MyThumbView myThumbView, int i, int i2) {
        if (myThumbView != null && this.z != null) {
            List list = webTabItem.q;
            boolean z = this.t;
            int i3 = -1;
            if (list != null) {
                if (MainApp.K1) {
                    i3 = -16777216;
                }
                myThumbView.setBackgroundColor(i3);
                myThumbView.o(i2, i, webTabItem.q, z);
                return;
            }
            myThumbView.o(0, i, null, false);
            if (TextUtils.isEmpty(webTabItem.j)) {
                if (MainApp.K1) {
                    myThumbView.setImageResource(R.drawable.outline_public_black_web_24);
                } else {
                    myThumbView.setImageResource(R.drawable.outline_public_dark_web_24);
                }
                if (MainApp.K1) {
                    i3 = -16777216;
                }
                myThumbView.setBackgroundColor(i3);
                return;
            }
            String str = webTabItem.j + webTabItem.l + z;
            Bitmap a2 = ImageLoader.f().g().a(MemoryCacheUtils.a(2, str));
            if (MainUtil.f6(a2)) {
                myThumbView.l(a2);
                return;
            }
            ?? obj = new Object();
            obj.f16550a = 41;
            obj.f16551c = 11;
            obj.y = webTabItem.f19520c;
            obj.g = str;
            if (!webTabItem.j.startsWith("file:///") && !webTabItem.j.startsWith("/data/")) {
                if (MainApp.K1) {
                    myThumbView.setImageResource(R.drawable.outline_public_black_web_24);
                } else {
                    myThumbView.setImageResource(R.drawable.outline_public_dark_web_24);
                }
            } else if ("file:///android_asset/shortcut.html".equals(webTabItem.j)) {
                if (MainApp.K1) {
                    myThumbView.setImageResource(R.drawable.outline_home_black_web_24);
                } else {
                    myThumbView.setImageResource(R.drawable.outline_home_dark_web_24);
                }
            } else if (MainApp.K1) {
                myThumbView.setImageResource(R.drawable.outline_offline_pin_black_web_24);
            } else {
                myThumbView.setImageResource(R.drawable.outline_offline_pin_dark_web_24);
            }
            if (MainApp.K1) {
                i3 = -16777216;
            }
            myThumbView.setBackgroundColor(i3);
            this.z.e(obj, myThumbView);
        }
    }

    public final void b0(List list, List list2, long j, int i, int i2) {
        MainListLoader mainListLoader = this.z;
        if (mainListLoader != null) {
            mainListLoader.f16599c = null;
        }
        this.j = list;
        this.k = list2;
        this.l = j;
        this.m = i;
        this.n = i2;
        g();
    }

    public final void c0(int i) {
        LinearLayoutManager linearLayoutManager = this.i;
        if (linearLayoutManager != null) {
            if (i < linearLayoutManager.U0()) {
                linearLayoutManager.x0(i);
            } else if (i > linearLayoutManager.V0()) {
                linearLayoutManager.x0(i);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int d() {
        int i = this.L;
        if (i != 0) {
            return i;
        }
        List list = this.k;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public final void d0() {
        WebTabItem H = H(this.n);
        if (H == null) {
            this.l = 0L;
            this.m = 0;
            this.n = this.d;
        } else {
            List list = H.q;
            if (list != null && !list.isEmpty()) {
                WebTabItem webTabItem = (WebTabItem) H.q.get(r1.size() - 1);
                if (webTabItem != null) {
                    this.l = webTabItem.f19520c;
                    this.m = webTabItem.h;
                } else {
                    this.l = H.f19520c;
                    this.m = H.h;
                }
            } else {
                this.l = H.f19520c;
                this.m = H.h;
            }
        }
        WebTabSubListener webTabSubListener = this.y;
        if (webTabSubListener != null) {
            webTabSubListener.a(this.l);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v7, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
    public final void e0(WebTabItem webTabItem, MyTextImage myTextImage, String str, int i, boolean z) {
        if (myTextImage != null && this.z != null) {
            if (webTabItem.q != null) {
                if (z) {
                    myTextImage.setImageResource(R.drawable.outline_folder_white_24);
                    return;
                } else {
                    myTextImage.setImageResource(WebTabBarAdapter.y(i, MainApp.K1));
                    return;
                }
            }
            if (TextUtils.isEmpty(webTabItem.j)) {
                if (z) {
                    myTextImage.a(R.drawable.outline_public_dark_24, -328966, str, K());
                    return;
                } else if (MainApp.K1) {
                    myTextImage.a(R.drawable.outline_public_dark_web_24, -5197648, str, K());
                    return;
                } else {
                    myTextImage.a(R.drawable.outline_public_black_web_24, -8882056, str, K());
                    return;
                }
            }
            if (!webTabItem.j.startsWith("file:///") && !webTabItem.j.startsWith("/data/")) {
                ?? obj = new Object();
                obj.f16550a = 40;
                obj.f16551c = 11;
                obj.y = webTabItem.f19520c;
                obj.g = webTabItem.j;
                Bitmap b = MainListLoader.b(obj);
                if (MainUtil.f6(b)) {
                    myTextImage.setImageBitmap(b);
                    return;
                }
                if (z) {
                    myTextImage.a(R.drawable.outline_public_dark_24, -328966, str, K());
                } else if (MainApp.K1) {
                    myTextImage.a(R.drawable.outline_public_dark_web_24, -5197648, str, K());
                } else {
                    myTextImage.a(R.drawable.outline_public_black_web_24, -8882056, str, K());
                }
                this.z.e(obj, myTextImage);
                return;
            }
            if ("file:///android_asset/shortcut.html".equals(webTabItem.j)) {
                if (z) {
                    myTextImage.setImageResource(R.drawable.outline_home_dark_24);
                    return;
                } else if (MainApp.K1) {
                    myTextImage.setImageResource(R.drawable.outline_home_dark_web_24);
                    return;
                } else {
                    myTextImage.setImageResource(R.drawable.outline_home_black_web_24);
                    return;
                }
            }
            if (z) {
                myTextImage.setImageResource(R.drawable.outline_offline_pin_dark_24);
            } else if (MainApp.K1) {
                myTextImage.setImageResource(R.drawable.outline_offline_pin_dark_web_24);
            } else {
                myTextImage.setImageResource(R.drawable.outline_offline_pin_black_web_24);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int f(int i) {
        if (i < this.d) {
            return this.g + 3;
        }
        return this.o;
    }

    public final void f0(int i) {
        WebTabItem H = H(i);
        if (H != null && H.f19519a == 0) {
            H.m = !H.m;
            if (H.m) {
                this.selectionAnchor = i;
            }
            A(i, true);
        }
    }

    private int findRangeAnchor(int toIndex) {
        int anchor = this.selectionAnchor;
        WebTabItem item = H(anchor);
        if (item != null && item.f19519a == 0 && item.m) {
            return anchor;
        }
        List list = this.k;
        if (list == null) {
            return -1;
        }
        int best = -1;
        int bestDist = Integer.MAX_VALUE;
        for (int i = 0; i < list.size(); i++) {
            WebTabItem candidate = H(i);
            if (candidate != null && candidate.f19519a == 0 && candidate.m) {
                int dist = Math.abs(i - toIndex);
                if (dist < bestDist) {
                    bestDist = dist;
                    best = i;
                }
            }
        }
        return best;
    }

    public final boolean selectRangeTo(int toIndex) {
        if (!this.u) {
            return false;
        }
        int from = findRangeAnchor(toIndex);
        if (from < 0) {
            WebTabItem item = H(toIndex);
            if (item == null || item.f19519a != 0) {
                return false;
            }
            item.m = true;
            A(toIndex, true);
            this.selectionAnchor = toIndex;
            return true;
        }
        int lo = Math.min(from, toIndex);
        int hi = Math.max(from, toIndex);
        for (int i = lo; i <= hi; i++) {
            WebTabItem item = H(i);
            if (item != null && item.f19519a == 0) {
                item.m = true;
                A(i, true);
            }
        }
        this.selectionAnchor = toIndex;
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v34, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void n(RecyclerView.ViewHolder viewHolder, int i) {
        WebTabItem H;
        int i2;
        int i3;
        int i4;
        int i5;
        WebTabItem webTabItem;
        WebTabHolder webTabHolder = (WebTabHolder) viewHolder;
        View view = webTabHolder.f1589a;
        if (view == null || (H = H(i)) == null) {
            return;
        }
        webTabHolder.u = H.f19520c;
        int i6 = H.f19519a;
        webTabHolder.w = i6;
        if (i6 == 1) {
            view.setTag(null);
            return;
        }
        if (!PrefZone.D && webTabHolder.v == 0) {
            int i7 = webTabHolder.x;
            int i8 = this.q;
            if (i7 != i8) {
                webTabHolder.x = i8;
                ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                if (layoutParams != null) {
                    int i9 = layoutParams.height;
                    int i10 = this.q;
                    if (i9 != i10) {
                        layoutParams.height = i10;
                        view.requestLayout();
                    }
                }
            }
        }
        view.setTag(webTabHolder);
        V(webTabHolder.y, i);
        webTabHolder.y.setListener(new WebTabGridItem.TabGridListener() { // from class: com.mycompany.app.web.WebTabAdapter.3
            @Override // com.mycompany.app.web.WebTabGridItem.TabGridListener
            public final void a() {
                WebTabListener webTabListener = WebTabAdapter.this.x;
                if (webTabListener != null) {
                    webTabListener.a();
                }
            }
        });
        List list = H.q;
        if (list != null) {
            if (list.size() > 0 && (webTabItem = (WebTabItem) H.q.get(0)) != null) {
                i5 = webTabItem.g;
            } else {
                i5 = 0;
            }
            if (i5 == 0) {
                i5 = PrefWeb.b0;
            }
            i2 = i5;
        } else {
            i2 = 0;
        }
        String q3 = WebViewActivity.q3(this.e, H);
        webTabHolder.D.setText(q3);
        MyTextFast myTextFast = webTabHolder.E;
        if (myTextFast != null) {
            if (H.q != null) {
                myTextFast.setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + H.q.size());
            } else if (TextUtils.isEmpty(H.j)) {
                webTabHolder.E.setText((CharSequence) null);
            } else if (!H.j.startsWith("file:///") && !H.j.startsWith("/data/")) {
                webTabHolder.E.setText(MainUtil.I1(H.j, true));
            } else if ("file:///android_asset/shortcut.html".equals(H.j)) {
                webTabHolder.E.setText("home");
            } else if (H.j.startsWith("file:///expired")) {
                webTabHolder.E.setText("expired");
            } else {
                webTabHolder.E.setText("offline");
            }
        }
        webTabHolder.F.r(!this.u, false);
        webTabHolder.G.t(this.u, false);
        webTabHolder.G.q(H.m, false);
        MyFadeView myFadeView = webTabHolder.C;
        if (myFadeView != null) {
            if (H.m) {
                myFadeView.f(false);
            } else {
                myFadeView.d(false);
            }
        }
        MyThumbView myThumbView = webTabHolder.z;
        if (myThumbView != null) {
            myThumbView.setTag(webTabHolder);
            if (webTabHolder.v == 1) {
                webTabHolder.z.setRoundClip(true);
                MyThumbView myThumbView2 = webTabHolder.z;
                if (MainApp.K1) {
                    i4 = -12632257;
                } else {
                    i4 = -2434342;
                }
                myThumbView2.k(i4, this.v);
            } else {
                webTabHolder.z.setRoundClip(true);
                webTabHolder.z.k(0, 0);
            }
        }
        if (webTabHolder.v == 0) {
            webTabHolder.z.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebTabAdapter.4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    WebTabHolder L;
                    WebTabAdapter webTabAdapter = WebTabAdapter.this;
                    if (webTabAdapter.x == null || (L = WebTabAdapter.L(view2)) == null) {
                        return;
                    }
                    webTabAdapter.x.c(L, L.c());
                }
            });
            webTabHolder.z.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.mycompany.app.web.WebTabAdapter.5
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view2) {
                    WebTabHolder L;
                    if (view2 != null && (view2 instanceof MyThumbView)) {
                        ((MyThumbView) view2).p();
                    }
                    WebTabAdapter webTabAdapter = WebTabAdapter.this;
                    if (webTabAdapter.x == null || (L = WebTabAdapter.L(view2)) == null) {
                        return true;
                    }
                    webTabAdapter.x.e(L, L.c());
                    return true;
                }
            });
            webTabHolder.G.setTag(webTabHolder);
            webTabHolder.G.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebTabAdapter.6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    WebTabHolder L;
                    WebTabAdapter webTabAdapter = WebTabAdapter.this;
                    if (!webTabAdapter.u || webTabAdapter.x == null || (L = WebTabAdapter.L(view2)) == null) {
                        return;
                    }
                    webTabAdapter.x.c(L, L.c());
                }
            });
        } else {
            if (MainApp.K1) {
                i3 = R.drawable.selector_list_back_dark;
            } else {
                i3 = R.drawable.selector_list_back;
            }
            view.setBackgroundResource(i3);
            view.setActivated(H.m);
            view.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebTabAdapter.7
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    WebTabHolder L;
                    WebTabAdapter webTabAdapter = WebTabAdapter.this;
                    if (webTabAdapter.x == null || (L = WebTabAdapter.L(view2)) == null) {
                        return;
                    }
                    webTabAdapter.x.c(L, L.c());
                }
            });
            view.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.mycompany.app.web.WebTabAdapter.8
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view2) {
                    WebTabHolder L;
                    WebTabAdapter webTabAdapter = WebTabAdapter.this;
                    if (webTabAdapter.x == null || (L = WebTabAdapter.L(view2)) == null) {
                        return true;
                    }
                    webTabAdapter.x.e(L, L.c());
                    return true;
                }
            });
        }
        webTabHolder.F.setTag(webTabHolder);
        webTabHolder.F.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebTabAdapter.9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i11;
                WebTabAdapter webTabAdapter = WebTabAdapter.this;
                if (webTabAdapter.x != null) {
                    WebTabHolder L = WebTabAdapter.L(view2);
                    if (L != null && L.f1589a != null) {
                        i11 = L.c();
                    } else {
                        i11 = -1;
                    }
                    WebTabItem H2 = webTabAdapter.H(i11);
                    if (H2 == null) {
                        return;
                    }
                    if (H2.q != null) {
                        webTabAdapter.x.b(view2, i11);
                    } else {
                        webTabAdapter.x.d(i11);
                    }
                }
            }
        });
        int i11 = webTabHolder.v;
        if (i11 == 2) {
            MyRoundImage myRoundImage = webTabHolder.A;
            if (myRoundImage != null) {
                myRoundImage.setTag(webTabHolder);
                MyRoundImage myRoundImage2 = webTabHolder.A;
                if (myRoundImage2 != null && this.z != null) {
                    if (H.q != null) {
                        myRoundImage2.setImageResource(WebTabBarAdapter.y(i2, MainApp.K1));
                    } else if (TextUtils.isEmpty(H.j)) {
                        myRoundImage2.p(-460552, R.drawable.outline_public_black_24, q3, K());
                    } else if (!H.j.startsWith("file:///") && !H.j.startsWith("/data/")) {
                        ?? obj = new Object();
                        obj.f16550a = 40;
                        obj.f16551c = 11;
                        obj.y = H.f19520c;
                        obj.g = H.j;
                        Bitmap b = MainListLoader.b(obj);
                        if (MainUtil.f6(b)) {
                            myRoundImage2.setImageBitmap(b);
                        } else {
                            myRoundImage2.p(-460552, R.drawable.outline_public_black_24, q3, K());
                            this.z.e(obj, myRoundImage2);
                        }
                    } else if ("file:///android_asset/shortcut.html".equals(H.j)) {
                        myRoundImage2.o(0, R.drawable.outline_home_black_24);
                    } else {
                        myRoundImage2.o(0, R.drawable.outline_offline_pin_black_24);
                    }
                }
            }
        } else if (i11 == 0) {
            MyTextImage myTextImage = webTabHolder.B;
            if (myTextImage != null) {
                myTextImage.setTag(webTabHolder);
                e0(H, webTabHolder.B, q3, i2, true);
            }
            a0(H, webTabHolder.z, webTabHolder.v, i);
        } else {
            MyTextImage myTextImage2 = webTabHolder.B;
            if (myTextImage2 != null) {
                myTextImage2.setTag(webTabHolder);
                e0(H, webTabHolder.B, q3, i2, false);
            }
            a0(H, webTabHolder.z, webTabHolder.v, i);
        }
        int i12 = webTabHolder.v;
        if (i12 == 1) {
            webTabHolder.y.setHeadColor(0);
            if (MainApp.K1) {
                webTabHolder.D.setTextColor(-328966);
                webTabHolder.E.setTextColor(-4079167);
                if (H.q != null) {
                    webTabHolder.F.setImageResource(R.drawable.outline_more_vert_dark_20);
                } else {
                    webTabHolder.F.setImageResource(R.drawable.outline_close_dark_18);
                }
                webTabHolder.F.setBgPreColor(-12632257);
                webTabHolder.G.p(R.drawable.baseline_check_circle_dark_24, R.drawable.outline_radio_button_unchecked_dark_24);
                return;
            }
            webTabHolder.D.setTextColor(-16777216);
            webTabHolder.E.setTextColor(-10395295);
            if (H.q != null) {
                webTabHolder.F.setImageResource(R.drawable.outline_more_vert_black_20);
            } else {
                webTabHolder.F.setImageResource(R.drawable.outline_close_black_18);
            }
            webTabHolder.F.setBgPreColor(-2039584);
            webTabHolder.G.p(R.drawable.baseline_check_circle_black_24, R.drawable.outline_radio_button_unchecked_black_24);
            return;
        }
        if (i12 == 2) {
            webTabHolder.y.setHeadColor(0);
            if (MainApp.K1) {
                webTabHolder.D.setTextColor(-328966);
                if (H.q != null) {
                    webTabHolder.F.setImageResource(R.drawable.outline_more_vert_dark_20);
                } else {
                    webTabHolder.F.setImageResource(R.drawable.outline_close_dark_18);
                }
                webTabHolder.F.setBgPreColor(-12632257);
                webTabHolder.G.p(R.drawable.baseline_check_circle_dark_24, R.drawable.outline_radio_button_unchecked_dark_24);
                return;
            }
            webTabHolder.D.setTextColor(-16777216);
            if (H.q != null) {
                webTabHolder.F.setImageResource(R.drawable.outline_more_vert_black_20);
            } else {
                webTabHolder.F.setImageResource(R.drawable.outline_close_black_18);
            }
            webTabHolder.F.setBgPreColor(-2039584);
            webTabHolder.G.p(R.drawable.baseline_check_circle_black_24, R.drawable.outline_radio_button_unchecked_black_24);
            return;
        }
        if (i2 != 0) {
            webTabHolder.y.setHeadColor(i2);
        } else {
            webTabHolder.y.setHeadColor(-12632257);
        }
        webTabHolder.D.setTextColor(-328966);
        if (H.q != null) {
            webTabHolder.F.setImageResource(R.drawable.outline_more_vert_dark_20);
        } else {
            webTabHolder.F.setImageResource(R.drawable.outline_close_dark_18);
        }
        webTabHolder.F.setBgPreColor(1107296255);
        webTabHolder.G.p(R.drawable.baseline_check_circle_dark_24, R.drawable.outline_radio_button_unchecked_dark_24);
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.web.WebTabAdapter$WebTabHolder] */
    /* JADX WARN: Type inference failed for: r2v4, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.web.WebTabAdapter$WebTabHolder] */
    /* JADX WARN: Type inference failed for: r2v6, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.web.WebTabAdapter$WebTabHolder] */
    /* JADX WARN: Type inference failed for: r2v8, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.web.WebTabAdapter$WebTabHolder] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder o(ViewGroup viewGroup, int i) {
        int G;
        int i2;
        Context context = viewGroup.getContext();
        if (context == null) {
            return null;
        }
        if (i >= 3) {
            View view = new View(context);
            view.setLayoutParams(new ViewGroup.LayoutParams(-1, this.g));
            ?? viewHolder = new RecyclerView.ViewHolder(view);
            viewHolder.v = i;
            return viewHolder;
        }
        if (this.f) {
            i2 = MainApp.i1 * 2;
            G = -1;
        } else {
            G = G(i);
            i2 = -1;
        }
        if (i == 1) {
            WebTabGridItem webTabGridItem = new WebTabGridItem(context);
            webTabGridItem.setLayoutParams(new ViewGroup.LayoutParams(i2, G));
            MyThumbView myThumbView = new MyThumbView(context);
            int i3 = MainApp.i1;
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i3, i3);
            layoutParams.gravity = 8388627;
            layoutParams.setMarginStart(MainApp.F1);
            webTabGridItem.addView(myThumbView, layoutParams);
            RelativeLayout relativeLayout = new RelativeLayout(context);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
            layoutParams2.gravity = 8388627;
            layoutParams2.setMarginStart((int) MainUtil.G(context, 84.0f));
            layoutParams2.setMarginEnd(MainApp.g1);
            webTabGridItem.addView(relativeLayout, layoutParams2);
            MyTextFast myTextFast = new MyTextFast(context);
            int i4 = R.id.tab_item_title;
            myTextFast.setId(i4);
            myTextFast.setMaxLines(2);
            myTextFast.setEllipsize(TextUtils.TruncateAt.END);
            myTextFast.setTextSize(1, 16.0f);
            relativeLayout.addView(myTextFast, -2, -2);
            MyTextImage myTextImage = new MyTextImage(context);
            myTextImage.setScaleType(ImageView.ScaleType.CENTER_CROP);
            myTextImage.setRoundClip(true);
            int G2 = (int) MainUtil.G(context, 18.0f);
            RelativeLayout.LayoutParams h = a.h(G2, G2, 3, i4);
            h.topMargin = (int) MainUtil.G(context, 6.0f);
            relativeLayout.addView(myTextImage, h);
            MyTextFast myTextFast2 = new MyTextFast(context);
            myTextFast2.setGravity(8388627);
            myTextFast2.setSingleLine(true);
            myTextFast2.setLineSpacing(0.0f, 1.0f);
            myTextFast2.setIncludeFontPadding(false);
            myTextFast2.setTextSize(1, 14.0f);
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, G2);
            layoutParams3.addRule(3, i4);
            layoutParams3.topMargin = (int) MainUtil.G(context, 6.0f);
            layoutParams3.setMarginStart((int) MainUtil.G(context, 29.0f));
            relativeLayout.addView(myTextFast2, layoutParams3);
            MyButtonImage myButtonImage = new MyButtonImage(context);
            myButtonImage.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            myButtonImage.setVisibility(8);
            int i5 = MainApp.g1;
            FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(i5, i5);
            layoutParams4.gravity = 8388629;
            webTabGridItem.addView(myButtonImage, layoutParams4);
            MyButtonCheck myButtonCheck = new MyButtonCheck(context);
            myButtonCheck.setVisibility(8);
            int i6 = MainApp.g1;
            FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(i6, i6);
            layoutParams5.gravity = 8388629;
            webTabGridItem.addView(myButtonCheck, layoutParams5);
            ?? viewHolder2 = new RecyclerView.ViewHolder(webTabGridItem);
            viewHolder2.v = i;
            viewHolder2.y = webTabGridItem;
            viewHolder2.z = myThumbView;
            viewHolder2.D = myTextFast;
            viewHolder2.B = myTextImage;
            viewHolder2.E = myTextFast2;
            viewHolder2.F = myButtonImage;
            viewHolder2.G = myButtonCheck;
            return viewHolder2;
        }
        if (i == 2) {
            WebTabGridItem webTabGridItem2 = new WebTabGridItem(context);
            webTabGridItem2.setLayoutParams(new ViewGroup.LayoutParams(i2, G));
            MyRoundImage myRoundImage = new MyRoundImage(context);
            int G3 = (int) MainUtil.G(context, 24.0f);
            int i7 = G3 / 2;
            myRoundImage.setScaleType(ImageView.ScaleType.CENTER_CROP);
            myRoundImage.setRoundRadius(MainApp.G1);
            myRoundImage.setCircleRadius(i7);
            FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(G3, G3);
            layoutParams6.gravity = 8388627;
            layoutParams6.setMarginStart(i7);
            webTabGridItem2.addView(myRoundImage, layoutParams6);
            MyTextFast myTextFast3 = new MyTextFast(context);
            myTextFast3.setMaxLines(2);
            myTextFast3.setEllipsize(TextUtils.TruncateAt.END);
            myTextFast3.setTextSize(1, 16.0f);
            FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(-1, -2);
            layoutParams7.gravity = 8388627;
            layoutParams7.setMarginStart(MainApp.h1);
            layoutParams7.setMarginEnd(MainApp.g1);
            webTabGridItem2.addView(myTextFast3, layoutParams7);
            MyButtonImage myButtonImage2 = new MyButtonImage(context);
            myButtonImage2.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            myButtonImage2.setVisibility(8);
            int i8 = MainApp.g1;
            FrameLayout.LayoutParams layoutParams8 = new FrameLayout.LayoutParams(i8, i8);
            layoutParams8.gravity = 8388629;
            webTabGridItem2.addView(myButtonImage2, layoutParams8);
            MyButtonCheck myButtonCheck2 = new MyButtonCheck(context);
            myButtonCheck2.setVisibility(8);
            int i9 = MainApp.g1;
            FrameLayout.LayoutParams layoutParams9 = new FrameLayout.LayoutParams(i9, i9);
            layoutParams9.gravity = 8388629;
            webTabGridItem2.addView(myButtonCheck2, layoutParams9);
            ?? viewHolder3 = new RecyclerView.ViewHolder(webTabGridItem2);
            viewHolder3.v = i;
            viewHolder3.y = webTabGridItem2;
            viewHolder3.A = myRoundImage;
            viewHolder3.D = myTextFast3;
            viewHolder3.F = myButtonImage2;
            viewHolder3.G = myButtonCheck2;
            return viewHolder3;
        }
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(i2, G));
        WebTabGridItem webTabGridItem3 = new WebTabGridItem(context);
        int i10 = MainApp.q1;
        webTabGridItem3.setPadding(i10, i10, i10, i10);
        frameLayout.addView(webTabGridItem3, new FrameLayout.LayoutParams(-1, -1));
        int G4 = (int) MainUtil.G(context, 32.0f);
        MyThumbView myThumbView2 = new MyThumbView(context);
        FrameLayout.LayoutParams layoutParams10 = new FrameLayout.LayoutParams(-1, -1);
        layoutParams10.topMargin = G4;
        webTabGridItem3.addView(myThumbView2, layoutParams10);
        MyTextFast myTextFast4 = new MyTextFast(context);
        myTextFast4.setSingleLine(true);
        myTextFast4.setTextSize(1, 13.0f);
        myTextFast4.setGravity(16);
        myTextFast4.setPadding(G4, 0, G4, 0);
        webTabGridItem3.addView(myTextFast4, -1, G4);
        MyTextImage myTextImage2 = new MyTextImage(context);
        myTextImage2.setScaleType(ImageView.ScaleType.CENTER_CROP);
        myTextImage2.setRoundClip(true);
        int G5 = (int) MainUtil.G(context, 18.0f);
        FrameLayout.LayoutParams layoutParams11 = new FrameLayout.LayoutParams(G5, G5);
        int G6 = (int) MainUtil.G(context, 7.0f);
        layoutParams11.topMargin = G6;
        layoutParams11.setMarginStart(G6);
        webTabGridItem3.addView(myTextImage2, layoutParams11);
        MyFadeView myFadeView = new MyFadeView(context);
        myFadeView.setBackgroundColor(1895825408);
        myFadeView.setVisibility(8);
        webTabGridItem3.addView(myFadeView, -1, -1);
        MyButtonImage myButtonImage3 = new MyButtonImage(context);
        myButtonImage3.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        myButtonImage3.setVisibility(8);
        FrameLayout.LayoutParams layoutParams12 = new FrameLayout.LayoutParams(G4, G4);
        layoutParams12.gravity = 8388613;
        webTabGridItem3.addView(myButtonImage3, layoutParams12);
        MyButtonCheck myButtonCheck3 = new MyButtonCheck(context);
        myButtonCheck3.setVisibility(8);
        FrameLayout.LayoutParams layoutParams13 = new FrameLayout.LayoutParams(G4, G4);
        layoutParams13.gravity = 8388613;
        webTabGridItem3.addView(myButtonCheck3, layoutParams13);
        ?? viewHolder4 = new RecyclerView.ViewHolder(frameLayout);
        viewHolder4.v = i;
        viewHolder4.x = G;
        viewHolder4.y = webTabGridItem3;
        viewHolder4.z = myThumbView2;
        viewHolder4.D = myTextFast4;
        viewHolder4.B = myTextImage2;
        viewHolder4.C = myFadeView;
        viewHolder4.F = myButtonImage3;
        viewHolder4.G = myButtonCheck3;
        return viewHolder4;
    }

    public final void v() {
        ArrayList arrayList = this.E;
        List list = this.F;
        boolean z = this.G;
        Q();
        if (z) {
            if (arrayList != null && !arrayList.isEmpty()) {
                if (list == null) {
                    list = new ArrayList();
                }
                list.addAll(arrayList);
            }
            z(list);
            DbBookTab.n(this.e, this.t);
            return;
        }
        if (arrayList != null && !arrayList.isEmpty()) {
            z(arrayList);
            SQLiteDatabase writableDatabase = DbBookTab.b(this.e).getWritableDatabase();
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                WebTabItem webTabItem = (WebTabItem) obj;
                if (webTabItem != null) {
                    DbUtil.a(writableDatabase, "DbBookTab3_table", "_uid=?", new String[]{Long.toString(webTabItem.f19520c)});
                }
            }
        }
    }

    public final boolean w(boolean z) {
        List list = this.k;
        if (list != null) {
            int size = list.size();
            int i = this.d;
            if (size > i) {
                if (z) {
                    this.k = null;
                    this.l = 0L;
                    this.m = 0;
                    this.n = i;
                    x(false, false);
                    return true;
                }
                ArrayList arrayList = new ArrayList();
                boolean z2 = false;
                for (WebTabItem webTabItem : this.k) {
                    if (webTabItem != null) {
                        if (webTabItem.m) {
                            int i2 = webTabItem.i;
                            int i3 = this.n;
                            if (i2 <= i3) {
                                this.n = i3 - 1;
                                z2 = true;
                            }
                        } else {
                            arrayList.add(webTabItem);
                        }
                    }
                }
                this.k = arrayList;
                if (z2) {
                    d0();
                }
                x(false, false);
                return true;
            }
        }
        return false;
    }

    public final void x(boolean z, boolean z2) {
        if (!z) {
            v();
        }
        List list = this.k;
        boolean z3 = this.t;
        ArrayList arrayList = null;
        if (list != null && list.size() > this.d) {
            ArrayList I = I(this.k, z2);
            if (I != null && !I.isEmpty()) {
                SQLiteDatabase writableDatabase = DbBookTab.b(this.e).getWritableDatabase();
                try {
                    for (WebTabItem webTabItem : this.j) {
                        if (webTabItem != null) {
                            int size = I.size();
                            int i = 0;
                            while (true) {
                                if (i < size) {
                                    Object obj = I.get(i);
                                    i++;
                                    WebTabItem webTabItem2 = (WebTabItem) obj;
                                    if (webTabItem2 != null && webTabItem.f19520c == webTabItem2.f19520c) {
                                        break;
                                    }
                                } else if (z) {
                                    if (this.E == null) {
                                        this.E = new ArrayList();
                                    }
                                    this.E.add(webTabItem);
                                } else {
                                    if (arrayList == null) {
                                        arrayList = new ArrayList();
                                    }
                                    arrayList.add(webTabItem);
                                    DbUtil.a(writableDatabase, "DbBookTab3_table", "_uid=?", new String[]{Long.toString(webTabItem.f19520c)});
                                }
                            }
                        }
                    }
                } catch (Exception unused) {
                }
                if (arrayList != null && !arrayList.isEmpty()) {
                    z(arrayList);
                }
                this.j = I;
                return;
            }
            if (z) {
                this.F = this.j;
                this.j = null;
                this.G = true;
                return;
            } else {
                z(this.j);
                this.j = null;
                DbBookTab.n(this.e, z3);
                return;
            }
        }
        if (z) {
            this.F = this.j;
            this.j = null;
            this.G = true;
        } else {
            z(this.j);
            this.j = null;
            DbBookTab.n(this.e, z3);
        }
    }

    public final boolean y(int i) {
        WebTabItem webTabItem;
        List list;
        List list2 = this.k;
        if (list2 != null) {
            int size = list2.size();
            int i2 = this.d;
            if (size > i2 && i >= i2 && i < this.k.size() && (webTabItem = (WebTabItem) this.k.get(i)) != null && (list = webTabItem.q) != null && !list.isEmpty()) {
                ArrayList arrayList = new ArrayList();
                for (WebTabItem webTabItem2 : webTabItem.q) {
                    if (webTabItem2 != null && !webTabItem2.m) {
                        arrayList.add(webTabItem2);
                    }
                }
                if (arrayList.isEmpty()) {
                    this.k.remove(i);
                    int i3 = this.n;
                    if (i <= i3) {
                        this.n = i3 - 1;
                        d0();
                    }
                } else {
                    webTabItem.q = arrayList;
                }
                x(false, false);
                return true;
            }
        }
        return false;
    }

    public final void z(List list) {
        MyRecyclerView myRecyclerView = this.A;
        if (myRecyclerView != null && list != null && !list.isEmpty()) {
            this.M = list;
            myRecyclerView.post(new Runnable() { // from class: com.mycompany.app.web.WebTabAdapter.10
                @Override // java.lang.Runnable
                public final void run() {
                    WebNestFrame webNestFrame;
                    WebTabAdapter webTabAdapter = WebTabAdapter.this;
                    List<WebTabItem> list2 = webTabAdapter.M;
                    webTabAdapter.M = null;
                    if (list2 != null && !list2.isEmpty()) {
                        for (WebTabItem webTabItem : list2) {
                            if (webTabItem != null && (webNestFrame = webTabItem.p) != null && webNestFrame.f19303c) {
                                WebNestFrame webNestFrame2 = webTabAdapter.B;
                                if (webNestFrame2 != null && webNestFrame2.equals(webNestFrame)) {
                                    webNestFrame2.setValid(false);
                                    webTabAdapter.B = null;
                                } else {
                                    webTabItem.p.t(null);
                                }
                            }
                        }
                    }
                }
            });
        }
    }

    public final String selectedUrls() {
        StringBuilder sb = new StringBuilder();
        List list = this.k;
        if (list != null && !list.isEmpty()) {
            for (WebTabItem webTabItem : list) {
                if (webTabItem != null && webTabItem.f19519a == 0 && webTabItem.m) {
                    List children = webTabItem.q;
                    if (children != null && !children.isEmpty()) {
                        for (WebTabItem child : (List<WebTabItem>) children) {
                            if (child != null) {
                                appendUrl(sb, child.j);
                            }
                        }
                    } else {
                        appendUrl(sb, webTabItem.j);
                    }
                }
            }
        }
        return sb.toString();
    }

    public final void copySelectedUrls(android.content.Context context) {
        if (context == null) {
            return;
        }
        MainUtil.s(R.string.copied_clipboard, context, "Copied URL", selectedUrls());
    }

    private static void appendUrl(StringBuilder sb, String url) {
        if (TextUtils.isEmpty(url)) {
            return;
        }
        if (sb.length() > 0) {
            sb.append('\n');
        }
        sb.append(url);
    }
}
