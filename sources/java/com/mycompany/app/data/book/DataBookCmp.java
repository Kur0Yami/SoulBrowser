package com.mycompany.app.data.book;

import android.content.Context;
import com.mycompany.app.main.MainApp;

/* loaded from: classes3.dex */
public class DataBookCmp extends DataBookList {
    /* JADX WARN: Type inference failed for: r1v1, types: [com.mycompany.app.data.book.DataBookCmp, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v4, types: [com.mycompany.app.data.book.DataBookCmp, java.lang.Object] */
    public static DataBookCmp k(Context context) {
        MainApp p = MainApp.p(context);
        if (p == null) {
            return new Object();
        }
        if (p.p0 == null) {
            synchronized (DataBookCmp.class) {
                try {
                    if (p.p0 == null) {
                        p.p0 = new Object();
                    }
                } finally {
                }
            }
        }
        return p.p0;
    }
}
