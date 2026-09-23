package com.mycompany.app.data;

import android.content.Context;
import com.mycompany.app.list.ListTaskCmp;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainUri;

/* loaded from: classes3.dex */
public class DataCmp extends DataList {
    /* JADX WARN: Type inference failed for: r1v1, types: [com.mycompany.app.data.DataCmp, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v4, types: [com.mycompany.app.data.DataCmp, java.lang.Object] */
    public static DataCmp m(Context context) {
        MainApp p = MainApp.p(context);
        if (p == null) {
            return new Object();
        }
        if (p.g0 == null) {
            synchronized (DataCmp.class) {
                try {
                    if (p.g0 == null) {
                        p.g0 = new Object();
                    }
                } finally {
                }
            }
        }
        return p.g0;
    }

    @Override // com.mycompany.app.data.DataList
    public final MainItem.ChildItem h(Context context, MainUri.UriItem uriItem) {
        return ListTaskCmp.r(uriItem);
    }
}
