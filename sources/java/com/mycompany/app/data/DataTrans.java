package com.mycompany.app.data;

import android.content.Context;
import com.mycompany.app.main.MainApp;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DataTrans {

    /* renamed from: a, reason: collision with root package name */
    public ArrayList f12900a;

    /* JADX WARN: Type inference failed for: r1v1, types: [com.mycompany.app.data.DataTrans, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v4, types: [com.mycompany.app.data.DataTrans, java.lang.Object] */
    public static DataTrans a(Context context) {
        MainApp p = MainApp.p(context);
        if (p == null) {
            return new Object();
        }
        if (p.k0 == null) {
            synchronized (DataTrans.class) {
                try {
                    if (p.k0 == null) {
                        p.k0 = new Object();
                    }
                } finally {
                }
            }
        }
        return p.k0;
    }

    public final boolean b() {
        try {
            ArrayList arrayList = this.f12900a;
            if (arrayList != null) {
                if (!arrayList.isEmpty()) {
                    return true;
                }
                return false;
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }
}
