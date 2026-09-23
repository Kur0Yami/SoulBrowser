package com.mycompany.app.data.book;

import android.content.Context;
import com.mycompany.app.main.MainApp;
import java.util.List;

/* loaded from: classes3.dex */
public class DataBookSearch {

    /* renamed from: a, reason: collision with root package name */
    public List f12914a;
    public List b;

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, com.mycompany.app.data.book.DataBookSearch] */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.lang.Object, com.mycompany.app.data.book.DataBookSearch] */
    public static DataBookSearch a(Context context) {
        MainApp p = MainApp.p(context);
        if (p == null) {
            return new Object();
        }
        if (p.B0 == null) {
            synchronized (DataBookSearch.class) {
                try {
                    if (p.B0 == null) {
                        p.B0 = new Object();
                    }
                } finally {
                }
            }
        }
        return p.B0;
    }
}
