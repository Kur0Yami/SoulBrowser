package com.mycompany.app.subtitle;

import android.support.v4.media.a;
import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.main.MainUtil;
import java.util.ArrayList;
import java.util.Locale;

/* loaded from: classes3.dex */
public class FormatSMI {

    /* loaded from: classes3.dex */
    public static class LangItem {

        /* renamed from: a, reason: collision with root package name */
        public final int f18303a;
        public final String b;

        public LangItem(int i, String str) {
            this.f18303a = i;
            this.b = str;
        }
    }

    /* loaded from: classes3.dex */
    public static class TimeItem {

        /* renamed from: a, reason: collision with root package name */
        public long f18304a;
        public String b;

        /* renamed from: c, reason: collision with root package name */
        public String f18305c;
    }

    public static LangItem a(String str, String str2, ArrayList arrayList) {
        String str3;
        int indexOf = str2.indexOf("<p class=");
        if (indexOf == -1) {
            return new LangItem(0, str);
        }
        int i = indexOf + 9;
        String substring = str.substring(i, str.length());
        int indexOf2 = substring.indexOf(62);
        if (indexOf2 == -1) {
            return new LangItem(0, str);
        }
        String substring2 = substring.substring(0, indexOf2);
        String str4 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        if (indexOf > 0) {
            str3 = str.substring(0, indexOf);
        } else {
            str3 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        int i2 = i + indexOf2 + 1;
        if (i2 < str.length()) {
            str4 = str.substring(i2, str.length());
        }
        String k = a.k(str3, str4);
        if (TextUtils.isEmpty(substring2)) {
            return new LangItem(0, k);
        }
        String lowerCase = substring2.toLowerCase(Locale.US);
        int size = arrayList.size();
        if (size == 0) {
            arrayList.add(lowerCase);
            return new LangItem(0, k);
        }
        for (int i3 = 0; i3 < size; i3++) {
            if (lowerCase.equals(arrayList.get(i3))) {
                return new LangItem(i3, k);
            }
        }
        arrayList.add(lowerCase);
        return new LangItem(size, k);
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Object, com.mycompany.app.subtitle.FormatSMI$TimeItem] */
    public static TimeItem b(String str, String str2) {
        int i;
        String substring;
        int indexOf;
        String str3;
        String str4;
        String str5;
        int indexOf2 = str2.indexOf("<sync start=");
        if (indexOf2 == -1 || (indexOf = (substring = str.substring((i = indexOf2 + 12), str.length())).indexOf(62)) == -1) {
            return null;
        }
        long I6 = MainUtil.I6(substring.substring(0, indexOf));
        String str6 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        if (indexOf2 > 0) {
            str4 = str.substring(0, indexOf2);
            str3 = str2.substring(0, indexOf2);
        } else {
            str3 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            str4 = str3;
        }
        int i2 = i + indexOf + 1;
        if (i2 < str.length()) {
            str6 = str.substring(i2, str.length());
            str5 = str2.substring(i2, str2.length());
        } else {
            str5 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        String k = a.k(str4, str6);
        String k2 = a.k(str3, str5);
        ?? obj = new Object();
        obj.f18304a = I6;
        obj.b = k;
        obj.f18305c = k2;
        return obj;
    }

    public static String c(String str) {
        String[] split2;
        String str2;
        int charAt;
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        if (str.contains("<font color") && (split2 = str.split("<font color")) != null && split2.length != 0) {
            StringBuilder sb = new StringBuilder();
            int length = split2.length;
            for (int i = 0; i < length; i++) {
                int indexOf = split2[i].indexOf(61);
                int indexOf2 = split2[i].indexOf(62);
                if (indexOf != -1 && indexOf2 != -1 && indexOf <= indexOf2) {
                    String substring = split2[i].substring(indexOf + 1, indexOf2);
                    if (substring.startsWith("\"") && substring.endsWith("\"")) {
                        sb.append("<font color");
                        if (substring.startsWith("\"#")) {
                            sb.append(split2[i]);
                        } else {
                            sb.append(split2[i].replace(substring, "\"#" + substring.substring(1)));
                        }
                    } else {
                        String replaceAll = substring.replaceAll("[^a-zA-Z]", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                        String lowerCase = replaceAll.toLowerCase(Locale.US);
                        if (lowerCase.length() > 0 && lowerCase.charAt(0) - 'a' >= 0 && charAt < 26) {
                            String[][][] strArr = SubtitleColor.f18307a;
                            int length2 = strArr[charAt].length;
                            for (int i2 = 0; i2 < length2; i2++) {
                                if (lowerCase.equals(strArr[charAt][i2][0])) {
                                    str2 = strArr[charAt][i2][1];
                                    break;
                                }
                            }
                        }
                        str2 = null;
                        sb.append("<font color");
                        if (str2 != null) {
                            sb.append(split2[i].replace(replaceAll, str2));
                        } else {
                            sb.append(split2[i]);
                        }
                    }
                } else {
                    sb.append(split2[i]);
                }
            }
            return sb.toString();
        }
        return str;
    }
}
