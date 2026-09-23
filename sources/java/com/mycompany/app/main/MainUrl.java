package com.mycompany.app.main;

import android.text.TextUtils;
import com.mycompany.app.subtitle.Subtitle;

/* loaded from: classes3.dex */
public class MainUrl {

    /* renamed from: a, reason: collision with root package name */
    public static final String[] f16987a = {".mp4", ".m3u8", ".webm", ".aac", ".mp3"};
    public static final String[] b = {".jpg", ".png"};

    /* renamed from: c, reason: collision with root package name */
    public static final String[] f16988c = {"mp4&", "m3u8&", "hls&"};

    /* loaded from: classes3.dex */
    public static class MedItem {

        /* renamed from: a, reason: collision with root package name */
        public final String f16989a;
        public final String b;

        public MedItem(String str, String str2) {
            this.f16989a = str;
            this.b = str2;
        }
    }

    public static String a(String str) {
        String D0 = MainUtil.D0(str);
        if (TextUtils.isEmpty(D0)) {
            return str;
        }
        int lastIndexOf = D0.lastIndexOf("http");
        if (lastIndexOf > 0) {
            return D0.substring(lastIndexOf);
        }
        int indexOf = D0.indexOf(32, 4);
        if (indexOf > 0) {
            return D0.substring(0, indexOf);
        }
        return D0;
    }

    public static String b(int i, int i2, String str) {
        while (i2 < i) {
            int indexOf = str.indexOf("http", i2);
            if (indexOf >= i2) {
                int i3 = indexOf + 4;
                int indexOf2 = str.indexOf(38, i3);
                if (indexOf2 < i3) {
                    indexOf2 = i;
                }
                for (int i4 = 0; i4 < 2; i4++) {
                    if (MainUtil.b5(str, i3, indexOf2, b[i4]) != -1) {
                        return a(str.substring(indexOf, indexOf2));
                    }
                }
                i2 = indexOf2 + 1;
            } else {
                return null;
            }
        }
        return null;
    }

    public static int c(String str) {
        int length;
        if (str == null || (length = str.length()) == 0) {
            return -1;
        }
        try {
            int indexOf = str.indexOf(63);
            if (indexOf >= 0) {
                length = indexOf;
            }
            int lastIndexOf = str.lastIndexOf(47, length);
            if (lastIndexOf < 0) {
                lastIndexOf = 0;
            }
            int o6 = MainUtil.o6(str, '#', lastIndexOf, length);
            if (o6 > lastIndexOf && o6 < length) {
                length = o6;
            }
            int o62 = MainUtil.o6(str, '.', lastIndexOf, length);
            if (o62 < lastIndexOf) {
                return -1;
            }
            return o62;
        } catch (Exception unused) {
            return -1;
        }
    }

    public static int d(int i, String str) {
        for (int i2 = 0; i2 < 3; i2++) {
            int indexOf = str.indexOf(f16988c[i2], i);
            if (indexOf != -1 && str.charAt(indexOf - 1) != '.') {
                return indexOf;
            }
        }
        return -1;
    }

    public static boolean e(String str, boolean z) {
        int lastIndexOf;
        int c2 = c(str);
        if (c2 >= 0) {
            int i = 0;
            while (true) {
                if (i >= 5) {
                    break;
                }
                String str2 = f16987a[i];
                if (!str.startsWith(str2, c2)) {
                    i++;
                } else if (z && str2.equals(".m3u8") && (lastIndexOf = str.lastIndexOf(47, c2)) >= 0) {
                    if (MainUtil.b5(str, lastIndexOf, c2, "rendition") == -1 && MainUtil.b5(str, lastIndexOf, c2, "chunk") == -1) {
                        return true;
                    }
                } else {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean f(String str) {
        int c2 = c(str);
        if (c2 >= 0) {
            int i = 0;
            while (true) {
                if (i >= 10) {
                    break;
                }
                if (!str.startsWith(Subtitle.b[i], c2)) {
                    i++;
                } else {
                    int lastIndexOf = str.lastIndexOf(47, c2);
                    if (lastIndexOf >= 0) {
                        if (MainUtil.b5(str, lastIndexOf, c2, "segment") == -1 && MainUtil.b5(str, lastIndexOf, c2, "seg-") == -1 && MainUtil.b5(str, lastIndexOf, c2, "thumb") == -1) {
                            return true;
                        }
                    } else {
                        return true;
                    }
                }
            }
        }
        return false;
    }
}
