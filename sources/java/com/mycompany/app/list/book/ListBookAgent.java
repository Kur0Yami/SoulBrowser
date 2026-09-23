package com.mycompany.app.list.book;

import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.db.book.DbBookAgent;
import com.mycompany.app.list.ListTask;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainListAdapter;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefZtwo;
import com.mycompany.app.soulbrowser.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class ListBookAgent extends com.mycompany.app.list.ListTask {

    /* renamed from: a, reason: collision with root package name */
    public Context f16253a;
    public ListTask.ListTaskListener b;

    /* renamed from: c, reason: collision with root package name */
    public ListTask f16254c;

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

        public ListTask(ListBookAgent listBookAgent, long j, String str) {
            WeakReference weakReference = new WeakReference(listBookAgent);
            this.e = weakReference;
            ListBookAgent listBookAgent2 = (ListBookAgent) weakReference.get();
            if (listBookAgent2 != null) {
                this.g = j;
                this.h = str;
                ListTask.ListTaskListener listTaskListener = listBookAgent2.b;
                if (listTaskListener != null) {
                    listTaskListener.f();
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r13v6, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v2, types: [com.mycompany.app.main.MainItem$GroupItem, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r4v10, types: [int] */
        /* JADX WARN: Type inference failed for: r4v14 */
        /* JADX WARN: Type inference failed for: r4v15 */
        @Override // com.mycompany.app.async.MyAsyncTask
        public final void a() {
            ListBookAgent listBookAgent;
            ArrayList arrayList;
            Cursor cursor;
            String str;
            int i;
            boolean z;
            int i2;
            int i3;
            int i4;
            ?? r4;
            int i5;
            boolean[] zArr;
            MainListAdapter d;
            boolean z2 = true;
            this.f = true;
            WeakReference weakReference = this.e;
            if (weakReference != null && (listBookAgent = (ListBookAgent) weakReference.get()) != null) {
                Context context = listBookAgent.f16253a;
                if (!this.f12839c) {
                    long j = this.g;
                    if (j != 0) {
                        this.j = true;
                    } else if (!TextUtils.isEmpty(this.h)) {
                        this.k = true;
                    }
                    ListTask.ListTaskListener listTaskListener = listBookAgent.b;
                    if (listTaskListener != null && (d = listTaskListener.d()) != null && d.q) {
                        this.s = true;
                        arrayList = d.i();
                    } else {
                        arrayList = null;
                    }
                    this.m = new ArrayList();
                    if (!this.f12839c) {
                        boolean z3 = false;
                        try {
                            cursor = DbUtil.g(DbBookAgent.a(context).getWritableDatabase(), "DbBookAgent_table", null, null, null, null);
                            if (cursor != null) {
                                try {
                                    if (cursor.moveToFirst()) {
                                        int columnIndex = cursor.getColumnIndex("_id");
                                        int columnIndex2 = cursor.getColumnIndex("_title");
                                        int columnIndex3 = cursor.getColumnIndex("_text");
                                        do {
                                            String string = cursor.getString(columnIndex3);
                                            if (!TextUtils.isEmpty(string)) {
                                                ?? obj = new Object();
                                                obj.y = cursor.getLong(columnIndex);
                                                obj.g = string;
                                                obj.h = cursor.getString(columnIndex2);
                                                obj.f16551c = 0;
                                                obj.v = -460552;
                                                obj.w = R.drawable.outline_public_black_24;
                                                if (this.j && obj.y == j) {
                                                    this.j = false;
                                                    obj.L = true;
                                                } else if (this.k && this.h.equalsIgnoreCase(obj.g)) {
                                                    this.k = false;
                                                    obj.L = true;
                                                }
                                                this.m.add(obj);
                                            }
                                            if (this.f12839c) {
                                                break;
                                            }
                                        } while (cursor.moveToNext());
                                    }
                                } catch (Exception unused) {
                                }
                            }
                        } catch (Exception unused2) {
                            cursor = null;
                        }
                        if (cursor != null) {
                            cursor.close();
                        }
                        if (!this.f12839c) {
                            this.l = new ArrayList();
                            this.n = new ArrayList();
                            if (!this.m.isEmpty()) {
                                if (this.s) {
                                    i2 = this.m.size();
                                    this.q = new boolean[i2];
                                } else {
                                    i2 = 0;
                                }
                                if (arrayList != null) {
                                    i3 = arrayList.size();
                                } else {
                                    i3 = 0;
                                }
                                ArrayList arrayList2 = this.m;
                                int size = arrayList2.size();
                                int i6 = 0;
                                i = 0;
                                int i7 = 0;
                                int i8 = 0;
                                int i9 = 0;
                                String str2 = null;
                                while (i9 < size) {
                                    Object obj2 = arrayList2.get(i9);
                                    i9++;
                                    boolean z4 = z2;
                                    MainItem.ChildItem childItem = (MainItem.ChildItem) obj2;
                                    if (!this.f12839c) {
                                        if (childItem == null) {
                                            z2 = z4;
                                        } else {
                                            if (i6 < i3) {
                                                i4 = i2;
                                                boolean contains = arrayList.contains(Long.valueOf(childItem.y));
                                                childItem.K = contains;
                                                if (contains) {
                                                    i6++;
                                                }
                                                r4 = 0;
                                            } else {
                                                boolean z5 = z3;
                                                i4 = i2;
                                                childItem.K = z5;
                                                r4 = z5;
                                            }
                                            ArrayList arrayList3 = arrayList;
                                            Context context2 = context;
                                            this.n.add(Long.valueOf(childItem.y));
                                            childItem.H = r4;
                                            childItem.I = i7;
                                            childItem.J = i8;
                                            if (childItem.y == PrefZtwo.p - 100) {
                                                this.i = childItem;
                                            }
                                            if (childItem.K && (zArr = this.q) != null) {
                                                i5 = i4;
                                                if (i8 < i5) {
                                                    zArr[i8] = z4;
                                                    this.r++;
                                                }
                                            } else {
                                                i5 = i4;
                                            }
                                            if (childItem.L) {
                                                if (this.t != 0) {
                                                    this.t = 0;
                                                    if (this.u == null) {
                                                        this.u = new ArrayList();
                                                    }
                                                    if (!this.u.contains(Integer.valueOf(childItem.H))) {
                                                        this.u.add(Integer.valueOf(childItem.H));
                                                    }
                                                }
                                                if (this.v == -1) {
                                                    this.v = childItem.J;
                                                }
                                            }
                                            i7++;
                                            i8++;
                                            childItem.n = null;
                                            childItem.o = null;
                                            childItem.l = null;
                                            childItem.m = null;
                                            int i10 = PrefZtwo.p;
                                            int i11 = i5;
                                            if (i10 == childItem.y + 100) {
                                                str2 = childItem.g;
                                                i = i10;
                                            }
                                            context = context2;
                                            z2 = z4;
                                            i2 = i11;
                                            arrayList = arrayList3;
                                            z3 = false;
                                        }
                                    } else {
                                        return;
                                    }
                                }
                                str = str2;
                            } else {
                                str = null;
                                i = 0;
                            }
                            boolean z6 = z2;
                            Context context3 = context;
                            ?? obj3 = new Object();
                            obj3.f16552a = 0;
                            int size2 = this.m.size();
                            obj3.f16553c = size2;
                            int i12 = this.r;
                            obj3.f = i12;
                            if (i12 == size2) {
                                z = z6;
                            } else {
                                z = false;
                            }
                            obj3.g = z;
                            this.l.add(obj3);
                            if (this.s && !this.l.isEmpty()) {
                                int size3 = this.l.size();
                                this.o = new boolean[size3];
                                this.p = new int[size3];
                                ArrayList arrayList4 = this.l;
                                int size4 = arrayList4.size();
                                int i13 = 0;
                                while (i13 < size4) {
                                    Object obj4 = arrayList4.get(i13);
                                    i13++;
                                    MainItem.GroupItem groupItem = (MainItem.GroupItem) obj4;
                                    if (!this.f12839c) {
                                        int i14 = groupItem.d;
                                        this.o[i14] = groupItem.g;
                                        this.p[i14] = groupItem.f;
                                    } else {
                                        return;
                                    }
                                }
                            }
                            int i15 = PrefZtwo.p;
                            if (i15 >= 4) {
                                if (i15 != i || !MainUtil.q5(PrefZtwo.q, str)) {
                                    PrefZtwo.p = i;
                                    PrefZtwo.q = str;
                                    PrefZtwo.t(context3);
                                }
                            }
                        }
                    }
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            ListBookAgent listBookAgent;
            ListTask.ListTaskListener listTaskListener;
            WeakReference weakReference = this.e;
            if (weakReference == null || (listBookAgent = (ListBookAgent) weakReference.get()) == null) {
                return;
            }
            listBookAgent.f16254c = null;
            if (this.f && (listTaskListener = listBookAgent.b) != null) {
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
            ListBookAgent listBookAgent;
            WeakReference weakReference = this.e;
            if (weakReference != null && (listBookAgent = (ListBookAgent) weakReference.get()) != null) {
                listBookAgent.f16254c = null;
                if (this.f12839c) {
                    return;
                }
                ListTask.ListTaskListener listTaskListener = listBookAgent.b;
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
        ListTask listTask = this.f16254c;
        if (listTask != null) {
            listTask.f12839c = true;
        }
        this.f16254c = null;
    }

    @Override // com.mycompany.app.list.ListTask
    public final void i(boolean z, boolean z2, boolean z3) {
        a();
        ListTask listTask = new ListTask(this, -1L, null);
        this.f16254c = listTask;
        listTask.b(this.f16253a);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void j(String str) {
        a();
        ListTask listTask = new ListTask(this, -1L, null);
        this.f16254c = listTask;
        listTask.b(this.f16253a);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void k(long j, boolean z) {
        a();
        ListTask listTask = new ListTask(this, j, null);
        this.f16254c = listTask;
        listTask.b(this.f16253a);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void l(String str, boolean z, boolean z2) {
        a();
        ListTask listTask = new ListTask(this, -1L, str);
        this.f16254c = listTask;
        listTask.b(this.f16253a);
    }
}
