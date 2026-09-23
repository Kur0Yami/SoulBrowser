package com.mycompany.app.list;

import android.content.Context;
import android.text.TextUtils;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.data.DataPdf;
import com.mycompany.app.data.DataUtil;
import com.mycompany.app.list.ListScan;
import com.mycompany.app.list.ListTask;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainUri;
import com.mycompany.app.pref.PrefList;
import com.mycompany.app.pref.PrefPath;
import com.mycompany.app.soulbrowser.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* loaded from: classes3.dex */
public class ListTaskPdf extends com.mycompany.app.list.ListTask {
    public static boolean k;

    /* renamed from: a, reason: collision with root package name */
    public final Context f16248a;
    public final ListTask.ListTaskListener b;

    /* renamed from: c, reason: collision with root package name */
    public ListTask f16249c;
    public ListScan d;
    public boolean e;
    public boolean f;
    public boolean g;
    public SaveTask h;
    public boolean i;
    public String j;

    /* loaded from: classes3.dex */
    public static class ListTask extends MyAsyncTask {
        public final boolean A;
        public final String B;
        public final WeakReference e;
        public boolean f;
        public final boolean g;
        public final boolean h;
        public String i;
        public MainItem.ChildItem j;
        public boolean k;
        public ArrayList l;
        public ArrayList m;
        public ArrayList n;
        public List o;
        public boolean[] p;
        public int[] q;
        public boolean[] r;
        public int s;
        public boolean t;
        public List u;
        public ArrayList w;
        public final boolean y;
        public int z;
        public int v = -1;
        public int x = -1;

