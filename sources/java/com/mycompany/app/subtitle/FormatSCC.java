package com.mycompany.app.subtitle;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class FormatSCC {
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

    public static String b(byte b) {
        if (b != 0) {
            if (b != 42) {
                if (b != 92) {
                    switch (b) {
                        case 94:
                            return "í";
                        case 95:
                            return "ó";
                        case 96:
                            return "ú";
                        default:
                            switch (b) {
                                case 123:
                                    return "ç";
                                case 124:
                                    return "�";
                                case 125:
                                    return "Ñ";
                                case 126:
                                    return "ñ";
                                case Byte.MAX_VALUE:
                                    return "|";
                                default:
                                    return Character.toString((char) b);
                            }
                    }
                }
                return "é";
            }
            return "�";
        }
        return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }
}
