package com.mycompany.app.subtitle;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class FormatPSB {
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
        if (!TextUtils.isEmpty(str) && str.charAt(0) == '{') {
            if (str.length() >= 18 && str.charAt(8) == '}' && str.charAt(9) == '{' && str.charAt(17) == '}') {
                String substring = str.substring(1, 8);
                String substring2 = str.substring(10, 17);
                Caption caption = new Caption();
                caption.f18301a = new Time(1, substring);
                caption.b = new Time(1, substring2);
                if (str.length() > 18) {
                    caption.f18302c = str.substring(18, str.length()).replace("|", "<br />");
                }
                return caption;
            }
            int indexOf = str.indexOf(125);
            if (indexOf != -1 && str.length() > indexOf + 2) {
                int i = indexOf + 1;
                if (str.charAt(i) == '{') {
                    String substring3 = str.substring(1, indexOf);
                    String substring4 = str.substring(i, str.length());
                    int indexOf2 = substring4.indexOf(125);
                    if (indexOf2 == -1) {
                        return null;
                    }
                    String substring5 = substring4.substring(1, indexOf2);
                    Caption caption2 = new Caption();
                    caption2.f18301a = new Time(1, substring3);
                    caption2.b = new Time(1, substring5);
                    int i2 = indexOf2 + 1;
                    if (substring4.length() > i2) {
                        caption2.f18302c = substring4.substring(i2, substring4.length()).replace("|", "<br />");
                    }
                    return caption2;
                }
                return null;
            }
            return null;
        }
        return null;
    }
}
