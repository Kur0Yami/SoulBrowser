package com.mycompany.app.web;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Outline;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.widget.ArrayAdapter;
import android.widget.Filter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.internal.mlkit_vision_text_common.a;
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
import com.mycompany.app.view.MyRoundImage;
import com.mycompany.app.web.WebSearchAdapter;
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
public class WebSearchAdapter2 extends ArrayAdapter<WebSearchAdapter.SearchItem> {
    public static final /* synthetic */ int B = 0;
    public ArrayList A;

    /* renamed from: c, reason: collision with root package name */
    public final Context f19423c;
    public WebSearchAdapter.WebSearchListener f;
    public final int g;
    public final boolean h;
    public List i;
    public List j;
    public List k;
    public final boolean l;
    public String m;
    public String n;
    public ArrayList o;
    public MainListLoader p;
    public HttpURLConnection q;
    public boolean r;
    public int s;
    public boolean t;
    public boolean u;
    public Handler v;
    public ExecutorService w;
    public Pattern x;
    public int y;
    public final Filter z;

    /* renamed from: com.mycompany.app.web.WebSearchAdapter2$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements MainListLoader.ListLoadListener {
        @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
        public final void a(MainItem.ChildItem childItem, View view) {
        }

        @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
        public final void b(MainItem.ChildItem childItem, View view, Bitmap bitmap) {
            WebSearchAdapter.SearchHolder searchHolder;
            MyRoundImage myRoundImage;
            Object tag;
            if (childItem != null) {
                int i = WebSearchAdapter2.B;
                if (view == null || (tag = view.getTag()) == null || !(tag instanceof WebSearchAdapter.SearchHolder)) {
                    searchHolder = null;
                } else {
                    searchHolder = (WebSearchAdapter.SearchHolder) tag;
                }
                if (searchHolder == null || (myRoundImage = searchHolder.v) == null || searchHolder.E != childItem.J) {
                    return;
                }
                myRoundImage.setImageBitmap(bitmap);
            }
        }
    }

    /* renamed from: com.mycompany.app.web.WebSearchAdapter2$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* renamed from: com.mycompany.app.web.WebSearchAdapter2$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass3 implements View.OnClickListener {
        public AnonymousClass3() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            WebSearchAdapter2 webSearchAdapter2 = WebSearchAdapter2.this;
            if (webSearchAdapter2.u) {
                return;
            }
            webSearchAdapter2.u = true;
            final int a2 = WebSearchAdapter2.a(view);
            webSearchAdapter2.g(new Runnable() { // from class: com.mycompany.app.web.WebSearchAdapter2.3.1
                @Override // java.lang.Runnable
                public final void run() {
                    WebSearchAdapter.WebSearchListener webSearchListener;
                    WebSearchAdapter2 webSearchAdapter22 = WebSearchAdapter2.this;
                    WebSearchAdapter.SearchItem item = webSearchAdapter22.getItem(a2);
                    if (item == null) {
                        webSearchAdapter22.u = false;
                        return;
                    }
                    Context context = webSearchAdapter22.f19423c;
                    ArrayList arrayList = webSearchAdapter22.o;
                    if (arrayList != null && !arrayList.isEmpty()) {
                        try {
                            webSearchAdapter22.o.remove(item);
                            DataBookRecent a3 = DataBookRecent.a(context);
                            a3.f12912a.remove(item);
                            a3.b = true;
                            DbBookRecent.f(context, item.d);
                            if (webSearchAdapter22.g == 0 && (webSearchListener = webSearchAdapter22.f) != null) {
                                webSearchListener.c();
                            }
                            Handler handler = webSearchAdapter22.v;
                            if (handler == null) {
                                return;
                            }
                            handler.post(new Runnable() { // from class: com.mycompany.app.web.WebSearchAdapter2.3.1.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                    WebSearchAdapter2.this.notifyDataSetChanged();
                                    WebSearchAdapter2.this.u = false;
                                }
                            });
                            return;
                        } catch (Exception unused) {
                        }
                    }
                    webSearchAdapter22.u = false;
                }
            });
        }
    }

    /* loaded from: classes3.dex */
    public static class SortSearch implements Comparator<WebSearchAdapter.SearchItem> {

