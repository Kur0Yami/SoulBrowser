package com.mycompany.app.quick;

import android.content.ContentValues;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Outline;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.webkit.URLUtil;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.internal.mlkit_vision_text_common.a;
import com.mycompany.app.data.DataNews;
import com.mycompany.app.data.book.DataBookRecent;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.db.book.DbBookQuick;
import com.mycompany.app.db.book.DbBookRecent;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainListLoader;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefPdf;
import com.mycompany.app.pref.PrefSync;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.pref.PrefZtri;
import com.mycompany.app.pref.PrefZtwo;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonCheck;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyButtonText;
import com.mycompany.app.view.MyCircleView;
import com.mycompany.app.view.MyManagerGrid;
import com.mycompany.app.view.MyProgressBar;
import com.mycompany.app.view.MyRoundFrame;
import com.mycompany.app.view.MyRoundImage;
import com.mycompany.app.web.WebSearchAdapter;
import com.mycompany.app.web.WebTabGridItem;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.FailReason;
import com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener;
import com.nostra13.universalimageloader.utils.MemoryCacheUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.regex.Pattern;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

/* loaded from: classes3.dex */
public class QuickAdapter extends RecyclerView.Adapter<QuickHolder> {
    public boolean A;
    public List B;
    public QuickRcntListener C;
    public boolean D;
    public int E;
    public int d;
    public int e;
    public Context f;
    public final int g;
    public boolean h;
    public boolean i;
    public int j;
    public MyManagerGrid k;
    public QuickListener l;
    public WebTabGridItem.TabGridListener m;
    public List n;
    public List o;
    public boolean p;
    public boolean q;
    public MainListLoader r;
    public DisplayImageOptions s;
    public Handler t;
    public boolean u;
    public String v;
    public boolean w;
    public ExecutorService x;
    public boolean y = false;
    public int z = -1;

    /* renamed from: com.mycompany.app.quick.QuickAdapter$15, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass15 implements View.OnClickListener {
        public AnonymousClass15() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            QuickAdapter quickAdapter = QuickAdapter.this;
            if (quickAdapter.D) {
                return;
            }
            quickAdapter.D = true;
            final int v = QuickAdapter.v(view);
            quickAdapter.O(new Runnable() { // from class: com.mycompany.app.quick.QuickAdapter.15.1
                @Override // java.lang.Runnable
                public final void run() {
                    QuickAdapter quickAdapter2 = QuickAdapter.this;
                    WebSearchAdapter.SearchItem H = quickAdapter2.H(v);
                    if (H == null) {
                        return;
                    }
                    List list = quickAdapter2.B;
                    if (list != null && !list.isEmpty()) {
                        try {
                            list.remove(H);
                            DbBookRecent.f(quickAdapter2.f, H.d);
                            DataBookRecent.a(quickAdapter2.f).b = false;
                            if (quickAdapter2.t == null) {
                                quickAdapter2.t = new Handler(Looper.getMainLooper());
                            }
                            quickAdapter2.t.post(new Runnable() { // from class: com.mycompany.app.quick.QuickAdapter.15.1.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    AnonymousClass15 anonymousClass15 = AnonymousClass15.this;
                                    QuickAdapter.this.g();
                                    QuickAdapter.this.D = false;
                                }
                            });
                            return;
                        } catch (Exception unused) {
                        }
                    }
                    quickAdapter2.D = false;
                }
            });
        }
    }

    /* renamed from: com.mycompany.app.quick.QuickAdapter$18, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass18 extends ViewOutlineProvider {
        @Override // android.view.ViewOutlineProvider
        public final void getOutline(View view, Outline outline) {
            if (view != null && outline != null) {
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), MainApp.v1 + MainApp.G1);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class QuickHolder extends RecyclerView.ViewHolder {
        public MyButtonCheck A;
        public MyButtonText B;
        public int C;
        public MyRoundFrame D;
        public RelativeLayout E;
        public MyRoundImage F;
        public AppCompatTextView G;
        public View H;
        public MyButtonImage I;
        public MyButtonImage J;
        public MyRoundImage K;
        public AppCompatTextView L;
        public MyButtonImage M;
        public MyButtonImage N;
        public int u;
        public int v;
        public MyCircleView w;
        public MyRoundImage x;
        public AppCompatTextView y;
        public MyProgressBar z;
    }

    /* loaded from: classes3.dex */
    public static class QuickItem {

        /* renamed from: a, reason: collision with root package name */
        public int f17362a;
        public long b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f17363c;
        public String d;
        public String e;
        public String f;
        public String g;
        public int h;
        public int i;
        public boolean j;
        public boolean k;
        public List l;
        public int m;
        public int n;
        public int o;
        public String p;
        public String q;
        public String r;
        public long s;
        public String t;
        public QuickHolder u;
        public String v;
        public String w;
        public int x;
    }

    /* loaded from: classes3.dex */
    public interface QuickListener {
        boolean b();

        void c(QuickItem quickItem, boolean z);

        boolean d();

        void e(QuickItem quickItem);

        int h();

        void k();

        void l();

        void n(List list);

        void o(QuickHolder quickHolder, int i);

        void p(boolean z);

        void q(QuickHolder quickHolder, int i);
    }

    /* loaded from: classes3.dex */
    public interface QuickRcntListener {
    }

    /* loaded from: classes3.dex */
    public static class QuickSubItem {

        /* renamed from: a, reason: collision with root package name */
        public long f17364a;
        public String b;

        /* renamed from: c, reason: collision with root package name */
        public String f17365c;
        public int d;
    }

    public QuickAdapter(Context context, int i, boolean z, MyManagerGrid myManagerGrid, QuickListener quickListener) {
        this.f = context;
        this.g = i;
        this.h = z;
        this.k = myManagerGrid;
        this.l = quickListener;
        R();
        this.r = new MainListLoader(this.f, false, new MainListLoader.ListLoadListener() { // from class: com.mycompany.app.quick.QuickAdapter.1
            @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
            public final void a(MainItem.ChildItem childItem, View view) {
                QuickHolder J;
                int c2;
                int i2;
                if (childItem != null && (J = QuickAdapter.J(view)) != null && J.x != null && (c2 = J.c()) == childItem.J) {
                    int i3 = J.u;
                    QuickAdapter quickAdapter = QuickAdapter.this;
                    if (i3 != 1) {
                        i2 = quickAdapter.z();
                    } else {
                        i2 = 0;
                    }
                    QuickItem E = quickAdapter.E(c2);
                    if (E == null) {
                        return;
                    }
                    if (E.f17363c) {
                        J.x.w(DbBookQuick.f(-65536), i2);
                    } else {
                        J.x.u(E.g, i2, quickAdapter.h);
                    }
                }
            }

            @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
            public final void b(MainItem.ChildItem childItem, View view, Bitmap bitmap) {
                QuickHolder J;
                int c2;
                int i2;
                if (childItem != null && (J = QuickAdapter.J(view)) != null && J.x != null && (c2 = J.c()) == childItem.J) {
                    int i3 = J.u;
                    QuickAdapter quickAdapter = QuickAdapter.this;
                    if (i3 != 1) {
                        i2 = quickAdapter.z();
                    } else {
                        i2 = 0;
                    }
                    if (MainUtil.f6(bitmap)) {
                        J.x.v(bitmap, i2);
                        return;
                    }
                    QuickItem E = quickAdapter.E(c2);
                    if (E == null) {
                        return;
                    }
                    if (E.f17363c) {
                        J.x.w(DbBookQuick.f(-65536), i2);
                    } else {
                        J.x.u(E.g, i2, quickAdapter.h);
                    }
                }
            }
        });
    }

