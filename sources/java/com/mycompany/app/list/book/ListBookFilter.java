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
public class ListBookFilter extends com.mycompany.app.list.ListTask {

    /* renamed from: a, reason: collision with root package name */
    public Context f16265a;
    public ListTask.ListTaskListener b;

    /* renamed from: c, reason: collision with root package name */
    public ListTask f16266c;
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

        public ListTask(ListBookFilter listBookFilter, long j, String str) {
            WeakReference weakReference = new WeakReference(listBookFilter);
            this.e = weakReference;
            ListBookFilter listBookFilter2 = (ListBookFilter) weakReference.get();
            if (listBookFilter2 != null) {
                this.g = j;
                this.h = str;
                this.v = listBookFilter2.d;
                this.w = listBookFilter2.e;
                ListTask.ListTaskListener listTaskListener = listBookFilter2.b;
                if (listTaskListener != null) {
                    listTaskListener.f();
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:103:0x014f A[Catch: Exception -> 0x01ed, TryCatch #0 {Exception -> 0x01ed, blocks: (B:55:0x00df, B:57:0x00e5, B:58:0x0103, B:61:0x01de, B:63:0x01e2, B:68:0x010f, B:71:0x012c, B:73:0x013b, B:75:0x013f, B:79:0x0149, B:82:0x0162, B:84:0x016c, B:85:0x01c2, B:87:0x01c6, B:89:0x01d0, B:90:0x01d6, B:91:0x0175, B:93:0x017b, B:95:0x018d, B:96:0x0196, B:97:0x019d, B:103:0x014f, B:106:0x0155, B:109:0x015b), top: B:54:0x00df }] */
        /* JADX WARN: Removed duplicated region for block: B:13:0x0054  */
        /* JADX WARN: Removed duplicated region for block: B:207:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:209:0x005f  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0074  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0082  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x0079  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x00c1  */
        /* JADX WARN: Removed duplicated region for block: B:81:0x014d  */
        /* JADX WARN: Removed duplicated region for block: B:84:0x016c A[Catch: Exception -> 0x01ed, TryCatch #0 {Exception -> 0x01ed, blocks: (B:55:0x00df, B:57:0x00e5, B:58:0x0103, B:61:0x01de, B:63:0x01e2, B:68:0x010f, B:71:0x012c, B:73:0x013b, B:75:0x013f, B:79:0x0149, B:82:0x0162, B:84:0x016c, B:85:0x01c2, B:87:0x01c6, B:89:0x01d0, B:90:0x01d6, B:91:0x0175, B:93:0x017b, B:95:0x018d, B:96:0x0196, B:97:0x019d, B:103:0x014f, B:106:0x0155, B:109:0x015b), top: B:54:0x00df }] */
        /* JADX WARN: Removed duplicated region for block: B:91:0x0175 A[Catch: Exception -> 0x01ed, TryCatch #0 {Exception -> 0x01ed, blocks: (B:55:0x00df, B:57:0x00e5, B:58:0x0103, B:61:0x01de, B:63:0x01e2, B:68:0x010f, B:71:0x012c, B:73:0x013b, B:75:0x013f, B:79:0x0149, B:82:0x0162, B:84:0x016c, B:85:0x01c2, B:87:0x01c6, B:89:0x01d0, B:90:0x01d6, B:91:0x0175, B:93:0x017b, B:95:0x018d, B:96:0x0196, B:97:0x019d, B:103:0x014f, B:106:0x0155, B:109:0x015b), top: B:54:0x00df }] */
        /* JADX WARN: Type inference failed for: r13v2, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v6, types: [com.mycompany.app.main.MainItem$GroupItem, java.lang.Object] */
        @Override // com.mycompany.app.async.MyAsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                Method dump skipped, instructions count: 881
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.list.book.ListBookFilter.ListTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            ListBookFilter listBookFilter;
            ListTask.ListTaskListener listTaskListener;
            WeakReference weakReference = this.e;
            if (weakReference == null || (listBookFilter = (ListBookFilter) weakReference.get()) == null) {
                return;
            }
            listBookFilter.f16266c = null;
            if (this.f && (listTaskListener = listBookFilter.b) != null) {
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
            ListBookFilter listBookFilter;
            WeakReference weakReference = this.e;
            if (weakReference != null && (listBookFilter = (ListBookFilter) weakReference.get()) != null) {
                listBookFilter.f16266c = null;
                if (this.f12839c) {
                    return;
                }
                ListTask.ListTaskListener listTaskListener = listBookFilter.b;
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
        int i = PrefList.u0;
        if ((i == 0 || i == 1) && !TextUtils.isEmpty(childItem.h)) {
            childItem.n = childItem.h.toLowerCase(Locale.US);
        }
    }

    @Override // com.mycompany.app.list.ListTask
    public final void a() {
        ListTask listTask = this.f16266c;
        if (listTask != null) {
            listTask.f12839c = true;
        }
        this.f16266c = null;
    }

    @Override // com.mycompany.app.list.ListTask
    public final void i(boolean z, boolean z2, boolean z3) {
        a();
        ListTask listTask = new ListTask(this, -1L, null);
        this.f16266c = listTask;
        listTask.b(this.f16265a);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void j(String str) {
        a();
        this.d = true;
        this.e = str;
        ListTask listTask = new ListTask(this, -1L, null);
        this.f16266c = listTask;
        listTask.b(this.f16265a);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void k(long j, boolean z) {
        a();
        ListTask listTask = new ListTask(this, j, null);
        this.f16266c = listTask;
        listTask.b(this.f16265a);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void l(String str, boolean z, boolean z2) {
        a();
        ListTask listTask = new ListTask(this, -1L, str);
        this.f16266c = listTask;
        listTask.b(this.f16265a);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void n() {
        this.d = false;
        this.e = null;
    }
}
