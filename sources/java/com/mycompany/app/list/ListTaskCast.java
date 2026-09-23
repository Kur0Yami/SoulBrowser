package com.mycompany.app.list;

import android.content.Context;
import android.text.TextUtils;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.list.ListTask;
import com.mycompany.app.main.MainItem;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

/* loaded from: classes3.dex */
public class ListTaskCast extends com.mycompany.app.list.ListTask {

    /* renamed from: a, reason: collision with root package name */
    public Context f16243a;
    public ListTask.ListTaskListener b;

    /* renamed from: c, reason: collision with root package name */
    public ListTask f16244c;
    public boolean d;
    public boolean e;
    public String f;

    /* loaded from: classes3.dex */
    public static class ListTask extends MyAsyncTask {
        public HashMap A;
        public final WeakReference e;
        public boolean f;
        public final boolean g;
        public final boolean h;
        public String i;
        public MainItem.ChildItem j;
        public ArrayList k;
        public ArrayList l;
        public ArrayList m;
        public boolean[] n;
        public int[] o;
        public boolean[] p;
        public int q;
        public boolean r;
        public List s;
        public ArrayList u;
        public final boolean w;
        public final boolean x;
        public final String y;
        public boolean z;
        public int t = -1;
        public int v = -1;

        public ListTask(ListTaskCast listTaskCast, boolean z, boolean z2, String str, List list) {
            WeakReference weakReference = new WeakReference(listTaskCast);
            this.e = weakReference;
            ListTaskCast listTaskCast2 = (ListTaskCast) weakReference.get();
            if (listTaskCast2 != null) {
                this.g = z;
                this.h = z2;
                this.i = str;
                this.s = list;
                this.x = listTaskCast2.e;
                this.y = listTaskCast2.f;
                this.w = listTaskCast2.d;
                listTaskCast2.d = false;
                ListTask.ListTaskListener listTaskListener = listTaskCast2.b;
                if (listTaskListener != null) {
                    listTaskListener.f();
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:95:0x01aa, code lost:
        
            if (r10 != false) goto L108;
         */
        /* JADX WARN: Removed duplicated region for block: B:13:0x005b  */
        /* JADX WARN: Removed duplicated region for block: B:288:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:293:0x0066  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x00eb  */
        /* JADX WARN: Removed duplicated region for block: B:55:0x0105  */
        /* JADX WARN: Type inference failed for: r1v34, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v5, types: [com.mycompany.app.main.MainItem$GroupItem, java.lang.Object] */
        @Override // com.mycompany.app.async.MyAsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                Method dump skipped, instructions count: 1217
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.list.ListTaskCast.ListTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            ListTaskCast listTaskCast;
            ListTask.ListTaskListener listTaskListener;
            WeakReference weakReference = this.e;
            if (weakReference == null || (listTaskCast = (ListTaskCast) weakReference.get()) == null) {
                return;
            }
            listTaskCast.f16244c = null;
            if (this.f && (listTaskListener = listTaskCast.b) != null) {
                listTaskListener.a();
            }
            this.i = null;
            this.j = null;
            this.k = null;
            this.l = null;
            this.m = null;
            this.n = null;
            this.o = null;
            this.p = null;
            this.s = null;
            this.u = null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v1, types: [com.mycompany.app.list.ListTask$ListTaskConfig, java.lang.Object] */
        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            ListTaskCast listTaskCast;
            WeakReference weakReference = this.e;
            if (weakReference != null && (listTaskCast = (ListTaskCast) weakReference.get()) != null) {
                listTaskCast.f16244c = null;
                if (this.f12839c) {
                    return;
                }
                ListTask.ListTaskListener listTaskListener = listTaskCast.b;
                if (listTaskListener != 0) {
                    ?? obj = new Object();
                    obj.f16239c = this.k;
                    obj.d = this.l;
                    obj.e = this.n;
                    obj.f = this.o;
                    obj.g = this.p;
                    obj.h = this.q;
                    obj.k = -1;
                    obj.l = this.u;
                    obj.m = this.v;
                    obj.n = this.j;
                    obj.p = this.r;
                    obj.u = this.y;
                    listTaskListener.g(obj);
                }
                this.i = null;
                this.j = null;
                this.k = null;
                this.l = null;
                this.m = null;
                this.n = null;
                this.o = null;
                this.p = null;
                this.s = null;
                this.u = null;
            }
        }
    }

    public static void p(MainItem.ChildItem childItem) {
        if (childItem != null && !TextUtils.isEmpty(childItem.h)) {
            String lowerCase = childItem.h.toLowerCase(Locale.US);
            int lastIndexOf = lowerCase.lastIndexOf(46);
            if (lastIndexOf != -1) {
                childItem.n = lowerCase.substring(0, lastIndexOf);
                childItem.o = lowerCase.substring(lastIndexOf + 1);
            } else {
                childItem.n = lowerCase;
                childItem.o = null;
            }
        }
    }

    @Override // com.mycompany.app.list.ListTask
    public final void a() {
        ListTask listTask = this.f16244c;
        if (listTask != null) {
            listTask.f12839c = true;
        }
        this.f16244c = null;
    }

    @Override // com.mycompany.app.list.ListTask
    public final void h(List list, boolean z) {
        a();
        ListTask listTask = new ListTask(this, false, z, null, list);
        this.f16244c = listTask;
        listTask.b(this.f16243a);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void i(boolean z, boolean z2, boolean z3) {
        this.d = z3;
        a();
        ListTask listTask = new ListTask(this, true, false, null, null);
        this.f16244c = listTask;
        listTask.b(this.f16243a);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void j(String str) {
        a();
        this.d = true;
        this.e = true;
        this.f = str;
        ListTask listTask = new ListTask(this, false, false, null, null);
        this.f16244c = listTask;
        listTask.b(this.f16243a);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void l(String str, boolean z, boolean z2) {
        a();
        ListTask listTask = new ListTask(this, z, false, str, null);
        this.f16244c = listTask;
        listTask.b(this.f16243a);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void n() {
        this.e = false;
        this.f = null;
    }
}
