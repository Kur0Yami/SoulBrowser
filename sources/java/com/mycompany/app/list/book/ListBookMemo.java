package com.mycompany.app.list.book;

import android.content.Context;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.list.ListTask;
import java.lang.ref.WeakReference;
import java.util.List;

/* loaded from: classes3.dex */
public class ListBookMemo extends com.mycompany.app.list.ListTask {

    /* renamed from: a, reason: collision with root package name */
    public Context f16273a;
    public ListTask.ListTaskListener b;

    /* renamed from: c, reason: collision with root package name */
    public ListTask f16274c;
    public List d;
    public boolean e;
    public String f;

    /* loaded from: classes3.dex */
    public static class ListTask extends MyAsyncTask {
        public final WeakReference e;
        public boolean f;
        public final boolean g;
        public List h;
        public List i;
        public boolean[] j;
        public int k;
        public int l;
        public boolean n;
        public List o;
        public final boolean q;
        public final String r;
        public int m = -1;
        public int p = -1;

        public ListTask(ListBookMemo listBookMemo, boolean z, List list, List list2) {
            WeakReference weakReference = new WeakReference(listBookMemo);
            this.e = weakReference;
            ListBookMemo listBookMemo2 = (ListBookMemo) weakReference.get();
            if (listBookMemo2 != null) {
                this.g = z;
                this.h = list;
                this.o = list2;
                this.q = listBookMemo2.e;
                this.r = listBookMemo2.f;
                ListTask.ListTaskListener listTaskListener = listBookMemo2.b;
                if (listTaskListener != null) {
                    listTaskListener.f();
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:178:0x0262, code lost:
        
            if (r1.f12839c != false) goto L99;
         */
        /* JADX WARN: Code restructure failed: missing block: B:74:0x00c7, code lost:
        
            if (r1.f12839c != false) goto L19;
         */
        /* JADX WARN: Removed duplicated region for block: B:161:0x026c  */
        /* JADX WARN: Removed duplicated region for block: B:162:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:174:0x0259  */
        /* JADX WARN: Removed duplicated region for block: B:177:0x0260  */
        /* JADX WARN: Removed duplicated region for block: B:63:0x00d3  */
        /* JADX WARN: Removed duplicated region for block: B:64:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r14v6, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v10, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v19, types: [java.lang.Object, java.util.Comparator] */
        /* JADX WARN: Type inference failed for: r6v1, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
        @Override // com.mycompany.app.async.MyAsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                Method dump skipped, instructions count: 787
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.list.book.ListBookMemo.ListTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            ListBookMemo listBookMemo;
            ListTask.ListTaskListener listTaskListener;
            WeakReference weakReference = this.e;
            if (weakReference == null || (listBookMemo = (ListBookMemo) weakReference.get()) == null) {
                return;
            }
            listBookMemo.f16274c = null;
            if (this.f && (listTaskListener = listBookMemo.b) != null) {
                listTaskListener.a();
            }
            this.h = null;
            this.i = null;
            this.j = null;
            this.o = null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v1, types: [com.mycompany.app.list.ListTask$ListTaskConfig, java.lang.Object] */
        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            ListBookMemo listBookMemo;
            WeakReference weakReference = this.e;
            if (weakReference != null && (listBookMemo = (ListBookMemo) weakReference.get()) != null) {
                listBookMemo.f16274c = null;
                if (this.f12839c) {
                    return;
                }
                ListTask.ListTaskListener listTaskListener = listBookMemo.b;
                if (listTaskListener != 0) {
                    ?? obj = new Object();
                    obj.d = this.i;
                    obj.g = this.j;
                    obj.h = this.k;
                    obj.i = 0;
                    obj.j = this.l;
                    obj.k = this.m;
                    obj.m = this.p;
                    obj.n = null;
                    obj.p = this.n;
                    obj.u = this.r;
                    listTaskListener.g(obj);
                }
                this.h = null;
                this.i = null;
                this.j = null;
                this.o = null;
            }
        }
    }

    @Override // com.mycompany.app.list.ListTask
    public final void a() {
        ListTask listTask = this.f16274c;
        if (listTask != null) {
            listTask.f12839c = true;
        }
        this.f16274c = null;
    }

    @Override // com.mycompany.app.list.ListTask
    public final void i(boolean z, boolean z2, boolean z3) {
        m(true, null, null, null);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void j(String str) {
        a();
        this.e = true;
        this.f = str;
        ListTask listTask = new ListTask(this, false, null, null);
        this.f16274c = listTask;
        listTask.b(this.f16273a);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void k(long j, boolean z) {
        m(z, null, null, null);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void l(String str, boolean z, boolean z2) {
        m(z, null, null, null);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void m(boolean z, String str, List list, List list2) {
        a();
        ListTask listTask = new ListTask(this, z, list, list2);
        this.f16274c = listTask;
        listTask.b(this.f16273a);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void n() {
        this.e = false;
        this.f = null;
    }
}
