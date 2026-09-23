package com.mycompany.app.data;

import android.content.Context;
import android.text.TextUtils;
import com.mycompany.app.main.MainApp;
import java.util.List;

/* loaded from: classes3.dex */
public class DataUrl {

    /* renamed from: a, reason: collision with root package name */
    public List f12901a;
    public List b;

    /* renamed from: c, reason: collision with root package name */
    public ImgCntItem f12902c;

    /* loaded from: classes3.dex */
    public static class ImgCntItem {

        /* renamed from: a, reason: collision with root package name */
        public int f12903a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int f12904c;
        public int d;
        public int e;
        public int f;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.mycompany.app.data.DataUrl, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v4, types: [com.mycompany.app.data.DataUrl, java.lang.Object] */
    public static DataUrl b(Context context) {
        MainApp p = MainApp.p(context);
        if (p == null) {
            return new Object();
        }
        if (p.l0 == null) {
            synchronized (DataUrl.class) {
                try {
                    if (p.l0 == null) {
                        p.l0 = new Object();
                    }
                } finally {
                }
            }
        }
        return p.l0;
    }

    public final int a() {
        List list = this.f12901a;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public final void c(String str, String str2) {
        List list;
        int indexOf;
        if (!TextUtils.isEmpty(str) && (list = this.f12901a) != null && !list.isEmpty() && (indexOf = this.f12901a.indexOf(str)) >= 0 && indexOf < this.f12901a.size()) {
            this.f12901a.set(indexOf, str2);
        }
    }
}
