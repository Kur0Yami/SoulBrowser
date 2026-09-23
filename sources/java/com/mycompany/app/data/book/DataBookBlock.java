package com.mycompany.app.data.book;

import android.content.Context;
import com.mycompany.app.main.MainApp;

/* loaded from: classes3.dex */
public class DataBookBlock extends DataBookList {
    /* JADX WARN: Type inference failed for: r1v1, types: [com.mycompany.app.data.book.DataBookBlock, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v4, types: [com.mycompany.app.data.book.DataBookBlock, java.lang.Object] */
    public static DataBookBlock k(Context context) {
        MainApp p = MainApp.p(context);
        if (p == null) {
            return new Object();
        }
        if (p.o0 == null) {
            synchronized (DataBookBlock.class) {
                try {
                    if (p.o0 == null) {
                        p.o0 = new Object();
                    }
                } finally {
                }
            }
        }
        return p.o0;
    }
}
