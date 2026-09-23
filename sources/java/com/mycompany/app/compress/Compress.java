package com.mycompany.app.compress;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.support.v4.media.a;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import androidx.collection.LruCache;
import com.mycompany.app.compress.CompressCache;
import com.mycompany.app.compress.CompressUtil;
import com.mycompany.app.data.DataCmp;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.subtitle.Subtitle;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.utils.MemoryCacheUtils;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

/* loaded from: classes3.dex */
public class Compress {

    /* renamed from: a, reason: collision with root package name */
    public Context f12867a;
    public String b;

    /* renamed from: c, reason: collision with root package name */
    public String f12868c;
    public String d = null;
    public int e = 0;
    public String f = null;
    public String g = null;
    public ArrayList h = new ArrayList();
    public ArrayList i;
    public int j;
    public HashMap k;

    /* loaded from: classes3.dex */
    public static class CmpItem {
    }

    /* loaded from: classes3.dex */
    public static class SortItem {

        /* renamed from: a, reason: collision with root package name */
        public String f12869a;
        public String b;

        /* renamed from: c, reason: collision with root package name */
        public String f12870c;
    }

    public Compress(Context context, String str, String str2) {
        this.f12867a = context;
        this.b = str;
        this.f12868c = str2;
    }

    public static boolean A(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (!J(str) && !str.equals("asv") && !str.equals("csh") && !str.equals("doc") && !str.equals("docm") && !str.equals("docx") && !str.equals("dotm") && !str.equals("dotx") && !str.equals("h") && !str.equals("hwp") && !str.equals("mdb") && !str.equals("pdf") && !str.equals("potm") && !str.equals("potx") && !str.equals("ppam") && !str.equals("ppsm") && !str.equals("ppsx") && !str.equals("ppt") && !str.equals("pptm") && !str.equals("pptx") && !str.equals("rtf") && !str.equals("sldm") && !str.equals("sldx") && !str.equals("thmx") && !str.equals("xlam") && !str.equals("xls") && !str.equals("xlsb") && !str.equals("xlsm") && !str.equals("xlsx") && !str.equals("xltm") && !str.equals("xltx")) {
            return false;
        }
        return true;
    }

    public static boolean B(String str) {
        if (TextUtils.isEmpty(str) || !str.equals("ttf")) {
            return false;
        }
        return true;
    }

    public static boolean C(String str, boolean z, boolean z2) {
        int lastIndexOf;
        if ((z && TextUtils.isEmpty(str)) || (lastIndexOf = str.lastIndexOf(46)) == -1) {
            return false;
        }
        String substring = str.substring(lastIndexOf + 1);
        if (z2) {
            substring = substring.toLowerCase(Locale.US);
        }
        return D(substring);
    }

    public static boolean D(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(str);
        if (TextUtils.isEmpty(mimeTypeFromExtension)) {
            return false;
        }
        return mimeTypeFromExtension.toLowerCase(Locale.US).startsWith("image");
    }

    public static boolean E(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (str.equals("aac")) {
            return true;
        }
        String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(str);
        if (TextUtils.isEmpty(mimeTypeFromExtension)) {
            return false;
        }
        String lowerCase = mimeTypeFromExtension.toLowerCase(Locale.US);
        if (!lowerCase.startsWith("audio") && !lowerCase.equals("application/ogg") && !lowerCase.equals("application/x-ogg")) {
            return false;
        }
        return true;
    }

    public static boolean F(String str) {
        int lastIndexOf;
        if (TextUtils.isEmpty(str) || (lastIndexOf = str.lastIndexOf(46)) == -1) {
            return false;
        }
        return G(str.substring(lastIndexOf + 1).toLowerCase(Locale.US));
    }

    public static boolean G(String str) {
        if (TextUtils.isEmpty(str) || !str.equals("pdf")) {
            return false;
        }
        return true;
    }

    public static boolean H(String str) {
        int i;
        if (!TextUtils.isEmpty(str)) {
            i = 0;
            while (i < 10) {
                if (str.equals(Subtitle.f18306a[i])) {
                    break;
                }
                i++;
            }
        }
        i = -1;
        if (i == -1) {
            return false;
        }
        return true;
    }

    public static boolean I(String str) {
        int lastIndexOf;
        if (!TextUtils.isEmpty(str) && (lastIndexOf = str.lastIndexOf(46)) != -1) {
            String lowerCase = str.substring(lastIndexOf + 1).toLowerCase(Locale.US);
            if (TextUtils.isEmpty(lowerCase)) {
                return false;
            }
            return lowerCase.equals("svg");
        }
        return false;
    }

