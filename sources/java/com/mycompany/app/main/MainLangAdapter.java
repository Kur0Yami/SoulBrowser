package com.mycompany.app.main;

import android.content.Context;
import android.graphics.Outline;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.impl.workers.a;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.db.book.DbRecentLang;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyLineRelative;
import java.util.List;

/* loaded from: classes3.dex */
public class MainLangAdapter extends RecyclerView.Adapter<ViewHolder> {
    public Context d;
    public final int e;
    public List f;
    public List g;
    public int h;
    public String i;
    public MainLangListener j;
    public boolean k;
    public boolean l;
    public boolean m;
    public Handler n;
    public int o = -1;
    public int p = -1;
    public int q;

    /* renamed from: com.mycompany.app.main.MainLangAdapter$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 implements View.OnClickListener {

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ MainLangItem f16557c;

        public AnonymousClass2(MainLangItem mainLangItem) {
            this.f16557c = mainLangItem;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            MainLangAdapter mainLangAdapter = MainLangAdapter.this;
            if (mainLangAdapter.m) {
                return;
            }
            mainLangAdapter.m = true;
            MainApp.J(mainLangAdapter.d, new Runnable() { // from class: com.mycompany.app.main.MainLangAdapter.2.1
                @Override // java.lang.Runnable
                public final void run() {
                    List list;
                    AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                    MainLangAdapter mainLangAdapter2 = MainLangAdapter.this;
                    MainLangItem mainLangItem = anonymousClass2.f16557c;
                    if (mainLangItem.f16560a == 1 && (list = mainLangAdapter2.f) != null && !list.isEmpty()) {
                        try {
                            mainLangAdapter2.f.remove(mainLangItem);
                            if (mainLangAdapter2.f.size() <= 1) {
                                mainLangAdapter2.f = null;
                            }
                            int i = mainLangItem.f16561c;
                            int i2 = mainLangAdapter2.h;
                            if (i == i2) {
                                mainLangAdapter2.h = i2 - 1000;
                            }
                            Context context = mainLangAdapter2.d;
                            long j = mainLangItem.b;
                            DbRecentLang dbRecentLang = DbRecentLang.f12967c;
                            if (context != null && j > 0) {
                                DbUtil.b(DbRecentLang.d(context).getWritableDatabase(), "DbRecentLang_table", j);
                            }
                            if (mainLangAdapter2.n == null) {
                                mainLangAdapter2.n = new Handler(Looper.getMainLooper());
                            }
                            mainLangAdapter2.n.post(new Runnable() { // from class: com.mycompany.app.main.MainLangAdapter.2.1.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    AnonymousClass2 anonymousClass22 = AnonymousClass2.this;
                                    MainLangListener mainLangListener = MainLangAdapter.this.j;
                                    if (mainLangListener != null) {
                                        mainLangListener.b();
                                    }
                                    MainLangAdapter.this.g();
                                    MainLangAdapter.this.m = false;
                                }
                            });
                            return;
                        } catch (Exception unused) {
                        }
                    }
                    mainLangAdapter2.m = false;
                }
            });
        }
    }

    /* renamed from: com.mycompany.app.main.MainLangAdapter$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass3 extends ViewOutlineProvider {
        @Override // android.view.ViewOutlineProvider
        public final void getOutline(View view, Outline outline) {
            if (view != null && outline != null) {
                int width = view.getWidth();
                int height = view.getHeight();
                int i = MainApp.m1;
                outline.setRoundRect(0, 0, width, height + i, i);
            }
        }
    }

    /* renamed from: com.mycompany.app.main.MainLangAdapter$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass4 extends ViewOutlineProvider {
        @Override // android.view.ViewOutlineProvider
        public final void getOutline(View view, Outline outline) {
            if (view != null && outline != null) {
                outline.setRoundRect(0, -MainApp.m1, view.getWidth(), view.getHeight(), MainApp.m1);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class MainLangItem {

        /* renamed from: a, reason: collision with root package name */
        public int f16560a;
        public long b;

