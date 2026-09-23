package com.mycompany.app.data.book;

import android.content.Context;
import com.mycompany.app.main.MainApp;

/* loaded from: classes3.dex */
public class DataBookHistory extends DataBookList {
    /* JADX WARN: Type inference failed for: r1v1, types: [com.mycompany.app.data.book.DataBookHistory, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v4, types: [com.mycompany.app.data.book.DataBookHistory, java.lang.Object] */
    public static DataBookHistory k(Context context) {
        MainApp p = MainApp.p(context);
        if (p == null) {
            return new Object();
        }
        if (p.t0 == null) {
            synchronized (DataBookHistory.class) {
                try {
                    if (p.t0 == null) {
                        p.t0 = new Object();
                    }
                } finally {
                }
            }
        }
        return p.t0;
    }
}
