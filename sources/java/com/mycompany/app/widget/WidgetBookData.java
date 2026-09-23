package com.mycompany.app.widget;

import android.text.TextUtils;
import android.util.SparseArray;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefMain;

/* loaded from: classes3.dex */
public class WidgetBookData {

    /* renamed from: c, reason: collision with root package name */
    public static WidgetBookData f20739c;

    /* renamed from: a, reason: collision with root package name */
    public SparseArray f20740a;
    public SparseArray b;

    /* JADX WARN: Type inference failed for: r1v2, types: [com.mycompany.app.widget.WidgetBookData, java.lang.Object] */
    public static WidgetBookData b() {
        if (f20739c == null) {
            synchronized (WidgetBookData.class) {
                try {
                    if (f20739c == null) {
                        f20739c = new Object();
                    }
                } finally {
                }
            }
        }
        return f20739c;
    }

    public final String a(int i) {
        String[] split2;
        SparseArray sparseArray = this.f20740a;
        if (sparseArray != null && sparseArray.size() != 0) {
            if (i != 0) {
                try {
                    return (String) this.f20740a.get(i);
                } catch (Exception unused) {
                    return null;
                }
            }
            return null;
        }
        String str = PrefMain.I;
        if (!TextUtils.isEmpty(str) && (split2 = str.split(",")) != null && split2.length != 0) {
            for (String str2 : split2) {
                String[] split3 = str2.split("#");
                if (split3 != null && split3.length == 2 && i == MainUtil.H6(split3[0])) {
                    return split3[1];
                }
            }
            return null;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c(android.content.Context r12) {
        /*
            r11 = this;
            android.util.SparseArray r0 = r11.f20740a
            java.lang.String r1 = "mWidgetBook"
            r2 = 5
            java.lang.String r3 = ""
            if (r0 == 0) goto L66
            int r0 = r0.size()
            if (r0 != 0) goto L10
            goto L66
        L10:
            android.util.SparseArray r0 = r11.f20740a
            int r0 = r0.size()
            r4 = 0
            r5 = 0
            r6 = r4
            r7 = r5
        L1a:
            if (r6 >= r0) goto L50
            android.util.SparseArray r8 = r11.f20740a     // Catch: java.lang.Exception -> L2b
            int r8 = r8.keyAt(r6)     // Catch: java.lang.Exception -> L2b
            android.util.SparseArray r9 = r11.f20740a     // Catch: java.lang.Exception -> L2c
            java.lang.Object r9 = r9.get(r8)     // Catch: java.lang.Exception -> L2c
            java.lang.String r9 = (java.lang.String) r9     // Catch: java.lang.Exception -> L2c
            goto L2d
        L2b:
            r8 = r4
        L2c:
            r9 = r5
        L2d:
            boolean r10 = android.text.TextUtils.isEmpty(r9)
            if (r10 == 0) goto L35
            java.lang.String r9 = "/"
        L35:
            if (r7 != 0) goto L3d
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            goto L42
        L3d:
            java.lang.String r10 = ","
            r7.append(r10)
        L42:
            r7.append(r8)
            java.lang.String r8 = "#"
            r7.append(r8)
            r7.append(r9)
            int r6 = r6 + 1
            goto L1a
        L50:
            if (r7 != 0) goto L53
            goto L57
        L53:
            java.lang.String r3 = r7.toString()
        L57:
            java.lang.String r0 = com.mycompany.app.pref.PrefMain.I
            boolean r0 = com.mycompany.app.main.MainUtil.q5(r0, r3)
            if (r0 == 0) goto L60
            goto L6e
        L60:
            com.mycompany.app.pref.PrefMain.I = r3
            com.mycompany.app.pref.PrefSet.c(r2, r12, r1, r3)
            return
        L66:
            java.lang.String r0 = com.mycompany.app.pref.PrefMain.I
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L6f
        L6e:
            return
        L6f:
            com.mycompany.app.pref.PrefMain.I = r3
            com.mycompany.app.pref.PrefSet.c(r2, r12, r1, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.widget.WidgetBookData.c(android.content.Context):void");
    }
}
