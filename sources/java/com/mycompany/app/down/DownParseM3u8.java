package com.mycompany.app.down;

import android.content.Context;
import android.support.v4.media.a;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainDownSvc;
import com.mycompany.app.main.MainUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;

/* loaded from: classes3.dex */
public class DownParseM3u8 {

    /* renamed from: a, reason: collision with root package name */
    public Context f15573a;
    public boolean b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f15574c;
    public boolean d;
    public boolean e;
    public boolean f;
    public List g;
    public ArrayList h;
    public boolean i;
    public int j;
    public ExecutorService k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.down.DownParseM3u8$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ String f15575c;
        public final /* synthetic */ String f;
        public final /* synthetic */ String g;
        public final /* synthetic */ DownParseListener h;

        /* renamed from: com.mycompany.app.down.DownParseM3u8$1$1, reason: invalid class name and collision with other inner class name */
        /* loaded from: classes3.dex */
        class C01241 implements DownParseListener {
            public C01241() {
            }

            @Override // com.mycompany.app.down.DownParseM3u8.DownParseListener
            public final void a(List list) {
                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                DownParseM3u8 downParseM3u8 = DownParseM3u8.this;
                DownParseListener downParseListener = anonymousClass1.h;
                try {
                    try {
                    } catch (Exception unused) {
                        downParseListener.a(null);
                        return;
                    }
                } catch (OutOfMemoryError unused2) {
                    downParseListener.a(null);
                    return;
                } catch (StackOverflowError unused3) {
                    downParseListener.a(null);
                    return;
                }
                if (downParseM3u8.d) {
                    downParseListener.a(null);
                    return;
                }
                if (!downParseM3u8.b && !TextUtils.isEmpty(anonymousClass1.f)) {
                    if (downParseM3u8.j > 50) {
                        downParseListener.a(null);
                        return;
                    }
                    Runnable runnable = new Runnable() { // from class: com.mycompany.app.down.DownParseM3u8.1.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass1 anonymousClass12 = AnonymousClass1.this;
                            DownParseM3u8 downParseM3u82 = DownParseM3u8.this;
                            String str = anonymousClass12.f15575c;
                            boolean z = MainConst.f16452a;
                            DownParseM3u8.a(downParseM3u82, str, null, anonymousClass12.g, new DownParseListener() { // from class: com.mycompany.app.down.DownParseM3u8.1.1.1.1
                                @Override // com.mycompany.app.down.DownParseM3u8.DownParseListener
                                public final void a(List list2) {
                                    AnonymousClass1 anonymousClass13 = AnonymousClass1.this;
                                    DownParseListener downParseListener2 = anonymousClass13.h;
                                    DownParseM3u8 downParseM3u83 = DownParseM3u8.this;
                                    if (downParseM3u83.d) {
                                        downParseListener2.a(null);
                                    } else {
                                        downParseM3u83.e = downParseM3u83.b;
                                        downParseListener2.a(list2);
                                    }
                                }
                            });
                        }
                    };
                    ExecutorService executorService = downParseM3u8.k;
                    if (executorService != null) {
                        try {
                            executorService.execute(runnable);
                            return;
                        } catch (Exception unused4) {
                            return;
                        }
                    }
                    return;
                }
                downParseListener.a(list);
            }
        }

        public AnonymousClass1(String str, String str2, String str3, DownParseListener downParseListener) {
            this.f15575c = str;
            this.f = str2;
            this.g = str3;
            this.h = downParseListener;
        }

        @Override // java.lang.Runnable
        public final void run() {
            DownParseM3u8.a(DownParseM3u8.this, this.f15575c, this.f, this.g, new C01241());
        }
    }

    /* loaded from: classes3.dex */
    public interface DownParseListener {
        void a(List list);
    }

    public DownParseM3u8(Context context) {
        this.f15573a = context;
        this.k = MainApp.i(context);
    }

    /* JADX WARN: Code restructure failed: missing block: B:76:0x00e5, code lost:
    
        if (android.text.TextUtils.isEmpty(r5) != false) goto L58;
     */
    /* JADX WARN: Type inference failed for: r5v17, types: [com.mycompany.app.main.MainDownSvc$EncItem, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v18, types: [com.mycompany.app.main.MainDownSvc$EncItem, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(com.mycompany.app.down.DownParseM3u8 r21, java.lang.String r22, java.lang.String r23, java.lang.String r24, final com.mycompany.app.down.DownParseM3u8.DownParseListener r25) {
        /*
            Method dump skipped, instructions count: 543
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.down.DownParseM3u8.a(com.mycompany.app.down.DownParseM3u8, java.lang.String, java.lang.String, java.lang.String, com.mycompany.app.down.DownParseM3u8$DownParseListener):void");
    }

    public static List b(List list, boolean z, String str, String str2) {
        if (list == null) {
            return null;
        }
        boolean isEmpty = TextUtils.isEmpty(str);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            MainDownSvc.EncItem encItem = (MainDownSvc.EncItem) it.next();
            if (encItem != null) {
                String str3 = encItem.b;
                if (!TextUtils.isEmpty(str3)) {
                    StringBuilder sb = new StringBuilder();
                    if (!isEmpty && !str3.startsWith(str)) {
                        str = o(str3, str);
                        sb.append(str);
                    }
                    sb.append(str3);
                    if (z && !str3.endsWith(str2)) {
                        sb.append(str2);
                    }
                    encItem.b = sb.toString();
                }
            }
        }
        return list;
    }

    public static String d(int i, int i2, String str) {
        int i3;
        int indexOf;
        if (str == null || i2 < 0 || (i3 = i2 + 1) >= i || (indexOf = str.indexOf(47, i3)) <= 0 || indexOf > i) {
            return null;
        }
        if (indexOf == i) {
            return str;
        }
        return str.substring(0, indexOf);
    }

    public static ArrayList e(List list, boolean z, String str, String str2) {
        if (list == null) {
            return null;
        }
        boolean isEmpty = TextUtils.isEmpty(str);
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str3 = (String) it.next();
            if (str3 != null) {
                StringBuilder sb = new StringBuilder();
                if (!isEmpty) {
                    str = o(str3, str);
                    sb.append(str);
                }
                sb.append(str3);
                if (z) {
                    sb.append(str2);
                }
                arrayList.add(sb.toString());
            }
        }
        return arrayList;
    }

    public static String f(String str, String str2, String str3, boolean z) {
        boolean isEmpty = TextUtils.isEmpty(str2);
        StringBuilder sb = new StringBuilder();
        if (!isEmpty) {
            sb.append(o(str, str2));
        }
        sb.append(str);
        if (z) {
            sb.append(str3);
        }
        return sb.toString();
    }

    public static String g(String str) {
        int length;
        int lastIndexOf;
        if (str == null || (length = str.length()) == 0) {
            return null;
        }
        int indexOf = str.indexOf(63);
        if (indexOf > 0 && indexOf < length) {
            lastIndexOf = str.lastIndexOf(47, indexOf);
        } else {
            lastIndexOf = str.lastIndexOf(47);
        }
        if (lastIndexOf <= 0 || lastIndexOf > length) {
            return null;
        }
        if (lastIndexOf == length) {
            return str;
        }
        return str.substring(0, lastIndexOf);
    }

    public static String h(String str, int i, int i2, String str2) {
        int i3;
        int lastIndexOf;
        if (TextUtils.isEmpty(str2) || i2 <= str2.length() || str == null || i2 <= 0 || i2 - 1 > i || (lastIndexOf = str.lastIndexOf(47, i3)) <= 0 || lastIndexOf > i) {
            return null;
        }
        if (lastIndexOf <= str2.length()) {
            return str2;
        }
        if (lastIndexOf == i) {
            return str;
        }
        return str.substring(0, lastIndexOf);
    }

    public static String i(String str) {
        int length;
        int indexOf;
        int i;
        if (str == null || (length = str.length()) == 0 || (indexOf = str.indexOf("://")) <= 0 || (i = indexOf + 3) > length) {
            return null;
        }
        if (i == length) {
            return str;
        }
        return str.substring(0, i);
    }

    /* JADX WARN: Type inference failed for: r4v4, types: [java.lang.Object, com.mycompany.app.main.MainDownSvc$M3u8Item] */
    public static MainDownSvc.M3u8Item l(String str) {
        String[] split2;
        String str2;
        String str3;
        String M0 = MainUtil.M0(str);
        String str4 = null;
        if (TextUtils.isEmpty(M0) || (split2 = M0.split("<,>")) == null || split2.length != 3 || (str2 = split2[0]) == null || (str3 = split2[1]) == null) {
            return null;
        }
        String str5 = split2[2];
        if (!"isNull".equals(str5)) {
            str4 = str5;
        }
        ?? obj = new Object();
        obj.f16529a = str2;
        obj.b = str3;
        obj.f16530c = str4;
        return obj;
    }

    public static String n(String str) {
        int indexOf;
        if (TextUtils.isEmpty(str) || (indexOf = str.indexOf(63)) <= 0 || indexOf >= str.length()) {
            return null;
        }
        return str.substring(indexOf);
    }

    public static String o(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return str2;
        }
        if (str2.endsWith("/")) {
            if (!TextUtils.isEmpty(str) && str.startsWith("/")) {
                return a.d(1, 0, str2);
            }
        } else if (TextUtils.isEmpty(str) || !str.startsWith("/")) {
            return str2.concat("/");
        }
        return str2;
    }

    public final List c(String str, String str2, String str3) {
        MainDownSvc.EncItem encItem;
        boolean z;
        boolean z2;
        if (this.i) {
            return this.g;
        }
        List list = this.g;
        List list2 = null;
        if (list != null && !list.isEmpty() && (encItem = (MainDownSvc.EncItem) list.get(0)) != null) {
            String str4 = encItem.b;
            if (!TextUtils.isEmpty(str4)) {
                if (!TextUtils.isEmpty(str3)) {
                    if (TextUtils.isEmpty(str4) || str4.indexOf(63) == -1) {
                        z2 = false;
                    } else {
                        z2 = true;
                    }
                    z = !z2;
                } else {
                    z = false;
                }
                String i = i(str);
                if (!TextUtils.isEmpty(i)) {
                    if (MainUtil.r(47, str4)) {
                        int length = i.length();
                        int length2 = str.length();
                        while (true) {
                            if (length > length2) {
                                break;
                            }
                            if (MainUtil.g6(this.f15573a, f(str4, i, str3, z), str2)) {
                                list2 = b(list, z, i, str3);
                                break;
                            }
                            if (z) {
                                if (MainUtil.g6(this.f15573a, f(str4, i, null, false), str2)) {
                                    list2 = b(list, false, i, null);
                                    break;
                                }
                            }
                            String d = d(length2, length, str);
                            if (TextUtils.isEmpty(d) || d.equals(i)) {
                                break;
                            }
                            length = d.length();
                            i = d;
                        }
                    } else {
                        String g = g(str);
                        if (!TextUtils.isEmpty(g)) {
                            int length3 = g.length();
                            int length4 = str.length();
                            while (true) {
                                if (length3 <= 0) {
                                    break;
                                }
                                if (MainUtil.g6(this.f15573a, f(str4, g, str3, z), str2)) {
                                    list2 = b(list, z, g, str3);
                                    break;
                                }
                                if (z) {
                                    if (MainUtil.g6(this.f15573a, f(str4, g, null, false), str2)) {
                                        list2 = b(list, false, g, null);
                                        break;
                                    }
                                }
                                String h = h(str, length4, length3, i);
                                if (TextUtils.isEmpty(h) || h.equals(g)) {
                                    break;
                                }
                                length3 = h.length();
                                g = h;
                            }
                        }
                    }
                }
            }
        }
        if (list2 != null && !list2.isEmpty()) {
            this.g = list2;
        }
        return this.g;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00bb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00b6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00b1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ac A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r3v17 */
    /* JADX WARN: Type inference failed for: r3v18 */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.io.InputStreamReader] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.ArrayList j(java.lang.String r8, java.lang.String r9) {
        /*
            Method dump skipped, instructions count: 194
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.down.DownParseM3u8.j(java.lang.String, java.lang.String):java.util.ArrayList");
    }

    public final void k(String str, String str2, String str3, DownParseListener downParseListener) {
        this.b = false;
        this.e = false;
        if (this.j > 50) {
            downParseListener.a(null);
            return;
        }
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(str, str2, str3, downParseListener);
        ExecutorService executorService = this.k;
        if (executorService == null) {
            return;
        }
        try {
            executorService.execute(anonymousClass1);
        } catch (Exception unused) {
        }
    }

    public final void m(ArrayList arrayList, String str, String str2, String str3, String str4, final DownParseListener downParseListener) {
        boolean z;
        boolean z2;
        int i = this.j + 1;
        this.j = i;
        if (i > 50) {
            downParseListener.a(null);
            return;
        }
        if (TextUtils.isEmpty(str4)) {
            downParseListener.a(null);
            return;
        }
        try {
            if (!TextUtils.isEmpty(str3)) {
                if (TextUtils.isEmpty(str4) || str4.indexOf(63) == -1) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                z = !z2;
            } else {
                z = false;
            }
        } catch (Exception | OutOfMemoryError | StackOverflowError unused) {
        }
        if (URLUtil.isNetworkUrl(str4)) {
            if (z) {
                String f = f(str4, null, str3, z);
                if (MainUtil.g6(this.f15573a, f, str2)) {
                    if (arrayList != null) {
                        downParseListener.a(e(arrayList, z, null, str3));
                        return;
                    } else {
                        k(f, str2, str3, new DownParseListener() { // from class: com.mycompany.app.down.DownParseM3u8.4
                            @Override // com.mycompany.app.down.DownParseM3u8.DownParseListener
                            public final void a(List list) {
                                DownParseListener downParseListener2 = DownParseListener.this;
                                if (downParseListener2 != null) {
                                    downParseListener2.a(list);
                                }
                            }
                        });
                        return;
                    }
                }
            }
            if (arrayList != null) {
                downParseListener.a(arrayList);
                return;
            } else {
                k(str4, str2, null, new DownParseListener() { // from class: com.mycompany.app.down.DownParseM3u8.5
                    @Override // com.mycompany.app.down.DownParseM3u8.DownParseListener
                    public final void a(List list) {
                        DownParseListener downParseListener2 = DownParseListener.this;
                        if (downParseListener2 != null) {
                            downParseListener2.a(list);
                        }
                    }
                });
                return;
            }
        }
        String i2 = i(str);
        if (TextUtils.isEmpty(i2)) {
            downParseListener.a(null);
            return;
        }
        if (MainUtil.r(47, str4)) {
            int length = i2.length();
            int length2 = str.length();
            while (length <= length2) {
                String f2 = f(str4, i2, str3, z);
                if (MainUtil.g6(this.f15573a, f2, str2)) {
                    if (arrayList != null) {
                        downParseListener.a(e(arrayList, z, i2, str3));
                        return;
                    } else {
                        k(f2, str2, str3, new DownParseListener() { // from class: com.mycompany.app.down.DownParseM3u8.6
                            @Override // com.mycompany.app.down.DownParseM3u8.DownParseListener
                            public final void a(List list) {
                                DownParseListener downParseListener2 = DownParseListener.this;
                                if (downParseListener2 != null) {
                                    downParseListener2.a(list);
                                }
                            }
                        });
                        return;
                    }
                }
                if (z) {
                    String f3 = f(str4, i2, null, false);
                    if (MainUtil.g6(this.f15573a, f3, str2)) {
                        if (arrayList != null) {
                            downParseListener.a(e(arrayList, false, i2, null));
                            return;
                        } else {
                            k(f3, str2, null, new DownParseListener() { // from class: com.mycompany.app.down.DownParseM3u8.7
                                @Override // com.mycompany.app.down.DownParseM3u8.DownParseListener
                                public final void a(List list) {
                                    DownParseListener downParseListener2 = DownParseListener.this;
                                    if (downParseListener2 != null) {
                                        downParseListener2.a(list);
                                    }
                                }
                            });
                            return;
                        }
                    }
                }
                String d = d(length2, length, str);
                if (!TextUtils.isEmpty(d) && !d.equals(i2)) {
                    length = d.length();
                    i2 = d;
                }
                downParseListener.a(null);
                return;
            }
        }
        String g = g(str);
        if (TextUtils.isEmpty(g)) {
            downParseListener.a(null);
            return;
        }
        int length3 = g.length();
        int length4 = str.length();
        while (length3 > 0) {
            String f4 = f(str4, g, str3, z);
            if (MainUtil.g6(this.f15573a, f4, str2)) {
                if (arrayList != null) {
                    downParseListener.a(e(arrayList, z, g, str3));
                    return;
                } else {
                    k(f4, str2, str3, new DownParseListener() { // from class: com.mycompany.app.down.DownParseM3u8.8
                        @Override // com.mycompany.app.down.DownParseM3u8.DownParseListener
                        public final void a(List list) {
                            DownParseListener downParseListener2 = DownParseListener.this;
                            if (downParseListener2 != null) {
                                downParseListener2.a(list);
                            }
                        }
                    });
                    return;
                }
            }
            if (z) {
                String f5 = f(str4, g, null, false);
                if (MainUtil.g6(this.f15573a, f5, str2)) {
                    if (arrayList != null) {
                        downParseListener.a(e(arrayList, false, g, null));
                        return;
                    } else {
                        k(f5, str2, null, new DownParseListener() { // from class: com.mycompany.app.down.DownParseM3u8.9
                            @Override // com.mycompany.app.down.DownParseM3u8.DownParseListener
                            public final void a(List list) {
                                DownParseListener downParseListener2 = DownParseListener.this;
                                if (downParseListener2 != null) {
                                    downParseListener2.a(list);
                                }
                            }
                        });
                        return;
                    }
                }
            }
            String h = h(str, length4, length3, i2);
            if (!TextUtils.isEmpty(h) && !h.equals(g)) {
                length3 = h.length();
                g = h;
            }
            downParseListener.a(null);
            return;
        }
        downParseListener.a(null);
    }

    public final void p() {
        this.f15573a = null;
        this.g = null;
        this.h = null;
        this.k = null;
    }
}
