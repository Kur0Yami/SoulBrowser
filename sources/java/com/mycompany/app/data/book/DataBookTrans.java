package com.mycompany.app.data.book;

import android.content.Context;
import android.text.TextUtils;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DataBookTrans extends DataBookList {

    /* renamed from: c, reason: collision with root package name */
    public ArrayList f12916c;

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, com.mycompany.app.data.book.DataBookTrans] */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.lang.Object, com.mycompany.app.data.book.DataBookTrans] */
    public static DataBookTrans l(Context context) {
        MainApp p = MainApp.p(context);
        if (p == null) {
            return new Object();
        }
        if (p.E0 == null) {
            synchronized (DataBookTrans.class) {
                try {
                    if (p.E0 == null) {
                        p.E0 = new Object();
                    }
                } finally {
                }
            }
        }
        return p.E0;
    }

    public final void k(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                ArrayList arrayList = this.f12916c;
                if (arrayList == null) {
                    this.f12916c = new ArrayList();
                } else if (arrayList.contains(str)) {
                    return;
                }
                this.f12916c.add(str);
            } catch (Exception unused) {
            }
        }
    }

    public final boolean m(String str) {
        try {
            ArrayList arrayList = this.f12916c;
            if (arrayList != null && !arrayList.isEmpty()) {
                String S6 = MainUtil.S6(str);
                if (!TextUtils.isEmpty(S6)) {
                    return this.f12916c.contains(S6);
                }
                return false;
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }
}
