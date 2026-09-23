package com.mycompany.app.data.book;

import android.content.Context;
import com.mycompany.app.main.MainApp;

/* loaded from: classes3.dex */
public class DataBookScript extends DataBookList {
    /* JADX WARN: Type inference failed for: r1v1, types: [com.mycompany.app.data.book.DataBookScript, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v4, types: [com.mycompany.app.data.book.DataBookScript, java.lang.Object] */
    public static DataBookScript k(Context context) {
        MainApp p = MainApp.p(context);
        if (p == null) {
            return new Object();
        }
        if (p.C0 == null) {
            synchronized (DataBookScript.class) {
                try {
                    if (p.C0 == null) {
                        p.C0 = new Object();
                    }
                } finally {
                }
            }
        }
        return p.C0;
    }
}
