package com.mycompany.app.subtitle;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class FormatSRT {
    public static void a(Caption caption, ArrayList arrayList) {
        List list;
        SubtitleItem subtitleItem;
        if (arrayList.size() == 0 || (list = (List) arrayList.get(0)) == null) {
            return;
        }
        if (caption.f18301a.f18309a < caption.b.f18309a) {
            int size = list.size();
            if (size > 0 && (subtitleItem = (SubtitleItem) list.get(size - 1)) != null && subtitleItem.f18308a == caption.f18301a.f18309a) {
                subtitleItem.b = caption.f18302c;
            } else {
                list.add(new SubtitleItem(caption.f18301a.f18309a, caption.f18302c));
            }
        }
        list.add(new SubtitleItem(caption.b.f18309a, null));
    }
}
