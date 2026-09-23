package com.mycompany.app.subtitle;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class FormatSUB {
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

    public static Caption b(String str) {
        int indexOf;
        if (!TextUtils.isEmpty(str) && str.charAt(0) == '{' && (indexOf = str.indexOf(125)) != -1 && str.length() > indexOf + 2) {
            int i = indexOf + 1;
            if (str.charAt(i) == '{') {
                String substring = str.substring(1, indexOf);
                String substring2 = str.substring(i, str.length());
                int indexOf2 = substring2.indexOf(125);
                if (indexOf2 == -1) {
                    return null;
                }
                String substring3 = substring2.substring(1, indexOf2);
                Caption caption = new Caption();
                caption.f18301a = new Time(6, substring);
                caption.b = new Time(6, substring3);
                int i2 = indexOf2 + 1;
                if (substring2.length() > i2) {
                    caption.f18302c = substring2.substring(i2, substring2.length()).replace("|", "<br />");
                }
                return caption;
            }
            return null;
        }
        return null;
    }
}
