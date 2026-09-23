package com.mycompany.app.list.book;

import android.content.Context;
import android.text.TextUtils;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.list.ListTask;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.pref.PrefList;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Locale;

/* loaded from: classes3.dex */
public class ListBookWeb extends com.mycompany.app.list.ListTask {

    /* renamed from: a, reason: collision with root package name */
    public Context f16295a;
    public String b;

    /* renamed from: c, reason: collision with root package name */
    public ListTask.ListTaskListener f16296c;
    public ListTask d;
    public String e;
    public List f;
    public boolean g;
    public String h;

    /* loaded from: classes3.dex */
    public static class ListTask extends MyAsyncTask {
        public final WeakReference e;
        public boolean f;
        public boolean g;
        public final boolean h;
        public String i;
        public List j;
        public List k;
        public boolean[] l;
        public int m;
        public int n;
        public int o;
        public boolean q;
        public List r;
        public final boolean u;
        public final String v;
        public int p = -1;
        public int s = -1;
        public int t = -1;

        public ListTask(ListBookWeb listBookWeb, boolean z, String str, List list, List list2) {
            WeakReference weakReference = new WeakReference(listBookWeb);
            this.e = weakReference;
            ListBookWeb listBookWeb2 = (ListBookWeb) weakReference.get();
            if (listBookWeb2 != null) {
                this.h = z;
                this.i = str;
                this.j = list;
                this.r = list2;
                this.u = listBookWeb2.g;
                this.v = listBookWeb2.h;
                ListTask.ListTaskListener listTaskListener = listBookWeb2.f16296c;
                if (listTaskListener != null) {
                    listTaskListener.f();
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:251:0x044e, code lost:
        
            if (r0.f12839c != false) goto L227;
         */
        /* JADX WARN: Removed duplicated region for block: B:173:0x04e6  */
        /* JADX WARN: Removed duplicated region for block: B:247:0x0445  */
        /* JADX WARN: Removed duplicated region for block: B:250:0x044c  */
        /* JADX WARN: Removed duplicated region for block: B:256:0x045c  */
        /* JADX WARN: Removed duplicated region for block: B:257:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r14v9, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r15v11, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v43, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v65, types: [java.lang.Object, java.util.Comparator] */
        /* JADX WARN: Type inference failed for: r6v43, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
        @Override // com.mycompany.app.async.MyAsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                Method dump skipped, instructions count: 1373
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.list.book.ListBookWeb.ListTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            ListBookWeb listBookWeb;
            ListTask.ListTaskListener listTaskListener;
            WeakReference weakReference = this.e;
            if (weakReference == null || (listBookWeb = (ListBookWeb) weakReference.get()) == null) {
                return;
            }
            listBookWeb.d = null;
            if (this.f && (listTaskListener = listBookWeb.f16296c) != null) {
                listTaskListener.a();
            }
            this.i = null;
            this.j = null;
            this.k = null;
            this.l = null;
            this.r = null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v1, types: [com.mycompany.app.list.ListTask$ListTaskConfig, java.lang.Object] */
        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            ListBookWeb listBookWeb;
            WeakReference weakReference = this.e;
            if (weakReference != null && (listBookWeb = (ListBookWeb) weakReference.get()) != null) {
                listBookWeb.d = null;
                if (this.f12839c) {
                    return;
                }
                ListTask.ListTaskListener listTaskListener = listBookWeb.f16296c;
                if (listTaskListener != 0) {
                    ?? obj = new Object();
                    obj.d = this.k;
                    obj.g = this.l;
                    obj.h = this.m;
                    obj.i = this.n;
                    obj.j = this.o;
                    obj.k = this.p;
                    obj.m = this.s;
                    obj.n = null;
                    obj.p = this.q;
                    obj.q = this.i;
                    obj.r = this.g;
                    obj.s = this.t;
                    obj.u = this.v;
                    listTaskListener.g(obj);
                }
                this.i = null;
                this.j = null;
                this.k = null;
                this.l = null;
                this.r = null;
            }
        }
    }

    public static void p(MainItem.ChildItem childItem) {
        if (PrefList.H == 0 && !TextUtils.isEmpty(childItem.h)) {
            childItem.n = childItem.h.toLowerCase(Locale.US);
        }
    }

    @Override // com.mycompany.app.list.ListTask
    public final void a() {
        ListTask listTask = this.d;
        if (listTask != null) {
            listTask.f12839c = true;
        }
        this.d = null;
    }

    @Override // com.mycompany.app.list.ListTask
    public final String b() {
        return this.b;
    }

    @Override // com.mycompany.app.list.ListTask
    public final void i(boolean z, boolean z2, boolean z3) {
        m(true, this.b, null, null);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void j(String str) {
        a();
        this.g = true;
        this.h = str;
        ListTask listTask = new ListTask(this, false, this.b, null, null);
        this.d = listTask;
        listTask.b(this.f16295a);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void k(long j, boolean z) {
        m(z, this.b, null, null);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void l(String str, boolean z, boolean z2) {
        m(z, this.b, null, null);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void m(boolean z, String str, List list, List list2) {
        this.b = str;
        a();
        ListTask listTask = new ListTask(this, z, str, list, list2);
        this.d = listTask;
        listTask.b(this.f16295a);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void n() {
        this.g = false;
        this.h = null;
    }
}
