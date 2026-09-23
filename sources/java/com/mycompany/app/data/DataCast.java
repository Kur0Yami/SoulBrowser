package com.mycompany.app.data;

import android.content.Context;
import com.mycompany.app.list.ListTaskCast;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainUri;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;

/* loaded from: classes3.dex */
public class DataCast extends DataList {
    /* JADX WARN: Type inference failed for: r1v1, types: [com.mycompany.app.data.DataCast, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v4, types: [com.mycompany.app.data.DataCast, java.lang.Object] */
    public static DataCast m(Context context) {
        MainApp p = MainApp.p(context);
        if (p == null) {
            return new Object();
        }
        if (p.f0 == null) {
            synchronized (DataCast.class) {
                try {
                    if (p.f0 == null) {
                        p.f0 = new Object();
                    }
                } finally {
                }
            }
        }
        return p.f0;
    }

    /* JADX WARN: Type inference failed for: r4v1, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
    @Override // com.mycompany.app.data.DataList
    public final MainItem.ChildItem h(Context context, MainUri.UriItem uriItem) {
        if (uriItem == null) {
            return null;
        }
        ?? obj = new Object();
        obj.g = uriItem.e;
        String str = uriItem.f;
        obj.h = str;
        obj.A = uriItem.g;
        obj.B = uriItem.h;
        int i = uriItem.f16985a;
        obj.f16550a = i;
        obj.v = -460552;
        if (i == 4) {
            obj.f16551c = 1;
            obj.w = R.drawable.outline_image_black_24;
        } else if (i == 6) {
            obj.f16551c = 3;
            obj.w = R.drawable.baseline_music_note_black_24;
            obj.Q = MainUtil.u2(str);
        } else {
            obj.f16551c = 2;
            obj.w = R.drawable.baseline_play_arrow_black_24;
            obj.Q = MainUtil.u2(str);
        }
        ListTaskCast.p(obj);
        return obj;
    }
}
