package com.mycompany.app.data.book;

import android.content.Context;
import android.text.TextUtils;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DataBookPop extends DataBookList {

    /* renamed from: c, reason: collision with root package name */
    public ArrayList f12911c;

    /* JADX WARN: Type inference failed for: r1v1, types: [com.mycompany.app.data.book.DataBookPop, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v4, types: [com.mycompany.app.data.book.DataBookPop, java.lang.Object] */
    public static DataBookPop l(Context context) {
        MainApp p = MainApp.p(context);
        if (p == null) {
            return new Object();
        }
        if (p.z0 == null) {
            synchronized (DataBookPop.class) {
                try {
                    if (p.z0 == null) {
                        p.z0 = new Object();
                    }
                } finally {
                }
            }
        }
        return p.z0;
    }

    public final void k(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                ArrayList arrayList = this.f12911c;
                if (arrayList == null) {
                    this.f12911c = new ArrayList();
                } else if (arrayList.contains(str)) {
                    return;
                }
                this.f12911c.add(str);
            } catch (Exception unused) {
            }
        }
    }

    public final boolean m(String str) {
        try {
            ArrayList arrayList = this.f12911c;
            if (arrayList != null && !arrayList.isEmpty()) {
                String S6 = MainUtil.S6(str);
                if (!TextUtils.isEmpty(S6)) {
                    return this.f12911c.contains(S6);
                }
                return false;
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public final boolean n(String str, String str2) {
        try {
            ArrayList arrayList = this.f12911c;
            if (arrayList != null && !arrayList.isEmpty()) {
                String S6 = MainUtil.S6(str);
                if (!TextUtils.isEmpty(S6)) {
                    if (this.f12911c.contains(S6)) {
                        return true;
                    }
                    if (!TextUtils.isEmpty(str2)) {
                        return this.f12911c.contains(str2);
                    }
                    return false;
                }
                return false;
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }
}
