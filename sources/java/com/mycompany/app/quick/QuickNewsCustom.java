package com.mycompany.app.quick;

import android.content.Context;
import android.os.Handler;
import android.text.Spanned;
import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.quick.QuickNews;
import java.util.List;

/* loaded from: classes3.dex */
public class QuickNewsCustom extends QuickNews {
    public List j;

    public static String f(String str) {
        if (!TextUtils.isEmpty(str)) {
            Spanned M = MainUtil.M(str);
            if (M != null) {
                String obj = M.toString();
                if (!TextUtils.isEmpty(obj)) {
                    str = obj;
                }
            }
            String trim = str.trim();
            if (TextUtils.isEmpty(trim)) {
                return null;
            }
            return trim.replace("amp;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        }
        return null;
    }

    @Override // com.mycompany.app.quick.QuickNews
    public final void b(Context context, Handler handler, String str, QuickNews.NewsListListener newsListListener) {
        super.b(context, handler, str, newsListListener);
        d(new Runnable() { // from class: com.mycompany.app.quick.QuickNewsCustom.1
            /* JADX WARN: Code restructure failed: missing block: B:33:0x0052, code lost:
            
                if (r6 == null) goto L29;
             */
            /* JADX WARN: Code restructure failed: missing block: B:35:0x0058, code lost:
            
                if (r6.isEmpty() == false) goto L26;
             */
            /* JADX WARN: Code restructure failed: missing block: B:40:0x0060, code lost:
            
                java.util.Collections.sort(r6, new java.lang.Object());
             */
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Removed duplicated region for block: B:11:0x007e A[RETURN] */
            /* JADX WARN: Removed duplicated region for block: B:13:0x007f  */
            /* JADX WARN: Type inference failed for: r1v7, types: [java.lang.Object, java.util.Comparator] */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void run() {
                /*
                    r9 = this;
                    com.mycompany.app.quick.QuickNewsCustom r0 = com.mycompany.app.quick.QuickNewsCustom.this
                    java.lang.String r1 = r0.d
                    r2 = 0
                    org.jsoup.Connection r1 = org.jsoup.Jsoup.connect(r1)     // Catch: java.lang.Throwable -> L16
                    org.jsoup.parser.Parser r3 = org.jsoup.parser.Parser.xmlParser()     // Catch: java.lang.Throwable -> L16
                    org.jsoup.Connection r1 = r1.parser(r3)     // Catch: java.lang.Throwable -> L16
                    org.jsoup.nodes.Document r1 = r1.get()     // Catch: java.lang.Throwable -> L16
                    goto L17
                L16:
                    r1 = r2
                L17:
                    if (r1 != 0) goto L1a
                    goto L64
                L1a:
                    java.lang.String r3 = "item"
                    org.jsoup.select.Elements r1 = r1.select(r3)     // Catch: java.lang.Exception -> L64
                    if (r1 != 0) goto L23
                    goto L64
                L23:
                    android.content.Context r3 = r0.f17409a     // Catch: java.lang.Exception -> L64
                    com.mycompany.app.data.DataNews r3 = com.mycompany.app.data.DataNews.a(r3)     // Catch: java.lang.Exception -> L64
                    java.util.List r3 = r3.f12897a     // Catch: java.lang.Exception -> L64
                    int r4 = r1.size()     // Catch: java.lang.Exception -> L64
                    r5 = 0
                    r6 = r2
                L31:
                    if (r5 >= r4) goto L52
                    java.lang.Object r7 = r1.get(r5)     // Catch: java.lang.Exception -> L64
                    int r5 = r5 + 1
                    org.jsoup.nodes.Element r7 = (org.jsoup.nodes.Element) r7     // Catch: java.lang.Exception -> L64
                    android.content.Context r8 = r0.f17409a     // Catch: java.lang.Exception -> L64
                    if (r8 != 0) goto L40
                    goto L64
                L40:
                    com.mycompany.app.quick.QuickAdapter$QuickItem r7 = r0.e(r7, r3)     // Catch: java.lang.Exception -> L64
                    if (r7 != 0) goto L47
                    goto L31
                L47:
                    if (r6 != 0) goto L4e
                    java.util.ArrayList r6 = new java.util.ArrayList     // Catch: java.lang.Exception -> L64
                    r6.<init>()     // Catch: java.lang.Exception -> L64
                L4e:
                    r6.add(r7)     // Catch: java.lang.Exception -> L64
                    goto L31
                L52:
                    if (r6 == 0) goto L64
                    boolean r1 = r6.isEmpty()     // Catch: java.lang.Exception -> L64
                    if (r1 == 0) goto L5b
                    goto L64
                L5b:
                    com.mycompany.app.quick.QuickNews$SortNews r1 = new com.mycompany.app.quick.QuickNews$SortNews     // Catch: java.lang.Exception -> L64
                    r1.<init>()     // Catch: java.lang.Exception -> L64
                    java.util.Collections.sort(r6, r1)     // Catch: java.lang.Exception -> L63
                L63:
                    r2 = r6
                L64:
                    java.util.List r1 = com.mycompany.app.quick.QuickNews.a(r2)
                    com.nostra13.universalimageloader.core.ImageLoader r2 = com.nostra13.universalimageloader.core.ImageLoader.f()
                    r2.m()
                    android.content.Context r2 = r0.f17409a
                    com.mycompany.app.data.DataNews r2 = com.mycompany.app.data.DataNews.a(r2)
                    r2.b(r1)
                    r0.j = r1
                    android.os.Handler r0 = r0.f17410c
                    if (r0 != 0) goto L7f
                    return
                L7f:
                    com.mycompany.app.quick.QuickNewsCustom$1$1 r1 = new com.mycompany.app.quick.QuickNewsCustom$1$1
                    r1.<init>()
                    r0.post(r1)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.quick.QuickNewsCustom.AnonymousClass1.run():void");
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0168 A[EDGE_INSN: B:55:0x0168->B:56:0x0168 BREAK  A[LOOP:0: B:43:0x014f->B:53:0x014f], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0121  */
    /* JADX WARN: Type inference failed for: r12v1, types: [java.lang.Object, com.mycompany.app.quick.QuickAdapter$QuickItem] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.mycompany.app.quick.QuickAdapter.QuickItem e(org.jsoup.nodes.Element r11, java.util.List r12) {
        /*
            Method dump skipped, instructions count: 383
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.quick.QuickNewsCustom.e(org.jsoup.nodes.Element, java.util.List):com.mycompany.app.quick.QuickAdapter$QuickItem");
    }
}