    public static boolean J(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (H(str)) {
            return true;
        }
        String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(str);
        if (TextUtils.isEmpty(mimeTypeFromExtension)) {
            return false;
        }
        return mimeTypeFromExtension.toLowerCase(Locale.US).startsWith("text");
    }

    public static boolean K(String str) {
        if (!TextUtils.isEmpty(str) && (str.equals("mp4") || str.equals("ts") || str.equals("webm") || str.equals("avi") || str.equals("flv") || str.equals("mkv") || str.equals("mov") || str.equals("wmv") || str.equals("3gp") || str.equals("3gpp") || str.equals("3g2") || str.equals("3gpp2") || str.equals("asf") || str.equals("asx") || str.equals("avs") || str.equals("f4v") || str.equals("hlv") || str.equals("m1v") || str.equals("m4v") || str.equals("mp2") || str.equals("mpe") || str.equals("mpeg") || str.equals("mpg") || str.equals("mts") || str.equals("ogv") || str.equals("qt") || str.equals("rm") || str.equals("rmvb") || str.equals("swf") || str.equals("tp") || str.equals("viv") || str.equals("vivo") || str.equals("vob") || str.equals("wtv") || str.equals("yuv"))) {
            return true;
        }
        if (!TextUtils.isEmpty(str) && !str.equalsIgnoreCase("mkv")) {
            String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(str);
            if (TextUtils.isEmpty(mimeTypeFromExtension)) {
                return false;
            }
            return mimeTypeFromExtension.toLowerCase(Locale.US).startsWith("video");
        }
        return false;
    }

    public static boolean L(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (!str.equals("mht") && !str.equals("mhtml")) {
            return false;
        }
        return true;
    }

    public static void O(int i, int i2, int i3, String str) {
        LruCache lruCache;
        if (!TextUtils.isEmpty(str) && i != -1 && i2 != -1) {
            CompressCache a2 = CompressCache.a();
            CompressCache.BitmapInfo bitmapInfo = new CompressCache.BitmapInfo(i, i2, i3);
            a2.getClass();
            if (!TextUtils.isEmpty(str) && (lruCache = a2.f12871a) != null) {
                lruCache.d(str, bitmapInfo);
            }
        }
    }

