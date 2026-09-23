package com.mycompany.app.down;

import android.content.Context;
import android.support.v4.media.a;
import android.text.TextUtils;
import com.mycompany.app.main.MainDownSvc;
import com.mycompany.app.main.MainUtil;

/* loaded from: classes3.dex */
public class DownParseDzen {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0026 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.lang.Object, java.util.Comparator] */
    /* JADX WARN: Type inference failed for: r6v12, types: [java.lang.Object, com.mycompany.app.main.MainDownSvc$M3u8Item] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.ArrayList a(android.content.Context r24, java.lang.String r25) {
        /*
            Method dump skipped, instructions count: 627
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.down.DownParseDzen.a(android.content.Context, java.lang.String):java.util.ArrayList");
    }

    /* JADX WARN: Type inference failed for: r7v4, types: [java.lang.Object, com.mycompany.app.main.MainDownSvc$M3u8Item] */
    public static MainDownSvc.M3u8Item b(String str) {
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

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0058, code lost:
    
        if (f(r0, r11, r12, r15, r13) != false) goto L38;
     */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0092  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.ArrayList c(android.content.Context r11, java.lang.String r12, java.lang.String r13, java.lang.String r14, java.lang.String r15, com.mycompany.app.main.MainDownSvc.DownItem r16, com.mycompany.app.main.MainUtil.LoopCancelListener r17) {
        /*
            Method dump skipped, instructions count: 245
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.down.DownParseDzen.c(android.content.Context, java.lang.String, java.lang.String, java.lang.String, java.lang.String, com.mycompany.app.main.MainDownSvc$DownItem, com.mycompany.app.main.MainUtil$LoopCancelListener):java.util.ArrayList");
    }

    public static int d(Context context, int i, int i2, String str, String str2, String str3, MainDownSvc.DownItem downItem, MainUtil.LoopCancelListener loopCancelListener) {
        int i3;
        do {
            i3 = i;
            i += i2;
            if (i >= 100000) {
                break;
            }
            if (e(downItem, loopCancelListener)) {
                return -1;
            }
        } while (f(i, context, str, str2, str3));
        return i3;
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

    public static boolean f(int i, Context context, String str, String str2, String str3) {
        StringBuilder t = a.t(str);
        t.append(str2.replace("$Number$", Integer.toString(i)));
        return MainUtil.g6(context, t.toString(), str3);
    }
}
