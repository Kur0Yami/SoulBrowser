package com.mycompany.app.data.book;

import android.content.Context;
import com.mycompany.app.main.MainApp;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DataBookOver extends DataBookList {

    /* renamed from: c, reason: collision with root package name */
    public ArrayList f12910c;

    /* JADX WARN: Type inference failed for: r1v1, types: [com.mycompany.app.data.book.DataBookOver, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v4, types: [com.mycompany.app.data.book.DataBookOver, java.lang.Object] */
    public static DataBookOver k(Context context) {
        MainApp p = MainApp.p(context);
        if (p == null) {
            return new Object();
        }
        if (p.w0 == null) {
            synchronized (DataBookOver.class) {
                try {
                    if (p.w0 == null) {
                        p.w0 = new Object();
                    }
                } finally {
                }
            }
        }
        return p.w0;
    }
}
