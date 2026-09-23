package com.mycompany.app.data.book;

import android.content.Context;
import com.mycompany.app.main.MainApp;

/* loaded from: classes3.dex */
public class DataBookPms extends DataBookList {
    /* JADX WARN: Type inference failed for: r1v1, types: [com.mycompany.app.data.book.DataBookPms, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v4, types: [com.mycompany.app.data.book.DataBookPms, java.lang.Object] */
    public static DataBookPms k(Context context) {
        MainApp p = MainApp.p(context);
        if (p == null) {
            return new Object();
        }
        if (p.y0 == null) {
            synchronized (DataBookPms.class) {
                try {
                    if (p.y0 == null) {
                        p.y0 = new Object();
                    }
                } finally {
                }
            }
        }
        return p.y0;
    }
}
