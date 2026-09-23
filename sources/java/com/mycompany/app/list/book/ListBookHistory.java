package com.mycompany.app.list.book;

import android.content.Context;
import android.text.TextUtils;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.list.ListTask;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefList;
import com.mycompany.app.pref.PrefSecret;
import com.mycompany.app.pref.PrefSync;
import com.mycompany.app.pref.PrefWeb;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Locale;

/* loaded from: classes3.dex */
public class ListBookHistory extends com.mycompany.app.list.ListTask {

    /* renamed from: a, reason: collision with root package name */
    public Context f16267a;
    public ListTask.ListTaskListener b;

    /* renamed from: c, reason: collision with root package name */
    public ListTask f16268c;
    public boolean d;
    public String e;
    public String f;

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

        public ListTask(ListBookHistory listBookHistory, long j) {
            WeakReference weakReference = new WeakReference(listBookHistory);
            this.e = weakReference;
            ListBookHistory listBookHistory2 = (ListBookHistory) weakReference.get();
            if (listBookHistory2 != null) {
                this.g = j;
                this.q = listBookHistory2.d;
                this.r = listBookHistory2.e;
                ListTask.ListTaskListener listTaskListener = listBookHistory2.b;
                if (listTaskListener != null) {
                    listTaskListener.f();
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:102:0x01a8 A[Catch: Exception -> 0x0217, TryCatch #1 {Exception -> 0x0217, blocks: (B:83:0x014d, B:85:0x0153, B:86:0x016b, B:89:0x020b, B:91:0x020f, B:96:0x0178, B:100:0x01a2, B:102:0x01a8, B:104:0x01b0, B:106:0x01b9, B:108:0x01eb, B:110:0x01f3, B:111:0x0201, B:112:0x01f8, B:113:0x01fd, B:115:0x0189, B:118:0x0191, B:121:0x019d), top: B:82:0x014d }] */
        /* JADX WARN: Removed duplicated region for block: B:242:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:61:0x0112  */
        /* JADX WARN: Type inference failed for: r11v20, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v14, types: [com.mycompany.app.main.MainItem$GroupItem, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v25, types: [com.mycompany.app.main.MainItem$GroupItem, java.lang.Object] */
        @Override // com.mycompany.app.async.MyAsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                Method dump skipped, instructions count: 996
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.list.book.ListBookHistory.ListTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            ListBookHistory listBookHistory;
            ListTask.ListTaskListener listTaskListener;
            WeakReference weakReference = this.e;
            if (weakReference == null || (listBookHistory = (ListBookHistory) weakReference.get()) == null) {
                return;
            }
            listBookHistory.f16268c = null;
            if (this.f && (listTaskListener = listBookHistory.b) != null) {
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
            ListBookHistory listBookHistory;
            WeakReference weakReference = this.e;
            if (weakReference != null && (listBookHistory = (ListBookHistory) weakReference.get()) != null) {
                listBookHistory.f16268c = null;
                if (this.f12839c) {
                    return;
                }
                ListTask.ListTaskListener listTaskListener = listBookHistory.b;
                if (listTaskListener != 0) {
                    ?? obj = new Object();
                    if (PrefWeb.n != 0 && (!PrefSync.k || PrefSecret.l != 0)) {
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
                    }
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
    public static void p(ListBookHistory listBookHistory, ArrayList arrayList, String str, int i, int i2, int i3) {
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

    public static void q(MainItem.ChildItem childItem, String str) {
        int i = PrefList.L;
        if (i == 6) {
            String str2 = childItem.G;
            childItem.l = str2;
            childItem.m = str2;
            if (!TextUtils.isEmpty(str2)) {
                childItem.m = childItem.m.toLowerCase(Locale.US);
            }
        } else if (i == 5) {
            String y1 = MainUtil.y1(childItem.A, str, "yyyy.MM.dd HH:mm:ss");
            childItem.l = y1;
            childItem.m = y1;
        }
        if (PrefList.M == 0 && !TextUtils.isEmpty(childItem.h)) {
            childItem.n = childItem.h.toLowerCase(Locale.US);
        }
    }

    @Override // com.mycompany.app.list.ListTask
    public final void a() {
        ListTask listTask = this.f16268c;
        if (listTask != null) {
            listTask.f12839c = true;
        }
        this.f16268c = null;
    }

    @Override // com.mycompany.app.list.ListTask
    public final boolean d() {
        return true;
    }

    @Override // com.mycompany.app.list.ListTask
    public final void i(boolean z, boolean z2, boolean z3) {
        a();
        ListTask listTask = new ListTask(this, -1L);
        this.f16268c = listTask;
        listTask.b(this.f16267a);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void j(String str) {
        a();
        this.d = true;
        this.e = str;
        ListTask listTask = new ListTask(this, -1L);
        this.f16268c = listTask;
        listTask.b(this.f16267a);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void k(long j, boolean z) {
        a();
        ListTask listTask = new ListTask(this, j);
        this.f16268c = listTask;
        listTask.b(this.f16267a);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void l(String str, boolean z, boolean z2) {
        a();
        ListTask listTask = new ListTask(this, -1L);
        this.f16268c = listTask;
        listTask.b(this.f16267a);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void n() {
        this.d = false;
        this.e = null;
    }
}
