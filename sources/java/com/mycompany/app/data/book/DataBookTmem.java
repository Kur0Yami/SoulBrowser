package com.mycompany.app.data.book;

import android.content.Context;
import android.text.TextUtils;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DataBookTmem extends DataBookList {

    /* renamed from: c, reason: collision with root package name */
    public ArrayList f12915c;

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, com.mycompany.app.data.book.DataBookTmem] */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.lang.Object, com.mycompany.app.data.book.DataBookTmem] */
    public static DataBookTmem l(Context context) {
        MainApp p = MainApp.p(context);
        if (p == null) {
            return new Object();
        }
        if (p.D0 == null) {
            synchronized (DataBookTmem.class) {
                try {
                    if (p.D0 == null) {
                        p.D0 = new Object();
                    }
                } finally {
                }
            }
        }
        return p.D0;
    }

    public final void k(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                ArrayList arrayList = this.f12915c;
                if (arrayList == null) {
                    this.f12915c = new ArrayList();
                } else if (arrayList.contains(str)) {
                    return;
                }
                this.f12915c.add(str);
            } catch (Exception unused) {
            }
        }
    }

    public final boolean m(String str) {
        try {
            ArrayList arrayList = this.f12915c;
            if (arrayList != null && !arrayList.isEmpty()) {
                String S6 = MainUtil.S6(str);
                if (!TextUtils.isEmpty(S6)) {
                    return this.f12915c.contains(S6);
                }
                return false;
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }
}
