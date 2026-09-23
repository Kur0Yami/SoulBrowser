package com.mycompany.app.data.book;

import android.content.Context;
import com.mycompany.app.main.MainApp;
import java.util.List;

/* loaded from: classes3.dex */
public class DataBookRecent {

    /* renamed from: a, reason: collision with root package name */
    public List f12912a;
    public boolean b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f12913c;

    /* JADX WARN: Type inference failed for: r1v1, types: [com.mycompany.app.data.book.DataBookRecent, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v4, types: [com.mycompany.app.data.book.DataBookRecent, java.lang.Object] */
    public static DataBookRecent a(Context context) {
        MainApp p = MainApp.p(context);
        if (p == null) {
            return new Object();
        }
        if (p.A0 == null) {
            synchronized (DataBookRecent.class) {
                try {
                    if (p.A0 == null) {
                        p.A0 = new Object();
                    }
                } finally {
                }
            }
        }
        return p.A0;
    }
}
