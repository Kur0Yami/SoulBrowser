package com.mycompany.app.list;

import android.content.Context;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainListAdapter;
import com.mycompany.app.main.MainListAdapter2;
import java.util.List;

/* loaded from: classes3.dex */
public class ListTask {

    /* loaded from: classes3.dex */
    public static class ListTaskConfig {

        /* renamed from: a, reason: collision with root package name */
        public int f16238a;
        public boolean b;

        /* renamed from: c, reason: collision with root package name */
        public List f16239c;
        public List d;
        public boolean[] e;
        public int[] f;
        public boolean[] g;
        public int h;
        public int i;
        public int j;
        public int k;
        public List l;
        public int m;
        public MainItem.ChildItem n;
        public boolean o;
        public boolean p;
        public String q;
        public boolean r;
        public int s;
        public int t;
        public String u;
    }

    /* loaded from: classes3.dex */
    public interface ListTaskListener {
        void a();

        void b();

        void c();

        MainListAdapter d();

        MainListAdapter2 e();

        void f();

        void g(ListTaskConfig listTaskConfig);
    }

    /* loaded from: classes3.dex */
    public static class ListTaskSimpleListener implements ListTaskListener {
        @Override // com.mycompany.app.list.ListTask.ListTaskListener
        public void a() {
        }

        @Override // com.mycompany.app.list.ListTask.ListTaskListener
        public final void b() {
        }

        @Override // com.mycompany.app.list.ListTask.ListTaskListener
        public final void c() {
        }

        @Override // com.mycompany.app.list.ListTask.ListTaskListener
        public final MainListAdapter d() {
            return null;
        }

        @Override // com.mycompany.app.list.ListTask.ListTaskListener
        public final MainListAdapter2 e() {
            return null;
        }

        @Override // com.mycompany.app.list.ListTask.ListTaskListener
        public final void f() {
        }

