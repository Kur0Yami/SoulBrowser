package com.mycompany.app.data.book;

import android.content.Context;
import com.mycompany.app.main.MainApp;

/* loaded from: classes3.dex */
public class DataBookPdf extends DataBookList {
    /* JADX WARN: Type inference failed for: r1v1, types: [com.mycompany.app.data.book.DataBookPdf, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v4, types: [com.mycompany.app.data.book.DataBookPdf, java.lang.Object] */
    public static DataBookPdf k(Context context) {
        MainApp p = MainApp.p(context);
        if (p == null) {
            return new Object();
        }
        if (p.x0 == null) {
            synchronized (DataBookPdf.class) {
                try {
                    if (p.x0 == null) {
                        p.x0 = new Object();
                    }
                } finally {
                }
            }
        }
        return p.x0;
    }
}
