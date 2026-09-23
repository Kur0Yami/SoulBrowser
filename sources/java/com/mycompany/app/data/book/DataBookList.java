package com.mycompany.app.data.book;

import android.content.Context;
import android.text.TextUtils;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainUtil;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public abstract class DataBookList {

    /* renamed from: a, reason: collision with root package name */
    public List f12909a;
    public List b;

    public final void a(MainItem.ChildItem childItem) {
        if (childItem != null) {
            long j = childItem.y;
            if (j > 0) {
                if (childItem.f16550a == 8) {
                    j = -j;
                }
                if (this.f12909a == null) {
                    this.f12909a = new ArrayList();
                }
                List list = this.b;
                if (list == null) {
                    this.b = new ArrayList();
                } else if (list.contains(Long.valueOf(j))) {
                    return;
                }
                this.f12909a.add(childItem);
                this.b.add(Long.valueOf(j));
            }
        }
    }

    public final void b(long j) {
        List list;
        int indexOf;
        if (j != 0 && (list = this.b) != null && !list.isEmpty() && (indexOf = this.b.indexOf(Long.valueOf(j))) >= 0) {
            List list2 = this.f12909a;
            if (list2 != null && indexOf < list2.size()) {
                this.f12909a.remove(indexOf);
            }
            List list3 = this.b;
            if (list3 != null && indexOf < list3.size()) {
                this.b.remove(indexOf);
            }
        }
    }

    public final void c() {
        if (!TextUtils.isEmpty("sb_user_filter_path")) {
            for (MainItem.ChildItem childItem : this.f12909a) {
                if (childItem != null && "sb_user_filter_path".equals(childItem.g)) {
                    b(childItem.y);
                    return;
                }
            }
        }
    }

    public final int d() {
        List list = this.b;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public final MainItem.ChildItem e(long j) {
        List list;
        int indexOf;
        List list2;
        if (j <= 0 || (list = this.b) == null || list.isEmpty() || (indexOf = this.b.indexOf(Long.valueOf(j))) < 0 || (list2 = this.f12909a) == null || indexOf >= list2.size()) {
            return null;
        }
        return (MainItem.ChildItem) this.f12909a.get(indexOf);
    }

    public final void f() {
        this.f12909a = null;
        this.b = null;
    }

    public final void g(Context context, boolean z) {
        DataBookSearch a2 = DataBookSearch.a(context);
        if (a2 == null) {
            return;
        }
        if (z) {
            this.f12909a = a2.f12914a;
            this.b = a2.b;
        } else {
            this.f12909a = null;
            this.b = null;
        }
        a2.f12914a = null;
        a2.b = null;
    }

    public final void h(int i, String str, String str2, long j) {
        List list;
        List list2;
        if (j > 0 && !TextUtils.isEmpty(str) && (list = this.f12909a) != null && !list.isEmpty() && (list2 = this.b) != null && !list2.isEmpty()) {
            if (i == 8) {
                j = -j;
            }
            int indexOf = this.b.indexOf(Long.valueOf(j));
            if (indexOf >= 0 && indexOf < this.f12909a.size()) {
                MainItem.ChildItem childItem = (MainItem.ChildItem) this.f12909a.get(indexOf);
                childItem.f16550a = i;
                childItem.g = str;
                if (i == 8) {
                    childItem.h = MainUtil.k1(str2);
                    childItem.z = MainUtil.p4(str);
                } else {
                    childItem.h = str2;
                }
            }
        }
    }

    public final void i(Context context) {
        DataBookSearch a2 = DataBookSearch.a(context);
        List list = this.f12909a;
        List list2 = this.b;
        a2.f12914a = list;
        a2.b = list2;
    }

    public final void j(MainItem.ChildItem childItem) {
        List list;
        long j;
        if (childItem != null && childItem.y > 0) {
            List list2 = this.f12909a;
            if (list2 != null && !list2.isEmpty() && (list = this.b) != null && !list.isEmpty()) {
                if (childItem.f16550a == 8) {
                    j = -childItem.y;
                } else {
                    j = childItem.y;
                }
                int indexOf = this.b.indexOf(Long.valueOf(j));
                if (indexOf >= 0 && indexOf < this.f12909a.size()) {
                    this.f12909a.set(indexOf, childItem);
                    return;
                } else {
                    a(childItem);
                    return;
                }
            }
            a(childItem);
        }
    }
}