    public static int C() {
        if (!PrefZtri.i0 && !PrefZtwo.y) {
            return 0;
        }
        return MainApp.g1 * 2;
    }

    public static QuickHolder J(View view) {
        Object tag;
        if (view == null || (tag = view.getTag()) == null || !(tag instanceof QuickHolder)) {
            return null;
        }
        return (QuickHolder) tag;
    }

    public static boolean d0() {
        if (!PrefZtwo.J && !PrefZtwo.K) {
            return false;
        }
        return true;
    }

    public static int v(View view) {
        QuickHolder J = J(view);
        if (J != null && J.f1589a != null) {
            return J.c();
        }
        return -1;
    }

    public final int A() {
        List<QuickItem> list = this.n;
        int i = 0;
        if (list != null && !list.isEmpty()) {
            for (QuickItem quickItem : list) {
                if (quickItem != null && quickItem.f17362a == 0 && quickItem.j) {
                    i++;
                }
            }
        }
        return i;
    }

    public final QuickItem B() {
        List<QuickItem> list = this.n;
        if (list != null && !list.isEmpty()) {
            for (QuickItem quickItem : list) {
                if (quickItem != null && quickItem.f17362a == 0 && quickItem.j) {
                    return quickItem;
                }
            }
            return null;
        }
        return null;
    }

    public final int D() {
        int size;
        List list = this.n;
        if (list != null && list.size() != 0 && (size = (this.n.size() - this.d) - this.e) >= 0) {
            return size;
        }
        return 0;
    }

    /* JADX WARN: Type inference failed for: r5v11, types: [java.lang.Object, com.mycompany.app.quick.QuickAdapter$QuickItem] */
    public final QuickItem E(int i) {
        List list;
        int i2;
        int i3;
        List list2 = this.n;
        if (list2 != null) {
            int size = list2.size();
            if (i >= 0 && i < size) {
                return (QuickItem) list2.get(i);
            }
            if (PrefSync.k && L() && (((i3 = this.g) == 0 || i3 == 3) && size == this.d + this.e)) {
                if (i == size) {
                    ?? obj = new Object();
                    obj.f17362a = 3;
                    return obj;
                }
                i2 = 1;
            } else {
                i2 = 0;
            }
            i = (i - size) - i2;
        }
        if (this.h && d0() && (list = this.o) != null && i >= 0 && i < list.size()) {
            return (QuickItem) list.get(i);
        }
        return null;
    }

    public final Document F(String str) {
        if (!URLUtil.isNetworkUrl(str) || this.t == null) {
            return null;
        }
        if (TextUtils.isEmpty(this.v)) {
            this.v = MainUtil.t3(this.f);
        }
        try {
            return Jsoup.connect(str).referrer(str).userAgent(this.v).get();
        } catch (Exception | LinkageError | OutOfMemoryError unused) {
            return null;
        }
    }

    public final QuickItem G(String str) {
        List<QuickItem> list;
        if (!TextUtils.isEmpty(str) && (list = this.o) != null && !list.isEmpty()) {
            for (QuickItem quickItem : list) {
                if (quickItem != null && str.equals(quickItem.d)) {
                    return quickItem;
                }
            }
        }
        return null;
    }

    public final WebSearchAdapter.SearchItem H(int i) {
        List list = this.B;
        if (list != null && i >= 0 && i < list.size()) {
            if (this.i) {
                i = (list.size() - 1) - i;
            }
            return (WebSearchAdapter.SearchItem) list.get(i);
        }
        return null;
    }

    public final int I() {
        boolean b;
        int i;
        if (PrefZtri.i0 && this.j != 0) {
            int D = D();
            if (D == 0) {
                if (PrefSync.k && this.g == 0 && PrefZtri.k0) {
                    return Math.min(MainApp.A1, this.j);
                }
                return 0;
            }
            QuickListener quickListener = this.l;
            if (quickListener == null) {
                b = MainUtil.N5(this.f);
            } else {
                b = quickListener.b();
            }
            if (b) {
                i = PrefZtri.m0;
            } else {
                i = PrefZtri.l0;
            }
            if (i == 0) {
                i = 5;
            }
            int i2 = D / i;
            if (D % i != 0) {
                i2++;
            }
            int i3 = i2 - 1;
            if (i3 <= 0) {
                return 0;
            }
            return Math.min(i3 * MainApp.A1, this.j);
        }
        return 0;
    }

    public final boolean K() {
        List<QuickItem> list = this.n;
        if (list != null && !list.isEmpty()) {
            int i = 0;
            for (QuickItem quickItem : list) {
                if (quickItem != null && quickItem.f17362a == 0 && quickItem.j) {
                    i++;
                }
            }
            int size = (list.size() - this.d) - this.e;
            if (size > 0 && i >= size) {
                return true;
            }
        }
        return false;
    }

    public final boolean L() {
        int i = this.g;
        if (i != 2 && i != 3) {
            return PrefZtri.i0;
        }
        if (PrefZtri.j0 == 1) {
            return true;
        }
        return false;
    }

    public final void M() {
        this.E = d();
        MainListLoader mainListLoader = this.r;
        if (mainListLoader != null) {
            mainListLoader.f();
            this.r = null;
        }
        this.f = null;
        this.k = null;
        this.l = null;
        this.m = null;
        this.n = null;
        this.o = null;
        this.s = null;
        MainUtil.R6(this.t);
        this.t = null;
        this.v = null;
        this.x = null;
        this.B = null;
        this.C = null;
    }

    public final boolean N(int i, int i2) {
        int i3;
        int size;
        List list = this.n;
        if (list == null || i < (i3 = this.d) || i2 < i3 || i >= (size = list.size() - this.e) || i2 >= size || this.u) {
            return false;
        }
        this.u = true;
        List list2 = this.n;
        if (list2 != null) {
            QuickItem E = E(i);
            if (E != null) {
                E.i = i2;
                E.k = true;
            }
            QuickItem E2 = E(i2);
            if (E2 != null) {
                E2.i = i;
                E2.k = true;
            }
            QuickItem quickItem = (QuickItem) list2.remove(i);
            if (quickItem != null) {
                list2.add(i2, quickItem);
            }
        }
        j(i, i2);
        this.u = false;
        return true;
    }

    public final void O(Runnable runnable) {
        ExecutorService executorService = this.x;
        if (executorService == null || executorService.isShutdown() || executorService.isTerminated()) {
            executorService = MainApp.i(this.f);
            if (executorService == null) {
                return;
            } else {
                this.x = executorService;
            }
        }
        try {
            executorService.execute(runnable);
        } catch (Exception unused) {
        }
    }

