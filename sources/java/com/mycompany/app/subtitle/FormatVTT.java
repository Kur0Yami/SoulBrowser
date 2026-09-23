package com.mycompany.app.subtitle;

import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.subtitle.Subtitle;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class FormatVTT {
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

    public static ArrayList b(InputStream inputStream, String str, Subtitle.SubtitleListener subtitleListener) {
        BufferedReader bufferedReader;
        boolean z;
        Caption caption;
        if (inputStream != null) {
            boolean z2 = true;
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(inputStream, str));
                z = false;
            } catch (Exception unused) {
                bufferedReader = null;
                z = true;
            }
            if (z) {
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (Exception unused2) {
                    }
                }
            } else {
                ArrayList arrayList = new ArrayList();
                arrayList.add(new ArrayList());
                ArrayList arrayList2 = new ArrayList();
                try {
                    String replace = bufferedReader.readLine().replace("\ufeff", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                    while (replace != null) {
                        if (subtitleListener.a()) {
                            break;
                        }
                        String trim = replace.trim();
                        if (!trim.isEmpty()) {
                            if (z2) {
                                if (trim.contains("WEBVTT")) {
                                    z2 = false;
                                }
                                replace = bufferedReader.readLine();
                            } else {
                                if (MainUtil.H6(trim) != -1) {
                                    trim = bufferedReader.readLine().trim();
                                }
                                try {
                                    String substring = trim.substring(0, 12);
                                    String substring2 = trim.substring(trim.length() - 12, trim.length());
                                    caption = new Caption();
                                    caption.f18301a = new Time(4, substring);
                                    caption.b = new Time(4, substring2);
                                } catch (Exception unused3) {
                                    caption = null;
                                }
                                if (caption != null) {
                                    trim = bufferedReader.readLine().trim();
                                    String str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                                    while (!trim.isEmpty()) {
                                        if (!TextUtils.isEmpty(str2)) {
                                            str2 = str2 + "<br />";
                                        }
                                        str2 = str2 + trim;
                                        trim = bufferedReader.readLine().trim();
                                    }
                                    caption.f18302c = str2;
                                    int i = caption.f18301a.f18309a;
                                    while (arrayList2.contains(Integer.valueOf(i))) {
                                        i++;
                                    }
                                    caption.f18301a.f18309a = i;
                                    arrayList2.add(Integer.valueOf(i));
                                    a(caption, arrayList);
                                }
                                while (!trim.isEmpty()) {
                                    trim = bufferedReader.readLine().trim();
                                }
                            }
                        }
                        replace = bufferedReader.readLine();
                    }
                } catch (Exception unused4) {
                }
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (Exception unused5) {
                    }
                }
                return arrayList;
            }
        }
        return null;
    }
}
