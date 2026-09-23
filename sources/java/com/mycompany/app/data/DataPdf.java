package com.mycompany.app.data;

import android.content.Context;
import com.mycompany.app.list.ListTaskPdf;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainUri;

/* loaded from: classes3.dex */
public class DataPdf extends DataList {
    /* JADX WARN: Type inference failed for: r1v1, types: [com.mycompany.app.data.DataPdf, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v4, types: [com.mycompany.app.data.DataPdf, java.lang.Object] */
    public static DataPdf m(Context context) {
        MainApp p = MainApp.p(context);
        if (p == null) {
            return new Object();
        }
        if (p.i0 == null) {
            synchronized (DataPdf.class) {
                try {
                    if (p.i0 == null) {
                        p.i0 = new Object();
                    }
                } finally {
                }
            }
        }
        return p.i0;
    }

    @Override // com.mycompany.app.data.DataList
    public final MainItem.ChildItem h(Context context, MainUri.UriItem uriItem) {
        return ListTaskPdf.r(uriItem);
    }
}