        @Override // com.mycompany.app.list.ListTask.ListTaskListener
        public void g(ListTaskConfig listTaskConfig) {
        }
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [com.mycompany.app.list.ListTask, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v1, types: [com.mycompany.app.list.book.ListBookTab, com.mycompany.app.list.ListTask, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v10, types: [com.mycompany.app.list.ListTask, java.lang.Object, com.mycompany.app.list.book.ListBookScript] */
    /* JADX WARN: Type inference failed for: r3v11, types: [com.mycompany.app.list.book.ListBookUser, com.mycompany.app.list.ListTask, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v12, types: [com.mycompany.app.list.book.ListBookFilter, com.mycompany.app.list.ListTask, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v13, types: [com.mycompany.app.list.book.ListBookDc, com.mycompany.app.list.ListTask, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v14, types: [com.mycompany.app.list.book.ListBookBlock, com.mycompany.app.list.ListTask, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v15, types: [com.mycompany.app.list.ListTask, java.lang.Object, com.mycompany.app.list.book.ListBookLink] */
    /* JADX WARN: Type inference failed for: r3v16, types: [com.mycompany.app.list.ListTask, java.lang.Object, com.mycompany.app.list.book.ListBookPop] */
    /* JADX WARN: Type inference failed for: r3v17, types: [com.mycompany.app.list.book.ListBookOver, com.mycompany.app.list.ListTask, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v18, types: [com.mycompany.app.list.ListTask, java.lang.Object, com.mycompany.app.list.book.ListBookAds] */
    /* JADX WARN: Type inference failed for: r3v19, types: [com.mycompany.app.list.ListTask, java.lang.Object, com.mycompany.app.list.book.ListBookHistory] */
    /* JADX WARN: Type inference failed for: r3v2, types: [com.mycompany.app.list.book.ListBookMemo, com.mycompany.app.list.ListTask, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v20, types: [com.mycompany.app.list.book.ListBookWeb, com.mycompany.app.list.ListTask, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v21, types: [com.mycompany.app.list.book.ListBookCmp, com.mycompany.app.list.ListTask, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v22, types: [com.mycompany.app.list.ListTask, java.lang.Object, com.mycompany.app.list.book.ListBookPdf] */
    /* JADX WARN: Type inference failed for: r3v23, types: [com.mycompany.app.list.book.ListBookAlbum, com.mycompany.app.list.ListTask, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v24, types: [com.mycompany.app.list.ListTaskCast, com.mycompany.app.list.ListTask, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v3, types: [com.mycompany.app.list.book.ListBookAgent, com.mycompany.app.list.ListTask, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v4, types: [com.mycompany.app.list.ListTask, java.lang.Object, com.mycompany.app.list.book.ListBookSearch] */
    /* JADX WARN: Type inference failed for: r3v5, types: [com.mycompany.app.list.book.ListBookDown, com.mycompany.app.list.ListTask, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v6, types: [com.mycompany.app.list.book.ListBookPms, com.mycompany.app.list.ListTask, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v7, types: [com.mycompany.app.list.ListTask, java.lang.Object, com.mycompany.app.list.book.ListBookTrans] */
    /* JADX WARN: Type inference failed for: r3v8, types: [com.mycompany.app.list.book.ListBookTmem, com.mycompany.app.list.ListTask, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v9, types: [com.mycompany.app.list.book.ListBookJava, com.mycompany.app.list.ListTask, java.lang.Object] */
    public static ListTask c(Context context, int i, ListTaskListener listTaskListener) {
        if (i == 1) {
            return new ListTaskAlbum(context, listTaskListener);
        }
        if (i == 2) {
            return new ListTaskPdf(context, listTaskListener);
        }
        if (i == 3) {
            return new ListTaskCmp(context, listTaskListener);
        }
        if (i == 13) {
            ?? obj = new Object();
            obj.f16243a = context;
            obj.b = listTaskListener;
            return obj;
        }
        if (i == 14) {
            ?? obj2 = new Object();
            obj2.f16255a = context;
            obj2.b = listTaskListener;
            return obj2;
        }
        if (i == 15) {
            ?? obj3 = new Object();
            obj3.f16277a = context;
            obj3.b = listTaskListener;
            return obj3;
        }
        if (i == 16) {
            ?? obj4 = new Object();
            obj4.f16259a = context;
            obj4.b = listTaskListener;
            return obj4;
        }
        if (i == 17) {
            ?? obj5 = new Object();
            obj5.f16295a = context;
            obj5.f16296c = listTaskListener;
            return obj5;
        }
        if (i == 18) {
            ?? obj6 = new Object();
            obj6.f16267a = context;
            obj6.b = listTaskListener;
            return obj6;
        }
        if (i == 19) {
            ?? obj7 = new Object();
            obj7.f16251a = context;
            obj7.b = listTaskListener;
            return obj7;
        }
        if (i == 20) {
            ?? obj8 = new Object();
            obj8.f16275a = context;
            obj8.b = listTaskListener;
            return obj8;
        }
        if (i == 21) {
            ?? obj9 = new Object();
            obj9.f16281a = context;
            obj9.b = listTaskListener;
            return obj9;
        }
        if (i == 22) {
            ?? obj10 = new Object();
            obj10.f16271a = context;
            obj10.b = listTaskListener;
            return obj10;
        }
        if (i == 23) {
            ?? obj11 = new Object();
            obj11.f16257a = context;
            obj11.b = listTaskListener;
            return obj11;
        }
        if (i == 24) {
            ?? obj12 = new Object();
            obj12.f16261a = context;
            obj12.b = listTaskListener;
            return obj12;
        }
        if (i == 25) {
            ?? obj13 = new Object();
            obj13.f16265a = context;
            obj13.b = listTaskListener;
            return obj13;
        }
        if (i == 26) {
            ?? obj14 = new Object();
            obj14.f16293a = context;
            obj14.b = listTaskListener;
            return obj14;
        }
        if (i == 27) {
            ?? obj15 = new Object();
            obj15.f16283a = context;
            obj15.b = listTaskListener;
            return obj15;
        }
        if (i == 28) {
            ?? obj16 = new Object();
            obj16.f16269a = context;
            obj16.b = listTaskListener;
            return obj16;
        }
        if (i == 29) {
            ?? obj17 = new Object();
            obj17.f16289a = context;
            obj17.b = listTaskListener;
            return obj17;
        }
        if (i == 30) {
            ?? obj18 = new Object();
            obj18.f16291a = context;
            obj18.b = listTaskListener;
            return obj18;
        }
        if (i == 31) {
            ?? obj19 = new Object();
            obj19.f16279a = context;
            obj19.b = listTaskListener;
            return obj19;
        }
        if (i == 32) {
            ?? obj20 = new Object();
            obj20.f16263a = context;
            obj20.b = listTaskListener;
            return obj20;
        }
        if (i == 35) {
            ?? obj21 = new Object();
            obj21.f16285a = context;
            obj21.b = listTaskListener;
            return obj21;
        }
        if (i == 36) {
            ?? obj22 = new Object();
            obj22.f16253a = context;
            obj22.b = listTaskListener;
            return obj22;
        }
        if (i == 37) {
            ?? obj23 = new Object();
            obj23.f16273a = context;
            obj23.b = listTaskListener;
            return obj23;
        }
        if (i == 42) {
            ?? obj24 = new Object();
            obj24.f16287a = context;
            obj24.b = listTaskListener;
            obj24.d = true;
            return obj24;
        }
        return new Object();
    }

    public void a() {
    }

    public String b() {
        return null;
    }

    public boolean d() {
        return this instanceof ListTaskAlbum;
    }

    public boolean e() {
        return this instanceof ListTaskAlbum;
    }

    public boolean f() {
        return false;
    }

    public void g(boolean z) {
    }

    public void i(boolean z, boolean z2, boolean z3) {
    }

    public void j(String str) {
    }

    public void m(boolean z, String str, List list, List list2) {
    }

    public void n() {
    }

    public void o() {
    }

    public void h(List list, boolean z) {
    }

    public void k(long j, boolean z) {
    }

    public void l(String str, boolean z, boolean z2) {
    }
}