    public final boolean P(View view) {
        List<QuickItem> list;
        String str;
        if (this.f == null || (list = this.n) == null || list.isEmpty() || this.u) {
            return false;
        }
        this.u = true;
        boolean z = false;
        int i = 0;
        for (QuickItem quickItem : list) {
            if (quickItem != null && quickItem.f17362a == 0) {
                if ((quickItem.k || quickItem.i != i) && !TextUtils.isEmpty(quickItem.d)) {
                    quickItem.i = i;
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("_order", Integer.valueOf(quickItem.i));
                    if (PrefSync.k) {
                        str = "1";
                    } else {
                        str = "0";
                    }
                    DbUtil.h(DbBookQuick.i(this.f).getWritableDatabase(), "DbBookQuick_table", contentValues, "_secret=? AND _path=?", new String[]{str, quickItem.d});
                    z = true;
                }
                quickItem.k = false;
                i++;
            }
        }
        if (z && view != null) {
            view.post(new Runnable() { // from class: com.mycompany.app.quick.QuickAdapter.17
                @Override // java.lang.Runnable
                public final void run() {
                    QuickAdapter.this.g();
                }
            });
        }
        this.u = false;
        return z;
    }

    public final void Q(boolean z, boolean z2) {
        List<QuickItem> list = this.n;
        if (list != null && !list.isEmpty()) {
            for (QuickItem quickItem : list) {
                if (quickItem != null && quickItem.f17362a == 0) {
                    quickItem.j = z;
                }
            }
            MyManagerGrid myManagerGrid = this.k;
            if (myManagerGrid != null) {
                int V0 = myManagerGrid.V0() + 1;
                for (int U0 = myManagerGrid.U0(); U0 < V0; U0++) {
                    y(U0, true);
                }
            }
        }
    }

    public final void R() {
        int i = this.g;
        if (i == 1) {
            this.d = 0;
            this.e = 0;
            return;
        }
        if (i == 2) {
            if (this.A) {
                this.d = 0;
                this.e = 0;
                return;
            } else {
                this.d = 0;
                this.e = 1;
                return;
            }
        }
        if (!L()) {
            this.d = 1;
            this.e = 0;
        } else if (this.h && d0()) {
            this.d = 1;
            this.e = 1;
        } else {
            this.d = 1;
            this.e = 2;
        }
    }

    public final void S(int i, boolean z) {
        if (this.q != z) {
            this.q = z;
            if (z) {
                QuickItem E = E(i);
                if (E != null && E.f17362a == 0) {
                    E.j = true;
                }
                MyManagerGrid myManagerGrid = this.k;
                if (myManagerGrid != null) {
                    int V0 = myManagerGrid.V0() + 1;
                    for (int U0 = myManagerGrid.U0(); U0 < V0; U0++) {
                        y(U0, false);
                    }
                    return;
                }
                return;
            }
            List<QuickItem> list = this.n;
            if (list != null && !list.isEmpty()) {
                for (QuickItem quickItem : list) {
                    if (quickItem != null && quickItem.f17362a == 0) {
                        quickItem.j = false;
                    }
                }
            }
            g();
        }
    }