        public ListTask(ListTaskPdf listTaskPdf, boolean z, boolean z2, String str, boolean z3, List list, List list2) {
            WeakReference weakReference = new WeakReference(listTaskPdf);
            this.e = weakReference;
            ListTaskPdf listTaskPdf2 = (ListTaskPdf) weakReference.get();
            if (listTaskPdf2 != null) {
                this.g = z;
                this.h = z2;
                this.i = str;
                this.k = z3;
                this.o = list;
                this.u = list2;
                this.A = listTaskPdf2.i;
                this.B = listTaskPdf2.j;
                this.y = listTaskPdf2.g;
                listTaskPdf2.g = false;
                ListTask.ListTaskListener listTaskListener = listTaskPdf2.b;
                if (listTaskListener != null) {
                    listTaskListener.f();
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:106:0x0188  */
        /* JADX WARN: Removed duplicated region for block: B:109:0x0193  */
        /* JADX WARN: Removed duplicated region for block: B:120:0x02f2  */
        /* JADX WARN: Removed duplicated region for block: B:135:0x0337  */
        /* JADX WARN: Removed duplicated region for block: B:141:0x035c  */
        /* JADX WARN: Removed duplicated region for block: B:159:0x0393  */
        /* JADX WARN: Removed duplicated region for block: B:16:0x005f  */
        /* JADX WARN: Removed duplicated region for block: B:229:0x04ae  */
        /* JADX WARN: Removed duplicated region for block: B:239:0x04f4  */
        /* JADX WARN: Removed duplicated region for block: B:248:0x04d0  */
        /* JADX WARN: Removed duplicated region for block: B:251:0x04aa  */
        /* JADX WARN: Removed duplicated region for block: B:254:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:307:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:312:0x006a  */
        /* JADX WARN: Removed duplicated region for block: B:75:0x0140  */
        /* JADX WARN: Type inference failed for: r1v15, types: [com.mycompany.app.main.MainItem$GroupItem, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r3v34, types: [com.mycompany.app.main.MainItem$GroupItem, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r4v29, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
        @Override // com.mycompany.app.async.MyAsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                Method dump skipped, instructions count: 1309
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.list.ListTaskPdf.ListTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            ListTaskPdf listTaskPdf;
            ListTask.ListTaskListener listTaskListener;
            WeakReference weakReference = this.e;
            if (weakReference == null || (listTaskPdf = (ListTaskPdf) weakReference.get()) == null) {
                return;
            }
            listTaskPdf.f16249c = null;
            if (this.f && (listTaskListener = listTaskPdf.b) != null) {
                listTaskListener.a();
            }
            this.i = null;
            this.j = null;
            this.l = null;
            this.m = null;
            this.n = null;
            this.o = null;
            this.p = null;
            this.q = null;
            this.r = null;
            this.u = null;
            this.w = null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v2, types: [com.mycompany.app.list.ListTask$ListTaskConfig, java.lang.Object] */
        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            ListTaskPdf listTaskPdf;
            WeakReference weakReference = this.e;
            if (weakReference != null && (listTaskPdf = (ListTaskPdf) weakReference.get()) != null) {
                listTaskPdf.f16249c = null;
                if (this.f12839c) {
                    return;
                }
                if (listTaskPdf.e) {
                    listTaskPdf.g(listTaskPdf.f);
                }
                ListTask.ListTaskListener listTaskListener = listTaskPdf.b;
                if (listTaskListener != 0) {
                    ?? obj = new Object();
                    obj.f16239c = this.l;
                    obj.d = this.m;
                    obj.e = this.p;
                    obj.f = this.q;
                    obj.g = this.r;
                    obj.h = this.s;
                    obj.k = -1;
                    obj.l = this.w;
                    obj.m = this.x;
                    obj.n = this.j;
                    obj.p = this.t;
                    obj.t = this.z;
                    obj.u = this.B;
                    listTaskListener.g(obj);
                }
                this.i = null;
                this.j = null;
                this.l = null;
                this.m = null;
                this.n = null;
                this.o = null;
                this.p = null;
                this.q = null;
                this.r = null;
                this.u = null;
                this.w = null;
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class SaveTask extends MyAsyncTask {
        public final WeakReference e;
        public List f;

        public SaveTask(ListTaskPdf listTaskPdf, List list) {
            WeakReference weakReference = new WeakReference(listTaskPdf);
            this.e = weakReference;
            if (((ListTaskPdf) weakReference.get()) == null) {
                return;
            }
            this.f = list;
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void a() {
            ListTaskPdf listTaskPdf;
            List list;
            WeakReference weakReference = this.e;
            if (weakReference != null && (listTaskPdf = (ListTaskPdf) weakReference.get()) != null && !this.f12839c && (list = this.f) != null && !list.isEmpty()) {
                for (MainUri.UriItem uriItem : this.f) {
                    if (!this.f12839c) {
                        if (uriItem != null) {
                            DataUtil.b(listTaskPdf.f16248a, uriItem);
                        }
                    } else {
                        return;
                    }
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            ListTaskPdf listTaskPdf;
            WeakReference weakReference = this.e;
            if (weakReference == null || (listTaskPdf = (ListTaskPdf) weakReference.get()) == null) {
                return;
            }
            listTaskPdf.h = null;
            this.f = null;
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            ListTaskPdf listTaskPdf;
            WeakReference weakReference = this.e;
            if (weakReference == null || (listTaskPdf = (ListTaskPdf) weakReference.get()) == null) {
                return;
            }
            listTaskPdf.h = null;
            this.f = null;
        }
    }

    public ListTaskPdf(Context context, ListTask.ListTaskListener listTaskListener) {
        this.f16248a = context;
        this.b = listTaskListener;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.mycompany.app.main.MainItem$GroupItem, java.lang.Object] */
    public static void p(ListTaskPdf listTaskPdf, ArrayList arrayList, String str, int i, int i2, int i3) {
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

    /* JADX WARN: Type inference failed for: r0v0, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
    public static MainItem.ChildItem r(MainUri.UriItem uriItem) {
        if (uriItem == null) {
            return null;
        }
        ?? obj = new Object();
        obj.e = uriItem.f16986c;
        obj.f = uriItem.d;
        obj.g = uriItem.e;
        obj.h = uriItem.f;
        obj.A = uriItem.g;
        obj.B = uriItem.h;
        obj.f16551c = 5;
        obj.v = -460552;
        obj.w = R.drawable.outline_picture_as_pdf_black_24;
        s(obj);
        return obj;
    }

    public static void s(MainItem.ChildItem childItem) {
        if (childItem != null) {
            if (PrefList.k == 1) {
                childItem.l = childItem.e;
                String str = childItem.f;
                childItem.m = str;
                if (!TextUtils.isEmpty(str)) {
                    childItem.m = childItem.m.toLowerCase(Locale.US);
                }
            }
            if (!TextUtils.isEmpty(childItem.h)) {
                childItem.n = childItem.h.toLowerCase(Locale.US);
                childItem.o = null;
            }
        }
    }

    @Override // com.mycompany.app.list.ListTask
    public final void a() {
        ListTask listTask = this.f16249c;
        if (listTask != null) {
            listTask.f12839c = true;
        }
        this.f16249c = null;
        ListScan listScan = this.d;
        if (listScan != null) {
            ListScan.ScanTask scanTask = listScan.e;
            if (scanTask != null) {
                scanTask.f12839c = true;
            }
            listScan.e = null;
        }
        this.d = null;
    }

    @Override // com.mycompany.app.list.ListTask
    public final boolean d() {
        return true;
    }

    @Override // com.mycompany.app.list.ListTask
    public final boolean e() {
        return true;
    }

    @Override // com.mycompany.app.list.ListTask
    public final boolean f() {
        if (!this.e && this.d == null) {
            return false;
        }
        return true;
    }

    @Override // com.mycompany.app.list.ListTask
    public final void g(boolean z) {
        this.e = false;
        this.f = false;
        k = false;
        if (this.f16249c != null) {
            this.e = true;
            return;
        }
        ListScan listScan = this.d;
        if (listScan != null) {
            ListScan.ScanTask scanTask = listScan.e;
            if (scanTask != null) {
                scanTask.f12839c = true;
            }
            listScan.e = null;
        }
        ListScan.ListScanListener listScanListener = new ListScan.ListScanListener() { // from class: com.mycompany.app.list.ListTaskPdf.1
            @Override // com.mycompany.app.list.ListScan.ListScanListener
            public final void b() {
                ListTaskPdf listTaskPdf = ListTaskPdf.this;
                listTaskPdf.d = null;
                Context context = listTaskPdf.f16248a;
                if (context != null) {
                    ArrayList arrayList = DataPdf.m(context).f12896c;
                    DataPdf.m(context).f12896c = null;
                    if (!ListTaskPdf.k) {
                        listTaskPdf.q(false, true, null, false, arrayList, null);
                    }
                    ListTaskPdf.k = false;
                    if (arrayList != null && !arrayList.isEmpty()) {
                        SaveTask saveTask = listTaskPdf.h;
                        if (saveTask != null) {
                            saveTask.f12839c = true;
                        }
                        listTaskPdf.h = null;
                        SaveTask saveTask2 = new SaveTask(listTaskPdf, arrayList);
                        listTaskPdf.h = saveTask2;
                        saveTask2.b(context);
                    }
                }
                ListTask.ListTaskListener listTaskListener = listTaskPdf.b;
                if (listTaskListener != null) {
                    listTaskListener.b();
                }
            }

            @Override // com.mycompany.app.list.ListScan.ListScanListener
            public final void c() {
                ListTaskPdf listTaskPdf = ListTaskPdf.this;
                listTaskPdf.d = null;
                Context context = listTaskPdf.f16248a;
                if (context != null) {
                    DataPdf.m(context).f12896c = null;
                }
                ListTask.ListTaskListener listTaskListener = listTaskPdf.b;
                if (listTaskListener != null) {
                    listTaskListener.c();
                }
            }
        };
        Context context = this.f16248a;
        ListScan listScan2 = new ListScan(context, 2, z, listScanListener);
        this.d = listScan2;
        ListScan.ScanTask scanTask2 = listScan2.e;
        if (scanTask2 != null) {
            scanTask2.f12839c = true;
        }
        listScan2.e = null;
        ListScan.ScanTask scanTask3 = new ListScan.ScanTask(listScan2);
        listScan2.e = scanTask3;
        scanTask3.b(context);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void h(List list, boolean z) {
        q(false, z, null, false, null, list);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void i(boolean z, boolean z2, boolean z3) {
        boolean z4;
        if (z && !TextUtils.isEmpty(PrefPath.t)) {
            z4 = true;
        } else {
            z4 = false;
        }
        this.e = z4;
        this.f = z2;
        this.g = z3;
        q(true, false, null, false, null, null);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void j(String str) {
        a();
        this.e = false;
        this.f = false;
        this.g = true;
        this.i = true;
        this.j = str;
        ListTask listTask = new ListTask(this, false, false, null, false, null, null);
        this.f16249c = listTask;
        listTask.b(this.f16248a);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void l(String str, boolean z, boolean z2) {
        q(z, false, str, z2, null, null);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void n() {
        this.i = false;
        this.j = null;
    }

    public final void q(boolean z, boolean z2, String str, boolean z3, List list, List list2) {
        k = false;
        a();
        ListTask listTask = new ListTask(this, z, z2, str, z3, list, list2);
        this.f16249c = listTask;
        listTask.b(this.f16248a);
    }
}
