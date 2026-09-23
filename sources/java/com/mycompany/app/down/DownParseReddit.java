package com.mycompany.app.down;

import android.text.TextUtils;
import com.mycompany.app.main.MainDownSvc;
import com.mycompany.app.main.MainUtil;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DownParseReddit {
    /* JADX WARN: Type inference failed for: r3v4, types: [java.lang.Object, com.mycompany.app.main.MainDownSvc$M3u8Item] */
    public static MainDownSvc.M3u8Item a(String str) {
        String[] split2;
        String str2;
        String M0 = MainUtil.M0(str);
        String str3 = null;
        if (TextUtils.isEmpty(M0) || (split2 = M0.split("<,>")) == null || split2.length != 2 || (str2 = split2[0]) == null) {
            return null;
        }
        String str4 = split2[1];
        if (!"isNull".equals(str4)) {
            str3 = str4;
        }
        ?? obj = new Object();
        obj.b = str2;
        obj.f16530c = str3;
        return obj;
    }

    public static ArrayList b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        return arrayList;
    }
}
