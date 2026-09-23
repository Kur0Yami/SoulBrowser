package com.mycompany.app.subtitle;

import android.text.TextUtils;

/* loaded from: classes3.dex */
public class Time {

    /* renamed from: a, reason: collision with root package name */
    public int f18309a;

    public Time(int i, String str) {
        String str2;
        int i2;
        int i3;
        int i4;
        if (i != 0 && !TextUtils.isEmpty(str)) {
            if (i == 1) {
                String[] split2 = str.split(":");
                if (split2.length == 3) {
                    this.f18309a = (Integer.parseInt(split2[2]) * 1000) + (Integer.parseInt(split2[1]) * 60000) + (Integer.parseInt(split2[0]) * 3600000);
                    return;
                }
                return;
            }
            if (i == 2) {
                int lastIndexOf = str.lastIndexOf(46);
                if (lastIndexOf != -1 && (i4 = lastIndexOf + 1) < str.length()) {
                    String substring = str.substring(0, lastIndexOf);
                    String substring2 = str.substring(i4);
                    String[] split3 = substring.split(":");
                    if (split3.length == 3) {
                        int parseInt = Integer.parseInt(split3[0]);
                        int parseInt2 = Integer.parseInt(split3[1]);
                        this.f18309a = (Integer.parseInt(substring2) * 10) + (Integer.parseInt(split3[2]) * 1000) + (parseInt2 * 60000) + (parseInt * 3600000);
                        return;
                    }
                    return;
                }
                return;
            }
            if (i != 3 && i != 4) {
                if (i == 5) {
                    int lastIndexOf2 = str.lastIndexOf(47);
                    if (lastIndexOf2 != -1 && (i3 = lastIndexOf2 + 1) < str.length()) {
                        String substring3 = str.substring(0, lastIndexOf2);
                        String substring4 = str.substring(i3);
                        String[] split4 = substring3.split(":");
                        if (split4.length == 4) {
                            int parseInt3 = Integer.parseInt(split4[0]);
                            this.f18309a = (Integer.parseInt(split4[2]) * 1000) + (Integer.parseInt(split4[1]) * 60000) + (parseInt3 * 3600000) + ((int) ((Integer.parseInt(split4[3]) * 1000) / Float.parseFloat(substring4)));
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (i == 6) {
                    this.f18309a = Integer.parseInt(str) * 40;
                    return;
                }
                return;
            }
            if (i == 3) {
                str2 = ",";
            } else {
                str2 = ".";
            }
            int lastIndexOf3 = str.lastIndexOf(str2);
            if (lastIndexOf3 != -1 && (i2 = lastIndexOf3 + 1) < str.length()) {
                String substring5 = str.substring(0, lastIndexOf3);
                String substring6 = str.substring(i2);
                String[] split5 = substring5.split(":");
                if (split5.length == 3) {
                    int parseInt4 = Integer.parseInt(split5[0]);
                    this.f18309a = (Integer.parseInt(split5[2]) * 1000) + (Integer.parseInt(split5[1]) * 60000) + (parseInt4 * 3600000) + Integer.parseInt(substring6);
                }
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        String valueOf = String.valueOf(this.f18309a / 3600000);
        if (valueOf.length() == 1) {
            sb.append('0');
        }
        sb.append(valueOf);
        sb.append(':');
        String valueOf2 = String.valueOf((this.f18309a / 60000) % 60);
        if (valueOf2.length() == 1) {
            sb.append('0');
        }
        sb.append(valueOf2);
        sb.append(':');
        String valueOf3 = String.valueOf((this.f18309a / 1000) % 60);
        if (valueOf3.length() == 1) {
            sb.append('0');
        }
        sb.append(valueOf3);
        sb.append('.');
        String valueOf4 = String.valueOf((this.f18309a / 10) % 100);
        if (valueOf4.length() == 1) {
            sb.append('0');
        }
        sb.append(valueOf4);
        return sb.toString();
    }
}
