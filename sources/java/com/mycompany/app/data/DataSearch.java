package com.mycompany.app.data;

import android.content.Context;
import com.mycompany.app.main.MainApp;
import java.util.List;

/* loaded from: classes3.dex */
public class DataSearch {

    /* renamed from: a, reason: collision with root package name */
    public List f12899a;
    public List b;

    /* JADX WARN: Type inference failed for: r1v1, types: [com.mycompany.app.data.DataSearch, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v4, types: [com.mycompany.app.data.DataSearch, java.lang.Object] */
    public static DataSearch a(Context context) {
        MainApp p = MainApp.p(context);
        if (p == null) {
            return new Object();
        }
        if (p.j0 == null) {
            synchronized (DataSearch.class) {
                try {
                    if (p.j0 == null) {
                        p.j0 = new Object();
                    }
                } finally {
                }
            }
        }
        return p.j0;
    }
}
