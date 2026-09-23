package com.mycompany.app.subtitle;

import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.subtitle.Subtitle;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class FormatASS {
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

    public static Caption b(String[] strArr, String[] strArr2, float f) {
        Caption caption = new Caption();
        for (int i = 0; i < strArr2.length; i++) {
            try {
                String trim = strArr2[i].trim();
                if (trim.equalsIgnoreCase("Start")) {
                    caption.f18301a = new Time(2, strArr[i].trim());
                } else if (trim.equalsIgnoreCase("End")) {
                    caption.b = new Time(2, strArr[i].trim());
                } else if (trim.equalsIgnoreCase("Text")) {
                    caption.f18302c = strArr[i].replaceAll("\\{.*?}", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED).replace("\n", "<br />").replace("\\N", "<br />");
                }
            } catch (Exception unused) {
                return null;
            }
        }
        if (f != 100.0f) {
            float f2 = f / 100.0f;
            caption.f18301a.f18309a = (int) (r7.f18309a / f2);
            caption.b.f18309a = (int) (r6.f18309a / f2);
        }
        return caption;
    }

    public static ArrayList c(InputStream inputStream, String str, Subtitle.SubtitleListener subtitleListener) {
        BufferedReader bufferedReader;
        boolean z;
        Caption b;
        if (inputStream != null) {
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
                    String readLine = bufferedReader.readLine();
                    float f = 100.0f;
                    while (readLine != null) {
                        if (subtitleListener.a()) {
                            break;
                        }
                        String trim = readLine.trim();
                        if (trim.startsWith("[")) {
                            if (trim.equalsIgnoreCase("[Script info]")) {
                                readLine = bufferedReader.readLine().trim();
                                while (!readLine.startsWith("[")) {
                                    if (!readLine.startsWith("Script Type:") && readLine.startsWith("Timer:")) {
                                        f = Float.parseFloat(readLine.split(":")[1].trim().replace(',', '.'));
                                    }
                                    readLine = bufferedReader.readLine().trim();
                                }
                            } else {
                                if (!trim.equalsIgnoreCase("[v4 Styles]") && !trim.equalsIgnoreCase("[v4 Styles+]") && !trim.equalsIgnoreCase("[v4+ Styles]")) {
                                    if (trim.trim().equalsIgnoreCase("[Events]")) {
                                        String trim2 = bufferedReader.readLine().trim();
                                        if (!trim2.startsWith("Format:")) {
                                            while (!trim2.startsWith("Format:")) {
                                                trim2 = bufferedReader.readLine().trim();
                                            }
                                        }
                                        String[] split2 = trim2.split(":")[1].trim().split(",");
                                        String trim3 = bufferedReader.readLine().trim();
                                        while (!trim3.startsWith("[")) {
                                            if (trim3.startsWith("Dialogue:") && (b = b(trim3.split(":", 2)[1].trim().split(",", split2.length), split2, f)) != null) {
                                                int i = b.f18301a.f18309a;
                                                while (arrayList2.contains(Integer.valueOf(i))) {
                                                    i++;
                                                }
                                                b.f18301a.f18309a = i;
                                                arrayList2.add(Integer.valueOf(i));
                                                a(b, arrayList);
                                            }
                                            trim3 = bufferedReader.readLine().trim();
                                        }
                                        readLine = trim3;
                                    } else {
                                        if (!trim.trim().equalsIgnoreCase("[Fonts]") && !trim.trim().equalsIgnoreCase("[Graphics]")) {
                                            readLine = bufferedReader.readLine().trim();
                                        }
                                        readLine = bufferedReader.readLine().trim();
                                    }
                                }
                                String trim4 = bufferedReader.readLine().trim();
                                if (!trim4.startsWith("Format:")) {
                                    while (!trim4.startsWith("Format:")) {
                                        trim4 = bufferedReader.readLine().trim();
                                    }
                                }
                                readLine = bufferedReader.readLine().trim();
                                while (!readLine.startsWith("[")) {
                                    readLine = bufferedReader.readLine().trim();
                                }
                            }
                        } else {
                            readLine = bufferedReader.readLine();
                        }
                    }
                } catch (Exception unused3) {
                }
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (Exception unused4) {
                    }
                }
                return arrayList;
            }
        }
        return null;
    }
}
