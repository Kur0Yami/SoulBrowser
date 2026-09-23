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
public class ListBookScript extends com.mycompany.app.list.ListTask {

    /* renamed from: a, reason: collision with root package name */
    public Context f16283a;
    public ListTask.ListTaskListener b;

    /* renamed from: c, reason: collision with root package name */
    public ListTask f16284c;
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

        public ListTask(ListBookScript listBookScript, long j, String str) {
            WeakReference weakReference = new WeakReference(listBookScript);
            this.e = weakReference;
            ListBookScript listBookScript2 = (ListBookScript) weakReference.get();
            if (listBookScript2 != null) {
                this.g = j;
                this.h = str;
                this.v = listBookScript2.d;
                this.w = listBookScript2.e;
                ListTask.ListTaskListener listTaskListener = listBookScript2.b;
                if (listTaskListener != null) {
                    listTaskListener.f();
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:128:0x0429  */
        /* JADX WARN: Removed duplicated region for block: B:131:0x0437  */
        /* JADX WARN: Removed duplicated region for block: B:135:0x0456  */
        /* JADX WARN: Removed duplicated region for block: B:143:0x042b  */
        /* JADX WARN: Removed duplicated region for block: B:144:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:16:0x0054  */
        /* JADX WARN: Removed duplicated region for block: B:173:0x02c0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:179:0x02ef A[EDGE_INSN: B:179:0x02ef->B:52:0x02ef BREAK  A[LOOP:4: B:167:0x01af->B:176:0x02c7], SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:181:0x01cd A[Catch: Exception -> 0x0197, TryCatch #5 {Exception -> 0x0197, blocks: (B:162:0x0168, B:164:0x0178, B:167:0x01af, B:181:0x01cd, B:184:0x01d8, B:187:0x01e5, B:190:0x0201, B:192:0x020d, B:193:0x0228, B:197:0x0248, B:199:0x0274, B:201:0x027a, B:204:0x028a), top: B:161:0x0168 }] */
        /* JADX WARN: Removed duplicated region for block: B:236:0x005f  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0074  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0082  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x0079  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x00c1  */
        /* JADX WARN: Removed duplicated region for block: B:53:0x02f1  */
        /* JADX WARN: Removed duplicated region for block: B:58:0x0311  */
        /* JADX WARN: Removed duplicated region for block: B:62:0x0327  */
        /* JADX WARN: Removed duplicated region for block: B:80:0x035e  */
        /* JADX WARN: Type inference failed for: r0v5, types: [com.mycompany.app.main.MainItem$GroupItem, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r10v4, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
        @Override // com.mycompany.app.async.MyAsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                Method dump skipped, instructions count: 1151
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.list.book.ListBookScript.ListTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            ListBookScript listBookScript;
            ListTask.ListTaskListener listTaskListener;
            WeakReference weakReference = this.e;
            if (weakReference == null || (listBookScript = (ListBookScript) weakReference.get()) == null) {
                return;
            }
            listBookScript.f16284c = null;
            if (this.f && (listTaskListener = listBookScript.b) != null) {
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
            ListBookScript listBookScript;
            WeakReference weakReference = this.e;
            if (weakReference != null && (listBookScript = (ListBookScript) weakReference.get()) != null) {
                listBookScript.f16284c = null;
                if (this.f12839c) {
                    return;
                }
                ListTask.ListTaskListener listTaskListener = listBookScript.b;
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

    public static void p(MainItem.ChildItem childItem) {
        if (PrefList.D0 == 0 && !TextUtils.isEmpty(childItem.h)) {
            childItem.n = childItem.h.toLowerCase(Locale.US);
        }
    }

    @Override // com.mycompany.app.list.ListTask
    public final void a() {
        ListTask listTask = this.f16284c;
        if (listTask != null) {
            listTask.f12839c = true;
        }
        this.f16284c = null;
    }

    @Override // com.mycompany.app.list.ListTask
    public final void i(boolean z, boolean z2, boolean z3) {
        a();
        ListTask listTask = new ListTask(this, -1L, null);
        this.f16284c = listTask;
        listTask.b(this.f16283a);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void j(String str) {
        a();
        this.d = true;
        this.e = str;
        ListTask listTask = new ListTask(this, -1L, null);
        this.f16284c = listTask;
        listTask.b(this.f16283a);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void k(long j, boolean z) {
        a();
        ListTask listTask = new ListTask(this, j, null);
        this.f16284c = listTask;
        listTask.b(this.f16283a);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void l(String str, boolean z, boolean z2) {
        a();
        ListTask listTask = new ListTask(this, -1L, str);
        this.f16284c = listTask;
        listTask.b(this.f16283a);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void n() {
        this.d = false;
        this.e = null;
    }
}
