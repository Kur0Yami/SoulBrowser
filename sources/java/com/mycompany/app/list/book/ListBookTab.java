package com.mycompany.app.list.book;

import android.content.Context;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.list.ListTask;
import com.mycompany.app.main.MainItem;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class ListBookTab extends com.mycompany.app.list.ListTask {

    /* renamed from: a, reason: collision with root package name */
    public Context f16287a;
    public ListTask.ListTaskListener b;

    /* renamed from: c, reason: collision with root package name */
    public ListTask f16288c;
    public boolean d;
    public boolean e;
    public String f;

    /* loaded from: classes3.dex */
    public static class ListTask extends MyAsyncTask {
        public final WeakReference e;
        public boolean f;
        public MainItem.ChildItem g;
        public ArrayList h;
        public ArrayList i;
        public ArrayList j;
        public final boolean k;
        public final boolean l;
        public final String m;

        public ListTask(ListBookTab listBookTab) {
            WeakReference weakReference = new WeakReference(listBookTab);
            this.e = weakReference;
            ListBookTab listBookTab2 = (ListBookTab) weakReference.get();
            if (listBookTab2 != null) {
                this.k = listBookTab2.d;
                listBookTab2.d = false;
                this.l = listBookTab2.e;
                this.m = listBookTab2.f;
                ListTask.ListTaskListener listTaskListener = listBookTab2.b;
                if (listTaskListener != null) {
                    listTaskListener.f();
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x00dd  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x00e6  */
        /* JADX WARN: Removed duplicated region for block: B:95:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r14v1, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v4, types: [com.mycompany.app.main.MainItem$GroupItem, java.lang.Object] */
        @Override // com.mycompany.app.async.MyAsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                Method dump skipped, instructions count: 546
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.list.book.ListBookTab.ListTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            ListBookTab listBookTab;
            ListTask.ListTaskListener listTaskListener;
            WeakReference weakReference = this.e;
            if (weakReference == null || (listBookTab = (ListBookTab) weakReference.get()) == null) {
                return;
            }
            listBookTab.f16288c = null;
            if (this.f && (listTaskListener = listBookTab.b) != null) {
                listTaskListener.a();
            }
            this.g = null;
            this.h = null;
            this.i = null;
            this.j = null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v1, types: [com.mycompany.app.list.ListTask$ListTaskConfig, java.lang.Object] */
        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            ListBookTab listBookTab;
            WeakReference weakReference = this.e;
            if (weakReference != null && (listBookTab = (ListBookTab) weakReference.get()) != null) {
                listBookTab.f16288c = null;
                if (this.f12839c) {
                    return;
                }
                ListTask.ListTaskListener listTaskListener = listBookTab.b;
                if (listTaskListener != 0) {
                    ?? obj = new Object();
                    obj.f16239c = this.h;
                    obj.d = this.i;
                    obj.e = null;
                    obj.f = null;
                    obj.g = null;
                    obj.h = 0;
                    obj.k = -1;
                    obj.l = null;
                    obj.m = -1;
                    obj.n = this.g;
                    obj.p = false;
                    obj.u = this.m;
                    listTaskListener.g(obj);
                }
                this.g = null;
                this.h = null;
                this.i = null;
                this.j = null;
            }
        }
    }

    public static MainItem.ChildItem p(ArrayList arrayList, long j) {
        if (!arrayList.isEmpty()) {
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                MainItem.ChildItem childItem = (MainItem.ChildItem) obj;
                if (childItem != null && childItem.D == j) {
                    return childItem;
                }
            }
            return null;
        }
        return null;
    }

    @Override // com.mycompany.app.list.ListTask
    public final void a() {
        ListTask listTask = this.f16288c;
        if (listTask != null) {
            listTask.f12839c = true;
        }
        this.f16288c = null;
    }

    @Override // com.mycompany.app.list.ListTask
    public final boolean d() {
        return true;
    }

    @Override // com.mycompany.app.list.ListTask
    public final void i(boolean z, boolean z2, boolean z3) {
        a();
        ListTask listTask = new ListTask(this);
        this.f16288c = listTask;
        listTask.b(this.f16287a);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void j(String str) {
        a();
        this.f = str;
        ListTask listTask = new ListTask(this);
        this.f16288c = listTask;
        listTask.b(this.f16287a);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void k(long j, boolean z) {
        a();
        ListTask listTask = new ListTask(this);
        this.f16288c = listTask;
        listTask.b(this.f16287a);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void l(String str, boolean z, boolean z2) {
        a();
        ListTask listTask = new ListTask(this);
        this.f16288c = listTask;
        listTask.b(this.f16287a);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void n() {
        this.f = null;
    }

    @Override // com.mycompany.app.list.ListTask
    public final void o() {
        this.e = true;
    }
}
