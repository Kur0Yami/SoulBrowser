package com.mycompany.app.subtitle;

import com.mycompany.app.subtitle.Subtitle;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class FormatSTL {
    public static void a(Caption caption, byte[] bArr, ArrayList arrayList, ArrayList arrayList2, Subtitle.SubtitleListener subtitleListener) {
        List list;
        SubtitleItem subtitleItem;
        StringBuilder sb = null;
        int i = 0;
        while (i < bArr.length && !subtitleListener.a()) {
            byte b = bArr[i];
            if (b < 0) {
                if (b <= -113) {
                    int i2 = i + 1;
                    if (i2 < bArr.length && b == bArr[i2]) {
                        i = i2;
                    }
                    byte b2 = bArr[i];
                    if (b2 != -118) {
                        if (b2 == -113) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(caption.f18302c);
                            if (sb != null) {
                                sb2.append((CharSequence) sb);
                            }
                            caption.f18302c = sb2.toString();
                            int i3 = caption.f18301a.f18309a;
                            while (arrayList.contains(Integer.valueOf(i3))) {
                                i3++;
                            }
                            caption.f18301a.f18309a = i3;
                            arrayList.add(Integer.valueOf(i3));
                            if (arrayList2.size() != 0 && (list = (List) arrayList2.get(0)) != null) {
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
                            i = bArr.length;
                        }
                    } else {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(caption.f18302c);
                        if (sb != null) {
                            sb3.append((CharSequence) sb);
                        }
                        sb3.append("<br />");
                        caption.f18302c = sb3.toString();
                    }
                    sb = null;
                }
            } else if (b < 32) {
                int i4 = i + 1;
                if (i4 < bArr.length && b == bArr[i4]) {
                    i = i4;
                }
            } else {
                byte[] bArr2 = {b};
                if (sb == null) {
                    sb = new StringBuilder();
                }
                sb.append(new String(bArr2));
            }
            i++;
        }
    }
}