        /* renamed from: c, reason: collision with root package name */
        public final boolean f19435c;
        public final int f;

        public SortSearch(boolean z) {
            int i;
            this.f19435c = z;
            if (z) {
                i = -1;
            } else {
                i = 1;
            }
            this.f = i;
        }

        @Override // java.util.Comparator
        public final int compare(WebSearchAdapter.SearchItem searchItem, WebSearchAdapter.SearchItem searchItem2) {
            WebSearchAdapter.SearchItem searchItem3 = searchItem;
            WebSearchAdapter.SearchItem searchItem4 = searchItem2;
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
                    return MainUtil.n(searchItem3.h, searchItem4.h, this.f19435c);
                }
            }
            return i;
        }
    }

    /* JADX WARN: Type inference failed for: r5v9, types: [com.mycompany.app.main.MainListLoader$ListLoadListener, java.lang.Object] */
    public WebSearchAdapter2(Context context, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, boolean z, int i, WebSearchAdapter.WebSearchListener webSearchListener) {
        super(context, 0, arrayList);
        boolean z2;
        this.z = new Filter() { // from class: com.mycompany.app.web.WebSearchAdapter2.8
            @Override // android.widget.Filter
            public final CharSequence convertResultToString(Object obj) {
                if (obj == null || !(obj instanceof WebSearchAdapter.SearchItem)) {
                    return null;
                }
                return ((WebSearchAdapter.SearchItem) obj).f;
            }

            /* JADX WARN: Removed duplicated region for block: B:75:0x032c  */
            /* JADX WARN: Removed duplicated region for block: B:91:0x0363  */
            /* JADX WARN: Removed duplicated region for block: B:92:0x036b  */
            /* JADX WARN: Type inference failed for: r0v12, types: [com.mycompany.app.web.WebSearchAdapter$SearchItem, java.lang.Object] */
            /* JADX WARN: Type inference failed for: r0v16, types: [com.mycompany.app.web.WebSearchAdapter$SearchItem, java.lang.Object] */
            /* JADX WARN: Type inference failed for: r0v8, types: [com.mycompany.app.web.WebSearchAdapter$SearchItem, java.lang.Object] */
            /* JADX WARN: Type inference failed for: r2v20, types: [com.mycompany.app.web.WebSearchAdapter$SearchItem, java.lang.Object] */
            /* JADX WARN: Type inference failed for: r7v11, types: [com.mycompany.app.web.WebSearchAdapter$SearchItem, java.lang.Object] */
            @Override // android.widget.Filter
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final android.widget.Filter.FilterResults performFiltering(java.lang.CharSequence r25) {
                /*
                    Method dump skipped, instructions count: 1045
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebSearchAdapter2.AnonymousClass8.performFiltering(java.lang.CharSequence):android.widget.Filter$FilterResults");
            }

            @Override // android.widget.Filter
            public final void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
                final WebSearchAdapter2 webSearchAdapter2 = WebSearchAdapter2.this;
                webSearchAdapter2.n = null;
                if (webSearchAdapter2.f != null) {
                    if (filterResults != null && filterResults.count - webSearchAdapter2.s > 0) {
                        if (!TextUtils.isEmpty(charSequence)) {
                            String trim = charSequence.toString().trim();
                            if (!TextUtils.isEmpty(trim)) {
                                webSearchAdapter2.n = trim.toLowerCase(Locale.US);
                            }
                        }
                        List list = (List) filterResults.values;
                        ArrayList arrayList4 = new ArrayList();
                        Iterator it = list.iterator();
                        while (it.hasNext()) {
                            arrayList4.add((WebSearchAdapter.SearchItem) it.next());
                        }
                        webSearchAdapter2.A = arrayList4;
                        if (!webSearchAdapter2.u) {
                            webSearchAdapter2.u = true;
                            Handler handler = webSearchAdapter2.v;
                            if (handler != null) {
                                handler.post(new Runnable() { // from class: com.mycompany.app.web.WebSearchAdapter2.9
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        int i2;
                                        int i3;
                                        boolean z3;
                                        WebSearchAdapter2 webSearchAdapter22 = WebSearchAdapter2.this;
                                        if (webSearchAdapter22.f == null) {
                                            return;
                                        }
                                        ArrayList arrayList5 = webSearchAdapter22.A;
                                        if (arrayList5 != null) {
                                            i2 = arrayList5.size();
                                        } else {
                                            i2 = 0;
                                        }
                                        if (webSearchAdapter22.r) {
                                            i3 = i2 - 1;
                                        } else {
                                            i3 = -1;
                                        }
                                        webSearchAdapter22.o = arrayList5;
                                        webSearchAdapter22.notifyDataSetChanged();
                                        WebSearchAdapter.WebSearchListener webSearchListener2 = webSearchAdapter22.f;
                                        if (i2 != 0) {
                                            z3 = true;
                                        } else {
                                            z3 = false;
                                        }
                                        webSearchListener2.a(i3, z3);
                                        webSearchAdapter22.u = false;
                                    }
                                });
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    webSearchAdapter2.A = null;
                    if (!webSearchAdapter2.u) {
                        webSearchAdapter2.u = true;
                        Handler handler2 = webSearchAdapter2.v;
                        if (handler2 == null) {
                            return;
                        }
                        handler2.post(new Runnable() { // from class: com.mycompany.app.web.WebSearchAdapter2.9
                            @Override // java.lang.Runnable
                            public final void run() {
                                int i2;
                                int i3;
                                boolean z3;
                                WebSearchAdapter2 webSearchAdapter22 = WebSearchAdapter2.this;
                                if (webSearchAdapter22.f == null) {
                                    return;
                                }
                                ArrayList arrayList5 = webSearchAdapter22.A;
                                if (arrayList5 != null) {
                                    i2 = arrayList5.size();
                                } else {
                                    i2 = 0;
                                }
                                if (webSearchAdapter22.r) {
                                    i3 = i2 - 1;
                                } else {
                                    i3 = -1;
                                }
                                webSearchAdapter22.o = arrayList5;
                                webSearchAdapter22.notifyDataSetChanged();
                                WebSearchAdapter.WebSearchListener webSearchListener2 = webSearchAdapter22.f;
                                if (i2 != 0) {
                                    z3 = true;
                                } else {
                                    z3 = false;
                                }
                                webSearchListener2.a(i3, z3);
                                webSearchAdapter22.u = false;
                            }
                        });
                    }
                }
            }
        };
        this.f19423c = context;
        this.f = webSearchListener;
        this.g = i;
        this.i = arrayList;
        this.j = arrayList2;
        this.k = arrayList3;
        this.r = z;
        this.s = 0;
        this.l = MainUtil.M5();
        if (i == 2 || !DbBookRecent.l() || (PrefWeb.W & 2) != 2) {
            z2 = false;
        } else {
            z2 = true;
        }
        this.h = z2;
        this.v = new Handler(Looper.getMainLooper());
        if (PrefWeb.V == 1) {
            this.m = "https://duckduckgo.com/ac/?q=";
        } else {
            this.m = "https://suggestqueries.google.com/complete/search?client=chrome&hl=" + MainUtil.g2() + "&q=";
        }
        this.p = new MainListLoader(context, false, new Object());
    }

    public static int a(View view) {
        WebSearchAdapter.SearchHolder searchHolder;
        Object tag;
        if (view == null || (tag = view.getTag()) == null || !(tag instanceof WebSearchAdapter.SearchHolder)) {
            searchHolder = null;
        } else {
            searchHolder = (WebSearchAdapter.SearchHolder) tag;
        }
        if (searchHolder != null && searchHolder.u != null) {
            return searchHolder.E;
        }
        return -1;
    }

    /* JADX WARN: Type inference failed for: r8v4, types: [com.mycompany.app.web.WebSearchAdapter$SearchItem, java.lang.Object] */
    public static void c(WebSearchAdapter2 webSearchAdapter2, List list, ArrayList arrayList, String str, int i) {
        try {
            ArrayList arrayList2 = new ArrayList();
            Iterator it = list.iterator();
            int i2 = 0;
            while (it.hasNext()) {
                WebSearchAdapter.SearchItem searchItem = (WebSearchAdapter.SearchItem) it.next();
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
                    Collections.sort(arrayList2, new SortSearch(webSearchAdapter2.r));
                } catch (Exception unused) {
                }
                ?? obj = new Object();
                obj.b = 1;
                obj.f = webSearchAdapter2.f19423c.getString(i);
                if (webSearchAdapter2.r) {
                    arrayList2.add(obj);
                } else {
                    arrayList2.add(0, obj);
                }
                if (webSearchAdapter2.r) {
                    arrayList.addAll(0, arrayList2);
                } else {
                    arrayList.addAll(arrayList2);
                }
            }
        } catch (Exception unused2) {
        }
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public final WebSearchAdapter.SearchItem getItem(int i) {
        ArrayList arrayList = this.o;
        if (arrayList != null && i >= 0 && i < arrayList.size()) {
            return (WebSearchAdapter.SearchItem) this.o.get(i);
        }
        return null;
    }

    public final Pattern e() {
        if (this.x == null) {
            this.x = Pattern.compile("\\p{Punct}");
        }
        return this.x;
    }

    public final void f() {
        int i = this.y;
        if (i == 0) {
            ArrayList arrayList = this.o;
            if (arrayList == null) {
                i = 0;
            } else {
                i = arrayList.size();
            }
        }
        this.y = i;
        i(false);
        MainListLoader mainListLoader = this.p;
        if (mainListLoader != null) {
            mainListLoader.f();
            this.p = null;
        }
        this.f = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.m = null;
        this.n = null;
        MainUtil.R6(this.v);
        this.v = null;
        this.w = null;
        this.x = null;
    }

    public final void g(Runnable runnable) {
        ExecutorService executorService = this.w;
        if (executorService == null || executorService.isShutdown() || executorService.isTerminated()) {
            executorService = MainApp.i(this.f19423c);
            if (executorService == null) {
                return;
            } else {
                this.w = executorService;
            }
        }
        try {
            executorService.execute(runnable);
        } catch (Exception unused) {
        }
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final int getCount() {
        int i = this.y;
        if (i != 0) {
            return i;
        }
        ArrayList arrayList = this.o;
        if (arrayList == null) {
            return 0;
        }
        return arrayList.size();
    }

    @Override // android.widget.ArrayAdapter, android.widget.Filterable
    public final Filter getFilter() {
        return this.z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v13, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v25, types: [android.view.View$OnClickListener, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v35, types: [android.view.View, com.mycompany.app.view.MyRoundBack] */
    /* JADX WARN: Type inference failed for: r12v6, types: [android.widget.RelativeLayout, android.view.View, com.mycompany.app.view.MyFilterRelative, android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r2v25, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.web.WebSearchAdapter$SearchHolder] */
    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        int i2;
        View view2;
        WebSearchAdapter.SearchHolder searchHolder;
        int i3;
        String str;
        int i4;
        String str2;
        int i5;
        WebSearchAdapter.SearchHolder searchHolder2;
        if (view == null) {
            Context context = this.f19423c;
            if (context == null) {
                i5 = 0;
                searchHolder2 = null;
            } else {
                ?? relativeLayout = new RelativeLayout(context);
                relativeLayout.setMinimumHeight(MainApp.h1);
                relativeLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
                MyRoundImage myRoundImage = new MyRoundImage(context);
                int G = (int) MainUtil.G(context, 24.0f);
                int i6 = (int) (G / 2.0f);
                myRoundImage.setScaleType(ImageView.ScaleType.CENTER_CROP);
                myRoundImage.setRoundRadius(MainApp.G1);
                myRoundImage.setCircleRadius(i6);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(G, G);
                layoutParams.topMargin = MainApp.E1;
                layoutParams.setMarginStart(i6);
                relativeLayout.addView(myRoundImage, layoutParams);
                FrameLayout frameLayout = new FrameLayout(context);
                int i7 = R.id.search_item_frame;
                frameLayout.setId(i7);
                RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, MainApp.h1);
                layoutParams2.addRule(21);
                relativeLayout.addView(frameLayout, layoutParams2);
                MyButtonImage myButtonImage = new MyButtonImage(context);
                ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
                myButtonImage.setScaleType(scaleType);
                myButtonImage.setVisibility(8);
                FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(MainApp.g1, MainApp.h1);
                layoutParams3.gravity = 8388613;
                layoutParams3.setMarginEnd(MainApp.g1);
                frameLayout.addView(myButtonImage, layoutParams3);
                MyButtonImage p = a.p(context, scaleType);
                FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(MainApp.g1, MainApp.h1);
                layoutParams4.gravity = 8388613;
                frameLayout.addView(p, layoutParams4);
                LinearLayout linearLayout = new LinearLayout(context);
                int i8 = MainApp.F1;
                linearLayout.setPadding(0, i8, 0, i8);
                linearLayout.setOrientation(1);
                RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-1, -2);
                layoutParams5.addRule(16, i7);
                layoutParams5.addRule(15);
                layoutParams5.setMarginStart((int) MainUtil.G(context, 52.0f));
                relativeLayout.addView(linearLayout, layoutParams5);
                AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
                appCompatTextView.setSingleLine(true);
                appCompatTextView.setTextSize(1, 16.0f);
                linearLayout.addView(appCompatTextView, -2, -2);
                int i9 = 0;
                AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
                appCompatTextView2.setSingleLine(true);
                appCompatTextView2.setTextSize(1, 14.0f);
                LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-2, -2);
                layoutParams6.topMargin = MainApp.G1;
                linearLayout.addView(appCompatTextView2, layoutParams6);
                ?? view3 = new View(context);
                view3.setVisibility(8);
                relativeLayout.addView(view3, -1, MainApp.h1);
                AppCompatTextView appCompatTextView3 = new AppCompatTextView(context, null);
                appCompatTextView3.setGravity(16);
                appCompatTextView3.setSingleLine(true);
                appCompatTextView3.setTextSize(1, 14.0f);
                appCompatTextView3.setVisibility(8);
                RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-2, MainApp.h1);
                layoutParams7.setMarginStart((int) MainUtil.G(context, 12.0f));
                relativeLayout.addView(appCompatTextView3, layoutParams7);
                ?? viewHolder = new RecyclerView.ViewHolder(relativeLayout);
                viewHolder.u = relativeLayout;
                viewHolder.v = myRoundImage;
                viewHolder.w = linearLayout;
                viewHolder.x = appCompatTextView;
                viewHolder.y = appCompatTextView2;
                viewHolder.z = frameLayout;
                viewHolder.A = myButtonImage;
                viewHolder.B = p;
                viewHolder.C = view3;
                viewHolder.D = appCompatTextView3;
                if (MainUtil.k5(false)) {
                    viewHolder.x.setTextColor(-4079167);
                    viewHolder.y.setTextColor(-4079167);
                    searchHolder2 = viewHolder;
                    i5 = i9;
                } else {
                    viewHolder.x.setTextColor(-16777216);
                    viewHolder.y.setTextColor(-10395295);
                    searchHolder2 = viewHolder;
                    i5 = i9;
                }
            }
            if (searchHolder2 == null) {
                return view;
            }
            MyFilterRelative myFilterRelative = searchHolder2.u;
            if (myFilterRelative == null) {
                return myFilterRelative;
            }
            myFilterRelative.setTag(searchHolder2);
            searchHolder = searchHolder2;
            view2 = myFilterRelative;
            i2 = i5;
        } else {
            i2 = 0;
            WebSearchAdapter.SearchHolder searchHolder3 = (WebSearchAdapter.SearchHolder) view.getTag();
            if (searchHolder3 == null) {
                return view;
            }
            view2 = view;
            searchHolder = searchHolder3;
        }
        MyFilterRelative myFilterRelative2 = searchHolder.u;
        if (myFilterRelative2 != null) {
            myFilterRelative2.setTag(searchHolder);
            searchHolder.E = i;
            WebSearchAdapter.SearchItem item = getItem(i);
            if (item != null) {
                int i10 = item.b;
                int i11 = this.g;
                if (i10 == 3) {
                    searchHolder.v.setVisibility(8);
                    searchHolder.w.setVisibility(8);
                    searchHolder.z.setVisibility(8);
                    searchHolder.C.setVisibility(8);
                    searchHolder.D.setVisibility(8);
                    myFilterRelative2.setBackground(null);
                    if (i11 != 1) {
                        myFilterRelative2.setFilterColor(i2);
                        h(i, myFilterRelative2);
                    }
                    myFilterRelative2.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebSearchAdapter2.5
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view4) {
                            WebSearchAdapter.SearchItem item2;
                            WebSearchAdapter2 webSearchAdapter2 = WebSearchAdapter2.this;
                            if (webSearchAdapter2.f == null || (item2 = webSearchAdapter2.getItem(WebSearchAdapter2.a(view4))) == null) {
                                return;
                            }
                            webSearchAdapter2.f.h(item2);
                        }
                    });
                    return view2;
                }
                boolean z = i2;
                boolean k5 = MainUtil.k5(z);
                if (item.b == 1) {
                    searchHolder.v.setVisibility(8);
                    searchHolder.w.setVisibility(8);
                    searchHolder.z.setVisibility(8);
                    searchHolder.C.setVisibility(z ? 1 : 0);
                    searchHolder.D.setVisibility(z ? 1 : 0);
                    searchHolder.C.setOnClickListener(new Object());
                    int i12 = (MainApp.F1 * 3) + MainApp.G1;
                    if (this.r) {
                        if (searchHolder.D.getPaddingBottom() != i12) {
                            searchHolder.D.setPadding(0, 0, 0, i12);
                        }
                    } else if (searchHolder.D.getPaddingTop() != i12) {
                        searchHolder.D.setPadding(0, i12, 0, 0);
                    }
                    searchHolder.D.setText(item.f);
                    if (k5) {
                        searchHolder.C.a(-14606047, this.r);
                        searchHolder.D.setTextColor(-4079167);
                        myFilterRelative2.setBackgroundColor(-16777216);
                    } else {
                        searchHolder.C.a(-1, this.r);
                        searchHolder.D.setTextColor(-10395295);
                        myFilterRelative2.setBackgroundColor(-460552);
                    }
                    if (i11 != 1) {
                        myFilterRelative2.setFilterColor(MainUtil.l1());
                        h(i, myFilterRelative2);
                    }
                    myFilterRelative2.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebSearchAdapter2.5
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view4) {
                            WebSearchAdapter.SearchItem item2;
                            WebSearchAdapter2 webSearchAdapter2 = WebSearchAdapter2.this;
                            if (webSearchAdapter2.f == null || (item2 = webSearchAdapter2.getItem(WebSearchAdapter2.a(view4))) == null) {
                                return;
                            }
                            webSearchAdapter2.f.h(item2);
                        }
                    });
                    return view2;
                }
                searchHolder.v.setDarkColor(k5);
                searchHolder.v.setVisibility(0);
                searchHolder.w.setVisibility(0);
                searchHolder.C.setVisibility(8);
                searchHolder.D.setVisibility(8);
                if (item.b == 2) {
                    searchHolder.z.setVisibility(8);
                    if (k5) {
                        searchHolder.v.setImageResource(R.drawable.outline_find_in_page_dark_24);
                    } else {
                        searchHolder.v.setImageResource(R.drawable.outline_find_in_page_black_24);
                    }
                    searchHolder.x.setSingleLine(true);
                    searchHolder.x.setText(R.string.find_word);
                    searchHolder.y.setVisibility(8);
                    myFilterRelative2.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebSearchAdapter2.5
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view4) {
                            WebSearchAdapter.SearchItem item2;
                            WebSearchAdapter2 webSearchAdapter2 = WebSearchAdapter2.this;
                            if (webSearchAdapter2.f == null || (item2 = webSearchAdapter2.getItem(WebSearchAdapter2.a(view4))) == null) {
                                return;
                            }
                            webSearchAdapter2.f.h(item2);
                        }
                    });
                } else {
                    searchHolder.z.setVisibility(0);
                    boolean isEmpty = TextUtils.isEmpty(item.e);
                    boolean isEmpty2 = TextUtils.isEmpty(this.n);
                    if (!isEmpty) {
                        searchHolder.x.setSingleLine(true);
                    } else {
                        searchHolder.x.setSingleLine(false);
                        searchHolder.x.setMaxLines(2);
                    }
                    if (!isEmpty2) {
                        if (!TextUtils.isEmpty(item.i)) {
                            str2 = item.i;
                        } else {
                            str2 = this.n;
                        }
                        str = str2;
                        i3 = k5 ? -1 : -14784824;
                        searchHolder.x.setText(MainUtil.t6(item.f, i3, 0, str), TextView.BufferType.SPANNABLE);
                    } else {
                        searchHolder.x.setText(item.f);
                        i3 = 0;
                        str = null;
                    }
                    if (!isEmpty) {
                        if (!isEmpty2) {
                            searchHolder.y.setText(MainUtil.t6(item.e, i3, item.j, str), TextView.BufferType.SPANNABLE);
                        } else {
                            searchHolder.y.setText(item.e);
                        }
                        searchHolder.y.setVisibility(0);
                    } else {
                        searchHolder.y.setVisibility(8);
                    }
                    if (item.f19420a == 38) {
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
                    if (this.r) {
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
                    searchHolder.B.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebSearchAdapter2.4
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view4) {
                            WebSearchAdapter.SearchItem item2;
                            WebSearchAdapter2 webSearchAdapter2 = WebSearchAdapter2.this;
                            if (webSearchAdapter2.f != null && (item2 = webSearchAdapter2.getItem(WebSearchAdapter2.a(view4))) != null) {
                                if (!TextUtils.isEmpty(item2.e)) {
                                    WebSearchAdapter.WebSearchListener webSearchListener = webSearchAdapter2.f;
                                    String str3 = item2.e;
                                    webSearchListener.g(str3.length(), str3);
                                } else if (!TextUtils.isEmpty(item2.f)) {
                                    String p2 = android.support.v4.media.a.p(new StringBuilder(), item2.f, " ");
                                    webSearchAdapter2.f.g(p2.length(), p2);
                                }
                            }
                        }
                    });
                    MyRoundImage myRoundImage2 = searchHolder.v;
                    if (myRoundImage2 != null && this.p != null) {
                        boolean k52 = MainUtil.k5(false);
                        int i13 = item.f19420a;
                        if (i13 == 38) {
                            if (k52) {
                                myRoundImage2.setImageResource(R.drawable.outline_history_dark_24);
                            } else {
                                myRoundImage2.setImageResource(R.drawable.outline_history_black_24);
                            }
                        } else if (i13 == 0) {
                            if (k52) {
                                myRoundImage2.setImageResource(R.drawable.outline_search_dark_24);
                            } else {
                                myRoundImage2.setImageResource(R.drawable.outline_search_black_24);
                            }
                        } else if (!TextUtils.isEmpty(item.e)) {
                            int i14 = item.f19420a;
                            if (i14 != 33 || (i4 = item.g) == 0 || i4 == -460552) {
                                ?? obj = new Object();
                                obj.f16550a = i14;
                                obj.f16551c = 11;
                                String str3 = item.e;
                                obj.g = str3;
                                obj.h = item.f;
                                obj.z = str3;
                                obj.y = item.d;
                                obj.J = i;
                                Bitmap b = MainListLoader.b(obj);
                                if (MainUtil.f6(b)) {
                                    myRoundImage2.setImageBitmap(b);
                                } else {
                                    if (k52) {
                                        myRoundImage2.z(0, R.drawable.outline_public_dark_24, item.f, e());
                                    } else {
                                        myRoundImage2.z(0, R.drawable.outline_public_black_24, item.f, e());
                                    }
                                    this.p.e(obj, myFilterRelative2);
                                }
                            } else if (k52) {
                                myRoundImage2.z(i4, R.drawable.outline_public_dark_24, item.f, e());
                            } else {
                                myRoundImage2.z(i4, R.drawable.outline_public_black_24, item.f, e());
                            }
                        } else if (k52) {
                            myRoundImage2.setImageResource(R.drawable.outline_public_dark_24);
                        } else {
                            myRoundImage2.setImageResource(R.drawable.outline_public_black_24);
                        }
                    }
                    myFilterRelative2.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebSearchAdapter2.5
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view4) {
                            WebSearchAdapter.SearchItem item2;
                            WebSearchAdapter2 webSearchAdapter2 = WebSearchAdapter2.this;
                            if (webSearchAdapter2.f == null || (item2 = webSearchAdapter2.getItem(WebSearchAdapter2.a(view4))) == null) {
                                return;
                            }
                            webSearchAdapter2.f.h(item2);
                        }
                    });
                    myFilterRelative2.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.mycompany.app.web.WebSearchAdapter2.6
                        @Override // android.view.View.OnLongClickListener
                        public final boolean onLongClick(View view4) {
                            final int a2 = WebSearchAdapter2.a(view4);
                            WebSearchAdapter2.this.g(new Runnable() { // from class: com.mycompany.app.web.WebSearchAdapter2.6.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    String str4;
                                    String str5;
                                    WebSearchAdapter2 webSearchAdapter2 = WebSearchAdapter2.this;
                                    WebSearchAdapter.SearchItem item2 = webSearchAdapter2.getItem(a2);
                                    if (item2 != null) {
                                        if (!TextUtils.isEmpty(item2.e)) {
                                            str4 = item2.e;
                                            str5 = "Copied URL";
                                        } else {
                                            str4 = item2.f;
                                            str5 = "Copied text";
                                        }
                                        MainUtil.v(R.string.copied_clipboard, webSearchAdapter2.f19423c, str5, str4);
                                        WebSearchAdapter.WebSearchListener webSearchListener = webSearchAdapter2.f;
                                        if (webSearchListener != null) {
                                            webSearchListener.e(str4);
                                        }
                                    }
                                }
                            });
                            return true;
                        }
                    });
                }
                if (Build.VERSION.SDK_INT >= 29 && viewGroup != null) {
                    if (k5) {
                        if (!this.t) {
                            this.t = true;
                            viewGroup.setVerticalScrollbarThumbDrawable(new ColorDrawable(-9474193));
                        }
                    } else if (this.t) {
                        this.t = false;
                        viewGroup.setVerticalScrollbarThumbDrawable(null);
                    }
                }
                if (k5) {
                    myFilterRelative2.setBackgroundResource(R.drawable.selector_list_back_dark);
                } else {
                    myFilterRelative2.setBackgroundResource(R.drawable.selector_list_back);
                }
                if (i11 != 1) {
                    myFilterRelative2.setFilterColor(MainUtil.l1());
                    h(i, myFilterRelative2);
                }
            }
        }
        return view2;
    }

    public final void h(int i, MyFilterRelative myFilterRelative) {
        boolean z;
        final boolean z2;
        final boolean z3;
        if (myFilterRelative == null) {
            return;
        }
        if (this.r) {
            if (i == this.s) {
                z3 = true;
            } else {
                z3 = false;
            }
            z2 = false;
        } else {
            int i2 = this.y;
            if (i2 == 0) {
                ArrayList arrayList = this.o;
                if (arrayList == null) {
                    i2 = 0;
                } else {
                    i2 = arrayList.size();
                }
            }
            if (i == (i2 - 1) - this.s) {
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
            myFilterRelative.setOutlineProvider(new ViewOutlineProvider() { // from class: com.mycompany.app.web.WebSearchAdapter2.7
                @Override // android.view.ViewOutlineProvider
                public final void getOutline(View view, Outline outline) {
                    if (view != null && outline != null) {
                        int i3 = MainApp.B1;
                        boolean z4 = z2;
                        boolean z5 = z3;
                        if (z5 && z4) {
                            outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), i3);
                        } else if (z5) {
                            outline.setRoundRect(0, 0, view.getWidth(), view.getHeight() + i3, i3);
                        } else if (z4) {
                            outline.setRoundRect(0, -i3, view.getWidth(), view.getHeight(), i3);
                        }
                    }
                }
            });
            myFilterRelative.setClipToOutline(true);
        }
    }

    public final void i(boolean z) {
        if (z) {
            HttpURLConnection httpURLConnection = this.q;
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
                this.q = null;
                return;
            }
            return;
        }
        final HttpURLConnection httpURLConnection2 = this.q;
        this.q = null;
        if (httpURLConnection2 == null) {
            return;
        }
        g(new Runnable() { // from class: com.mycompany.app.web.WebSearchAdapter2.10
            @Override // java.lang.Runnable
            public final void run() {
                httpURLConnection2.disconnect();
            }
        });
    }
}
