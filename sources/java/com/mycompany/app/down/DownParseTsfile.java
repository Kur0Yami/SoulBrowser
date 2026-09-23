package com.mycompany.app.down;

import android.content.Context;
import android.support.v4.media.a;
import android.text.TextUtils;
import com.mycompany.app.main.MainDownSvc;
import com.mycompany.app.main.MainUtil;
import java.util.ArrayList;
import java.util.Locale;

/* loaded from: classes3.dex */
public class DownParseTsfile {
    public static ArrayList a(Context context, String str, String str2, MainDownSvc.DownItem downItem, boolean z, MainUtil.LoopCancelListener loopCancelListener) {
        int lastIndexOf;
        int i;
        int lastIndexOf2;
        boolean z2;
        int i2;
        int i3;
        int b;
        ArrayList arrayList = null;
        if (downItem != null || loopCancelListener != null) {
            String M0 = MainUtil.M0(str);
            if (!TextUtils.isEmpty(M0)) {
                if (z) {
                    lastIndexOf = M0.lastIndexOf(46);
                } else {
                    lastIndexOf = M0.lastIndexOf(".ts");
                }
                int i4 = lastIndexOf;
                if (i4 > 0 && i4 < M0.length() && (lastIndexOf2 = M0.lastIndexOf(47, i4 - 1)) > 0) {
                    int lastIndexOf3 = M0.lastIndexOf("-v1-a1", i);
                    if (lastIndexOf3 > lastIndexOf2 && lastIndexOf3 < i4) {
                        z2 = true;
                    } else {
                        z2 = false;
                        String J1 = MainUtil.J1(M0, false);
                        if (!TextUtils.isEmpty(J1)) {
                            z2 = J1.endsWith("cdn.qooqlevideo.com");
                        }
                    }
                    if (!z2) {
                        int i5 = -1;
                        i3 = -1;
                        while (i != lastIndexOf2) {
                            char charAt = M0.charAt(i);
                            if (charAt >= '0' && charAt <= '9') {
                                if (i3 == -1) {
                                    i3 = i + 1;
                                }
                                i5 = i;
                            } else if (i3 != -1) {
                                break;
                            }
                            i--;
                        }
                        if (i5 != -1 && i3 != -1) {
                            i2 = b(M0, i5, i3, z);
                            arrayList = d(context, M0, str2, i2, i3, downItem, loopCancelListener);
                            if (arrayList != null && arrayList.size() > 1) {
                                return arrayList;
                            }
                        }
                    } else {
                        i2 = -1;
                        i3 = -1;
                    }
                    int i6 = -1;
                    int i7 = -1;
                    for (int i8 = lastIndexOf2 + 1; i8 != i4; i8++) {
                        char charAt2 = M0.charAt(i8);
                        if (charAt2 >= '0' && charAt2 <= '9') {
                            if (i6 == -1) {
                                i6 = i8;
                            }
                            i7 = i8 + 1;
                        } else if (i6 != -1) {
                            break;
                        }
                    }
                    if (i6 != -1 && i7 != -1 && i2 != (b = b(M0, i6, i7, z)) && i3 != i7) {
                        return d(context, M0, str2, b, i7, downItem, loopCancelListener);
                    }
                }
            }
        }
        return arrayList;
    }

    public static int b(String str, int i, int i2, boolean z) {
        if (z) {
            int indexOf = str.indexOf("000", i);
            if (indexOf >= i && indexOf < i2 - 3) {
                return indexOf;
            }
            int indexOf2 = str.indexOf("00", i);
            if (indexOf2 >= i && indexOf2 < i2 - 2) {
                return indexOf2;
            }
            int indexOf3 = str.indexOf(48, i);
            if (indexOf3 >= i && indexOf3 < i2 - 1) {
                return indexOf3;
            }
        }
        return Math.max(i, i2 - 5);
    }

    public static int c(Context context, int i, int i2, String str, String str2, String str3, String str4, MainDownSvc.DownItem downItem, MainUtil.LoopCancelListener loopCancelListener) {
        int i3;
        do {
            i3 = i;
            i += i2;
            if (i >= 100000) {
                break;
            }
            if (f(downItem, loopCancelListener)) {
                return -1;
            }
        } while (MainUtil.j6(context, e(i, str, str2, str3), str4));
        return i3;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:46:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.ArrayList d(android.content.Context r12, java.lang.String r13, java.lang.String r14, int r15, int r16, com.mycompany.app.main.MainDownSvc.DownItem r17, com.mycompany.app.main.MainUtil.LoopCancelListener r18) {
        /*
            Method dump skipped, instructions count: 247
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.down.DownParseTsfile.d(android.content.Context, java.lang.String, java.lang.String, int, int, com.mycompany.app.main.MainDownSvc$DownItem, com.mycompany.app.main.MainUtil$LoopCancelListener):java.util.ArrayList");
    }

    public static String e(int i, String str, String str2, String str3) {
        StringBuilder t = a.t(str);
        t.append(String.format(Locale.US, str2, Integer.valueOf(i)));
        t.append(str3);
        return t.toString();
    }

    public static boolean f(MainDownSvc.DownItem downItem, MainUtil.LoopCancelListener loopCancelListener) {
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
}
