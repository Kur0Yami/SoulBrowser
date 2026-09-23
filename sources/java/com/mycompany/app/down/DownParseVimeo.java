package com.mycompany.app.down;

import android.content.Context;
import android.support.v4.media.a;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.mycompany.app.main.MainDownSvc;
import com.mycompany.app.main.MainUtil;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DownParseVimeo {
    public static String a(int i, String str) {
        int length;
        int lastIndexOf;
        int i2;
        if (i == 0) {
            return str;
        }
        if (str != null && (length = str.length()) != 0 && (str.lastIndexOf(47)) - 1 > 0 && lastIndexOf < length) {
            for (int i3 = 0; i3 < i; i3++) {
                i2 = str.lastIndexOf(47, i2 - 1);
                int i4 = i2 - 1;
                if (i4 <= 0 || i4 >= length) {
                    return null;
                }
            }
            int i5 = i2 + 1;
            if (i5 > 0 && i5 < length) {
                return str.substring(0, i5);
            }
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r7v4, types: [java.lang.Object, com.mycompany.app.main.MainDownSvc$M3u8Item] */
    public static MainDownSvc.M3u8Item b(Context context, String str, String str2) {
        String[] split2;
        String str3;
        String str4;
        String str5;
        JsonObject c2;
        int e;
        int i;
        String M0 = MainUtil.M0(str);
        String str6 = null;
        if (!TextUtils.isEmpty(M0) && (split2 = M0.split("<,>")) != null && split2.length == 3 && (str3 = split2[0]) != null && (str4 = split2[1]) != null && (str5 = split2[2]) != null && (c2 = c(context, str3, str2)) != null && (e = e(str4)) != 0) {
            String a2 = a(e, str3);
            if (!TextUtils.isEmpty(a2)) {
                if (e == 0) {
                    str6 = str4;
                } else {
                    int length = str4.length();
                    if (length != 0 && (i = e * 3) < length) {
                        str6 = str4.substring(i);
                    }
                }
                if (!TextUtils.isEmpty(str6)) {
                    a2 = a.k(a2, str6);
                }
                ?? obj = new Object();
                obj.j = c2;
                obj.f = a2;
                obj.b = str5;
                return obj;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.gson.JsonObject c(android.content.Context r7, java.lang.String r8, java.lang.String r9) {
        /*
            java.lang.String r3 = com.mycompany.app.main.MainUtil.M0(r8)
            boolean r8 = android.text.TextUtils.isEmpty(r3)
            r6 = 0
            if (r8 == 0) goto Lc
            goto L4b
        Lc:
            r1 = 0
            r5 = 1
            r0 = 0
            r2 = r7
            r4 = r9
            java.net.HttpURLConnection r7 = com.mycompany.app.main.MainUtil.S3(r0, r1, r2, r3, r4, r5)     // Catch: java.lang.Exception -> L2b java.lang.OutOfMemoryError -> L2e
            if (r7 != 0) goto L18
            goto L4b
        L18:
            java.lang.String r8 = "gzip"
            java.lang.String r9 = r7.getContentEncoding()     // Catch: java.lang.Exception -> L2c java.lang.OutOfMemoryError -> L2f
            boolean r8 = r8.equals(r9)     // Catch: java.lang.Exception -> L2c java.lang.OutOfMemoryError -> L2f
            java.io.InputStream r9 = r7.getInputStream()     // Catch: java.lang.Exception -> L2c java.lang.OutOfMemoryError -> L2f
            java.lang.String r8 = com.mycompany.app.main.MainUtil.A3(r2, r9, r8)     // Catch: java.lang.Exception -> L2c java.lang.OutOfMemoryError -> L2f
            goto L33
        L2b:
            r7 = r6
        L2c:
            r8 = r6
            goto L33
        L2e:
            r7 = r6
        L2f:
            com.mycompany.app.main.MainUtil.D6(r2)
            goto L2c
        L33:
            if (r7 == 0) goto L38
            r7.disconnect()
        L38:
            boolean r7 = android.text.TextUtils.isEmpty(r8)
            if (r7 == 0) goto L3f
            goto L4b
        L3f:
            com.google.gson.JsonElement r7 = com.google.gson.JsonParser.b(r8)     // Catch: java.lang.OutOfMemoryError -> L48 java.lang.Exception -> L4b
            com.google.gson.JsonObject r7 = r7.k()     // Catch: java.lang.OutOfMemoryError -> L48 java.lang.Exception -> L4b
            return r7
        L48:
            com.mycompany.app.main.MainUtil.D6(r2)
        L4b:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.down.DownParseVimeo.c(android.content.Context, java.lang.String, java.lang.String):com.google.gson.JsonObject");
    }

    public static ArrayList d(JsonObject jsonObject, String str, String str2, boolean z) {
        String str3;
        JsonElement r;
        String str4;
        JsonElement r2;
        int length;
        int i;
        if (jsonObject != null && !TextUtils.isEmpty(str) && (z || !TextUtils.isEmpty(str2))) {
            try {
                JsonElement r3 = jsonObject.r("clip_id");
                if (r3 != null && !TextUtils.isEmpty(r3.p())) {
                    if (z) {
                        str3 = "audio";
                    } else {
                        str3 = "video";
                    }
                    JsonArray jsonArray = (JsonArray) jsonObject.r(str3);
                    if (jsonArray != null) {
                        int size = jsonArray.f12669c.size();
                        if (size != 0) {
                            ArrayList arrayList = new ArrayList();
                            for (int i2 = 0; i2 < size; i2++) {
                                try {
                                    JsonObject jsonObject2 = (JsonObject) jsonArray.q(i2);
                                    if (jsonObject2 != null && (r = jsonObject2.r("id")) != null) {
                                        String p = r.p();
                                        if (!TextUtils.isEmpty(p) && (z || p.equals(str2))) {
                                            JsonElement r4 = jsonObject2.r("base_url");
                                            if (r4 == null) {
                                                if (!z) {
                                                    break;
                                                }
                                            } else {
                                                String p2 = r4.p();
                                                if (TextUtils.isEmpty(p2)) {
                                                    if (!z) {
                                                        break;
                                                    }
                                                } else {
                                                    int e = e(p2);
                                                    if (e != 0) {
                                                        str4 = a(e, str);
                                                        if (TextUtils.isEmpty(str4)) {
                                                            if (!z) {
                                                                break;
                                                            }
                                                        } else {
                                                            if (e != 0) {
                                                                if (p2 != null && (length = p2.length()) != 0 && (i = e * 3) < length) {
                                                                    p2 = p2.substring(i);
                                                                }
                                                                p2 = null;
                                                            }
                                                            if (TextUtils.isEmpty(p2)) {
                                                                if (!z) {
                                                                    break;
                                                                }
                                                            }
                                                        }
                                                    } else {
                                                        str4 = str;
                                                    }
                                                    JsonElement r5 = jsonObject2.r("init_segment");
                                                    if (r5 == null) {
                                                        if (!z) {
                                                            break;
                                                        }
                                                    } else {
                                                        String p3 = r5.p();
                                                        if (TextUtils.isEmpty(p3)) {
                                                            if (!z) {
                                                                break;
                                                            }
                                                        } else {
                                                            JsonArray jsonArray2 = (JsonArray) jsonObject2.r("segments");
                                                            if (jsonArray2 == null) {
                                                                if (!z) {
                                                                    break;
                                                                }
                                                            } else {
                                                                int size2 = jsonArray2.f12669c.size();
                                                                if (size2 == 0) {
                                                                    if (!z) {
                                                                        break;
                                                                    }
                                                                } else {
                                                                    arrayList.add(p3);
                                                                    JsonElement r6 = jsonObject2.r("index_segment");
                                                                    if (r6 != null) {
                                                                        String p4 = r6.p();
                                                                        if (!TextUtils.isEmpty(p4)) {
                                                                            arrayList.add(str4 + p2 + p4);
                                                                        }
                                                                    }
                                                                    for (int i3 = 0; i3 < size2; i3++) {
                                                                        try {
                                                                            JsonObject jsonObject3 = (JsonObject) jsonArray2.q(i3);
                                                                            if (jsonObject3 != null && (r2 = jsonObject3.r(ImagesContract.URL)) != null) {
                                                                                String p5 = r2.p();
                                                                                if (!TextUtils.isEmpty(p5)) {
                                                                                    arrayList.add(str4 + p2 + p5);
                                                                                }
                                                                            }
                                                                        } catch (Exception unused) {
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                } catch (Exception unused2) {
                                }
                            }
                            return arrayList;
                        }
                    }
                }
            } catch (Exception unused3) {
            }
        }
        return null;
    }

    public static int e(String str) {
        int length;
        int i = 0;
        if (str == null || (length = str.length()) == 0) {
            return 0;
        }
        int i2 = 0;
        while (str.startsWith("../", i)) {
            i += 3;
            i2++;
            if (i >= length) {
                break;
            }
        }
        return i2;
    }
}
