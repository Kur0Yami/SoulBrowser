package com.mycompany.app.list;

import android.content.Context;
import android.text.TextUtils;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.data.DataCmp;
import com.mycompany.app.data.DataUtil;
import com.mycompany.app.list.ListScan;
import com.mycompany.app.list.ListTask;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainUri;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefList;
import com.mycompany.app.pref.PrefPath;
import com.mycompany.app.soulbrowser.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* loaded from: classes3.dex */
public class ListTaskCmp extends com.mycompany.app.list.ListTask {
    public static boolean k;

    /* renamed from: a, reason: collision with root package name */
    public final Context f16245a;
    public final ListTask.ListTaskListener b;

    /* renamed from: c, reason: collision with root package name */
    public ListTask f16246c;
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

        public ListTask(ListTaskCmp listTaskCmp, boolean z, boolean z2, String str, boolean z3, List list, List list2) {
            WeakReference weakReference = new WeakReference(listTaskCmp);
            this.e = weakReference;
            ListTaskCmp listTaskCmp2 = (ListTaskCmp) weakReference.get();
            if (listTaskCmp2 != null) {
                this.g = z;
                this.h = z2;
                this.i = str;
                this.k = z3;
                this.o = list;
                this.u = list2;
                this.A = listTaskCmp2.i;
                this.B = listTaskCmp2.j;
                this.y = listTaskCmp2.g;
                listTaskCmp2.g = false;
                ListTask.ListTaskListener listTaskListener = listTaskCmp2.b;
                if (listTaskListener != null) {
                    listTaskListener.f();
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:106:0x0188  */
        /* JADX WARN: Removed duplicated region for block: B:109:0x0193  */
        /* JADX WARN: Removed duplicated region for block: B:119:0x02d7  */
        /* JADX WARN: Removed duplicated region for block: B:16:0x005f  */
        /* JADX WARN: Removed duplicated region for block: B:252:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:270:0x02b9 A[Catch: Exception -> 0x02c8, TRY_LEAVE, TryCatch #3 {Exception -> 0x02c8, blocks: (B:263:0x0217, B:268:0x02b5, B:270:0x02b9, B:276:0x0224, B:279:0x0238, B:281:0x0242, B:282:0x0247, B:285:0x024d, B:288:0x0257, B:290:0x02a5, B:291:0x02ad), top: B:262:0x0217 }] */
        /* JADX WARN: Removed duplicated region for block: B:275:0x02c8 A[ADDED_TO_REGION, EDGE_INSN: B:275:0x02c8->B:274:0x02c8 BREAK  A[LOOP:5: B:262:0x0217->B:272:0x02c0], SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:303:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:308:0x006a  */
        /* JADX WARN: Removed duplicated region for block: B:75:0x0140  */
        /* JADX WARN: Type inference failed for: r1v15, types: [com.mycompany.app.main.MainItem$GroupItem, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r3v34, types: [com.mycompany.app.main.MainItem$GroupItem, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r6v23, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
        @Override // com.mycompany.app.async.MyAsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                Method dump skipped, instructions count: 1275
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.list.ListTaskCmp.ListTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            ListTaskCmp listTaskCmp;
            ListTask.ListTaskListener listTaskListener;
            WeakReference weakReference = this.e;
            if (weakReference == null || (listTaskCmp = (ListTaskCmp) weakReference.get()) == null) {
                return;
            }
            listTaskCmp.f16246c = null;
            if (this.f && (listTaskListener = listTaskCmp.b) != null) {
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
            ListTaskCmp listTaskCmp;
            WeakReference weakReference = this.e;
            if (weakReference != null && (listTaskCmp = (ListTaskCmp) weakReference.get()) != null) {
                listTaskCmp.f16246c = null;
                if (this.f12839c) {
                    return;
                }
                if (listTaskCmp.e) {
                    listTaskCmp.g(listTaskCmp.f);
                }
                ListTask.ListTaskListener listTaskListener = listTaskCmp.b;
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

        public SaveTask(ListTaskCmp listTaskCmp, List list) {
            WeakReference weakReference = new WeakReference(listTaskCmp);
            this.e = weakReference;
            if (((ListTaskCmp) weakReference.get()) == null) {
                return;
            }
            this.f = list;
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void a() {
            ListTaskCmp listTaskCmp;
            List list;
            WeakReference weakReference = this.e;
            if (weakReference != null && (listTaskCmp = (ListTaskCmp) weakReference.get()) != null && !this.f12839c && (list = this.f) != null && !list.isEmpty()) {
                for (MainUri.UriItem uriItem : this.f) {
                    if (!this.f12839c) {
                        if (uriItem != null) {
                            DataUtil.b(listTaskCmp.f16245a, uriItem);
                        }
                    } else {
                        return;
                    }
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            ListTaskCmp listTaskCmp;
            WeakReference weakReference = this.e;
            if (weakReference == null || (listTaskCmp = (ListTaskCmp) weakReference.get()) == null) {
                return;
            }
            listTaskCmp.h = null;
            this.f = null;
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            ListTaskCmp listTaskCmp;
            WeakReference weakReference = this.e;
            if (weakReference == null || (listTaskCmp = (ListTaskCmp) weakReference.get()) == null) {
                return;
            }
            listTaskCmp.h = null;
            this.f = null;
        }
    }

    public ListTaskCmp(Context context, ListTask.ListTaskListener listTaskListener) {
        this.f16245a = context;
        this.b = listTaskListener;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.mycompany.app.main.MainItem$GroupItem, java.lang.Object] */
    public static void p(ListTaskCmp listTaskCmp, ArrayList arrayList, String str, int i, int i2, int i3) {
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
        String str = uriItem.f;
        obj.h = str;
        obj.A = uriItem.g;
        obj.B = uriItem.h;
        obj.f16551c = 0;
        obj.v = -460552;
        obj.w = R.drawable.outline_folder_zip_black_24;
        if (PrefList.k == 4) {
            obj.x = MainUtil.X0(str);
        }
        s(obj);
        return obj;
    }

    public static void s(MainItem.ChildItem childItem) {
        if (childItem != null) {
            int i = PrefList.k;
            if (i == 1) {
                childItem.l = childItem.e;
                String str = childItem.f;
                childItem.m = str;
                if (!TextUtils.isEmpty(str)) {
                    childItem.m = childItem.m.toLowerCase(Locale.US);
                }
            } else if (i == 4) {
                if (TextUtils.isEmpty(childItem.x)) {
                    childItem.x = MainUtil.X0(childItem.h);
                }
                String str2 = childItem.x;
                childItem.l = str2;
                childItem.m = str2;
                if (!TextUtils.isEmpty(str2)) {
                    childItem.m = childItem.m.toLowerCase(Locale.US);
                }
            }
            if (!TextUtils.isEmpty(childItem.h)) {
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
    }

    @Override // com.mycompany.app.list.ListTask
    public final void a() {
        ListTask listTask = this.f16246c;
        if (listTask != null) {
            listTask.f12839c = true;
        }
        this.f16246c = null;
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
        if (this.f16246c != null) {
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
        ListScan.ListScanListener listScanListener = new ListScan.ListScanListener() { // from class: com.mycompany.app.list.ListTaskCmp.1
            @Override // com.mycompany.app.list.ListScan.ListScanListener
            public final void b() {
                ListTaskCmp listTaskCmp = ListTaskCmp.this;
                listTaskCmp.d = null;
                Context context = listTaskCmp.f16245a;
                if (context != null) {
                    ArrayList arrayList = DataCmp.m(context).f12896c;
                    DataCmp.m(context).f12896c = null;
                    if (!ListTaskCmp.k) {
                        listTaskCmp.q(false, true, null, false, arrayList, null);
                    }
                    ListTaskCmp.k = false;
                    if (arrayList != null && !arrayList.isEmpty()) {
                        SaveTask saveTask = listTaskCmp.h;
                        if (saveTask != null) {
                            saveTask.f12839c = true;
                        }
                        listTaskCmp.h = null;
                        SaveTask saveTask2 = new SaveTask(listTaskCmp, arrayList);
                        listTaskCmp.h = saveTask2;
                        saveTask2.b(context);
                    }
                }
                ListTask.ListTaskListener listTaskListener = listTaskCmp.b;
                if (listTaskListener != null) {
                    listTaskListener.b();
                }
            }

            @Override // com.mycompany.app.list.ListScan.ListScanListener
            public final void c() {
                ListTaskCmp listTaskCmp = ListTaskCmp.this;
                listTaskCmp.d = null;
                Context context = listTaskCmp.f16245a;
                if (context != null) {
                    DataCmp.m(context).f12896c = null;
                }
                ListTask.ListTaskListener listTaskListener = listTaskCmp.b;
                if (listTaskListener != null) {
                    listTaskListener.c();
                }
            }
        };
        Context context = this.f16245a;
        ListScan listScan2 = new ListScan(context, 3, z, listScanListener);
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
        if (z && !TextUtils.isEmpty(PrefPath.u)) {
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
        this.f16246c = listTask;
        listTask.b(this.f16245a);
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
        this.f16246c = listTask;
        listTask.b(this.f16245a);
    }
}
