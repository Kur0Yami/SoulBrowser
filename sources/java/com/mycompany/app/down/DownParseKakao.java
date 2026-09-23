package com.mycompany.app.down;

import android.content.Context;
import android.support.v4.media.a;
import android.text.TextUtils;
import com.mycompany.app.main.MainDownSvc;
import com.mycompany.app.main.MainUtil;
import java.util.Locale;

/* loaded from: classes3.dex */
public class DownParseKakao {
    /* JADX WARN: Type inference failed for: r7v4, types: [java.lang.Object, com.mycompany.app.main.MainDownSvc$M3u8Item] */
    public static MainDownSvc.M3u8Item a(String str) {
        String[] split2;
        String str2;
        String str3;
        String str4;
        String M0 = MainUtil.M0(str);
        String str5 = null;
        if (TextUtils.isEmpty(M0) || (split2 = M0.split("<,>")) == null || split2.length != 5 || (str2 = split2[0]) == null || (str3 = split2[1]) == null || (str4 = split2[2]) == null) {
            return null;
        }
        String str6 = split2[3];
        String str7 = split2[4];
        if ("isNull".equals(str6)) {
            str6 = null;
        }
        if (!"isNull".equals(str7)) {
            str5 = str7;
        }
        ?? obj = new Object();
        obj.f16529a = str2;
        obj.g = str3;
        obj.b = str4;
        obj.h = str6;
        obj.f16530c = str5;
        return obj;
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x013a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.ArrayList b(android.content.Context r19, java.lang.String r20, java.lang.String r21, java.lang.String r22, java.lang.String r23, com.mycompany.app.main.MainDownSvc.DownItem r24, com.mycompany.app.main.MainUtil.LoopCancelListener r25) {
        /*
            Method dump skipped, instructions count: 369
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.down.DownParseKakao.b(android.content.Context, java.lang.String, java.lang.String, java.lang.String, java.lang.String, com.mycompany.app.main.MainDownSvc$DownItem, com.mycompany.app.main.MainUtil$LoopCancelListener):java.util.ArrayList");
    }

    public static int c(Context context, int i, int i2, String str, String str2, String str3, String str4, MainDownSvc.DownItem downItem, MainUtil.LoopCancelListener loopCancelListener) {
        int i3 = i + i2;
        while (i3 < 100000) {
            if (e(downItem, loopCancelListener)) {
                return -1;
            }
            Context context2 = context;
            String str5 = str;
            String str6 = str2;
            String str7 = str3;
            String str8 = str4;
            if (!f(context2, i3, str5, str6, str7, str8)) {
                break;
            }
            i = i3;
            str = str5;
            str2 = str6;
            str3 = str7;
            str4 = str8;
            i3 += i2;
            context = context2;
        }
        return i;
    }

    public static String d(int i, String str, String str2, String str3) {
        StringBuilder t = a.t(str);
        t.append(String.format(Locale.US, str2, Integer.valueOf(i)));
        if (!TextUtils.isEmpty(str3)) {
            t.append(str3);
        }
        return t.toString();
    }

    public static boolean e(MainDownSvc.DownItem downItem, MainUtil.LoopCancelListener loopCancelListener) {
        if (downItem != null) {
            if (downItem.f16518c == 6) {
                return true;
            }
            return false;
        }
        if (loopCancelListener != null && loopCancelListener.isCancelled()) {
            return true;
        }
        return false;
    }

    public static boolean f(Context context, int i, String str, String str2, String str3, String str4) {
        return MainUtil.g6(context, d(i, str, str2, str3), str4);
    }
}
