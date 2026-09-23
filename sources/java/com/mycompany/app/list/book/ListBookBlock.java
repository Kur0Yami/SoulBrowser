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
public class ListBookBlock extends com.mycompany.app.list.ListTask {

    /* renamed from: a, reason: collision with root package name */
    public Context f16257a;
    public ListTask.ListTaskListener b;

    /* renamed from: c, reason: collision with root package name */
    public ListTask f16258c;
    public boolean d;
    public String e;

    /* loaded from: classes3.dex */
    public static class ListTask extends MyAsyncTask {
        public final WeakReference e;
        public boolean f;
        public final long g;
        public MainItem.ChildItem h;
        public ArrayList i;
        public ArrayList j;
        public ArrayList k;
        public boolean[] l;
        public int[] m;
        public boolean[] n;
        public int o;
        public boolean p;
        public final boolean q;
        public final String r;

        public ListTask(ListBookBlock listBookBlock, long j) {
            WeakReference weakReference = new WeakReference(listBookBlock);
            this.e = weakReference;
            ListBookBlock listBookBlock2 = (ListBookBlock) weakReference.get();
            if (listBookBlock2 != null) {
                this.g = j;
                this.q = listBookBlock2.d;
                this.r = listBookBlock2.e;
                ListTask.ListTaskListener listTaskListener = listBookBlock2.b;
                if (listTaskListener != null) {
                    listTaskListener.f();
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x004b  */
        /* JADX WARN: Removed duplicated region for block: B:186:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:188:0x0056  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x006b  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0079  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x0070  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x00b4  */
        /* JADX WARN: Type inference failed for: r13v8, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v10, types: [com.mycompany.app.main.MainItem$GroupItem, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r7v16, types: [com.mycompany.app.main.MainItem$GroupItem, java.lang.Object] */
        @Override // com.mycompany.app.async.MyAsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                Method dump skipped, instructions count: 774
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.list.book.ListBookBlock.ListTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            ListBookBlock listBookBlock;
            ListTask.ListTaskListener listTaskListener;
            WeakReference weakReference = this.e;
            if (weakReference == null || (listBookBlock = (ListBookBlock) weakReference.get()) == null) {
                return;
            }
            listBookBlock.f16258c = null;
            if (this.f && (listTaskListener = listBookBlock.b) != null) {
                listTaskListener.a();
            }
            this.h = null;
            this.i = null;
            this.j = null;
            this.k = null;
            this.l = null;
            this.m = null;
            this.n = null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v1, types: [com.mycompany.app.list.ListTask$ListTaskConfig, java.lang.Object] */
        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            ListBookBlock listBookBlock;
            WeakReference weakReference = this.e;
            if (weakReference != null && (listBookBlock = (ListBookBlock) weakReference.get()) != null) {
                listBookBlock.f16258c = null;
                if (this.f12839c) {
                    return;
                }
                ListTask.ListTaskListener listTaskListener = listBookBlock.b;
                if (listTaskListener != 0) {
                    ?? obj = new Object();
                    obj.f16239c = this.i;
                    obj.d = this.j;
                    obj.e = this.l;
                    obj.f = this.m;
                    obj.g = this.n;
                    obj.h = this.o;
                    obj.k = -1;
                    obj.m = -1;
                    obj.n = this.h;
                    obj.p = this.p;
                    obj.u = this.r;
                    listTaskListener.g(obj);
                }
                this.h = null;
                this.i = null;
                this.j = null;
                this.k = null;
                this.l = null;
                this.m = null;
                this.n = null;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.mycompany.app.main.MainItem$GroupItem, java.lang.Object] */
    public static void p(ListBookBlock listBookBlock, ArrayList arrayList, String str, int i, int i2, int i3) {
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
        if (childItem == null) {
            return;
        }
        if (PrefList.k0 == 6) {
            String str = childItem.G;
            childItem.l = str;
            childItem.m = str;
            if (!TextUtils.isEmpty(str)) {
                childItem.m = childItem.m.toLowerCase(Locale.US);
            }
        }
        if (PrefList.l0 == 0 && !TextUtils.isEmpty(childItem.h)) {
            childItem.n = childItem.h.toLowerCase(Locale.US);
        }
    }

    @Override // com.mycompany.app.list.ListTask
    public final void a() {
        ListTask listTask = this.f16258c;
        if (listTask != null) {
            listTask.f12839c = true;
        }
        this.f16258c = null;
    }

    @Override // com.mycompany.app.list.ListTask
    public final boolean d() {
        return true;
    }

    @Override // com.mycompany.app.list.ListTask
    public final void i(boolean z, boolean z2, boolean z3) {
        a();
        ListTask listTask = new ListTask(this, -1L);
        this.f16258c = listTask;
        listTask.b(this.f16257a);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void j(String str) {
        a();
        this.d = true;
        this.e = str;
        ListTask listTask = new ListTask(this, -1L);
        this.f16258c = listTask;
        listTask.b(this.f16257a);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void k(long j, boolean z) {
        a();
        ListTask listTask = new ListTask(this, j);
        this.f16258c = listTask;
        listTask.b(this.f16257a);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void l(String str, boolean z, boolean z2) {
        a();
        ListTask listTask = new ListTask(this, -1L);
        this.f16258c = listTask;
        listTask.b(this.f16257a);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void n() {
        this.d = false;
        this.e = null;
    }
}
