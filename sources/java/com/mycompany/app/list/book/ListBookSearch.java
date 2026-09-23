package com.mycompany.app.list.book;

import android.content.Context;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.list.ListTask;
import com.mycompany.app.main.MainItem;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class ListBookSearch extends com.mycompany.app.list.ListTask {

    /* renamed from: a, reason: collision with root package name */
    public Context f16285a;
    public ListTask.ListTaskListener b;

    /* renamed from: c, reason: collision with root package name */
    public ListTask f16286c;

    /* loaded from: classes3.dex */
    public static class ListTask extends MyAsyncTask {
        public final WeakReference e;
        public boolean f;
        public final long g;
        public String h;
        public MainItem.ChildItem i;
        public boolean j;
        public boolean k;
        public ArrayList l;
        public ArrayList m;
        public ArrayList n;
        public boolean[] o;
        public int[] p;
        public boolean[] q;
        public int r;
        public boolean s;
        public ArrayList u;
        public int t = -1;
        public int v = -1;

        public ListTask(ListBookSearch listBookSearch, long j, String str) {
            WeakReference weakReference = new WeakReference(listBookSearch);
            this.e = weakReference;
            ListBookSearch listBookSearch2 = (ListBookSearch) weakReference.get();
            if (listBookSearch2 != null) {
                this.g = j;
                this.h = str;
                ListTask.ListTaskListener listTaskListener = listBookSearch2.b;
                if (listTaskListener != null) {
                    listTaskListener.f();
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:112:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:25:0x00f7  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0100  */
        /* JADX WARN: Type inference failed for: r14v6, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v6, types: [com.mycompany.app.main.MainItem$GroupItem, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r2v19, types: [com.mycompany.app.web.WebSearch$WebSchItem, java.lang.Object] */
        @Override // com.mycompany.app.async.MyAsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                Method dump skipped, instructions count: 706
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.list.book.ListBookSearch.ListTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            ListBookSearch listBookSearch;
            ListTask.ListTaskListener listTaskListener;
            WeakReference weakReference = this.e;
            if (weakReference == null || (listBookSearch = (ListBookSearch) weakReference.get()) == null) {
                return;
            }
            listBookSearch.f16286c = null;
            if (this.f && (listTaskListener = listBookSearch.b) != null) {
                listTaskListener.a();
            }
            this.h = null;
            this.i = null;
            this.l = null;
            this.m = null;
            this.n = null;
            this.o = null;
            this.p = null;
            this.q = null;
            this.u = null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v1, types: [com.mycompany.app.list.ListTask$ListTaskConfig, java.lang.Object] */
        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            ListBookSearch listBookSearch;
            WeakReference weakReference = this.e;
            if (weakReference != null && (listBookSearch = (ListBookSearch) weakReference.get()) != null) {
                listBookSearch.f16286c = null;
                if (this.f12839c) {
                    return;
                }
                ListTask.ListTaskListener listTaskListener = listBookSearch.b;
                if (listTaskListener != 0) {
                    ?? obj = new Object();
                    obj.f16239c = this.l;
                    obj.d = this.m;
                    obj.e = this.o;
                    obj.f = this.p;
                    obj.g = this.q;
                    obj.h = this.r;
                    obj.k = -1;
                    obj.l = this.u;
                    obj.m = this.v;
                    obj.n = this.i;
                    obj.p = this.s;
                    listTaskListener.g(obj);
                }
                this.h = null;
                this.i = null;
                this.l = null;
                this.m = null;
                this.n = null;
                this.o = null;
                this.p = null;
                this.q = null;
                this.u = null;
            }
        }
    }

    @Override // com.mycompany.app.list.ListTask
    public final void a() {
        ListTask listTask = this.f16286c;
        if (listTask != null) {
            listTask.f12839c = true;
        }
        this.f16286c = null;
    }

    @Override // com.mycompany.app.list.ListTask
    public final void i(boolean z, boolean z2, boolean z3) {
        a();
        ListTask listTask = new ListTask(this, -1L, null);
        this.f16286c = listTask;
        listTask.b(this.f16285a);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void j(String str) {
        a();
        ListTask listTask = new ListTask(this, -1L, null);
        this.f16286c = listTask;
        listTask.b(this.f16285a);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void k(long j, boolean z) {
        a();
        ListTask listTask = new ListTask(this, j, null);
        this.f16286c = listTask;
        listTask.b(this.f16285a);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void l(String str, boolean z, boolean z2) {
        a();
        ListTask listTask = new ListTask(this, -1L, str);
        this.f16286c = listTask;
        listTask.b(this.f16285a);
    }
}
