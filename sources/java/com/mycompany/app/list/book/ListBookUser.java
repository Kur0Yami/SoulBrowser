package com.mycompany.app.list.book;

import android.content.Context;
import android.text.TextUtils;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.list.ListTask;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.pref.PrefList;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Locale;

/* loaded from: classes3.dex */
public class ListBookUser extends com.mycompany.app.list.ListTask {

    /* renamed from: a, reason: collision with root package name */
    public Context f16293a;
    public ListTask.ListTaskListener b;

    /* renamed from: c, reason: collision with root package name */
    public ListTask f16294c;
    public boolean d;
    public String e;

    /* loaded from: classes3.dex */
    public static class ListTask extends MyAsyncTask {
        public final WeakReference e;
        public boolean f;
        public final long g;
        public String h;
        public MainItem.ChildItem i;
        public boolean j;
        public ArrayList k;
        public ArrayList l;
        public ArrayList m;
        public boolean[] n;
        public int[] o;
        public boolean[] p;
        public int q;
        public boolean r;
        public ArrayList t;
        public final boolean v;
        public final String w;
        public int s = -1;
        public int u = -1;

        public ListTask(ListBookUser listBookUser, long j, String str) {
            WeakReference weakReference = new WeakReference(listBookUser);
            this.e = weakReference;
            ListBookUser listBookUser2 = (ListBookUser) weakReference.get();
            if (listBookUser2 != null) {
                this.g = j;
                this.h = str;
                this.v = listBookUser2.d;
                this.w = listBookUser2.e;
                ListTask.ListTaskListener listTaskListener = listBookUser2.b;
                if (listTaskListener != null) {
                    listTaskListener.f();
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0055  */
        /* JADX WARN: Removed duplicated region for block: B:197:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:199:0x0060  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0075  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0083  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x007a  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x00c2  */
        /* JADX WARN: Type inference failed for: r13v5, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v14, types: [com.mycompany.app.main.MainItem$GroupItem, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r2v22, types: [com.mycompany.app.main.MainItem$GroupItem, java.lang.Object] */
        @Override // com.mycompany.app.async.MyAsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                Method dump skipped, instructions count: 839
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.list.book.ListBookUser.ListTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            ListBookUser listBookUser;
            ListTask.ListTaskListener listTaskListener;
            WeakReference weakReference = this.e;
            if (weakReference == null || (listBookUser = (ListBookUser) weakReference.get()) == null) {
                return;
            }
            listBookUser.f16294c = null;
            if (this.f && (listTaskListener = listBookUser.b) != null) {
                listTaskListener.a();
            }
            this.h = null;
            this.i = null;
            this.k = null;
            this.l = null;
            this.m = null;
            this.n = null;
            this.o = null;
            this.p = null;
            this.t = null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v1, types: [com.mycompany.app.list.ListTask$ListTaskConfig, java.lang.Object] */
        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            ListBookUser listBookUser;
            WeakReference weakReference = this.e;
            if (weakReference != null && (listBookUser = (ListBookUser) weakReference.get()) != null) {
                listBookUser.f16294c = null;
                if (this.f12839c) {
                    return;
                }
                ListTask.ListTaskListener listTaskListener = listBookUser.b;
                if (listTaskListener != 0) {
                    ?? obj = new Object();
                    obj.f16239c = this.k;
                    obj.d = this.l;
                    obj.e = this.n;
                    obj.f = this.o;
                    obj.g = this.p;
                    obj.h = this.q;
                    obj.k = -1;
                    obj.l = this.t;
                    obj.m = this.u;
                    obj.n = this.i;
                    obj.p = this.r;
                    obj.u = this.w;
                    listTaskListener.g(obj);
                }
                this.h = null;
                this.i = null;
                this.k = null;
                this.l = null;
                this.m = null;
                this.n = null;
                this.o = null;
                this.p = null;
                this.t = null;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.mycompany.app.main.MainItem$GroupItem, java.lang.Object] */
    public static void p(ListBookUser listBookUser, ArrayList arrayList, String str, int i, int i2, int i3) {
        if (arrayList == null) {
            return;
        }
        ?? obj = new Object();
        obj.d = arrayList.size();
        boolean z = false;
        obj.f16552a = 0;
        obj.b = str;
        obj.f16553c = i;
        obj.e = i3 - i;
        obj.f = i2;
        if (i2 == i) {
            z = true;
        }
        obj.g = z;
        arrayList.add(obj);
    }

    public static void q(MainItem.ChildItem childItem) {
        if (PrefList.W0 == 6) {
            String str = childItem.G;
            childItem.l = str;
            childItem.m = str;
            if (!TextUtils.isEmpty(str)) {
                childItem.m = childItem.m.toLowerCase(Locale.US);
            }
        }
        if (PrefList.X0 == 0 && !TextUtils.isEmpty(childItem.h)) {
            childItem.n = childItem.h.toLowerCase(Locale.US);
        }
    }

    @Override // com.mycompany.app.list.ListTask
    public final void a() {
        ListTask listTask = this.f16294c;
        if (listTask != null) {
            listTask.f12839c = true;
        }
        this.f16294c = null;
    }

    @Override // com.mycompany.app.list.ListTask
    public final boolean d() {
        return true;
    }

    @Override // com.mycompany.app.list.ListTask
    public final void i(boolean z, boolean z2, boolean z3) {
        a();
        ListTask listTask = new ListTask(this, -1L, null);
        this.f16294c = listTask;
        listTask.b(this.f16293a);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void j(String str) {
        a();
        this.d = true;
        this.e = str;
        ListTask listTask = new ListTask(this, -1L, null);
        this.f16294c = listTask;
        listTask.b(this.f16293a);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void k(long j, boolean z) {
        a();
        ListTask listTask = new ListTask(this, j, null);
        this.f16294c = listTask;
        listTask.b(this.f16293a);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void l(String str, boolean z, boolean z2) {
        a();
        ListTask listTask = new ListTask(this, -1L, str);
        this.f16294c = listTask;
        listTask.b(this.f16293a);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void n() {
        this.d = false;
        this.e = null;
    }
}
