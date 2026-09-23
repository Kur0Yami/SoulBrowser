package com.mycompany.app.web;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Outline;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.media.a;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.widget.Filter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.mycompany.app.data.book.DataBookRecent;
import com.mycompany.app.db.book.DbBookRecent;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainListLoader;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyFilterRelative;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.view.MyRoundBack;
import com.mycompany.app.view.MyRoundImage;
import com.mycompany.app.web.WebViewActivity;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public class WebSearchAdapter extends RecyclerView.Adapter<SearchHolder> {
    public int A;
    public final WebViewActivity d;
    public WebSearchListener e;
    public final boolean f;
    public List g;
    public List h;
    public List i;
    public String k;
    public String l;
    public ArrayList m;
    public MainListLoader n;
    public HttpURLConnection o;
    public final boolean p;
    public final boolean q;
    public boolean s;
    public Handler t;
    public ExecutorService u;
    public Pattern v;
    public MyRecyclerView w;
    public int x;
    public ArrayList z;
    public final Filter y = new Filter() { // from class: com.mycompany.app.web.WebSearchAdapter.8
        @Override // android.widget.Filter
        public final CharSequence convertResultToString(Object obj) {
            if (obj == null || !(obj instanceof SearchItem)) {
                return null;
            }
            return ((SearchItem) obj).f;
        }

        /* JADX WARN: Removed duplicated region for block: B:72:0x0330  */
        /* JADX WARN: Removed duplicated region for block: B:87:0x0365  */
        /* JADX WARN: Removed duplicated region for block: B:88:0x036d  */
        /* JADX WARN: Type inference failed for: r0v10, types: [com.mycompany.app.web.WebSearchAdapter$SearchItem, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r0v6, types: [com.mycompany.app.web.WebSearchAdapter$SearchItem, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r2v16, types: [com.mycompany.app.web.WebSearchAdapter$SearchItem, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r8v10, types: [com.mycompany.app.web.WebSearchAdapter$SearchItem, java.lang.Object] */
        @Override // android.widget.Filter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final android.widget.Filter.FilterResults performFiltering(java.lang.CharSequence r26) {
            /*
                Method dump skipped, instructions count: 1007
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebSearchAdapter.AnonymousClass8.performFiltering(java.lang.CharSequence):android.widget.Filter$FilterResults");
        }

        @Override // android.widget.Filter
        public final void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
            final WebSearchAdapter webSearchAdapter = WebSearchAdapter.this;
            webSearchAdapter.l = null;
            if (webSearchAdapter.e != null) {
                if (filterResults != null && filterResults.count - webSearchAdapter.r > 0) {
                    if (!TextUtils.isEmpty(charSequence)) {
                        String trim = charSequence.toString().trim();
                        if (!TextUtils.isEmpty(trim)) {
                            webSearchAdapter.l = trim.toLowerCase(Locale.US);
                        }
                    }
                    List list = (List) filterResults.values;
                    ArrayList arrayList = new ArrayList();
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        arrayList.add((SearchItem) it.next());
                    }
                    webSearchAdapter.z = arrayList;
                    if (!webSearchAdapter.s) {
                        webSearchAdapter.s = true;
                        Handler handler = webSearchAdapter.t;
                        if (handler != null) {
                            handler.post(new Runnable() { // from class: com.mycompany.app.web.WebSearchAdapter.9
                                @Override // java.lang.Runnable
                                public final void run() {
                                    int i;
                                    int i2;
                                    boolean z;
                                    WebSearchAdapter webSearchAdapter2 = WebSearchAdapter.this;
                                    if (webSearchAdapter2.e == null) {
                                        return;
                                    }
                                    ArrayList arrayList2 = webSearchAdapter2.z;
                                    if (arrayList2 != null) {
                                        i = arrayList2.size();
                                    } else {
                                        i = 0;
                                    }
                                    if (webSearchAdapter2.q) {
                                        i2 = i - 1;
                                    } else {
                                        i2 = -1;
                                    }
                                    if (webSearchAdapter2.A != i) {
                                        webSearchAdapter2.A = i;
                                        MyRecyclerView myRecyclerView = webSearchAdapter2.w;
                                        if (myRecyclerView != null) {
                                            myRecyclerView.p0();
                                        }
                                    }
                                    webSearchAdapter2.m = arrayList2;
                                    webSearchAdapter2.g();
                                    WebSearchListener webSearchListener = webSearchAdapter2.e;
                                    if (i != 0) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    ((WebViewActivity.AnonymousClass250) webSearchListener).a(i2, z);
                                    webSearchAdapter2.s = false;
                                }
                            });
                            return;
                        }
                        return;
                    }
                    return;
                }
                webSearchAdapter.z = null;
                if (!webSearchAdapter.s) {
                    webSearchAdapter.s = true;
                    Handler handler2 = webSearchAdapter.t;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.web.WebSearchAdapter.9
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i;
                            int i2;
                            boolean z;
                            WebSearchAdapter webSearchAdapter2 = WebSearchAdapter.this;
                            if (webSearchAdapter2.e == null) {
                                return;
                            }
                            ArrayList arrayList2 = webSearchAdapter2.z;
                            if (arrayList2 != null) {
                                i = arrayList2.size();
                            } else {
                                i = 0;
                            }
                            if (webSearchAdapter2.q) {
                                i2 = i - 1;
                            } else {
                                i2 = -1;
                            }
                            if (webSearchAdapter2.A != i) {
                                webSearchAdapter2.A = i;
                                MyRecyclerView myRecyclerView = webSearchAdapter2.w;
                                if (myRecyclerView != null) {
                                    myRecyclerView.p0();
                                }
                            }
                            webSearchAdapter2.m = arrayList2;
                            webSearchAdapter2.g();
                            WebSearchListener webSearchListener = webSearchAdapter2.e;
                            if (i != 0) {
                                z = true;
                            } else {
                                z = false;
                            }
                            ((WebViewActivity.AnonymousClass250) webSearchListener).a(i2, z);
                            webSearchAdapter2.s = false;
                        }
                    });
                }
            }
        }
    };
    public final int r = 1;
    public final boolean j = MainUtil.M5();

    /* renamed from: com.mycompany.app.web.WebSearchAdapter$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements MainListLoader.ListLoadListener {
        @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
        public final void a(MainItem.ChildItem childItem, View view) {
        }

        @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
        public final void b(MainItem.ChildItem childItem, View view, Bitmap bitmap) {
            SearchHolder searchHolder;
            Object tag;
            if (childItem != null) {
                if (view == null || (tag = view.getTag()) == null || !(tag instanceof SearchHolder)) {
                    searchHolder = null;
                } else {
                    searchHolder = (SearchHolder) tag;
                }
                if (searchHolder == null || searchHolder.v == null || searchHolder.c() != childItem.J) {
                    return;
                }
                searchHolder.v.setImageBitmap(bitmap);
            }
        }
    }

    /* renamed from: com.mycompany.app.web.WebSearchAdapter$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* renamed from: com.mycompany.app.web.WebSearchAdapter$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass3 implements View.OnClickListener {
        public AnonymousClass3() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            WebSearchAdapter webSearchAdapter = WebSearchAdapter.this;
            if (webSearchAdapter.s) {
                return;
            }
            webSearchAdapter.s = true;
            final int v = WebSearchAdapter.v(view);
            webSearchAdapter.z(new Runnable() { // from class: com.mycompany.app.web.WebSearchAdapter.3.1
                @Override // java.lang.Runnable
                public final void run() {
                    WebSearchAdapter webSearchAdapter2 = WebSearchAdapter.this;
                    SearchItem x = webSearchAdapter2.x(v);
                    if (x == null) {
                        webSearchAdapter2.s = false;
                        return;
                    }
                    WebViewActivity webViewActivity = webSearchAdapter2.d;
                    ArrayList arrayList = webSearchAdapter2.m;
                    if (arrayList != null && !arrayList.isEmpty()) {
                        try {
                            webSearchAdapter2.m.remove(x);
                            DataBookRecent a2 = DataBookRecent.a(webViewActivity);
                            a2.f12912a.remove(x);
                            a2.b = true;
                            DbBookRecent.f(webViewActivity, x.d);
                            WebSearchListener webSearchListener = webSearchAdapter2.e;
                            if (webSearchListener != null) {
                                ((WebViewActivity.AnonymousClass250) webSearchListener).c();
                            }
                            Handler handler = webSearchAdapter2.t;
                            if (handler == null) {
                                return;
                            }
                            handler.post(new Runnable() { // from class: com.mycompany.app.web.WebSearchAdapter.3.1.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                                    WebSearchAdapter.this.g();
                                    WebSearchAdapter.this.s = false;
                                }
                            });
                            return;
                        } catch (Exception unused) {
                        }
                    }
                    webSearchAdapter2.s = false;
                }
            });
        }
    }

    /* loaded from: classes3.dex */
    public static class SearchHolder extends RecyclerView.ViewHolder {
        public MyButtonImage A;
        public MyButtonImage B;
        public MyRoundBack C;
        public AppCompatTextView D;
        public int E;
        public MyFilterRelative u;
        public MyRoundImage v;
        public LinearLayout w;
        public AppCompatTextView x;
        public AppCompatTextView y;
        public FrameLayout z;
    }

    /* loaded from: classes3.dex */
    public static class SearchItem {

        /* renamed from: a, reason: collision with root package name */
        public int f19420a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int f19421c;
        public long d;
        public String e;
        public String f;
        public int g;
        public String h;
        public String i;
        public int j;
    }

    /* loaded from: classes3.dex */
    public static class SortSearch implements Comparator<SearchItem> {

        /* renamed from: c, reason: collision with root package name */
        public final boolean f19422c;
        public final int f;

        public SortSearch(boolean z) {
            int i;
            this.f19422c = z;
            if (z) {
                i = -1;
            } else {
                i = 1;
            }
            this.f = i;
        }

        @Override // java.util.Comparator
        public final int compare(SearchItem searchItem, SearchItem searchItem2) {
            SearchItem searchItem3 = searchItem;
            SearchItem searchItem4 = searchItem2;
            if (searchItem3 == null && searchItem4 == null) {
                return 0;
            }
            int i = this.f;
            if (searchItem3 != null) {
                if (searchItem4 == null) {
                    return -i;
                }
                int i2 = searchItem3.f19421c;
                int i3 = searchItem4.f19421c;
                if (i2 < i3) {
                    return -i;
                }
                if (i2 <= i3) {
                    return MainUtil.n(searchItem3.h, searchItem4.h, this.f19422c);
                }
            }
            return i;
        }
    }

    /* loaded from: classes3.dex */
    public interface WebSearchListener {
        void a(int i, boolean z);

        int b();

        void c();

        boolean d();

        void e(String str);

        void g(int i, String str);

        void h(SearchItem searchItem);
    }

    /* JADX WARN: Type inference failed for: r4v12, types: [com.mycompany.app.main.MainListLoader$ListLoadListener, java.lang.Object] */
    public WebSearchAdapter(WebViewActivity webViewActivity, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, boolean z, boolean z2, WebSearchListener webSearchListener) {
        boolean z3;
        this.d = webViewActivity;
        this.e = webSearchListener;
        this.g = arrayList;
        this.h = arrayList2;
        this.i = arrayList3;
        this.p = z;
        this.q = z2;
        if (!DbBookRecent.l() || (PrefWeb.W & 2) != 2) {
            z3 = false;
        } else {
            z3 = true;
        }
        this.f = z3;
        this.t = new Handler(Looper.getMainLooper());
        if (PrefWeb.V == 1) {
            this.k = "https://duckduckgo.com/ac/?q=";
        } else {
            this.k = "https://suggestqueries.google.com/complete/search?client=chrome&hl=" + MainUtil.g2() + "&q=";
        }
        this.n = new MainListLoader(webViewActivity, false, new Object());
    }

    public static int v(View view) {
        SearchHolder searchHolder;
        Object tag;
        if (view == null || (tag = view.getTag()) == null || !(tag instanceof SearchHolder)) {
            searchHolder = null;
        } else {
            searchHolder = (SearchHolder) tag;
        }
        if (searchHolder != null && searchHolder.f1589a != null) {
            return searchHolder.c();
        }
        return -1;
    }

    /* JADX WARN: Type inference failed for: r9v4, types: [com.mycompany.app.web.WebSearchAdapter$SearchItem, java.lang.Object] */
    public static void w(WebSearchAdapter webSearchAdapter, List list, ArrayList arrayList, String str, int i) {
        boolean z = webSearchAdapter.q;
        try {
            ArrayList arrayList2 = new ArrayList();
            Iterator it = list.iterator();
            int i2 = 0;
            while (it.hasNext()) {
                SearchItem searchItem = (SearchItem) it.next();
                if (!TextUtils.isEmpty(searchItem.e) && !TextUtils.isEmpty(searchItem.f)) {
                    String str2 = searchItem.f;
                    Locale locale = Locale.US;
                    searchItem.h = str2.toLowerCase(locale);
                    String lowerCase = searchItem.e.toLowerCase(locale);
                    int indexOf = searchItem.h.indexOf(str);
                    int indexOf2 = lowerCase.indexOf(str, searchItem.j);
                    if (indexOf2 == -1) {
                        searchItem.f19421c = indexOf;
                    } else if (indexOf == -1) {
                        searchItem.f19421c = indexOf2;
                    } else {
                        searchItem.f19421c = Math.min(indexOf, indexOf2);
                    }
                    if (searchItem.f19421c != -1) {
                        arrayList2.add(searchItem);
                        i2++;
                        if (i2 > 9) {
                            break;
                        }
                    } else {
                        continue;
                    }
                }
            }
            if (!arrayList2.isEmpty()) {
                try {
                    Collections.sort(arrayList2, new SortSearch(z));
                } catch (Exception unused) {
                }
                ?? obj = new Object();
                obj.b = 1;
                obj.f = webSearchAdapter.d.getString(i);
                if (z) {
                    arrayList2.add(obj);
                } else {
                    arrayList2.add(0, obj);
                }
                if (z) {
                    arrayList.addAll(0, arrayList2);
                } else {
                    arrayList.addAll(arrayList2);
                }
            }
        } catch (Exception unused2) {
        }
    }

    public final void A(int i, MyFilterRelative myFilterRelative) {
        boolean z;
        final boolean z2;
        final boolean z3;
        if (myFilterRelative == null) {
            return;
        }
        boolean z4 = this.q;
        int i2 = this.r;
        if (z4) {
            if (i == i2) {
                z3 = true;
            } else {
                z3 = false;
            }
            z2 = false;
        } else {
            if (i == (d() - 1) - i2) {
                z = true;
            } else {
                z = false;
            }
            z2 = z;
            z3 = false;
        }
        if (!z3 && !z2) {
            myFilterRelative.setClipToOutline(false);
        } else {
            myFilterRelative.setOutlineProvider(new ViewOutlineProvider() { // from class: com.mycompany.app.web.WebSearchAdapter.7
                @Override // android.view.ViewOutlineProvider
                public final void getOutline(View view, Outline outline) {
                    if (view != null && outline != null) {
                        int i3 = MainApp.B1;
                        boolean z5 = z2;
                        boolean z6 = z3;
                        if (z6 && z5) {
                            outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), i3);
                        } else if (z6) {
                            outline.setRoundRect(0, 0, view.getWidth(), view.getHeight() + i3, i3);
                        } else if (z5) {
                            outline.setRoundRect(0, -i3, view.getWidth(), view.getHeight(), i3);
                        }
                    }
                }
            });
            myFilterRelative.setClipToOutline(true);
        }
    }

    public final void B(boolean z) {
        if (z) {
            HttpURLConnection httpURLConnection = this.o;
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
                this.o = null;
                return;
            }
            return;
        }
        final HttpURLConnection httpURLConnection2 = this.o;
        this.o = null;
        if (httpURLConnection2 == null) {
            return;
        }
        z(new Runnable() { // from class: com.mycompany.app.web.WebSearchAdapter.10
            @Override // java.lang.Runnable
            public final void run() {
                httpURLConnection2.disconnect();
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int d() {
        int i = this.x;
        if (i != 0) {
            return i;
        }
        ArrayList arrayList = this.m;
        if (arrayList == null) {
            return 0;
        }
        return arrayList.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int f(int i) {
        int i2;
        int b;
        int i3;
        SearchItem x = x(i);
        if (x == null) {
            return 0;
        }
        int i4 = x.b;
        if (i4 != 3) {
            return i4;
        }
        if (this.q) {
            WebSearchListener webSearchListener = this.e;
            i2 = 1;
            if (webSearchListener != null && (b = ((WebViewActivity.AnonymousClass250) webSearchListener).b()) > (i3 = MainApp.h1)) {
                i2 = b - i3;
            }
        } else {
            i2 = MainApp.h1;
        }
        return i2 + 3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v18, types: [android.view.View$OnClickListener, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v8, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void n(RecyclerView.ViewHolder viewHolder, int i) {
        MyFilterRelative myFilterRelative;
        String str;
        int i2;
        SearchHolder searchHolder = (SearchHolder) viewHolder;
        if (searchHolder.f1589a != null && (myFilterRelative = searchHolder.u) != null) {
            myFilterRelative.setTag(searchHolder);
            SearchItem x = x(i);
            if (x == null) {
                return;
            }
            if (x.b == 3) {
                myFilterRelative.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebSearchAdapter.5
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        SearchItem x2;
                        WebSearchAdapter webSearchAdapter = WebSearchAdapter.this;
                        if (webSearchAdapter.e == null || (x2 = webSearchAdapter.x(WebSearchAdapter.v(view))) == null) {
                            return;
                        }
                        ((WebViewActivity.AnonymousClass250) webSearchAdapter.e).h(x2);
                    }
                });
                return;
            }
            boolean z = this.p;
            boolean k5 = MainUtil.k5(z);
            int i3 = x.b;
            int i4 = -1;
            boolean z2 = this.q;
            if (i3 == 1) {
                searchHolder.v.setVisibility(8);
                searchHolder.w.setVisibility(8);
                searchHolder.z.setVisibility(8);
                searchHolder.C.setVisibility(0);
                searchHolder.D.setVisibility(0);
                searchHolder.C.setOnClickListener(new Object());
                int i5 = (MainApp.F1 * 3) + MainApp.G1;
                if (z2) {
                    if (searchHolder.D.getPaddingBottom() != i5) {
                        searchHolder.D.setPadding(0, 0, 0, i5);
                    }
                } else if (searchHolder.D.getPaddingTop() != i5) {
                    searchHolder.D.setPadding(0, i5, 0, 0);
                }
                searchHolder.D.setText(x.f);
                if (k5) {
                    searchHolder.C.a(-14606047, z2);
                    searchHolder.D.setTextColor(-4079167);
                    myFilterRelative.setBackgroundColor(-16777216);
                } else {
                    searchHolder.C.a(-1, z2);
                    searchHolder.D.setTextColor(-10395295);
                    myFilterRelative.setBackgroundColor(-460552);
                }
                myFilterRelative.setFilterColor(MainUtil.l1());
                A(i, myFilterRelative);
                myFilterRelative.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebSearchAdapter.5
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        SearchItem x2;
                        WebSearchAdapter webSearchAdapter = WebSearchAdapter.this;
                        if (webSearchAdapter.e == null || (x2 = webSearchAdapter.x(WebSearchAdapter.v(view))) == null) {
                            return;
                        }
                        ((WebViewActivity.AnonymousClass250) webSearchAdapter.e).h(x2);
                    }
                });
                return;
            }
            searchHolder.v.setDarkColor(k5);
            searchHolder.v.setVisibility(0);
            searchHolder.w.setVisibility(0);
            searchHolder.C.setVisibility(8);
            searchHolder.D.setVisibility(8);
            if (x.b == 2) {
                searchHolder.z.setVisibility(8);
                if (k5) {
                    searchHolder.v.setImageResource(R.drawable.outline_find_in_page_dark_24);
                } else {
                    searchHolder.v.setImageResource(R.drawable.outline_find_in_page_black_24);
                }
                searchHolder.x.setSingleLine(true);
                searchHolder.x.setText(R.string.find_word);
                searchHolder.y.setVisibility(8);
                myFilterRelative.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebSearchAdapter.5
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        SearchItem x2;
                        WebSearchAdapter webSearchAdapter = WebSearchAdapter.this;
                        if (webSearchAdapter.e == null || (x2 = webSearchAdapter.x(WebSearchAdapter.v(view))) == null) {
                            return;
                        }
                        ((WebViewActivity.AnonymousClass250) webSearchAdapter.e).h(x2);
                    }
                });
            } else {
                searchHolder.z.setVisibility(0);
                boolean isEmpty = TextUtils.isEmpty(x.e);
                boolean isEmpty2 = TextUtils.isEmpty(this.l);
                if (!isEmpty) {
                    searchHolder.x.setSingleLine(true);
                } else {
                    searchHolder.x.setSingleLine(false);
                    searchHolder.x.setMaxLines(2);
                }
                if (!isEmpty2) {
                    if (!TextUtils.isEmpty(x.i)) {
                        str = x.i;
                    } else {
                        str = this.l;
                    }
                    if (!k5) {
                        i4 = -14784824;
                    }
                    searchHolder.x.setText(MainUtil.t6(x.f, i4, 0, str), TextView.BufferType.SPANNABLE);
                } else {
                    searchHolder.x.setText(x.f);
                    str = null;
                    i4 = 0;
                }
                if (!isEmpty) {
                    if (!isEmpty2) {
                        searchHolder.y.setText(MainUtil.t6(x.e, i4, x.j, str), TextView.BufferType.SPANNABLE);
                    } else {
                        searchHolder.y.setText(x.e);
                    }
                    searchHolder.y.setVisibility(0);
                } else {
                    searchHolder.y.setVisibility(8);
                }
                if (x.f19420a == 38) {
                    if (k5) {
                        searchHolder.A.setImageResource(R.drawable.outline_close_dark_18);
                        searchHolder.A.setBgPreColor(-12632257);
                    } else {
                        searchHolder.A.setImageResource(R.drawable.outline_close_black_18);
                        searchHolder.A.setBgPreColor(-2039584);
                    }
                    searchHolder.A.setVisibility(0);
                    searchHolder.A.setTag(searchHolder);
                    searchHolder.A.setOnClickListener(new AnonymousClass3());
                } else {
                    searchHolder.A.setVisibility(8);
                }
                if (z2) {
                    if (k5) {
                        searchHolder.B.setImageResource(R.drawable.outline_south_west_dark_20);
                        searchHolder.B.setBgPreColor(-12632257);
                    } else {
                        searchHolder.B.setImageResource(R.drawable.outline_south_west_black_20);
                        searchHolder.B.setBgPreColor(-2039584);
                    }
                } else if (k5) {
                    searchHolder.B.setImageResource(R.drawable.outline_north_west_dark_20);
                    searchHolder.B.setBgPreColor(-12632257);
                } else {
                    searchHolder.B.setImageResource(R.drawable.outline_north_west_black_20);
                    searchHolder.B.setBgPreColor(-2039584);
                }
                searchHolder.B.setTag(searchHolder);
                searchHolder.B.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebSearchAdapter.4
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        SearchItem x2;
                        WebSearchAdapter webSearchAdapter = WebSearchAdapter.this;
                        if (webSearchAdapter.e != null && (x2 = webSearchAdapter.x(WebSearchAdapter.v(view))) != null) {
                            if (!TextUtils.isEmpty(x2.e)) {
                                WebSearchListener webSearchListener = webSearchAdapter.e;
                                String str2 = x2.e;
                                ((WebViewActivity.AnonymousClass250) webSearchListener).g(str2.length(), str2);
                            } else if (!TextUtils.isEmpty(x2.f)) {
                                String p = a.p(new StringBuilder(), x2.f, " ");
                                ((WebViewActivity.AnonymousClass250) webSearchAdapter.e).g(p.length(), p);
                            }
                        }
                    }
                });
                MyRoundImage myRoundImage = searchHolder.v;
                if (myRoundImage != null && this.n != null) {
                    boolean k52 = MainUtil.k5(z);
                    int i6 = x.f19420a;
                    if (i6 == 38) {
                        if (k52) {
                            myRoundImage.setImageResource(R.drawable.outline_history_dark_24);
                        } else {
                            myRoundImage.setImageResource(R.drawable.outline_history_black_24);
                        }
                    } else if (i6 == 0) {
                        if (k52) {
                            myRoundImage.setImageResource(R.drawable.outline_search_dark_24);
                        } else {
                            myRoundImage.setImageResource(R.drawable.outline_search_black_24);
                        }
                    } else if (TextUtils.isEmpty(x.e)) {
                        if (k52) {
                            myRoundImage.setImageResource(R.drawable.outline_public_dark_24);
                        } else {
                            myRoundImage.setImageResource(R.drawable.outline_public_black_24);
                        }
                    } else {
                        int i7 = x.f19420a;
                        if (i7 == 33 && (i2 = x.g) != 0 && i2 != -460552) {
                            if (k52) {
                                myRoundImage.z(i2, R.drawable.outline_public_dark_24, x.f, y());
                            } else {
                                myRoundImage.z(i2, R.drawable.outline_public_black_24, x.f, y());
                            }
                        } else {
                            ?? obj = new Object();
                            obj.f16550a = i7;
                            obj.f16551c = 11;
                            String str2 = x.e;
                            obj.g = str2;
                            obj.h = x.f;
                            obj.z = str2;
                            obj.y = x.d;
                            obj.J = i;
                            Bitmap b = MainListLoader.b(obj);
                            if (MainUtil.f6(b)) {
                                myRoundImage.setImageBitmap(b);
                            } else {
                                if (k52) {
                                    myRoundImage.z(0, R.drawable.outline_public_dark_24, x.f, y());
                                } else {
                                    myRoundImage.z(0, R.drawable.outline_public_black_24, x.f, y());
                                }
                                this.n.e(obj, myFilterRelative);
                            }
                        }
                    }
                }
                myFilterRelative.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebSearchAdapter.5
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        SearchItem x2;
                        WebSearchAdapter webSearchAdapter = WebSearchAdapter.this;
                        if (webSearchAdapter.e == null || (x2 = webSearchAdapter.x(WebSearchAdapter.v(view))) == null) {
                            return;
                        }
                        ((WebViewActivity.AnonymousClass250) webSearchAdapter.e).h(x2);
                    }
                });
                myFilterRelative.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.mycompany.app.web.WebSearchAdapter.6
                    @Override // android.view.View.OnLongClickListener
                    public final boolean onLongClick(View view) {
                        final int v = WebSearchAdapter.v(view);
                        WebSearchAdapter.this.z(new Runnable() { // from class: com.mycompany.app.web.WebSearchAdapter.6.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                String str3;
                                String str4;
                                WebSearchAdapter webSearchAdapter = WebSearchAdapter.this;
                                SearchItem x2 = webSearchAdapter.x(v);
                                if (x2 != null) {
                                    if (!TextUtils.isEmpty(x2.e)) {
                                        str3 = x2.e;
                                        str4 = "Copied URL";
                                    } else {
                                        str3 = x2.f;
                                        str4 = "Copied text";
                                    }
                                    MainUtil.v(R.string.copied_clipboard, webSearchAdapter.d, str4, str3);
                                    WebSearchListener webSearchListener = webSearchAdapter.e;
                                    if (webSearchListener != null) {
                                        ((WebViewActivity.AnonymousClass250) webSearchListener).e(str3);
                                    }
                                }
                            }
                        });
                        return true;
                    }
                });
            }
            if (k5) {
                myFilterRelative.setBackgroundResource(R.drawable.selector_list_back_dark);
            } else {
                myFilterRelative.setBackgroundResource(R.drawable.selector_list_back);
            }
            myFilterRelative.setFilterColor(MainUtil.l1());
            A(i, myFilterRelative);
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [android.widget.RelativeLayout, android.view.View, com.mycompany.app.view.MyFilterRelative, android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r0v4, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.web.WebSearchAdapter$SearchHolder] */
    /* JADX WARN: Type inference failed for: r1v3, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.web.WebSearchAdapter$SearchHolder] */
    /* JADX WARN: Type inference failed for: r2v9, types: [android.widget.RelativeLayout, android.view.View, com.mycompany.app.view.MyFilterRelative] */
    /* JADX WARN: Type inference failed for: r5v2, types: [android.view.View, com.mycompany.app.view.MyRoundBack] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder o(ViewGroup viewGroup, int i) {
        Context context = viewGroup.getContext();
        if (context == null) {
            return null;
        }
        if (i >= 3) {
            ?? relativeLayout = new RelativeLayout(context);
            relativeLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, i - 3));
            ?? viewHolder = new RecyclerView.ViewHolder(relativeLayout);
            viewHolder.u = relativeLayout;
            return viewHolder;
        }
        ?? relativeLayout2 = new RelativeLayout(context);
        relativeLayout2.setMinimumHeight(MainApp.h1);
        relativeLayout2.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        MyRoundImage myRoundImage = new MyRoundImage(context);
        int G = (int) MainUtil.G(context, 24.0f);
        int i2 = (int) (G / 2.0f);
        myRoundImage.setScaleType(ImageView.ScaleType.CENTER_CROP);
        myRoundImage.setRoundRadius(MainApp.G1);
        myRoundImage.setCircleRadius(i2);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(G, G);
        layoutParams.topMargin = MainApp.E1;
        layoutParams.setMarginStart(i2);
        relativeLayout2.addView(myRoundImage, layoutParams);
        FrameLayout frameLayout = new FrameLayout(context);
        int i3 = R.id.search_item_frame;
        frameLayout.setId(i3);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, MainApp.h1);
        layoutParams2.addRule(21);
        relativeLayout2.addView(frameLayout, layoutParams2);
        MyButtonImage myButtonImage = new MyButtonImage(context);
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
        myButtonImage.setScaleType(scaleType);
        myButtonImage.setVisibility(8);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(MainApp.g1, MainApp.h1);
        layoutParams3.gravity = 8388613;
        layoutParams3.setMarginEnd(MainApp.g1);
        frameLayout.addView(myButtonImage, layoutParams3);
        MyButtonImage p = com.google.android.gms.internal.mlkit_vision_text_common.a.p(context, scaleType);
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(MainApp.g1, MainApp.h1);
        layoutParams4.gravity = 8388613;
        frameLayout.addView(p, layoutParams4);
        LinearLayout linearLayout = new LinearLayout(context);
        int i4 = MainApp.F1;
        linearLayout.setPadding(0, i4, 0, i4);
        linearLayout.setOrientation(1);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams5.addRule(16, i3);
        layoutParams5.addRule(15);
        layoutParams5.setMarginStart((int) MainUtil.G(context, 52.0f));
        relativeLayout2.addView(linearLayout, layoutParams5);
        AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
        appCompatTextView.setSingleLine(true);
        appCompatTextView.setTextSize(1, 16.0f);
        linearLayout.addView(appCompatTextView, -2, -2);
        AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
        appCompatTextView2.setSingleLine(true);
        appCompatTextView2.setTextSize(1, 14.0f);
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams6.topMargin = MainApp.G1;
        linearLayout.addView(appCompatTextView2, layoutParams6);
        ?? view = new View(context);
        view.setVisibility(8);
        relativeLayout2.addView(view, -1, MainApp.h1);
        AppCompatTextView appCompatTextView3 = new AppCompatTextView(context, null);
        appCompatTextView3.setGravity(16);
        appCompatTextView3.setSingleLine(true);
        appCompatTextView3.setTextSize(1, 14.0f);
        appCompatTextView3.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-2, MainApp.h1);
        layoutParams7.setMarginStart((int) MainUtil.G(context, 12.0f));
        relativeLayout2.addView(appCompatTextView3, layoutParams7);
        ?? viewHolder2 = new RecyclerView.ViewHolder(relativeLayout2);
        viewHolder2.u = relativeLayout2;
        viewHolder2.v = myRoundImage;
        viewHolder2.w = linearLayout;
        viewHolder2.x = appCompatTextView;
        viewHolder2.y = appCompatTextView2;
        viewHolder2.z = frameLayout;
        viewHolder2.A = myButtonImage;
        viewHolder2.B = p;
        viewHolder2.C = view;
        viewHolder2.D = appCompatTextView3;
        if (MainUtil.k5(this.p)) {
            viewHolder2.x.setTextColor(-4079167);
            viewHolder2.y.setTextColor(-4079167);
            return viewHolder2;
        }
        viewHolder2.x.setTextColor(-16777216);
        viewHolder2.y.setTextColor(-10395295);
        return viewHolder2;
    }

    public final SearchItem x(int i) {
        ArrayList arrayList = this.m;
        if (arrayList != null && i >= 0 && i < arrayList.size()) {
            return (SearchItem) this.m.get(i);
        }
        return null;
    }

    public final Pattern y() {
        if (this.v == null) {
            this.v = Pattern.compile("\\p{Punct}");
        }
        return this.v;
    }

    public final void z(Runnable runnable) {
        ExecutorService executorService = this.u;
        if (executorService == null || executorService.isShutdown() || executorService.isTerminated()) {
            executorService = MainApp.i(this.d);
            if (executorService == null) {
                return;
            } else {
                this.u = executorService;
            }
        }
        try {
            executorService.execute(runnable);
        } catch (Exception unused) {
        }
    }
}
