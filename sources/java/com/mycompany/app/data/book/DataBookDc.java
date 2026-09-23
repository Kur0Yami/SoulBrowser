package com.mycompany.app.data.book;

import android.content.Context;
import com.mycompany.app.main.MainApp;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DataBookDc extends DataBookList {

    /* renamed from: c, reason: collision with root package name */
    public ArrayList f12906c;

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, com.mycompany.app.data.book.DataBookDc] */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.lang.Object, com.mycompany.app.data.book.DataBookDc] */
    public static DataBookDc k(Context context) {
        MainApp p = MainApp.p(context);
        if (p == null) {
            return new Object();
        }
        if (p.q0 == null) {
            synchronized (DataBookDc.class) {
                try {
                    if (p.q0 == null) {
                        p.q0 = new Object();
                    }
                } finally {
                }
            }
        }
        return p.q0;
    }
}