    public final void T(List list) {
        if (list != null && list.size() == 3) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                QuickItem quickItem = (QuickItem) it.next();
                if (quickItem != null && quickItem.f17362a == 6) {
                    this.y = true;
                    return;
                }
            }
            this.y = false;
            this.z = -1;
            return;
        }
        this.y = false;
        this.z = -1;
    }

    public final void U(int i, boolean z) {
        int i2 = this.g;
        if (i2 == 1) {
            this.j = 1;
            return;
        }
        if (i2 == 2) {
            this.j = 1;
            return;
        }
        if (!this.h) {
            if (z) {
                int i3 = (i - MainApp.A1) - MainApp.Y0;
                this.j = i3;
                if (i3 < 1) {
                    this.j = 1;
                    return;
                }
                return;
            }
            this.j = MainApp.E1;
            return;
        }
        if (!z) {
            this.j = 1;
            return;
        }
        if (L()) {
            int i4 = i - MainApp.A1;
            this.j = i4;
            if (i4 < 1) {
                this.j = 1;
                return;
            }
            return;
        }
        if (d0()) {
            this.j = i;
            if (i < 1) {
                this.j = 1;
                return;
            }
            return;
        }
        this.j = 1;
    }

    public final void V() {
        List list;
        QuickItem E;
        if (L() && this.g != 1 && (list = this.n) != null && list.size() != 0 && (E = E(this.n.size() - this.e)) != null) {
            if (PrefZtri.k0) {
                if (E.f17362a == 2) {
                    E.f17362a = 1;
                }
            } else if (E.f17362a == 1) {
                E.f17362a = 2;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object, com.nostra13.universalimageloader.core.display.BitmapDisplayer] */
    public final void W(MainItem.ViewItem viewItem, MyRoundImage myRoundImage) {
        if (this.f == null) {
            return;
        }
        if (this.s == null) {
            DisplayImageOptions.Builder builder = new DisplayImageOptions.Builder();
            builder.f20960a = true;
            Bitmap.Config config = Bitmap.Config.RGB_565;
            builder.a();
            builder.f = new Object();
            this.s = new DisplayImageOptions(builder);
        }
        ImageLoader.f().c(viewItem, myRoundImage, this.s, new SimpleImageLoadingListener() { // from class: com.mycompany.app.quick.QuickAdapter.20
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r1v6, types: [com.mycompany.app.main.MainItem$ViewItem, java.lang.Object] */
            @Override // com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener, com.nostra13.universalimageloader.core.listener.ImageLoadingListener
            public final void a(MainItem.ViewItem viewItem2, View view, FailReason failReason) {
                QuickHolder J;
                QuickItem G;
                if (viewItem2 != null) {
                    QuickAdapter quickAdapter = QuickAdapter.this;
                    if (quickAdapter.f != null && (J = QuickAdapter.J(view)) != null && J.x != null && J.c() == viewItem2.f && (G = quickAdapter.G(viewItem2.v)) != null) {
                        MyRoundImage myRoundImage2 = J.x;
                        int i = viewItem2.f;
                        if (myRoundImage2 != null && !TextUtils.isEmpty(G.q)) {
                            Bitmap a2 = ImageLoader.f().g().a(MemoryCacheUtils.a(2, G.q));
                            if (MainUtil.f6(a2)) {
                                quickAdapter.X(myRoundImage2, a2);
                                return;
                            }
                            ?? obj = new Object();
                            obj.f16554a = 7;
                            obj.q = G.q;
                            obj.f = i;
                            obj.t = 2;
                            quickAdapter.W(obj, myRoundImage2);
                        }
                    }
                }
            }

            @Override // com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener, com.nostra13.universalimageloader.core.listener.ImageLoadingListener
            public final void c(MainItem.ViewItem viewItem2, View view, Bitmap bitmap) {
                QuickHolder J;
                if (viewItem2 != null) {
                    QuickAdapter quickAdapter = QuickAdapter.this;
                    if (quickAdapter.f == null || !MainUtil.f6(bitmap) || (J = QuickAdapter.J(view)) == null || J.x == null || J.c() != viewItem2.f) {
                        return;
                    }
                    quickAdapter.X(J.x, bitmap);
                }
            }
        });
    }

    public final void X(MyRoundImage myRoundImage, Bitmap bitmap) {
        int i;
        if (myRoundImage == null) {
            return;
        }
        if (MainUtil.f6(bitmap)) {
            if (bitmap.getWidth() > bitmap.getHeight() * 2) {
                myRoundImage.setScaleType(ImageView.ScaleType.FIT_CENTER);
            } else {
                myRoundImage.setScaleType(ImageView.ScaleType.CENTER_CROP);
            }
            myRoundImage.setImageBitmap(bitmap);
            return;
        }
        if (!QuickView.s()) {
            i = R.drawable.google_news;
        } else if (MainUtil.k5(this.h)) {
            i = R.drawable.outline_newspaper_dark_24;
        } else {
            i = R.drawable.outline_newspaper_black_24;
        }
        myRoundImage.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        myRoundImage.setImageResource(i);
    }

    /* JADX WARN: Type inference failed for: r1v5, types: [java.lang.Object, com.mycompany.app.quick.QuickAdapter$QuickItem] */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.Object, com.mycompany.app.quick.QuickAdapter$QuickItem] */
    public final void Y(List list, boolean z) {
        List list2;
        this.A = false;
        MainListLoader mainListLoader = this.r;
        if (mainListLoader != null) {
            mainListLoader.f16599c = null;
        }
        R();
        int i = this.g;
        List list3 = list;
        if (i != 1) {
            list3 = list;
            if (i != 2) {
                list3 = list;
                if (!L()) {
                    ArrayList arrayList = new ArrayList();
                    ?? obj = new Object();
                    obj.f17362a = 9;
                    arrayList.add(0, obj);
                    list3 = arrayList;
                }
            }
        }
        this.B = null;
        this.n = list3;
        if (z && this.h && d0()) {
            if (PrefZtwo.J) {
                list2 = DataNews.a(this.f).f12897a;
            } else {
                ArrayList arrayList2 = new ArrayList();
                ?? obj2 = new Object();
                obj2.f17362a = 4;
                obj2.o = 0;
                arrayList2.add(obj2);
                list2 = arrayList2;
            }
            a0(list2, false);
        }
        g();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0037  */
    /* JADX WARN: Type inference failed for: r0v6, types: [com.mycompany.app.main.MainItem$ViewItem, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void Z(com.mycompany.app.quick.QuickAdapter.QuickItem r5, com.mycompany.app.view.MyRoundImage r6, final int r7) {
        /*
            r4 = this;
            if (r6 != 0) goto L3
            goto L5c
        L3:
            android.content.Context r0 = r4.f
            if (r0 != 0) goto L8
            goto L5c
        L8:
            java.lang.String r0 = r5.p
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            r1 = 0
            if (r0 == 0) goto L6b
            android.content.Context r0 = r4.f
            com.mycompany.app.data.DataNews r0 = com.mycompany.app.data.DataNews.a(r0)
            int r2 = r5.o
            if (r2 < 0) goto L2f
            java.util.List r3 = r0.f12897a
            if (r3 == 0) goto L32
            int r3 = r3.size()
            if (r2 < r3) goto L26
            goto L32
        L26:
            java.util.List r0 = r0.f12897a
            java.lang.Object r0 = r0.get(r2)
            com.mycompany.app.quick.QuickAdapter$QuickItem r0 = (com.mycompany.app.quick.QuickAdapter.QuickItem) r0
            goto L33
        L2f:
            r0.getClass()
        L32:
            r0 = r1
        L33:
            if (r0 != 0) goto L37
            r0 = r1
            goto L39
        L37:
            java.lang.String r0 = r0.p
        L39:
            r5.p = r0
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L6b
            r4.X(r6, r1)
            java.lang.String r6 = r5.d
            boolean r6 = android.text.TextUtils.isEmpty(r6)
            if (r6 == 0) goto L4d
            goto L5c
        L4d:
            java.lang.String r6 = r5.d
            java.lang.String r0 = "https://news.google.com/rss/articles/"
            boolean r6 = r6.startsWith(r0)
            if (r6 == 0) goto L58
            goto L5c
        L58:
            boolean r6 = r5.j
            if (r6 == 0) goto L5d
        L5c:
            return
        L5d:
            r6 = 1
            r5.j = r6
            java.lang.String r5 = r5.d
            com.mycompany.app.quick.QuickAdapter$21 r6 = new com.mycompany.app.quick.QuickAdapter$21
            r6.<init>()
            r4.O(r6)
            return
        L6b:
            java.lang.String r0 = r5.p
            r2 = 2
            java.lang.String r0 = com.nostra13.universalimageloader.utils.MemoryCacheUtils.a(r2, r0)
            com.nostra13.universalimageloader.core.ImageLoader r3 = com.nostra13.universalimageloader.core.ImageLoader.f()
            com.nostra13.universalimageloader.cache.memory.impl.LruMemoryCache r3 = r3.g()
            android.graphics.Bitmap r0 = r3.a(r0)
            boolean r3 = com.mycompany.app.main.MainUtil.f6(r0)
            if (r3 == 0) goto L88
            r4.X(r6, r0)
            return
        L88:
            r4.X(r6, r1)
            com.mycompany.app.main.MainItem$ViewItem r0 = new com.mycompany.app.main.MainItem$ViewItem
            r0.<init>()
            r1 = 7
            r0.f16554a = r1
            java.lang.String r1 = r5.p
            r0.q = r1
            r0.f = r7
            r0.t = r2
            java.lang.String r5 = r5.d
            r0.v = r5
            r4.W(r0, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.quick.QuickAdapter.Z(com.mycompany.app.quick.QuickAdapter$QuickItem, com.mycompany.app.view.MyRoundImage, int):void");
    }

    /* JADX WARN: Type inference failed for: r4v8, types: [java.lang.Object, com.mycompany.app.quick.QuickAdapter$QuickItem] */
    public final void a0(List list, boolean z) {
        if (this.f == null) {
            return;
        }
        this.o = list;
        T(list);
        if (list != null && !list.isEmpty() && this.t == null) {
            this.t = new Handler(Looper.getMainLooper());
        }
        List list2 = this.n;
        if (list2 != null && !list2.isEmpty()) {
            List list3 = this.n;
            QuickItem quickItem = (QuickItem) list3.get(list3.size() - 1);
            if (quickItem != null) {
                if (d0()) {
                    if (quickItem.f17362a == 8) {
                        List list4 = this.n;
                        list4.remove(list4.size() - 1);
                        z = true;
                    }
                } else if (quickItem.f17362a != 8) {
                    ?? obj = new Object();
                    obj.f17362a = 8;
                    this.n.add(obj);
                    z = true;
                }
            }
        }
        if (z) {
            f0();
        }
        c0(this.o);
    }

    public final void b0(MyRoundFrame myRoundFrame, TextView textView, MyProgressBar myProgressBar) {
        int h;
        if (myRoundFrame != null && textView != null && myProgressBar != null) {
            if (this.p) {
                textView.setText(R.string.news_loading);
            } else {
                textView.setText(R.string.no_news);
            }
            if (MainUtil.C5(this.h)) {
                if (!MainApp.K1 && !PrefWeb.U) {
                    myRoundFrame.setNewsNotiColor(-1);
                    textView.setTextColor(-16777216);
                    myProgressBar.g(-13022805, -460552);
                } else {
                    myRoundFrame.setNewsNotiColor(-16777216);
                    textView.setTextColor(-328966);
                    myProgressBar.g(-922746881, -14606047);
                }
            } else if (MainApp.K1) {
                myRoundFrame.setNewsNotiColor(0);
                textView.setTextColor(-328966);
                myProgressBar.g(-922746881, -14606047);
            } else {
                myRoundFrame.setNewsNotiColor(0);
                textView.setTextColor(-16777216);
                myProgressBar.g(-13022805, -460552);
            }
            if (QuickView.s()) {
                myProgressBar.setVisibility(8);
                return;
            }
            if (this.p) {
                QuickListener quickListener = this.l;
                if (quickListener == null) {
                    h = 0;
                } else {
                    h = quickListener.h();
                }
                myProgressBar.setProgress(h);
                myProgressBar.setVisibility(0);
                return;
            }
            myProgressBar.setVisibility(8);
        }
    }

    public final void c0(List list) {
        QuickListener quickListener = this.l;
        if (quickListener != null) {
            if (quickListener.d()) {
                this.w = true;
                return;
            }
            this.w = false;
            if (PrefZtwo.O && !this.y) {
                if ((PrefZtwo.J || !PrefZtwo.K) && list != null && !list.isEmpty()) {
                    if (!MainUtil.q5(DataNews.a(this.f).b, PrefZtwo.P)) {
                        Iterator it = list.iterator();
                        while (it.hasNext()) {
                            QuickItem quickItem = (QuickItem) it.next();
                            if (quickItem != null) {
                                quickItem.v = null;
                                quickItem.w = null;
                                quickItem.x = 0;
                            }
                        }
                    } else {
                        Iterator it2 = list.iterator();
                        while (it2.hasNext()) {
                            QuickItem quickItem2 = (QuickItem) it2.next();
                            if (quickItem2 != null && quickItem2.f17362a == 7) {
                                if (quickItem2.x != 0) {
                                    return;
                                }
                            }
                        }
                        return;
                    }
                    QuickListener quickListener2 = this.l;
                    if (quickListener2 != null) {
                        quickListener2.n(list);
                    }
                }
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int d() {
        List list;
        int i;
        int i2 = this.E;
        if (i2 != 0) {
            return i2;
        }
        int i3 = 0;
        if (this.A) {
            List list2 = this.B;
            if (list2 == null) {
                return 0;
            }
            return list2.size();
        }
        List list3 = this.n;
        if (list3 != null) {
            i3 = list3.size();
        }
        if (PrefSync.k && L() && (((i = this.g) == 0 || i == 3) && i3 == this.d + this.e)) {
            i3++;
        }
        if (this.h && d0() && (list = this.o) != null) {
            return list.size() + i3;
        }
        return i3;
    }

    public final void e0(String str, String str2, String str3, int i, List list) {
        List list2;
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && (list2 = this.n) != null && !list2.isEmpty()) {
            Iterator it = list2.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                QuickItem quickItem = (QuickItem) it.next();
                if (str.equals(quickItem.d)) {
                    Pattern compile = Pattern.compile("\\p{Punct}");
                    quickItem.d = str2;
                    quickItem.f = str3;
                    quickItem.g = MainUtil.y2(str3, compile);
                    quickItem.h = i;
                    quickItem.l = list;
                    break;
                }
            }
            g();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int f(int i) {
        if (this.A) {
            return 0;
        }
        QuickItem E = E(i);
        if (E == null) {
            return PrefPdf.G ? 1 : 0;
        }
        int i2 = E.f17362a;
        if (i2 == 9) {
            return this.j + 9;
        }
        if (i2 == 2) {
            return 2;
        }
        if (i2 == 3) {
            return 3;
        }
        if (i2 == 4) {
            return 4;
        }
        if (i2 == 5) {
            return 5;
        }
        if (i2 == 6) {
            return 6;
        }
        if (i2 == 7) {
            return 7;
        }
        if (i2 == 8) {
            return 8;
        }
        return PrefPdf.G ? 1 : 0;
    }

    public final void f0() {
        int size;
        try {
            int d = d();
            List list = this.o;
            int i = 0;
            if (list == null) {
                size = 0;
            } else {
                size = list.size();
            }
            int i2 = d - size;
            int i3 = i2 - 1;
            if (i3 <= 0) {
                k(0, d);
                return;
            }
            while (i3 >= 0) {
                QuickItem E = E(i3);
                if (E != null) {
                    if (E.f17362a == 7) {
                        break;
                    } else {
                        i++;
                    }
                }
                i3--;
            }
            k(i2 - i, size + i);
        } catch (Exception unused) {
            g();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x012a, code lost:
    
        if ((r3 instanceof android.widget.ImageView) != false) goto L55;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v3, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v38, types: [com.mycompany.app.main.MainItem$ViewItem, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v24, types: [java.lang.Object, com.nostra13.universalimageloader.core.display.BitmapDisplayer] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void n(androidx.recyclerview.widget.RecyclerView.ViewHolder r18, int r19) {
        /*
            Method dump skipped, instructions count: 1906
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.quick.QuickAdapter.n(androidx.recyclerview.widget.RecyclerView$ViewHolder, int):void");
    }

    /* JADX WARN: Type inference failed for: r2v10, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.quick.QuickAdapter$QuickHolder] */
    /* JADX WARN: Type inference failed for: r2v13, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.quick.QuickAdapter$QuickHolder] */
    /* JADX WARN: Type inference failed for: r2v20, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.quick.QuickAdapter$QuickHolder] */
    /* JADX WARN: Type inference failed for: r2v25, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.quick.QuickAdapter$QuickHolder] */
    /* JADX WARN: Type inference failed for: r2v27, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.quick.QuickAdapter$QuickHolder] */
    /* JADX WARN: Type inference failed for: r2v3, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.quick.QuickAdapter$QuickHolder] */
    /* JADX WARN: Type inference failed for: r2v30, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.quick.QuickAdapter$QuickHolder] */
    /* JADX WARN: Type inference failed for: r2v33, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.quick.QuickAdapter$QuickHolder] */
    /* JADX WARN: Type inference failed for: r2v6, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.quick.QuickAdapter$QuickHolder] */
    /* JADX WARN: Type inference failed for: r6v26, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.quick.QuickAdapter$QuickHolder] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder o(ViewGroup viewGroup, int i) {
        MyCircleView myCircleView;
        int G;
        int G2;
        int i2;
        Context context = viewGroup.getContext();
        if (context == null) {
            return null;
        }
        if (this.A) {
            int i3 = MainApp.h1;
            RelativeLayout relativeLayout = new RelativeLayout(context);
            relativeLayout.setMinimumHeight(i3);
            relativeLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
            MyRoundImage myRoundImage = new MyRoundImage(context);
            int G3 = (int) MainUtil.G(context, 24.0f);
            int i4 = (int) (G3 / 2.0f);
            myRoundImage.setScaleType(ImageView.ScaleType.CENTER_CROP);
            myRoundImage.setRoundRadius(MainApp.G1);
            myRoundImage.setCircleRadius(i4);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(G3, G3);
            layoutParams.topMargin = MainApp.E1;
            layoutParams.setMarginStart(i4);
            relativeLayout.addView(myRoundImage, layoutParams);
            FrameLayout frameLayout = new FrameLayout(context);
            int i5 = R.id.search_item_frame;
            frameLayout.setId(i5);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, i3);
            layoutParams2.addRule(21);
            relativeLayout.addView(frameLayout, layoutParams2);
            MyButtonImage myButtonImage = new MyButtonImage(context);
            ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
            myButtonImage.setScaleType(scaleType);
            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(MainApp.g1, i3);
            layoutParams3.gravity = 8388613;
            layoutParams3.setMarginEnd(MainApp.g1);
            frameLayout.addView(myButtonImage, layoutParams3);
            MyButtonImage p = a.p(context, scaleType);
            FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(MainApp.g1, i3);
            layoutParams4.gravity = 8388613;
            frameLayout.addView(p, layoutParams4);
            AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
            int i6 = MainApp.F1;
            appCompatTextView.setPadding(0, i6, 0, i6);
            appCompatTextView.setMaxLines(2);
            appCompatTextView.setTextSize(1, 16.0f);
            RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams5.addRule(16, i5);
            layoutParams5.addRule(15);
            layoutParams5.setMarginStart((int) MainUtil.G(context, 52.0f));
            relativeLayout.addView(appCompatTextView, layoutParams5);
            ?? viewHolder = new RecyclerView.ViewHolder(relativeLayout);
            viewHolder.u = i;
            viewHolder.K = myRoundImage;
            viewHolder.L = appCompatTextView;
            viewHolder.M = myButtonImage;
            viewHolder.N = p;
            return viewHolder;
        }
        if (i >= 9) {
            ImageView imageView = new ImageView(context);
            imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            imageView.setLayoutParams(new ViewGroup.LayoutParams(-1, this.j));
            ?? viewHolder2 = new RecyclerView.ViewHolder(imageView);
            viewHolder2.u = i;
            return viewHolder2;
        }
        if (i == 2) {
            View view = new View(context);
            view.setLayoutParams(new ViewGroup.LayoutParams(-1, 1));
            ?? viewHolder3 = new RecyclerView.ViewHolder(view);
            viewHolder3.u = i;
            return viewHolder3;
        }
        if (i == 3) {
            FrameLayout frameLayout2 = new FrameLayout(context);
            int G4 = (int) MainUtil.G(context, 20.0f);
            frameLayout2.setPadding(G4, G4, G4, 0);
            frameLayout2.setLayoutParams(new ViewGroup.LayoutParams(-1, MainApp.A1));
            MyButtonText myButtonText = new MyButtonText(context);
            myButtonText.setPadding(MainApp.F1, MainApp.G1, MainApp.F1, MainApp.G1);
            myButtonText.setMinHeight(MainApp.f1);
            myButtonText.setGravity(17);
            myButtonText.setTextSize(1, 14.0f);
            myButtonText.setText(R.string.import_normal);
            myButtonText.setBgNorFixed(true);
            myButtonText.setRoundRect(true);
            myButtonText.setRoundRadius(MainApp.F1);
            frameLayout2.addView(myButtonText, -1, -2);
            ?? viewHolder4 = new RecyclerView.ViewHolder(frameLayout2);
            viewHolder4.u = i;
            viewHolder4.B = myButtonText;
            return viewHolder4;
        }
        if (i == 4) {
            int C = C();
            MyRoundFrame myRoundFrame = new MyRoundFrame(context);
            myRoundFrame.setPadding(0, C, 0, 0);
            myRoundFrame.setLayoutParams(new ViewGroup.LayoutParams(-1, (int) MainUtil.G(context, 280.0f)));
            MyButtonImage myButtonImage2 = new MyButtonImage(context);
            myButtonImage2.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            int i7 = MainApp.g1;
            FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(i7, i7);
            layoutParams6.gravity = 8388613;
            myRoundFrame.addView(myButtonImage2, layoutParams6);
            int G5 = (int) MainUtil.G(context, 24.0f);
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setPadding(G5, 0, G5, 0);
            linearLayout.setOrientation(1);
            FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(-1, -2);
            layoutParams7.gravity = 16;
            myRoundFrame.addView(linearLayout, layoutParams7);
            AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
            appCompatTextView2.setGravity(1);
            appCompatTextView2.setTextSize(1, 16.0f);
            appCompatTextView2.setText(R.string.news_start);
            linearLayout.addView(appCompatTextView2, -1, -2);
            MyButtonText myButtonText2 = new MyButtonText(context);
            myButtonText2.setPadding(MainApp.F1, MainApp.G1, MainApp.F1, MainApp.G1);
            myButtonText2.setMinHeight(MainApp.f1);
            myButtonText2.setGravity(17);
            myButtonText2.setTextSize(1, 14.0f);
            myButtonText2.setText(R.string.news_show);
            myButtonText2.setRoundRect(true);
            myButtonText2.setRoundRadius(MainApp.F1);
            LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(-1, -2);
            layoutParams8.topMargin = G5;
            linearLayout.addView(myButtonText2, layoutParams8);
            ?? viewHolder5 = new RecyclerView.ViewHolder(myRoundFrame);
            viewHolder5.u = i;
            viewHolder5.D = myRoundFrame;
            viewHolder5.y = appCompatTextView2;
            viewHolder5.J = myButtonImage2;
            viewHolder5.B = myButtonText2;
            return viewHolder5;
        }
        if (i == 5) {
            int C2 = C();
            MyRoundFrame myRoundFrame2 = new MyRoundFrame(context);
            myRoundFrame2.setPadding(0, C2, 0, 0);
            myRoundFrame2.setLayoutParams(new ViewGroup.LayoutParams(-1, (int) MainUtil.G(context, 144.0f)));
            AppCompatTextView appCompatTextView3 = new AppCompatTextView(context, null);
            appCompatTextView3.setGravity(16);
            appCompatTextView3.setTextSize(1, 16.0f);
            appCompatTextView3.setText(R.string.news_title);
            appCompatTextView3.setPaddingRelative(0, 0, (int) MainUtil.G(context, 80.0f), 0);
            FrameLayout.LayoutParams layoutParams9 = new FrameLayout.LayoutParams(-1, MainApp.g1);
            layoutParams9.setMarginStart(MainApp.F1);
            layoutParams9.setMarginEnd(MainApp.F1);
            myRoundFrame2.addView(appCompatTextView3, layoutParams9);
            MyButtonImage myButtonImage3 = new MyButtonImage(context);
            ImageView.ScaleType scaleType2 = ImageView.ScaleType.CENTER_INSIDE;
            myButtonImage3.setScaleType(scaleType2);
            int i8 = MainApp.g1;
            FrameLayout.LayoutParams layoutParams10 = new FrameLayout.LayoutParams(i8, i8);
            layoutParams10.gravity = 8388613;
            layoutParams10.setMarginEnd(MainApp.g1);
            myRoundFrame2.addView(myButtonImage3, layoutParams10);
            MyButtonImage p2 = a.p(context, scaleType2);
            int i9 = MainApp.g1;
            FrameLayout.LayoutParams layoutParams11 = new FrameLayout.LayoutParams(i9, i9);
            layoutParams11.gravity = 8388613;
            myRoundFrame2.addView(p2, layoutParams11);
            ?? viewHolder6 = new RecyclerView.ViewHolder(myRoundFrame2);
            viewHolder6.u = i;
            viewHolder6.D = myRoundFrame2;
            viewHolder6.y = appCompatTextView3;
            viewHolder6.I = myButtonImage3;
            viewHolder6.J = p2;
            return viewHolder6;
        }
        if (i == 6) {
            MyRoundFrame myRoundFrame3 = new MyRoundFrame(context);
            myRoundFrame3.setPadding(0, 0, 0, (int) MainUtil.G(context, 32.0f));
            myRoundFrame3.setLayoutParams(new ViewGroup.LayoutParams(-1, (int) MainUtil.G(context, 168.0f)));
            RelativeLayout relativeLayout2 = new RelativeLayout(context);
            FrameLayout.LayoutParams layoutParams12 = new FrameLayout.LayoutParams(-1, -2);
            layoutParams12.gravity = 16;
            myRoundFrame3.addView(relativeLayout2, layoutParams12);
            AppCompatTextView appCompatTextView4 = new AppCompatTextView(context, null);
            int i10 = R.id.quick_noti_title;
            appCompatTextView4.setId(i10);
            appCompatTextView4.setGravity(1);
            appCompatTextView4.setTextSize(1, 16.0f);
            int G6 = (int) MainUtil.G(context, 24.0f);
            RelativeLayout.LayoutParams layoutParams13 = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams13.setMarginStart(G6);
            layoutParams13.setMarginEnd(G6);
            relativeLayout2.addView(appCompatTextView4, layoutParams13);
            MyProgressBar myProgressBar = new MyProgressBar(context);
            myProgressBar.setHeader(true);
            RelativeLayout.LayoutParams layoutParams14 = new RelativeLayout.LayoutParams(-1, (int) MainUtil.G(context, 2.0f));
            int G7 = (int) MainUtil.G(context, 32.0f);
            int G8 = (int) MainUtil.G(context, 72.0f);
            layoutParams14.setMargins(G8, G7, G8, 0);
            layoutParams14.addRule(3, i10);
            relativeLayout2.addView(myProgressBar, layoutParams14);
            ?? viewHolder7 = new RecyclerView.ViewHolder(myRoundFrame3);
            viewHolder7.u = i;
            viewHolder7.D = myRoundFrame3;
            viewHolder7.y = appCompatTextView4;
            viewHolder7.z = myProgressBar;
            return viewHolder7;
        }
        if (i == 7) {
            MyRoundFrame myRoundFrame4 = new MyRoundFrame(context);
            myRoundFrame4.setPadding(0, 0, 0, (int) MainUtil.G(context, 24.0f));
            myRoundFrame4.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
            RelativeLayout relativeLayout3 = new RelativeLayout(context);
            relativeLayout3.setPadding(0, 0, 0, MainApp.F1);
            relativeLayout3.setOutlineProvider(new ViewOutlineProvider());
            relativeLayout3.setClipToOutline(true);
            myRoundFrame4.addView(relativeLayout3, -1, -2);
            AppCompatTextView appCompatTextView5 = new AppCompatTextView(context, null);
            int i11 = R.id.quick_item_title;
            appCompatTextView5.setId(i11);
            int i12 = MainApp.G1;
            appCompatTextView5.setPadding(0, i12, 0, i12);
            appCompatTextView5.setMinHeight((int) MainUtil.G(context, 76.0f));
            appCompatTextView5.setGravity(8388627);
            appCompatTextView5.setTextSize(1, 16.0f);
            RelativeLayout.LayoutParams layoutParams15 = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams15.setMarginStart(MainApp.F1);
            layoutParams15.setMarginEnd((int) MainUtil.G(context, 112.0f));
            relativeLayout3.addView(appCompatTextView5, layoutParams15);
            MyRoundImage myRoundImage2 = new MyRoundImage(context);
            RelativeLayout.LayoutParams g = androidx.work.impl.workers.a.g((int) MainUtil.G(context, 96.0f), (int) MainUtil.G(context, 68.0f), 21);
            int i13 = MainApp.F1;
            g.topMargin = i13;
            g.setMarginEnd(i13);
            relativeLayout3.addView(myRoundImage2, g);
            MyRoundImage myRoundImage3 = new MyRoundImage(context);
            myRoundImage3.setScaleType(ImageView.ScaleType.CENTER_CROP);
            int G9 = (int) MainUtil.G(context, 18.0f);
            myRoundImage3.setRoundRadius(G9 / 2);
            RelativeLayout.LayoutParams layoutParams16 = new RelativeLayout.LayoutParams(G9, G9);
            layoutParams16.addRule(3, i11);
            layoutParams16.topMargin = (int) MainUtil.G(context, 11.0f);
            layoutParams16.setMarginStart(MainApp.F1);
            relativeLayout3.addView(myRoundImage3, layoutParams16);
            AppCompatTextView appCompatTextView6 = new AppCompatTextView(context, null);
            int i14 = R.id.quick_item_source;
            appCompatTextView6.setId(i14);
            appCompatTextView6.setGravity(8388627);
            appCompatTextView6.setSingleLine(true);
            appCompatTextView6.setTextSize(1, 14.0f);
            appCompatTextView6.setLineSpacing(0.0f, 1.0f);
            appCompatTextView6.setIncludeFontPadding(false);
            RelativeLayout.LayoutParams layoutParams17 = new RelativeLayout.LayoutParams(-1, MainApp.f1);
            layoutParams17.addRule(3, i11);
            layoutParams17.setMarginStart((int) MainUtil.G(context, 37.0f));
            layoutParams17.setMarginEnd(MainApp.f1);
            relativeLayout3.addView(appCompatTextView6, layoutParams17);
            MyButtonImage myButtonImage4 = new MyButtonImage(context);
            myButtonImage4.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            int i15 = MainApp.f1;
            RelativeLayout.LayoutParams layoutParams18 = new RelativeLayout.LayoutParams(i15, i15);
            layoutParams18.addRule(3, i11);
            layoutParams18.addRule(21);
            relativeLayout3.addView(myButtonImage4, layoutParams18);
            View view2 = new View(context);
            view2.setVisibility(8);
            RelativeLayout.LayoutParams layoutParams19 = new RelativeLayout.LayoutParams((int) MainUtil.G(context, 122.0f), (int) MainUtil.G(context, 16.0f));
            layoutParams19.addRule(3, i14);
            layoutParams19.addRule(21);
            int i16 = MainApp.F1;
            layoutParams19.topMargin = i16;
            layoutParams19.setMarginEnd(i16);
            relativeLayout3.addView(view2, layoutParams19);
            ?? viewHolder8 = new RecyclerView.ViewHolder(myRoundFrame4);
            viewHolder8.u = i;
            viewHolder8.D = myRoundFrame4;
            viewHolder8.E = relativeLayout3;
            viewHolder8.y = appCompatTextView5;
            viewHolder8.x = myRoundImage2;
            viewHolder8.F = myRoundImage3;
            viewHolder8.G = appCompatTextView6;
            viewHolder8.J = myButtonImage4;
            viewHolder8.H = view2;
            return viewHolder8;
        }
        if (i == 8) {
            ImageView imageView2 = new ImageView(context);
            imageView2.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            imageView2.setLayoutParams(new ViewGroup.LayoutParams(-1, MainApp.A1));
            ?? viewHolder9 = new RecyclerView.ViewHolder(imageView2);
            viewHolder9.u = i;
            return viewHolder9;
        }
        FrameLayout frameLayout3 = new FrameLayout(context);
        frameLayout3.setLayoutParams(new ViewGroup.LayoutParams(-1, MainApp.A1));
        if (i == 1) {
            myCircleView = new MyCircleView(context);
            int i17 = MainApp.f1;
            FrameLayout.LayoutParams layoutParams20 = new FrameLayout.LayoutParams(i17, i17);
            layoutParams20.gravity = 1;
            layoutParams20.topMargin = (int) MainUtil.G(context, 10.0f);
            frameLayout3.addView(myCircleView, layoutParams20);
        } else {
            myCircleView = null;
        }
        if (i == 1) {
            G = (int) MainUtil.G(context, 12.0f);
            i2 = (int) MainUtil.G(context, 24.0f);
            G2 = (int) MainUtil.G(context, 18.0f);
        } else {
            G = (int) MainUtil.G(context, 19.0f);
            int G10 = (int) MainUtil.G(context, 38.0f);
            G2 = (int) MainUtil.G(context, 11.0f);
            i2 = G10;
        }
        MyRoundImage myRoundImage4 = new MyRoundImage(context);
        myRoundImage4.setScaleType(ImageView.ScaleType.CENTER_CROP);
        myRoundImage4.setRoundRadius(MainApp.G1);
        myRoundImage4.setCircleRadius(G);
        FrameLayout.LayoutParams layoutParams21 = new FrameLayout.LayoutParams(i2, i2);
        layoutParams21.gravity = 1;
        layoutParams21.topMargin = G2;
        frameLayout3.addView(myRoundImage4, layoutParams21);
        MyButtonCheck myButtonCheck = new MyButtonCheck(context);
        myButtonCheck.setBgNorRadius((int) MainUtil.G(context, 12.0f));
        myButtonCheck.setVisibility(8);
        int G11 = (int) MainUtil.G(context, 32.0f);
        FrameLayout.LayoutParams layoutParams22 = new FrameLayout.LayoutParams(G11, G11);
        layoutParams22.gravity = 1;
        layoutParams22.setMarginEnd(MainApp.E1);
        frameLayout3.addView(myButtonCheck, layoutParams22);
        AppCompatTextView appCompatTextView7 = new AppCompatTextView(context, null);
        appCompatTextView7.setSingleLine(true);
        appCompatTextView7.setTextSize(1, 12.0f);
        int G12 = (int) MainUtil.G(context, 6.0f);
        appCompatTextView7.setPadding(G12, 0, G12, 0);
        FrameLayout.LayoutParams layoutParams23 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams23.gravity = 1;
        layoutParams23.topMargin = (int) MainUtil.G(context, 54.0f);
        frameLayout3.addView(appCompatTextView7, layoutParams23);
        ?? viewHolder10 = new RecyclerView.ViewHolder(frameLayout3);
        viewHolder10.u = i;
        viewHolder10.w = myCircleView;
        viewHolder10.x = myRoundImage4;
        viewHolder10.A = myButtonCheck;
        viewHolder10.y = appCompatTextView7;
        return viewHolder10;
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [java.lang.Object, com.mycompany.app.quick.QuickAdapter$QuickItem] */
    public final void w(String str, int i, int i2, String str2) {
        List list;
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && (list = this.n) != null && list.size() != 0 && i2 >= 0 && i2 <= (this.n.size() - this.d) - this.e) {
            ?? obj = new Object();
            obj.d = str;
            obj.f = str2;
            obj.g = MainUtil.y2(str2, null);
            obj.h = i;
            obj.i = i2;
            int i3 = i2 + this.d;
            if (i3 > this.n.size() - this.e) {
                if (this.g == 1) {
                    this.n.add(obj);
                } else {
                    return;
                }
            } else {
                this.n.add(i3, obj);
            }
            g();
        }
    }

    public final boolean x(String str) {
        List list;
        String str2;
        int l;
        if (this.f == null || (list = this.n) == null || list.isEmpty()) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        boolean z = false;
        while (true) {
            str2 = "0";
            if (!it.hasNext()) {
                break;
            }
            QuickItem quickItem = (QuickItem) it.next();
            if (quickItem != null) {
                if (quickItem.f17362a != 0) {
                    arrayList.add(quickItem);
                } else if (quickItem.j && !TextUtils.isEmpty(quickItem.d)) {
                    if (quickItem.f17363c) {
                        if (DbBookQuick.v(this.f, quickItem.d, true)) {
                            z = true;
                        }
                    } else {
                        if (PrefSync.k) {
                            str2 = "1";
                        }
                        if (DbUtil.a(DbBookQuick.i(this.f).getWritableDatabase(), "DbBookQuick_table", "_secret=? AND _path=?", new String[]{str2, quickItem.d}) > 0) {
                            z = true;
                        }
                    }
                } else {
                    arrayList.add(quickItem);
                }
            }
        }
        if (!TextUtils.isEmpty(str) && arrayList.size() < 2) {
            if (arrayList.size() == 1) {
                QuickItem quickItem2 = (QuickItem) arrayList.get(0);
                if (quickItem2 != null && !TextUtils.isEmpty(quickItem2.d) && (l = DbBookQuick.l(this.f, str)) != -1) {
                    if (PrefSync.k) {
                        str2 = "1";
                    }
                    String[] strArr = {str2, quickItem2.d};
                    ContentValues f = androidx.work.impl.workers.a.f("_rsv1", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                    f.put("_order", Integer.valueOf(l));
                    DbUtil.h(DbBookQuick.i(this.f).getWritableDatabase(), "DbBookQuick_table", f, "_secret=? AND _path=?", strArr);
                    DbBookQuick.v(this.f, str, false);
                }
            } else {
                DbBookQuick.v(this.f, str, false);
            }
            arrayList = null;
        }
        this.n = arrayList;
        return z;
    }

    public final void y(int i, boolean z) {
        View s;
        QuickHolder J;
        View view;
        QuickItem E;
        MyManagerGrid myManagerGrid = this.k;
        if (myManagerGrid != null && (s = myManagerGrid.s(i)) != null && (J = J(s)) != null && (view = J.f1589a) != null && (E = E(J.c())) != null) {
            float f = 1.0f;
            if (E.f17362a == 1) {
                if (this.q) {
                    f = 0.4f;
                }
                view.setAlpha(f);
            } else {
                view.setAlpha(1.0f);
            }
            if (E.f17362a == 0) {
                if (this.q) {
                    J.A.setVisibility(0);
                    J.A.q(E.j, z);
                } else {
                    J.A.setVisibility(8);
                }
            }
        }
    }

    public final int z() {
        boolean C5 = MainUtil.C5(this.h);
        int i = this.g;
        if (C5) {
            if (i == 0) {
                if (MainApp.K1 || PrefWeb.U) {
                    return -16777216;
                }
                return -1;
            }
            if (!MainApp.K1 && !PrefWeb.U) {
                return -592138;
            }
            return -16777216;
        }
        if (!MainApp.K1) {
            return -592138;
        }
        if (i != 0) {
            return -16777216;
        }
        return -14606047;
    }
}
