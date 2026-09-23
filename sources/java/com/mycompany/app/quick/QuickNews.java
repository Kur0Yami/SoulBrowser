package com.mycompany.app.quick;

import android.content.Context;
import android.os.Handler;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.quick.QuickAdapter;
import j$.time.format.DateTimeFormatter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;

/* loaded from: classes3.dex */
public class QuickNews {

    /* renamed from: a, reason: collision with root package name */
    public Context f17409a;
    public NewsListListener b;

    /* renamed from: c, reason: collision with root package name */
    public Handler f17410c;
    public String d;
    public ExecutorService e;
    public String f;
    public SimpleDateFormat g;
    public DateTimeFormatter h;
    public String i;

    /* loaded from: classes3.dex */
    public interface NewsListListener {
        void a(List list);

        void b(List list, boolean z);

        void c(int i);
    }

    /* loaded from: classes3.dex */
    public static class SortNews implements Comparator<QuickAdapter.QuickItem> {
        @Override // java.util.Comparator
        public final int compare(QuickAdapter.QuickItem quickItem, QuickAdapter.QuickItem quickItem2) {
            QuickAdapter.QuickItem quickItem3 = quickItem;
            QuickAdapter.QuickItem quickItem4 = quickItem2;
            if (quickItem3 != null || quickItem4 != null) {
                if (quickItem3 != null) {
                    if (quickItem4 != null) {
                        long j = quickItem3.s;
                        long j2 = quickItem4.s;
                        if (j == j2) {
                            return 0;
                        }
                        if (j > j2) {
                            return -1;
                        }
                        return 1;
                    }
                    return -1;
                }
                return 1;
            }
            return 0;
        }
    }

    /* loaded from: classes3.dex */
    public static class SortPos implements Comparator<QuickAdapter.QuickItem> {
        @Override // java.util.Comparator
        public final int compare(QuickAdapter.QuickItem quickItem, QuickAdapter.QuickItem quickItem2) {
            QuickAdapter.QuickItem quickItem3 = quickItem;
            QuickAdapter.QuickItem quickItem4 = quickItem2;
            if (quickItem3 != null || quickItem4 != null) {
                if (quickItem3 != null) {
                    if (quickItem4 != null) {
                        int i = quickItem3.m;
                        if (i < 0 && quickItem4.m < 0) {
                            return 0;
                        }
                        if (i >= 0) {
                            int i2 = quickItem4.m;
                            if (i2 >= 0 && i < i2) {
                                return -1;
                            }
                            return 1;
                        }
                        return -1;
                    }
                    return 1;
                }
                return -1;
            }
            return 0;
        }
    }

    public QuickNews(boolean z) {
        String str;
        if (z) {
            str = "EEE, dd MMM yyyy HH:mm:ss";
        } else {
            str = "yyyy.MM.dd HH:mm:ss";
        }
        this.f = str;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, com.mycompany.app.quick.QuickAdapter$QuickItem] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object, com.mycompany.app.quick.QuickAdapter$QuickItem] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object, com.mycompany.app.quick.QuickAdapter$QuickItem] */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Object, com.mycompany.app.quick.QuickAdapter$QuickItem] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Object, com.mycompany.app.quick.QuickAdapter$QuickItem] */
    public static List a(List list) {
        int i = 0;
        if (list != null && !list.isEmpty()) {
            ?? obj = new Object();
            obj.f17362a = 5;
            list.add(0, obj);
            ?? obj2 = new Object();
            obj2.f17362a = 8;
            list.add(obj2);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                QuickAdapter.QuickItem quickItem = (QuickAdapter.QuickItem) it.next();
                if (quickItem != null) {
                    quickItem.o = i;
                    i++;
                }
            }
            return list;
        }
        ArrayList arrayList = new ArrayList();
        ?? obj3 = new Object();
        obj3.f17362a = 5;
        obj3.o = 0;
        arrayList.add(obj3);
        ?? obj4 = new Object();
        obj4.f17362a = 6;
        obj4.o = 1;
        arrayList.add(obj4);
        ?? obj5 = new Object();
        obj5.f17362a = 8;
        obj4.o = 2;
        arrayList.add(obj5);
        return arrayList;
    }

    public void b(Context context, Handler handler, String str, NewsListListener newsListListener) {
        this.f17409a = context;
        this.b = newsListListener;
        this.f17410c = handler;
        this.d = str;
    }

    public void c() {
        this.f17409a = null;
        this.b = null;
        this.f17410c = null;
        this.d = null;
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = null;
    }

    public final void d(Runnable runnable) {
        ExecutorService executorService = this.e;
        if (executorService == null || executorService.isShutdown() || executorService.isTerminated()) {
            executorService = MainApp.i(this.f17409a);
            if (executorService == null) {
                return;
            } else {
                this.e = executorService;
            }
        }
        try {
            executorService.execute(runnable);
        } catch (Exception unused) {
        }
    }
}
