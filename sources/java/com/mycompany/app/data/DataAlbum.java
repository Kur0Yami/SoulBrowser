package com.mycompany.app.data;

import android.content.Context;
import com.mycompany.app.list.ListTaskAlbum;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainUri;

/* loaded from: classes3.dex */
public class DataAlbum extends DataList {
    /* JADX WARN: Type inference failed for: r1v1, types: [com.mycompany.app.data.DataAlbum, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v4, types: [com.mycompany.app.data.DataAlbum, java.lang.Object] */
    public static DataAlbum m(Context context) {
        MainApp p = MainApp.p(context);
        if (p == null) {
            return new Object();
        }
        if (p.e0 == null) {
            synchronized (DataAlbum.class) {
                try {
                    if (p.e0 == null) {
                        p.e0 = new Object();
                    }
                } finally {
                }
            }
        }
        return p.e0;
    }

    @Override // com.mycompany.app.data.DataList
    public final MainItem.ChildItem h(Context context, MainUri.UriItem uriItem) {
        return ListTaskAlbum.r(uriItem);
    }
}
