package com.mycompany.app.subtitle;

import com.mycompany.app.main.MainUtil;
import java.util.ArrayList;
import java.util.List;
import org.w3c.dom.Document;
import org.w3c.dom.Node;

/* loaded from: classes3.dex */
public class FormatTTML {
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

    public static int b(String str, Document document) {
        Node item;
        int parseInt;
        double d;
        double d2;
        int i;
        if (MainUtil.r(58, str)) {
            String[] split2 = str.split(":");
            if (split2.length == 3) {
                return (Integer.parseInt(split2[1]) * 60000) + (Integer.parseInt(split2[0]) * 3600000) + ((int) (Float.parseFloat(split2[2]) * 1000.0f));
            }
            if (split2.length != 4) {
                return 0;
            }
            Node item2 = document.getElementsByTagName("ttp:frameRate").item(0);
            if (item2 != null) {
                try {
                    i = Integer.parseInt(item2.getNodeValue());
                } catch (NumberFormatException unused) {
                }
                return (Integer.parseInt(split2[2]) * 1000) + (Integer.parseInt(split2[1]) * 60000) + (Integer.parseInt(split2[0]) * 3600000) + ((int) ((Float.parseFloat(split2[3]) * 1000.0f) / i));
            }
            i = 25;
            return (Integer.parseInt(split2[2]) * 1000) + (Integer.parseInt(split2[1]) * 60000) + (Integer.parseInt(split2[0]) * 3600000) + ((int) ((Float.parseFloat(split2[3]) * 1000.0f) / i));
        }
        String substring = str.substring(str.length() - 1);
        try {
            double parseDouble = Double.parseDouble(str.substring(0, str.length() - 1).replace(',', '.').trim());
            if (substring.equalsIgnoreCase("h")) {
                d2 = 3600000.0d;
            } else if (substring.equalsIgnoreCase("m")) {
                d2 = 60000.0d;
            } else {
                if (substring.equalsIgnoreCase("s")) {
                    d = parseDouble * 1000.0d;
                } else {
                    if (substring.equalsIgnoreCase("ms")) {
                        return (int) parseDouble;
                    }
                    if (substring.equalsIgnoreCase("f")) {
                        Node item3 = document.getElementsByTagName("ttp:frameRate").item(0);
                        if (item3 == null) {
                            return 0;
                        }
                        parseInt = Integer.parseInt(item3.getNodeValue());
                    } else {
                        if (!substring.equalsIgnoreCase("t") || (item = document.getElementsByTagName("ttp:tickRate").item(0)) == null) {
                            return 0;
                        }
                        parseInt = Integer.parseInt(item.getNodeValue());
                    }
                    d = (parseDouble * 1000.0d) / parseInt;
                }
                return (int) d;
            }
            d = parseDouble * d2;
            return (int) d;
        } catch (NumberFormatException unused2) {
            return 0;
        }
    }
}
