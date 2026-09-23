package com.mycompany.app.data;

import android.content.Context;
import android.text.TextUtils;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainUri;
import com.mycompany.app.main.MainUtil;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public abstract class DataList {

    /* renamed from: a, reason: collision with root package name */
    public List f12895a;
    public List b;

    /* renamed from: c, reason: collision with root package name */
    public ArrayList f12896c;

    public final void a(Context context, MainUri.UriItem uriItem) {
        MainItem.ChildItem h;
        if (uriItem != null && (h = h(context, uriItem)) != null && !TextUtils.isEmpty(h.g)) {
            if (this.f12895a == null) {
                this.f12895a = new ArrayList();
            }
            List list = this.b;
            if (list == null) {
                this.b = new ArrayList();
            } else if (list.contains(h.g)) {
                return;
            }
            this.f12895a.add(h);
            this.b.add(h.g);
        }
    }

    public final void b(MainUri.UriItem uriItem) {
        if (this.f12896c == null) {
            this.f12896c = new ArrayList();
        }
        this.f12896c.add(uriItem);
    }

    public final void c(String str) {
        List list;
        int indexOf;
        if (!TextUtils.isEmpty(str) && (list = this.b) != null && !list.isEmpty() && (indexOf = this.b.indexOf(str)) >= 0) {
            List list2 = this.f12895a;
            if (list2 != null && indexOf < list2.size()) {
                this.f12895a.remove(indexOf);
            }
            List list3 = this.b;
            if (list3 != null && indexOf < list3.size()) {
                this.b.remove(indexOf);
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

    public final int e(String str) {
        List list;
        if (TextUtils.isEmpty(str) || (list = this.b) == null || list.isEmpty()) {
            return -1;
        }
        return this.b.indexOf(str);
    }

    public final MainItem.ChildItem f(int i) {
        List list = this.f12895a;
        if (list != null && i >= 0 && i < list.size()) {
            return (MainItem.ChildItem) this.f12895a.get(i);
        }
        return null;
    }

    public final MainItem.ChildItem g(String str) {
        List list;
        int indexOf;
        List list2;
        if (TextUtils.isEmpty(str) || (list = this.b) == null || list.isEmpty() || (indexOf = this.b.indexOf(str)) < 0 || (list2 = this.f12895a) == null || indexOf >= list2.size()) {
            return null;
        }
        return (MainItem.ChildItem) this.f12895a.get(indexOf);
    }

    public abstract MainItem.ChildItem h(Context context, MainUri.UriItem uriItem);

    public final boolean i(String str) {
        List list;
        if (TextUtils.isEmpty(str) || (list = this.b) == null || list.isEmpty()) {
            return false;
        }
        return this.b.contains(str);
    }

    public final void j() {
        this.f12895a = null;
        this.b = null;
    }

    public final void k(Context context, boolean z) {
        DataSearch a2 = DataSearch.a(context);
        if (a2 == null) {
            return;
        }
        if (z) {
            this.f12895a = a2.f12899a;
            this.b = a2.b;
        } else {
            this.f12895a = null;
            this.b = null;
        }
        a2.f12899a = null;
        a2.b = null;
    }

    public final void l(int i, String str, String str2, String str3) {
        List list;
        List list2;
        int indexOf;
        String str4;
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && (list = this.f12895a) != null && !list.isEmpty() && (list2 = this.b) != null && !list2.isEmpty() && (indexOf = this.b.indexOf(str)) >= 0 && indexOf < this.f12895a.size()) {
            MainItem.ChildItem childItem = (MainItem.ChildItem) this.f12895a.get(indexOf);
            childItem.g = str2;
            if (i == 1) {
                str4 = MainUtil.k1(str3);
            } else {
                str4 = str3;
            }
            childItem.h = str4;
            if (!TextUtils.isEmpty(childItem.x)) {
                childItem.x = MainUtil.X0(str3);
            }
            this.b.set(indexOf, str2);
        }
    }
}