        /* renamed from: c, reason: collision with root package name */
        public int f16561c;
        public String d;
        public String e;
        public String f;
        public boolean g;
        public String h;
        public String i;
        public String j;
        public int k;
    }

    /* loaded from: classes3.dex */
    public interface MainLangListener {
        void a(int i, String str);

        void b();
    }

    /* loaded from: classes3.dex */
    public static class ViewHolder extends RecyclerView.ViewHolder {
        public MyLineRelative u;
        public AppCompatTextView v;
        public AppCompatTextView w;
        public View x;
        public MyButtonImage y;
    }

    public MainLangAdapter(Context context, int i, List list, List list2, int i2, MainLangListener mainLangListener) {
        this.d = context;
        this.e = i;
        this.f = list;
        this.g = list2;
        this.h = i2;
        this.j = mainLangListener;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int d() {
        int i;
        int i2 = this.q;
        if (i2 != 0) {
            return i2;
        }
        int i3 = 0;
        if (this.k) {
            List list = this.g;
            if (list == null) {
                return 0;
            }
            return list.size();
        }
        List list2 = this.f;
        if (list2 != null) {
            i = list2.size();
        } else {
            i = 0;
        }
        List list3 = this.g;
        if (list3 != null) {
            i3 = list3.size();
        }
        return i + i3;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final long e(int i) {
        if (w(i) == null) {
            return -1L;
        }
        return r3.f16561c;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int f(int i) {
        MainLangItem w = w(i);
        if (w == null) {
            return 0;
        }
        return w.f16560a;
    }

    /* JADX WARN: Removed duplicated region for block: B:135:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x008f  */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void n(androidx.recyclerview.widget.RecyclerView.ViewHolder r12, int r13) {
        /*
            Method dump skipped, instructions count: 638
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainLangAdapter.n(androidx.recyclerview.widget.RecyclerView$ViewHolder, int):void");
    }

    /* JADX WARN: Type inference failed for: r12v4, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.main.MainLangAdapter$ViewHolder] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder o(ViewGroup viewGroup, int i) {
        Context context = viewGroup.getContext();
        if (context == null) {
            return null;
        }
        if (i == 2) {
            View view = new View(context);
            view.setLayoutParams(new RecyclerView.LayoutParams(-1, MainApp.F1 * 4));
            return new RecyclerView.ViewHolder(view);
        }
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        MyLineRelative myLineRelative = new MyLineRelative(context);
        myLineRelative.setMinimumHeight(MainApp.h1);
        myLineRelative.b(MainApp.E1);
        frameLayout.addView(myLineRelative, -1, -2);
        RelativeLayout relativeLayout = new RelativeLayout(context);
        int i2 = MainApp.E1;
        relativeLayout.setPadding(0, i2, 0, i2);
        RelativeLayout.LayoutParams g = a.g(-1, -2, 15);
        g.setMarginStart((int) MainUtil.G(context, 12.0f));
        g.setMarginEnd(MainApp.g1);
        myLineRelative.addView(relativeLayout, g);
        AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
        int i3 = R.id.lang_item_name;
        appCompatTextView.setId(i3);
        appCompatTextView.setTextSize(1, 16.0f);
        relativeLayout.addView(appCompatTextView, -1, -2);
        AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
        appCompatTextView2.setVisibility(8);
        appCompatTextView2.setTextSize(1, 16.0f);
        RelativeLayout.LayoutParams h = a.h(-1, -2, 3, i3);
        h.topMargin = MainApp.G1;
        relativeLayout.addView(appCompatTextView2, h);
        View view2 = new View(context);
        view2.setVisibility(8);
        int G = (int) MainUtil.G(context, 24.0f);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(G, G);
        layoutParams.addRule(21);
        layoutParams.addRule(15);
        layoutParams.setMarginEnd(MainApp.E1);
        myLineRelative.addView(view2, layoutParams);
        MyButtonImage myButtonImage = new MyButtonImage(context);
        myButtonImage.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        myButtonImage.setVisibility(8);
        int i4 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(i4, i4);
        layoutParams2.addRule(21);
        layoutParams2.addRule(15);
        layoutParams2.setMarginEnd(MainApp.G1);
        myLineRelative.addView(myButtonImage, layoutParams2);
        ?? viewHolder = new RecyclerView.ViewHolder(frameLayout);
        viewHolder.u = myLineRelative;
        viewHolder.v = appCompatTextView;
        viewHolder.w = appCompatTextView2;
        viewHolder.x = view2;
        viewHolder.y = myButtonImage;
        return viewHolder;
    }

    public final void v() {
        List list = this.f;
        if (list != null && !list.isEmpty()) {
            this.f = null;
            int i = this.h;
            if (i >= 1000) {
                this.h = i - 1000;
            }
            DbRecentLang.f(this.d, this.e);
        }
    }

    public final MainLangItem w(int i) {
        int i2;
        if (this.k) {
            List list = this.g;
            if (list == null || i < 0 || i >= list.size()) {
                return null;
            }
            return (MainLangItem) this.g.get(i);
        }
        List list2 = this.f;
        if (list2 != null) {
            i2 = list2.size();
        } else {
            i2 = 0;
        }
        if (i < i2) {
            List list3 = this.f;
            if (list3 == null || i < 0 || i >= list3.size()) {
                return null;
            }
            return (MainLangItem) this.f.get(i);
        }
        int i3 = i - i2;
        List list4 = this.g;
        if (list4 == null || i3 < 0 || i3 >= list4.size()) {
            return null;
        }
        return (MainLangItem) this.g.get(i3);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0047  */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object, com.mycompany.app.main.MainLangAdapter$MainLangItem] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean x() {
        /*
            r12 = this;
            java.util.List r0 = r12.f
            r1 = 0
            if (r0 == 0) goto Lae
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto Ld
            goto Lae
        Ld:
            int r0 = r12.e
            int r2 = com.mycompany.app.db.book.DbRecentLang.e(r0)
            r3 = -1
            r4 = 0
            if (r2 == 0) goto L4e
            if (r2 != r3) goto L1c
            r2 = 2147483647(0x7fffffff, float:NaN)
        L1c:
            android.content.Context r5 = r12.d
            if (r5 != 0) goto L22
            r5 = r1
            goto L4a
        L22:
            java.lang.String r0 = java.lang.Integer.toString(r0)
            java.lang.String[] r10 = new java.lang.String[]{r0}
            com.mycompany.app.db.book.DbRecentLang r0 = com.mycompany.app.db.book.DbRecentLang.d(r5)     // Catch: java.lang.Exception -> L43
            android.database.sqlite.SQLiteDatabase r6 = r0.getWritableDatabase()     // Catch: java.lang.Exception -> L43
            java.lang.String r7 = "DbRecentLang_table"
            java.lang.String r9 = "_type=?"
            r11 = 0
            r8 = 0
            android.database.Cursor r0 = com.mycompany.app.db.DbUtil.g(r6, r7, r8, r9, r10, r11)     // Catch: java.lang.Exception -> L43
            if (r0 == 0) goto L44
            int r5 = r0.getCount()     // Catch: java.lang.Exception -> L44
            goto L45
        L43:
            r0 = r4
        L44:
            r5 = r1
        L45:
            if (r0 == 0) goto L4a
            r0.close()
        L4a:
            int r2 = java.lang.Math.min(r2, r5)
        L4e:
            r0 = 1
            r5 = 1000(0x3e8, float:1.401E-42)
            if (r2 != 0) goto L5d
            r12.f = r4
            int r1 = r12.h
            if (r1 < r5) goto Lad
            int r1 = r1 - r5
            r12.h = r1
            goto Lad
        L5d:
            java.util.ArrayList r6 = new java.util.ArrayList     // Catch: java.lang.Exception -> Lae
            r6.<init>()     // Catch: java.lang.Exception -> Lae
            java.util.List r7 = r12.f     // Catch: java.lang.Exception -> Lae
            int r7 = r7.size()     // Catch: java.lang.Exception -> Lae
            r8 = r1
        L69:
            if (r8 >= r7) goto L8e
            java.util.List r9 = r12.f     // Catch: java.lang.Exception -> Lae
            java.lang.Object r9 = r9.get(r8)     // Catch: java.lang.Exception -> Lae
            com.mycompany.app.main.MainLangAdapter$MainLangItem r9 = (com.mycompany.app.main.MainLangAdapter.MainLangItem) r9     // Catch: java.lang.Exception -> Lae
            if (r9 != 0) goto L76
            goto L8b
        L76:
            int r10 = r9.f16560a     // Catch: java.lang.Exception -> Lae
            if (r10 == r0) goto L7b
            goto L8b
        L7b:
            if (r8 >= r2) goto L81
            r6.add(r9)     // Catch: java.lang.Exception -> Lae
            goto L8b
        L81:
            int r9 = r9.f16561c     // Catch: java.lang.Exception -> Lae
            int r10 = r12.h     // Catch: java.lang.Exception -> Lae
            if (r9 != r10) goto L8b
            int r10 = r10 + (-1000)
            r12.h = r10     // Catch: java.lang.Exception -> Lae
        L8b:
            int r8 = r8 + 1
            goto L69
        L8e:
            boolean r2 = r6.isEmpty()     // Catch: java.lang.Exception -> Lae
            if (r2 == 0) goto L9e
            r12.f = r4     // Catch: java.lang.Exception -> Lae
            int r2 = r12.h     // Catch: java.lang.Exception -> Lae
            if (r2 < r5) goto Lad
            int r2 = r2 - r5
            r12.h = r2     // Catch: java.lang.Exception -> Lae
            goto Lad
        L9e:
            com.mycompany.app.main.MainLangAdapter$MainLangItem r2 = new com.mycompany.app.main.MainLangAdapter$MainLangItem     // Catch: java.lang.Exception -> Lae
            r2.<init>()     // Catch: java.lang.Exception -> Lae
            r4 = 2
            r2.f16560a = r4     // Catch: java.lang.Exception -> Lae
            r2.f16561c = r3     // Catch: java.lang.Exception -> Lae
            r6.add(r2)     // Catch: java.lang.Exception -> Lae
            r12.f = r6     // Catch: java.lang.Exception -> Lae
        Lad:
            return r0
        Lae:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainLangAdapter.x():boolean");
    }
}
