package com.mycompany.app.data.book;

import android.content.Context;
import com.mycompany.app.main.MainApp;

/* loaded from: classes3.dex */
public class DataBookFilter extends DataBookList {
    /* JADX WARN: Type inference failed for: r1v1, types: [com.mycompany.app.data.book.DataBookFilter, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v4, types: [com.mycompany.app.data.book.DataBookFilter, java.lang.Object] */
    public static DataBookFilter k(Context context) {
        MainApp p = MainApp.p(context);
        if (p == null) {
            return new Object();
        }
        if (p.s0 == null) {
            synchronized (DataBookFilter.class) {
                try {
                    if (p.s0 == null) {
                        p.s0 = new Object();
                    }
                } finally {
                }
            }
        }
        return p.s0;
    }
}
