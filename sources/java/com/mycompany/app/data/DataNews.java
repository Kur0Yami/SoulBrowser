package com.mycompany.app.data;

import android.content.Context;
import com.mycompany.app.main.MainApp;
import java.util.List;

/* loaded from: classes3.dex */
public class DataNews {

    /* renamed from: a, reason: collision with root package name */
    public List f12897a;
    public String b;

    /* renamed from: c, reason: collision with root package name */
    public long f12898c;

    /* JADX WARN: Type inference failed for: r1v1, types: [com.mycompany.app.data.DataNews, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v4, types: [com.mycompany.app.data.DataNews, java.lang.Object] */
    public static DataNews a(Context context) {
        MainApp p = MainApp.p(context);
        if (p == null) {
            return new Object();
        }
        if (p.h0 == null) {
            synchronized (DataNews.class) {
                try {
                    if (p.h0 == null) {
                        p.h0 = new Object();
                    }
                } finally {
                }
            }
        }
        return p.h0;
    }

    public final long b(List list) {
        this.f12897a = list;
        this.b = null;
        if (list != null && !list.isEmpty()) {
            this.f12898c = System.currentTimeMillis();
        } else {
            this.f12898c = 0L;
        }
        return this.f12898c;
    }
}