    public static void P(String str, CompressCache.BitmapInfo bitmapInfo) {
        LruCache lruCache;
        if (!TextUtils.isEmpty(str) && bitmapInfo.f12872a != -1 && bitmapInfo.b != -1) {
            CompressCache a2 = CompressCache.a();
            a2.getClass();
            if (!TextUtils.isEmpty(str) && (lruCache = a2.f12871a) != null) {
                lruCache.d(str, bitmapInfo);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x006d, code lost:
    
        if (r3[0] == 0) goto L43;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.mycompany.app.compress.Compress b(int r7, android.content.Context r8, java.lang.String r9, java.lang.String r10) {
        /*
            r0 = 12
            if (r7 != r0) goto La
            com.mycompany.app.compress.CompressUtilUrl r7 = new com.mycompany.app.compress.CompressUtilUrl
            r7.<init>(r8, r9, r10)
            return r7
        La:
            r0 = 2
            r1 = 0
            if (r7 != r0) goto L14
            com.mycompany.app.compress.CompressUtilPdf r7 = new com.mycompany.app.compress.CompressUtilPdf
            r7.<init>(r8, r9, r1)
            return r7
        L14:
            boolean r0 = com.mycompany.app.main.MainUri.r(r8, r9)
            if (r0 != 0) goto L20
            com.mycompany.app.compress.Compress r7 = new com.mycompany.app.compress.Compress
            r7.<init>(r8, r9, r10)
            return r7
        L20:
            r0 = 1
            if (r7 != r0) goto L39
            boolean r7 = com.mycompany.app.compress.CompressUtilZip.V(r8, r9)
            if (r7 == 0) goto L33
            com.mycompany.app.compress.CompressUtilAlbum r7 = new com.mycompany.app.compress.CompressUtilAlbum
            r7.<init>(r8, r9, r1)
            java.lang.String r8 = "debug_logger_tag"
            r7.g = r8
            return r7
        L33:
            com.mycompany.app.compress.Compress r7 = new com.mycompany.app.compress.Compress
            r7.<init>(r8, r9, r10)
            return r7
        L39:
            r2 = 3
            if (r7 != r2) goto L87
            boolean r7 = com.mycompany.app.compress.CompressUtilZip.V(r8, r9)
            if (r7 == 0) goto L48
            com.mycompany.app.compress.CompressUtilZip r7 = new com.mycompany.app.compress.CompressUtilZip
            r7.<init>(r8, r9, r1)
            return r7
        L48:
            r7 = 0
            if (r8 != 0) goto L4c
            goto L79
        L4c:
            java.io.InputStream r2 = com.mycompany.app.main.MainUtil.Y1(r8, r9)     // Catch: java.lang.Exception -> L73
            int r3 = r2.available()     // Catch: java.lang.Exception -> L74
            int r3 = r3 % 512
            if (r3 == 0) goto L59
            goto L79
        L59:
            r3 = 99
            long r5 = r2.skip(r3)     // Catch: java.lang.Exception -> L74
            int r3 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r3 != 0) goto L70
            byte[] r3 = new byte[r0]     // Catch: java.lang.Exception -> L74
            int r4 = r2.read(r3, r7, r0)     // Catch: java.lang.Exception -> L74
            if (r4 != r0) goto L70
            r3 = r3[r7]     // Catch: java.lang.Exception -> L74
            if (r3 != 0) goto L70
            goto L71
        L70:
            r0 = r7
        L71:
            r7 = r0
            goto L74
        L73:
            r2 = r1
        L74:
            if (r2 == 0) goto L79
            r2.close()     // Catch: java.lang.Exception -> L79
        L79:
            if (r7 == 0) goto L81
            com.mycompany.app.compress.CompressUtilTar r7 = new com.mycompany.app.compress.CompressUtilTar
            r7.<init>(r8, r9, r1)
            return r7
        L81:
            com.mycompany.app.compress.Compress r7 = new com.mycompany.app.compress.Compress
            r7.<init>(r8, r9, r10)
            return r7
        L87:
            com.mycompany.app.compress.Compress r7 = new com.mycompany.app.compress.Compress
            r7.<init>(r8, r9, r10)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.compress.Compress.b(int, android.content.Context, java.lang.String, java.lang.String):com.mycompany.app.compress.Compress");
    }

    public static CompressCache.BitmapInfo h(String str) {
        LruCache lruCache;
        if (!TextUtils.isEmpty(str)) {
            CompressCache a2 = CompressCache.a();
            a2.getClass();
            if (TextUtils.isEmpty(str) || (lruCache = a2.f12871a) == null) {
                return null;
            }
            return (CompressCache.BitmapInfo) lruCache.c(str);
        }
        return null;
    }

    public static Bitmap q(String str) {
        if (!TextUtils.isEmpty(str)) {
            String a2 = MemoryCacheUtils.a(512, str);
            if (!TextUtils.isEmpty(a2)) {
                Bitmap a3 = ImageLoader.f().g().a(a2);
                if (MainUtil.f6(a3)) {
                    return a3;
                }
                File file = ImageLoader.f().e().get(str);
                if (file != null && file.length() != 0) {
                    try {
                        return BitmapFactory.decodeFile(file.getPath(), null);
                    } catch (Exception | OutOfMemoryError unused) {
                    }
                }
            }
        }
        return null;
    }

    public static boolean v(String str) {
        int lastIndexOf;
        if (TextUtils.isEmpty(str) || (lastIndexOf = str.lastIndexOf(46)) == -1) {
            return false;
        }
        return w(str.substring(lastIndexOf + 1).toLowerCase(Locale.US));
    }

    public static boolean w(String str) {
        if (TextUtils.isEmpty(str) || !str.equals("album")) {
            return false;
        }
        return true;
    }

    public static boolean x(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (str.equals("apk")) {
            return true;
        }
        String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(str);
        if (TextUtils.isEmpty(mimeTypeFromExtension)) {
            return false;
        }
        return mimeTypeFromExtension.toLowerCase(Locale.US).startsWith("application/vnd.android.package-archive");
    }

    public static boolean y(String str) {
        int lastIndexOf;
        if (TextUtils.isEmpty(str) || (lastIndexOf = str.lastIndexOf(46)) == -1) {
            return false;
        }
        return z(str.substring(lastIndexOf + 1).toLowerCase(Locale.US));
    }

    public static boolean z(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (!str.equals("zip") && !str.equals("jar") && !str.equals("cbz") && !str.equals("cbr") && !str.equals("cbt") && !str.equals("tar")) {
            return false;
        }
        return true;
    }

    public boolean N() {
        return false;
    }

    public final void Q(String str, String str2, boolean z) {
        if (!TextUtils.isEmpty(str)) {
            if (!z) {
                HashMap hashMap = this.k;
                if (hashMap != null) {
                    hashMap.remove(str);
                    return;
                }
                return;
            }
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            if (this.k == null) {
                this.k = new HashMap();
            }
            this.k.put(str, str2);
        }
    }

    public int R() {
        return this.j;
    }

    public void S() {
    }

    public void T(int i, String str) {
    }

    public void U(int i, String str, String str2) {
    }

    public void a() {
        this.j = 0;
        this.f12867a = null;
        this.b = null;
        this.f12868c = null;
        this.d = null;
        this.e = 0;
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = null;
        this.k = null;
    }

    public boolean c(String str, CompressUtil.CompressListener compressListener) {
        return false;
    }

    public Bitmap d() {
        return null;
    }

    public InputStream e() {
        return null;
    }

    public final Bitmap f(String str, int i, boolean z) {
        File file;
        Bitmap bitmap;
        if (!TextUtils.isEmpty(str)) {
            if (i != 2 && i != 4) {
                String r = r(str);
                if (!TextUtils.isEmpty(r)) {
                    Bitmap q = q(r);
                    if (MainUtil.f6(q)) {
                        return q;
                    }
                }
            }
            String a2 = MemoryCacheUtils.a(i, str);
            if (!TextUtils.isEmpty(a2)) {
                Bitmap a3 = ImageLoader.f().g().a(a2);
                if (a3 != null && !a3.isRecycled()) {
                    return a3;
                }
                if (z && (file = ImageLoader.f().e().get(str)) != null && file.length() > 0) {
                    try {
                        bitmap = BitmapFactory.decodeFile(file.getPath(), null);
                    } catch (Exception | OutOfMemoryError unused) {
                        bitmap = null;
                    }
                    if (bitmap != null && !bitmap.isRecycled()) {
                        return bitmap;
                    }
                }
            }
        }
        return null;
    }

    public final CompressCache.BitmapInfo g(int i) {
        return h(n(i));
    }

    public int i() {
        Context context = this.f12867a;
        if (context == null) {
            return 0;
        }
        return DataCmp.m(context).d();
    }

    public int j(String str) {
        Context context = this.f12867a;
        if (context == null) {
            return 0;
        }
        return DataCmp.m(context).e(str);
    }

    public MainItem.ChildItem k(int i) {
        Context context = this.f12867a;
        if (context == null) {
            return null;
        }
        return DataCmp.m(context).f(i);
    }

    public List l() {
        Context context = this.f12867a;
        if (context == null) {
            return null;
        }
        return DataCmp.m(context).f12895a;
    }

    public int m(String str) {
        ArrayList arrayList;
        String str2;
        if (!TextUtils.isEmpty(str) && (arrayList = this.h) != null && !arrayList.isEmpty()) {
            if (TextUtils.isEmpty(this.b)) {
                return arrayList.indexOf(str);
            }
            String p = a.p(new StringBuilder(), this.b, "/");
            if (str.startsWith(p)) {
                str2 = str.substring(p.length());
            } else {
                str2 = null;
            }
            if (!TextUtils.isEmpty(str2)) {
                return arrayList.indexOf(str2);
            }
            return -1;
        }
        return -1;
    }

    public String n(int i) {
        ArrayList arrayList = this.h;
        if (arrayList != null && i >= 0 && i <= arrayList.size() - 1) {
            if (TextUtils.isEmpty(this.b)) {
                return (String) arrayList.get(i);
            }
            return this.b + "/" + ((String) arrayList.get(i));
        }
        return null;
    }

    public InputStream o(String str) {
        return null;
    }

    public Bitmap p(int i) {
        return null;
    }

    public final String r(String str) {
        HashMap hashMap;
        if (TextUtils.isEmpty(str) || (hashMap = this.k) == null) {
            return null;
        }
        return (String) hashMap.get(str);
    }

    public int s() {
        return 0;
    }

    public final String t() {
        if (TextUtils.isEmpty(this.d)) {
            this.d = CompressUtil.c(this.f12867a, this.b);
        }
        return this.d;
    }

    public final boolean u(String str) {
        return !TextUtils.isEmpty(r(str));
    }

    public void M() {
    }
}
