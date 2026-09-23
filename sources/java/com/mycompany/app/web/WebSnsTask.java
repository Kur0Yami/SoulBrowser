package com.mycompany.app.web;

import android.text.TextUtils;
import android.webkit.URLUtil;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.internal.ImagesContract;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.main.MainDownAdapter;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.web.WebSnsLoad;
import java.lang.ref.WeakReference;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Attribute;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.parser.Parser;
import org.jsoup.select.Elements;

/* loaded from: classes3.dex */
public class WebSnsTask {

    /* renamed from: a, reason: collision with root package name */
    public int f19487a;
    public SnsTaskListener b;

    /* renamed from: c, reason: collision with root package name */
    public LoadTask f19488c;

    /* loaded from: classes3.dex */
    public static class LoadTask extends MyAsyncTask {
        public final WeakReference e;
        public String f;
        public String g;
        public ArrayList h;

        public LoadTask(WebSnsTask webSnsTask, String str, String str2) {
            WeakReference weakReference = new WeakReference(webSnsTask);
            this.e = weakReference;
            if (((WebSnsTask) weakReference.get()) == null) {
                return;
            }
            this.f = str;
            this.g = str2;
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void a() {
            WebSnsTask webSnsTask;
            WeakReference weakReference = this.e;
            if (weakReference != null && (webSnsTask = (WebSnsTask) weakReference.get()) != null && webSnsTask.f19488c != null) {
                try {
                    Document parse = Jsoup.parse(this.g, this.f);
                    int i = webSnsTask.f19487a;
                    if (i == 0) {
                        this.h = WebSnsTask.c(webSnsTask, parse);
                    } else {
                        if (i == 1) {
                            this.h = WebSnsTask.b(webSnsTask, parse);
                            return;
                        }
                        this.h = WebSnsTask.a(webSnsTask, parse);
                    }
                } catch (Exception | LinkageError | OutOfMemoryError unused) {
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            WebSnsTask webSnsTask;
            WeakReference weakReference = this.e;
            if (weakReference == null || (webSnsTask = (WebSnsTask) weakReference.get()) == null) {
                return;
            }
            webSnsTask.f19488c = null;
            this.f = null;
            this.g = null;
            this.h = null;
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            WebSnsTask webSnsTask;
            WeakReference weakReference = this.e;
            if (weakReference == null || (webSnsTask = (WebSnsTask) weakReference.get()) == null) {
                return;
            }
            webSnsTask.f19488c = null;
            SnsTaskListener snsTaskListener = webSnsTask.b;
            if (snsTaskListener != null) {
                ((WebSnsLoad.AnonymousClass15) snsTaskListener).a(this.h);
            }
            this.f = null;
            this.g = null;
            this.h = null;
        }
    }

    /* loaded from: classes3.dex */
    public interface SnsTaskListener {
        void a(List list);
    }

    /* loaded from: classes3.dex */
    public static class SortSize implements Comparator<MainDownAdapter.DownListItem> {
        @Override // java.util.Comparator
        public final int compare(MainDownAdapter.DownListItem downListItem, MainDownAdapter.DownListItem downListItem2) {
            int i;
            int i2;
            MainDownAdapter.DownListItem downListItem3 = downListItem;
            MainDownAdapter.DownListItem downListItem4 = downListItem2;
            if (downListItem3 != null || downListItem4 != null) {
                if (downListItem3 != null) {
                    if (downListItem4 == null || (i = downListItem3.j) < (i2 = downListItem4.j)) {
                        return -1;
                    }
                    if (i > i2) {
                        return 1;
                    }
                    return 0;
                }
                return 1;
            }
            return 0;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00a3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0030 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.util.AbstractCollection, org.jsoup.select.Elements, java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r3v11, types: [int] */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.ArrayList a(com.mycompany.app.web.WebSnsTask r18, org.jsoup.nodes.Document r19) {
        /*
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebSnsTask.a(com.mycompany.app.web.WebSnsTask, org.jsoup.nodes.Document):java.util.ArrayList");
    }

    public static ArrayList b(WebSnsTask webSnsTask, Document document) {
        String str;
        MainDownAdapter.DownListItem downListItem;
        int indexOf;
        ArrayList arrayList;
        ArrayList arrayList2 = null;
        if (document != null && webSnsTask.f19488c != null) {
            try {
                Element selectFirst = document.selectFirst("a[href*='.mp4']");
                if (selectFirst != null) {
                    if (webSnsTask.f19488c != null) {
                        str = selectFirst.attr("href");
                    }
                } else {
                    str = null;
                }
                if (TextUtils.isEmpty(str)) {
                    Element selectFirst2 = document.selectFirst("source[src*='.mp4']");
                    if (selectFirst2 != null) {
                        if (webSnsTask.f19488c != null) {
                            str = selectFirst2.attr("src");
                        }
                    }
                    if (TextUtils.isEmpty(str)) {
                    }
                }
                if (str.endsWith("&dl=1") && str.length() > 5) {
                    String substring = str.substring(0, str.length() - 5);
                    if (!TextUtils.isEmpty(substring)) {
                        str = substring;
                    }
                }
                downListItem = new MainDownAdapter.DownListItem(0, "Video", "MP4");
                String J1 = MainUtil.J1(str, true);
                if (!TextUtils.isEmpty(J1) && J1.contains("indown") && (indexOf = str.indexOf("http", 10)) >= 10) {
                    try {
                        str = URLDecoder.decode(str.substring(indexOf), "UTF-8");
                    } catch (Exception unused) {
                    }
                }
                downListItem.b = str;
                arrayList = new ArrayList();
            } catch (Exception unused2) {
            }
            try {
                arrayList.add(downListItem);
                return arrayList;
            } catch (Exception unused3) {
                arrayList2 = arrayList;
                return arrayList2;
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v1, types: [java.lang.Object, java.util.Comparator] */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.util.List, java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    public static ArrayList c(WebSnsTask webSnsTask, Document document) {
        ?? r4;
        String str;
        int i;
        String str2 = null;
        if (document != null && webSnsTask.f19488c != null) {
            try {
                Elements select = document.select("a[href*='.mp4']");
                int i2 = 0;
                if (select != null && select.size() != 0) {
                    int size = select.size();
                    r4 = 0;
                    int i3 = 0;
                    int i4 = 0;
                    while (i4 < size) {
                        try {
                            Object obj = select.get(i4);
                            i4++;
                            Element element = (Element) obj;
                            if (webSnsTask.f19488c == null) {
                                break;
                            }
                            if (element != null) {
                                String attr = element.attr("href");
                                if (!TextUtils.isEmpty(attr)) {
                                    MainDownAdapter.DownListItem k = k(attr);
                                    if (k != null) {
                                        str = k.f16460c;
                                        i = k.j;
                                    } else {
                                        str = null;
                                        i = i3;
                                    }
                                    MainDownAdapter.DownListItem downListItem = new MainDownAdapter.DownListItem(i3, str, "MP4");
                                    downListItem.b = attr;
                                    downListItem.j = i;
                                    r4 = r4;
                                    if (r4 == 0) {
                                        r4 = new ArrayList();
                                    }
                                    r4.add(downListItem);
                                    i3++;
                                }
                            }
                        } catch (Exception unused) {
                            str2 = r4;
                            return str2;
                        }
                    }
                } else {
                    r4 = 0;
                }
                if (webSnsTask.f19488c != null) {
                    if (r4 != 0 && !r4.isEmpty()) {
                        Elements select2 = document.select("img[src*='http']");
                        if (select2 != null && select2.size() != 0) {
                            int size2 = select2.size();
                            String str3 = null;
                            int i5 = 0;
                            while (true) {
                                if (i5 < size2) {
                                    Object obj2 = select2.get(i5);
                                    i5++;
                                    Element element2 = (Element) obj2;
                                    if (webSnsTask.f19488c != null) {
                                        if (element2 != null) {
                                            Iterator<Attribute> it = element2.attributes().iterator();
                                            while (it.hasNext()) {
                                                Attribute next = it.next();
                                                if (next != null) {
                                                    String value = next.getValue();
                                                    if (URLUtil.isNetworkUrl(value) && (value.contains(".jpg") || value.contains(".png"))) {
                                                        str3 = value;
                                                        break;
                                                    }
                                                }
                                            }
                                        }
                                    } else {
                                        break;
                                    }
                                } else if (webSnsTask.f19488c != null) {
                                    str2 = str3;
                                }
                            }
                        }
                        try {
                            Collections.sort(r4, new Object());
                        } catch (Exception unused2) {
                        }
                        int size3 = r4.size();
                        int i6 = 0;
                        while (i6 < size3) {
                            Object obj3 = r4.get(i6);
                            i6++;
                            MainDownAdapter.DownListItem downListItem2 = (MainDownAdapter.DownListItem) obj3;
                            if (downListItem2 != null) {
                                downListItem2.f16459a = i2;
                                if (TextUtils.isEmpty(downListItem2.f16460c)) {
                                    downListItem2.f16460c = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + i2;
                                }
                                downListItem2.f = str2;
                                i2++;
                            }
                        }
                        return r4;
                    }
                    return r4;
                }
            } catch (Exception unused3) {
            }
        }
        return null;
    }

    public static JSONArray d(JSONArray jSONArray) {
        JSONArray e;
        if (jSONArray == null) {
            return null;
        }
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            try {
                try {
                    e = e(jSONArray.getJSONObject(i));
                } catch (Exception unused) {
                    JSONArray d = d(jSONArray.getJSONArray(i));
                    if (d != null) {
                        return d;
                    }
                }
            } catch (Exception unused2) {
            }
            if (e != null) {
                return e;
            }
        }
        return null;
    }

    public static JSONArray e(JSONObject jSONObject) {
        Iterator<String> keys;
        JSONObject jSONObject2;
        JSONArray jSONArray;
        if (jSONObject == null) {
            return null;
        }
        try {
            keys = jSONObject.keys();
        } catch (Exception unused) {
        }
        if (keys == null) {
            return null;
        }
        while (keys.hasNext()) {
            String next = keys.next();
            try {
                jSONObject2 = jSONObject.getJSONObject(next);
            } catch (Exception unused2) {
                jSONObject2 = null;
            }
            if (jSONObject2 != null) {
                if ("items".equals(next)) {
                    return null;
                }
                JSONArray e = e(jSONObject2);
                if (e != null) {
                    return e;
                }
            } else {
                try {
                    jSONArray = jSONObject.getJSONArray(next);
                } catch (Exception unused3) {
                    jSONArray = null;
                }
                if (jSONArray == null) {
                    continue;
                } else {
                    if ("items".equals(next)) {
                        return jSONArray;
                    }
                    JSONArray d = d(jSONArray);
                    if (d != null) {
                        return d;
                    }
                }
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x00a8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.ArrayList f(org.json.JSONArray r9, int r10) {
        /*
            r0 = 0
            r1 = 0
            java.util.ArrayList r2 = g(r9, r10)     // Catch: java.lang.Exception -> L37
            java.util.ArrayList r3 = h(r9, r10)     // Catch: java.lang.Exception -> L37
            if (r2 == 0) goto L35
            if (r3 == 0) goto L38
            boolean r4 = r3.isEmpty()     // Catch: java.lang.Exception -> L37
            if (r4 != 0) goto L38
            int r4 = r2.size()     // Catch: java.lang.Exception -> L37
            r5 = 1
            if (r4 != r5) goto L31
            int r4 = r3.size()     // Catch: java.lang.Exception -> L37
            int r4 = r4 - r5
            java.lang.Object r4 = r3.get(r4)     // Catch: java.lang.Exception -> L37
            com.mycompany.app.main.MainDownAdapter$DownListItem r4 = (com.mycompany.app.main.MainDownAdapter.DownListItem) r4     // Catch: java.lang.Exception -> L37
            java.lang.String r4 = r4.f16460c     // Catch: java.lang.Exception -> L37
            java.lang.Object r2 = r2.get(r0)     // Catch: java.lang.Exception -> L37
            com.mycompany.app.main.MainDownAdapter$DownListItem r2 = (com.mycompany.app.main.MainDownAdapter.DownListItem) r2     // Catch: java.lang.Exception -> L37
            r2.f16460c = r4     // Catch: java.lang.Exception -> L37
            goto L35
        L31:
            r2.addAll(r3)     // Catch: java.lang.Exception -> L37
            goto L38
        L35:
            r2 = r3
            goto L38
        L37:
            r2 = r1
        L38:
            if (r2 == 0) goto Lbd
            boolean r3 = r2.isEmpty()
            if (r3 == 0) goto L42
            goto Lbd
        L42:
            org.json.JSONObject r9 = r9.getJSONObject(r10)     // Catch: java.lang.Exception -> La1
            java.lang.String r10 = "image_versions2"
            org.json.JSONObject r9 = r9.getJSONObject(r10)     // Catch: java.lang.Exception -> La1
            java.lang.String r10 = "candidates"
            org.json.JSONArray r9 = r9.getJSONArray(r10)     // Catch: java.lang.Exception -> La1
            int r10 = r9.length()     // Catch: java.lang.Exception -> La1
            r3 = r0
            r5 = r3
            r4 = r1
        L59:
            if (r3 >= r10) goto La2
            org.json.JSONObject r6 = r9.getJSONObject(r3)     // Catch: java.lang.Exception -> L60
            goto L61
        L60:
            r6 = r1
        L61:
            if (r6 != 0) goto L64
            goto L9d
        L64:
            java.lang.String r7 = "width"
            int r7 = r6.getInt(r7)     // Catch: java.lang.Exception -> L6b
            goto L6c
        L6b:
            r7 = r0
        L6c:
            java.lang.String r8 = "height"
            int r8 = r6.getInt(r8)     // Catch: java.lang.Exception -> L73
            goto L74
        L73:
            r8 = r0
        L74:
            if (r7 <= 0) goto L7a
            if (r8 <= 0) goto L7a
            int r7 = r7 * r8
            goto L7b
        L7a:
            r7 = r0
        L7b:
            if (r7 != 0) goto L7e
            goto L9d
        L7e:
            if (r5 == 0) goto L83
            if (r7 < r5) goto L83
            goto L9d
        L83:
            java.lang.String r8 = "url"
            java.lang.String r6 = r6.getString(r8)     // Catch: java.lang.Exception -> L8a
            goto L8b
        L8a:
            r6 = r1
        L8b:
            boolean r8 = android.webkit.URLUtil.isNetworkUrl(r6)     // Catch: java.lang.Exception -> La0
            if (r8 != 0) goto L92
            goto L9d
        L92:
            java.lang.String r8 = ".jpg"
            boolean r8 = r6.contains(r8)     // Catch: java.lang.Exception -> La0
            if (r8 != 0) goto L9b
            goto L9d
        L9b:
            r4 = r6
            r5 = r7
        L9d:
            int r3 = r3 + 1
            goto L59
        La0:
            r1 = r4
        La1:
            r4 = r1
        La2:
            boolean r9 = android.webkit.URLUtil.isNetworkUrl(r4)
            if (r9 == 0) goto Lbc
            int r9 = r2.size()
        Lac:
            if (r0 >= r9) goto Lbc
            java.lang.Object r10 = r2.get(r0)
            int r0 = r0 + 1
            com.mycompany.app.main.MainDownAdapter$DownListItem r10 = (com.mycompany.app.main.MainDownAdapter.DownListItem) r10
            if (r10 != 0) goto Lb9
            goto Lac
        Lb9:
            r10.f = r4
            goto Lac
        Lbc:
            return r2
        Lbd:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebSnsTask.f(org.json.JSONArray, int):java.util.ArrayList");
    }

    /* JADX WARN: Type inference failed for: r12v4, types: [java.lang.Object, java.util.Comparator] */
    public static ArrayList g(JSONArray jSONArray, int i) {
        JSONArray jSONArray2;
        ArrayList arrayList;
        JSONObject jSONObject;
        String str;
        int i2;
        int i3;
        String str2;
        int i4;
        try {
            jSONArray2 = jSONArray.getJSONObject(i).getJSONArray("video_versions");
        } catch (Exception unused) {
            jSONArray2 = null;
        }
        if (jSONArray2 != null) {
            try {
                int length = jSONArray2.length();
                arrayList = null;
                int i5 = 0;
                for (int i6 = 0; i6 < length; i6++) {
                    try {
                        jSONObject = jSONArray2.getJSONObject(i6);
                    } catch (Exception unused2) {
                        jSONObject = null;
                    }
                    if (jSONObject != null) {
                        try {
                            str = jSONObject.getString(ImagesContract.URL);
                        } catch (Exception unused3) {
                            str = null;
                        }
                        try {
                            if (URLUtil.isNetworkUrl(str) && str.contains(".mp4")) {
                                try {
                                    i2 = jSONObject.getInt("width");
                                } catch (Exception unused4) {
                                    i2 = 0;
                                }
                                try {
                                    i3 = jSONObject.getInt("height");
                                } catch (Exception unused5) {
                                    i3 = 0;
                                }
                                if (i2 > 0 && i3 > 0) {
                                    str2 = i2 + "x" + i3;
                                    if (arrayList != null && !arrayList.isEmpty()) {
                                        try {
                                            int size = arrayList.size();
                                            int i7 = 0;
                                            while (i7 < size) {
                                                Object obj = arrayList.get(i7);
                                                i7++;
                                                MainDownAdapter.DownListItem downListItem = (MainDownAdapter.DownListItem) obj;
                                                if (downListItem != null && str2.equals(downListItem.f16460c)) {
                                                    break;
                                                }
                                            }
                                        } catch (Exception unused6) {
                                        }
                                    }
                                    i4 = i2 * i3;
                                } else {
                                    str2 = null;
                                    i4 = i5;
                                }
                                MainDownAdapter.DownListItem downListItem2 = new MainDownAdapter.DownListItem(i5, str2, "MP4");
                                downListItem2.b = str;
                                downListItem2.j = i4;
                                if (arrayList == null) {
                                    arrayList = new ArrayList();
                                }
                                arrayList.add(downListItem2);
                                i5++;
                            }
                        } catch (Exception unused7) {
                        }
                    }
                }
            } catch (Exception unused8) {
                arrayList = null;
            }
            if (arrayList != null && !arrayList.isEmpty()) {
                try {
                    Collections.sort(arrayList, new Object());
                } catch (Exception unused9) {
                }
                return arrayList;
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [java.lang.Object, java.util.Comparator] */
    public static ArrayList h(JSONArray jSONArray, int i) {
        String str;
        Document document;
        ArrayList arrayList;
        ArrayList arrayList2;
        String str2;
        Elements select;
        int i2;
        String str3;
        int i3 = 0;
        try {
            try {
                str = jSONArray.getJSONObject(i).getString("video_dash_manifest");
            } catch (Exception unused) {
                str = null;
            }
        } catch (Exception unused2) {
            str = jSONArray.getJSONObject(i).getJSONArray("carousel_media").getJSONObject(0).getString("video_dash_manifest");
        }
        if (!TextUtils.isEmpty(str)) {
            try {
                document = Jsoup.parse(str, Parser.xmlParser());
            } catch (Exception | LinkageError | OutOfMemoryError unused3) {
                document = null;
            }
            if (document != null) {
                try {
                    select = document.select("[mimeType*='mp4']");
                } catch (Exception unused4) {
                    arrayList = null;
                    arrayList2 = null;
                    str2 = null;
                }
                if (select != null && select.size() != 0) {
                    int size = select.size();
                    int i4 = 0;
                    int i5 = 0;
                    arrayList2 = null;
                    str2 = null;
                    while (i5 < size) {
                        try {
                            T t = select.get(i5);
                            i5++;
                            Element element = (Element) t;
                            if (element != null) {
                                Elements children = element.children();
                                if (children != null) {
                                    if (children.size() != 0) {
                                        boolean equals = "audio/mp4".equals(element.attr("mimeType"));
                                        if (!equals) {
                                            str3 = element.attr("FBQualityLabel");
                                            if (str3 != null) {
                                                if (str3.length() >= 2) {
                                                    i2 = MainUtil.G6(str3.substring(i3, str3.length() - 1));
                                                }
                                            }
                                        } else {
                                            i2 = i3;
                                            str3 = null;
                                        }
                                        int size2 = children.size();
                                        int i6 = i3;
                                        while (i6 < size2) {
                                            T t2 = children.get(i6);
                                            i6++;
                                            Element element2 = (Element) t2;
                                            if (element2 != null) {
                                                arrayList = null;
                                                try {
                                                    if ("BaseURL".equals(element2.tagName())) {
                                                        String html = element2.html();
                                                        if (!TextUtils.isEmpty(html)) {
                                                            String replace = html.replace("amp;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                                                            if (!TextUtils.isEmpty(replace)) {
                                                                if (equals) {
                                                                    str2 = replace;
                                                                } else {
                                                                    MainDownAdapter.DownListItem downListItem = new MainDownAdapter.DownListItem(i4, str3, "MP4");
                                                                    downListItem.b = replace;
                                                                    downListItem.j = i2;
                                                                    downListItem.h = true;
                                                                    if (arrayList2 == null) {
                                                                        arrayList2 = new ArrayList();
                                                                    }
                                                                    arrayList2.add(downListItem);
                                                                    i4++;
                                                                }
                                                                i3 = 0;
                                                            }
                                                        }
                                                    }
                                                } catch (Exception unused5) {
                                                }
                                            }
                                        }
                                    }
                                }
                                i3 = 0;
                            }
                            i3 = 0;
                        } catch (Exception unused6) {
                        }
                    }
                    arrayList = null;
                    if (arrayList2 != null && !arrayList2.isEmpty()) {
                        if (!TextUtils.isEmpty(str2)) {
                            int size3 = arrayList2.size();
                            int i7 = 0;
                            while (i7 < size3) {
                                Object obj = arrayList2.get(i7);
                                i7++;
                                MainDownAdapter.DownListItem downListItem2 = (MainDownAdapter.DownListItem) obj;
                                if (downListItem2 != null && downListItem2.h) {
                                    downListItem2.h = false;
                                    downListItem2.i = str2;
                                }
                            }
                        }
                        try {
                            Collections.sort(arrayList2, new Object());
                        } catch (Exception unused7) {
                        }
                        return arrayList2;
                    }
                    return arrayList;
                }
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0087 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:? A[LOOP:1: B:31:0x005c->B:46:?, LOOP_END, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String i(java.lang.String r8, java.lang.String r9) {
        /*
            r0 = 0
            if (r8 != 0) goto L5
        L3:
            r8 = r0
            goto L1d
        L5:
            int r1 = r8.length()
            if (r1 != 0) goto Lc
            goto L3
        Lc:
            r2 = 47
            int r2 = r8.lastIndexOf(r2)
            if (r2 <= 0) goto L3
            int r2 = r2 + 1
            if (r2 < r1) goto L19
            goto L3
        L19:
            java.lang.String r8 = r8.substring(r2, r1)
        L1d:
            boolean r1 = android.text.TextUtils.isEmpty(r8)
            if (r1 == 0) goto L24
            return r0
        L24:
            if (r9 != 0) goto L27
            return r0
        L27:
            int r1 = r9.length()     // Catch: java.lang.Exception -> L8c
            if (r1 != 0) goto L2e
            return r0
        L2e:
            r2 = 0
            r4 = r0
            r3 = r2
        L31:
            if (r3 >= r1) goto L4f
            java.lang.String r5 = "entryId"
            int r5 = r9.indexOf(r5, r3)     // Catch: java.lang.Exception -> L8c
            if (r5 < r3) goto L4f
            if (r5 < r1) goto L3e
            goto L4f
        L3e:
            if (r4 != 0) goto L45
            java.util.ArrayList r4 = new java.util.ArrayList     // Catch: java.lang.Exception -> L8c
            r4.<init>()     // Catch: java.lang.Exception -> L8c
        L45:
            java.lang.Integer r3 = java.lang.Integer.valueOf(r5)     // Catch: java.lang.Exception -> L8c
            r4.add(r3)     // Catch: java.lang.Exception -> L8c
            int r3 = r5 + 7
            goto L31
        L4f:
            if (r4 == 0) goto L8c
            boolean r3 = r4.isEmpty()     // Catch: java.lang.Exception -> L8c
            if (r3 == 0) goto L58
            goto L8c
        L58:
            int r3 = r4.size()     // Catch: java.lang.Exception -> L8c
        L5c:
            if (r2 >= r3) goto L8c
            java.lang.Object r5 = r4.get(r2)     // Catch: java.lang.Exception -> L8c
            java.lang.Integer r5 = (java.lang.Integer) r5     // Catch: java.lang.Exception -> L8c
            int r5 = r5.intValue()     // Catch: java.lang.Exception -> L8c
            int r2 = r2 + 1
            if (r2 < 0) goto L80
            int r6 = r4.size()     // Catch: java.lang.Exception -> L8c
            if (r2 < r6) goto L73
            goto L80
        L73:
            java.lang.Object r6 = r4.get(r2)     // Catch: java.lang.Exception -> L8c
            java.lang.Integer r6 = (java.lang.Integer) r6     // Catch: java.lang.Exception -> L8c
            int r6 = r6.intValue()     // Catch: java.lang.Exception -> L8c
            if (r6 <= r5) goto L80
            goto L81
        L80:
            r6 = r1
        L81:
            int r7 = com.mycompany.app.main.MainUtil.b5(r9, r5, r6, r8)     // Catch: java.lang.Exception -> L8c
            if (r7 < r5) goto L5c
            java.lang.String r8 = r9.substring(r5, r6)     // Catch: java.lang.Exception -> L8c
            return r8
        L8c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebSnsTask.i(java.lang.String, java.lang.String):java.lang.String");
    }

    public static String j(String str, String str2) {
        int indexOf;
        int indexOf2;
        if (!TextUtils.isEmpty(str)) {
            try {
                int indexOf3 = str.indexOf(str2);
                if (indexOf3 != -1 && (indexOf = str.indexOf("https://", indexOf3 + str2.length())) != -1 && (indexOf2 = str.indexOf(34, indexOf + 8)) != -1) {
                    String substring = str.substring(indexOf, indexOf2);
                    if (!TextUtils.isEmpty(substring)) {
                        while (substring.endsWith("\\") && substring.length() > 1) {
                            substring = substring.substring(0, substring.length() - 1);
                        }
                        return substring;
                    }
                    return null;
                }
                return null;
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r4v6, types: [java.lang.Object, com.mycompany.app.main.MainDownAdapter$DownListItem] */
    public static MainDownAdapter.DownListItem k(String str) {
        String[] split2;
        int H6;
        if (!TextUtils.isEmpty(str) && (split2 = str.split("/")) != null && split2.length != 0) {
            for (int length = split2.length - 1; length >= 0; length--) {
                String str2 = split2[length];
                if (!TextUtils.isEmpty(str2) && MainUtil.r(120, str2) && (H6 = MainUtil.H6(str2.replace("x", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED))) != -1) {
                    ?? obj = new Object();
                    obj.f16460c = str2;
                    obj.j = H6;
                    return obj;
                }
            }
            return null;
        }
        return null;
    }
}
