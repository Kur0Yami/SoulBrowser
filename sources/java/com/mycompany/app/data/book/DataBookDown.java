package com.mycompany.app.data.book;

import android.content.Context;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainItem;

/* loaded from: classes3.dex */
public class DataBookDown extends DataBookList {
    /* JADX WARN: Type inference failed for: r1v1, types: [com.mycompany.app.data.book.DataBookDown, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v4, types: [com.mycompany.app.data.book.DataBookDown, java.lang.Object] */
    public static DataBookDown k(Context context) {
        MainApp p = MainApp.p(context);
        if (p == null) {
            return new Object();
        }
        if (p.r0 == null) {
            synchronized (DataBookDown.class) {
                try {
                    if (p.r0 == null) {
                        p.r0 = new Object();
                    }
                } finally {
                }
            }
        }
        return p.r0;
    }

    public final void l(long j, int i, long j2, long j3) {
        MainItem.ChildItem e = e(j);
        if (e != null) {
            e.d = i;
            e.B = j2;
            e.C = j3;
            e.G = null;
            if (i != 2) {
                e.N = false;
            }
        }
    }
}
