package com.mycompany.app.data.book;

import android.content.Context;
import com.mycompany.app.main.MainApp;

/* loaded from: classes3.dex */
public class DataBookAlbum extends DataBookList {
    /* JADX WARN: Type inference failed for: r1v1, types: [com.mycompany.app.data.book.DataBookAlbum, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v4, types: [com.mycompany.app.data.book.DataBookAlbum, java.lang.Object] */
    public static DataBookAlbum k(Context context) {
        MainApp p = MainApp.p(context);
        if (p == null) {
            return new Object();
        }
        if (p.n0 == null) {
            synchronized (DataBookAlbum.class) {
                try {
                    if (p.n0 == null) {
                        p.n0 = new Object();
                    }
                } finally {
                }
            }
        }
        return p.n0;
    }
}
