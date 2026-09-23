package com.mycompany.app.data.book;

import android.content.Context;
import com.mycompany.app.main.MainApp;

/* loaded from: classes3.dex */
public class DataBookUser extends DataBookList {
    /* JADX WARN: Type inference failed for: r1v1, types: [com.mycompany.app.data.book.DataBookUser, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v4, types: [com.mycompany.app.data.book.DataBookUser, java.lang.Object] */
    public static DataBookUser k(Context context) {
        MainApp p = MainApp.p(context);
        if (p == null) {
            return new Object();
        }
        if (p.F0 == null) {
            synchronized (DataBookUser.class) {
                try {
                    if (p.F0 == null) {
                        p.F0 = new Object();
                    }
                } finally {
                }
            }
        }
        return p.F0;
    }
}
