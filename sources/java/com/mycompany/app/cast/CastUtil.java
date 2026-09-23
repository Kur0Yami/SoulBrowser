package com.mycompany.app.cast;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaLoadRequestData;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.common.images.WebImage;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefMain;
import com.mycompany.app.soulbrowser.R;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class CastUtil {

    /* renamed from: a, reason: collision with root package name */
    public Context f12853a;
    public CastSession b;

    /* renamed from: c, reason: collision with root package name */
    public Handler f12854c;
    public CastSendListener d;
    public String e;
    public String f;
    public String g;
    public String h;
    public String i;
    public List j;
    public List k;
    public int l;
    public long m;
    public long n;
    public MediaLoadRequestData o;
    public MediaQueueItem[] p;

    /* loaded from: classes3.dex */
    public interface CastSendListener {
        void a(boolean z);
    }

    public CastUtil(Context context, CastSession castSession, Handler handler, CastSendListener castSendListener) {
        this.f12853a = context;
        this.b = castSession;
        this.f12854c = handler;
        this.d = castSendListener;
    }

    public static MediaInfo a(Context context, String str, String str2, String str3, String str4, long j, String str5, ArrayList arrayList) {
        if (context != null && !TextUtils.isEmpty(str)) {
            try {
                MediaMetadata mediaMetadata = new MediaMetadata(1);
                Bundle bundle = mediaMetadata.f;
                if (!TextUtils.isEmpty(str3)) {
                    MediaMetadata.X(1, "com.google.android.gms.cast.metadata.TITLE");
                    bundle.putString("com.google.android.gms.cast.metadata.TITLE", str3);
                } else {
                    String string = context.getString(R.string.no_title);
                    MediaMetadata.X(1, "com.google.android.gms.cast.metadata.TITLE");
                    bundle.putString("com.google.android.gms.cast.metadata.TITLE", string);
                }
                if (!TextUtils.isEmpty(str4)) {
                    MediaMetadata.X(1, "com.google.android.gms.cast.metadata.SUBTITLE");
                    bundle.putString("com.google.android.gms.cast.metadata.SUBTITLE", str4);
                } else {
                    String I1 = MainUtil.I1(str, false);
                    if (!TextUtils.isEmpty(I1)) {
                        MediaMetadata.X(1, "com.google.android.gms.cast.metadata.SUBTITLE");
                        bundle.putString("com.google.android.gms.cast.metadata.SUBTITLE", I1);
                    }
                }
                if (!TextUtils.isEmpty(str2)) {
                    mediaMetadata.f3445c.add(new WebImage(Uri.parse(str2)));
                }
                if (j < 0) {
                    j = 0;
                }
                if (arrayList != null) {
                    MediaInfo.Builder builder = new MediaInfo.Builder(str);
                    builder.b = 1;
                    builder.f3440c = str5;
                    builder.d = mediaMetadata;
                    if (j < 0 && j != -1) {
                        throw new IllegalArgumentException("Invalid stream duration");
                    }
                    builder.e = j;
                    builder.f = arrayList;
                    return builder.a();
                }
                MediaInfo.Builder builder2 = new MediaInfo.Builder(str);
                builder2.b = 1;
                builder2.f3440c = str5;
                builder2.d = mediaMetadata;
                if (j < 0 && j != -1) {
                    throw new IllegalArgumentException("Invalid stream duration");
                }
                builder2.e = j;
                return builder2.a();
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    public final void b() {
        this.f12853a = null;
        this.b = null;
        this.f12854c = null;
        this.d = null;
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.o = null;
        this.p = null;
    }

    public final void c(int i, String str, String str2, List list) {
        this.e = str;
        this.j = list;
        this.l = i;
        this.g = str2;
        MainApp.J(this.f12853a, new Runnable() { // from class: com.mycompany.app.cast.CastUtil.11
            @Override // java.lang.Runnable
            public final void run() {
                String str3;
                final CastUtil castUtil = CastUtil.this;
                String str4 = castUtil.e;
                List<String> list2 = castUtil.j;
                int i2 = castUtil.l;
                String str5 = castUtil.g;
                if (castUtil.b != null && list2 != null) {
                    int size = list2.size();
                    if (size == 0) {
                        castUtil.g();
                        return;
                    }
                    ArrayList arrayList = new ArrayList();
                    int i3 = 1;
                    int i4 = 1;
                    for (String str6 : list2) {
                        if (size > i3) {
                            str3 = str4 + " (" + i4 + " / " + size + ") ";
                        } else {
                            str3 = str4;
                        }
                        int i5 = i3;
                        int i6 = i4;
                        MediaInfo a2 = CastUtil.a(castUtil.f12853a, str6, str6, str5, str3, 0L, "image/*", null);
                        if (a2 == null) {
                            i3 = i5;
                            i4 = i6;
                        } else {
                            try {
                                arrayList.add(new MediaQueueItem.Builder(a2).a());
                                i4 = i6 + 1;
                            } catch (Exception unused) {
                                i4 = i6;
                            }
                            i3 = i5;
                        }
                    }
                    int size2 = arrayList.size();
                    if (size2 == 0) {
                        castUtil.g();
                        return;
                    }
                    MediaQueueItem[] mediaQueueItemArr = new MediaQueueItem[size2];
                    int size3 = arrayList.size();
                    int i7 = 0;
                    int i8 = 0;
                    int i9 = 0;
                    while (i9 < size3) {
                        Object obj = arrayList.get(i9);
                        i9++;
                        mediaQueueItemArr[i8] = (MediaQueueItem) obj;
                        i8++;
                    }
                    if (i2 >= size2) {
                        i2 = size2 - 1;
                    }
                    if (i2 >= 0) {
                        i7 = i2;
                    }
                    castUtil.p = mediaQueueItemArr;
                    castUtil.l = i7;
                    Handler handler = castUtil.f12854c;
                    if (handler != null) {
                        handler.post(new Runnable() { // from class: com.mycompany.app.cast.CastUtil.12
                            @Override // java.lang.Runnable
                            public final void run() {
                                CastUtil castUtil2 = CastUtil.this;
                                try {
                                    castUtil2.b.j().r(castUtil2.p, castUtil2.l, 1, -1L);
                                    castUtil2.h();
                                } catch (Exception unused2) {
                                    castUtil2.g();
                                }
                            }
                        });
                        return;
                    }
                    return;
                }
                castUtil.g();
            }
        });
    }

    public final void d(String str, List list, List list2, int i, long j) {
        this.e = str;
        this.j = list;
        this.k = list2;
        this.l = i;
        this.m = j;
        this.n = 0L;
        MainApp.J(this.f12853a, new Runnable() { // from class: com.mycompany.app.cast.CastUtil.9
            @Override // java.lang.Runnable
            public final void run() {
                String str2;
                String str3;
                String str4;
                final CastUtil castUtil = CastUtil.this;
                String str5 = castUtil.e;
                List list3 = castUtil.j;
                List list4 = castUtil.k;
                int i2 = castUtil.l;
                long j2 = castUtil.m;
                long j3 = castUtil.n;
                if (castUtil.b != null && list3 != null) {
                    int size = list3.size();
                    if (size == 0) {
                        castUtil.g();
                        return;
                    }
                    ArrayList arrayList = new ArrayList();
                    boolean z = true;
                    int i3 = 1;
                    int i4 = 0;
                    while (i4 < size) {
                        String str6 = (String) list3.get(i4);
                        String v2 = MainUtil.v2(str6);
                        if (TextUtils.isEmpty(v2)) {
                            v2 = "video/*";
                        }
                        String str7 = v2;
                        List list5 = list3;
                        String V3 = MainUtil.V3(str6, null, str7, z);
                        if (list4 != null && i4 < list4.size()) {
                            str2 = (String) list4.get(i4);
                        } else {
                            str2 = null;
                        }
                        if (TextUtils.isEmpty(str2) && str7.startsWith("image")) {
                            str2 = str6;
                        }
                        if (size > 1) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(str5);
                            str3 = str7;
                            sb.append(" (");
                            sb.append(i3);
                            sb.append(" / ");
                            sb.append(size);
                            sb.append(") ");
                            str4 = sb.toString();
                        } else {
                            str3 = str7;
                            str4 = str5;
                        }
                        long j4 = j3;
                        String str8 = str5;
                        int i5 = i3;
                        String str9 = str3;
                        List list6 = list4;
                        int i6 = i4;
                        String str10 = str4;
                        ArrayList arrayList2 = arrayList;
                        MediaInfo a2 = CastUtil.a(castUtil.f12853a, str6, str2, V3, str10, j2, str9, null);
                        if (a2 != null) {
                            try {
                                MediaQueueItem.Builder builder = new MediaQueueItem.Builder(a2);
                                MediaQueueItem.this.g = true;
                                arrayList2.add(builder.a());
                                i3 = i5 + 1;
                            } catch (Exception unused) {
                                i3 = i5;
                            }
                            i4 = i6 + 1;
                            arrayList = arrayList2;
                            j3 = j4;
                            z = true;
                            list3 = list5;
                            list4 = list6;
                            str5 = str8;
                        }
                        i3 = i5;
                        i4 = i6 + 1;
                        arrayList = arrayList2;
                        j3 = j4;
                        z = true;
                        list3 = list5;
                        list4 = list6;
                        str5 = str8;
                    }
                    long j5 = j3;
                    ArrayList arrayList3 = arrayList;
                    boolean z2 = z;
                    int size2 = arrayList3.size();
                    if (size2 == 0) {
                        castUtil.g();
                        return;
                    }
                    MediaQueueItem[] mediaQueueItemArr = new MediaQueueItem[size2];
                    int size3 = arrayList3.size();
                    int i7 = 0;
                    int i8 = 0;
                    while (i8 < size3) {
                        Object obj = arrayList3.get(i8);
                        i8++;
                        mediaQueueItemArr[i7] = (MediaQueueItem) obj;
                        i7 += z2 ? 1 : 0;
                    }
                    if (i2 >= size2) {
                        i2 = size2 - 1;
                    }
                    if (i2 < 0) {
                        i2 = 0;
                    }
                    castUtil.p = mediaQueueItemArr;
                    castUtil.l = i2;
                    castUtil.n = j5;
                    Handler handler = castUtil.f12854c;
                    if (handler != null) {
                        handler.post(new Runnable() { // from class: com.mycompany.app.cast.CastUtil.10
                            @Override // java.lang.Runnable
                            public final void run() {
                                CastUtil castUtil2 = CastUtil.this;
                                MediaQueueItem[] mediaQueueItemArr2 = castUtil2.p;
                                int i9 = castUtil2.l;
                                long j6 = castUtil2.n;
                                try {
                                    castUtil2.b.j().r(mediaQueueItemArr2, i9, PrefMain.t ? 1 : 0, j6);
                                    castUtil2.h();
                                } catch (Exception unused2) {
                                    castUtil2.g();
                                }
                            }
                        });
                        return;
                    }
                    return;
                }
                castUtil.g();
            }
        });
    }

    public final void e(String str, String str2, String str3, String str4, int i) {
        if (i == 4) {
            this.e = str;
            this.f = str2;
            this.g = str3;
            this.h = str4;
            MainApp.J(this.f12853a, new Runnable() { // from class: com.mycompany.app.cast.CastUtil.3
                /* JADX WARN: Code restructure failed: missing block: B:14:0x0052, code lost:
                
                    if (android.text.TextUtils.isEmpty(r3) != false) goto L19;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:15:0x0054, code lost:
                
                    r3 = r2;
                    r9 = "image/*";
                 */
                /* JADX WARN: Code restructure failed: missing block: B:40:0x0068, code lost:
                
                    if (android.text.TextUtils.isEmpty(r3) != false) goto L19;
                 */
                /* JADX WARN: Type inference failed for: r3v6, types: [com.google.android.gms.cast.MediaLoadRequestData$Builder, java.lang.Object] */
                /* JADX WARN: Type inference failed for: r8v2, types: [com.nostra13.universalimageloader.cache.disc.naming.Md5FileNameGenerator, java.lang.Object] */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void run() {
                    /*
                        r28 = this;
                        r0 = r28
                        com.mycompany.app.cast.CastUtil r1 = com.mycompany.app.cast.CastUtil.this
                        java.lang.String r6 = r1.e
                        java.lang.String r2 = r1.f
                        java.lang.String r5 = r1.g
                        java.lang.String r3 = r1.h
                        com.google.android.gms.cast.framework.CastSession r4 = r1.b
                        if (r4 != 0) goto L14
                        r1.g()
                        return
                    L14:
                        boolean r4 = android.webkit.URLUtil.isNetworkUrl(r2)
                        r11 = 0
                        java.lang.String r7 = "image/*"
                        if (r4 != 0) goto L5a
                        com.mycompany.app.cast.CastLocal r4 = com.mycompany.app.cast.CastLocal.a()
                        android.content.Context r8 = r1.f12853a
                        r4.b(r8)
                        com.mycompany.app.cast.CastLocal r4 = com.mycompany.app.cast.CastLocal.a()
                        com.mycompany.app.cast.CastServer r4 = r4.f12852a
                        if (r4 != 0) goto L30
                    L2e:
                        r2 = r11
                        goto L44
                    L30:
                        boolean r8 = android.text.TextUtils.isEmpty(r2)
                        if (r8 == 0) goto L37
                        goto L2e
                    L37:
                        com.nostra13.universalimageloader.cache.disc.naming.Md5FileNameGenerator r8 = new com.nostra13.universalimageloader.cache.disc.naming.Md5FileNameGenerator
                        r8.<init>()
                        java.lang.String r8 = r8.a(r2)
                        java.lang.String r2 = r4.i(r2, r3, r8)
                    L44:
                        boolean r4 = android.text.TextUtils.isEmpty(r3)
                        if (r4 == 0) goto L57
                        java.lang.String r3 = com.mycompany.app.main.MainUtil.u2(r5)
                        boolean r4 = android.text.TextUtils.isEmpty(r3)
                        if (r4 == 0) goto L57
                    L54:
                        r3 = r2
                        r9 = r7
                        goto L6b
                    L57:
                        r9 = r3
                        r3 = r2
                        goto L6b
                    L5a:
                        boolean r4 = android.text.TextUtils.isEmpty(r3)
                        if (r4 == 0) goto L57
                        java.lang.String r3 = com.mycompany.app.main.MainUtil.v2(r2)
                        boolean r4 = android.text.TextUtils.isEmpty(r3)
                        if (r4 == 0) goto L57
                        goto L54
                    L6b:
                        android.content.Context r2 = r1.f12853a
                        r7 = 0
                        r10 = 0
                        r4 = r3
                        com.google.android.gms.cast.MediaInfo r2 = com.mycompany.app.cast.CastUtil.a(r2, r3, r4, r5, r6, r7, r9, r10)
                        if (r2 != 0) goto L82
                        com.mycompany.app.cast.CastLocal r2 = com.mycompany.app.cast.CastLocal.a()
                        r2.c()
                        r1.g()
                        return
                    L82:
                        com.google.android.gms.cast.MediaLoadRequestData$Builder r3 = new com.google.android.gms.cast.MediaLoadRequestData$Builder     // Catch: java.lang.Exception -> Lb2
                        r3.<init>()     // Catch: java.lang.Exception -> Lb2
                        r4 = -1
                        r3.b = r4     // Catch: java.lang.Exception -> Lb2
                        r4 = 4607182418800017408(0x3ff0000000000000, double:1.0)
                        r3.f3444c = r4     // Catch: java.lang.Exception -> Lb2
                        r3.f3443a = r2     // Catch: java.lang.Exception -> Lb2
                        com.google.android.gms.cast.MediaLoadRequestData r12 = new com.google.android.gms.cast.MediaLoadRequestData     // Catch: java.lang.Exception -> Lb2
                        com.google.android.gms.cast.MediaInfo r13 = r3.f3443a     // Catch: java.lang.Exception -> Lb2
                        java.lang.Boolean r15 = java.lang.Boolean.TRUE     // Catch: java.lang.Exception -> Lb2
                        long r4 = r3.b     // Catch: java.lang.Exception -> Lb2
                        double r2 = r3.f3444c     // Catch: java.lang.Exception -> Lb2
                        r25 = 0
                        r26 = 0
                        r14 = 0
                        r20 = 0
                        r21 = 0
                        r22 = 0
                        r23 = 0
                        r24 = 0
                        r18 = r2
                        r16 = r4
                        r12.<init>(r13, r14, r15, r16, r18, r20, r21, r22, r23, r24, r25, r26)     // Catch: java.lang.Exception -> Lb2
                        r11 = r12
                    Lb2:
                        if (r11 != 0) goto Lbf
                        com.mycompany.app.cast.CastLocal r2 = com.mycompany.app.cast.CastLocal.a()
                        r2.c()
                        r1.g()
                        goto Lce
                    Lbf:
                        r1.o = r11
                        android.os.Handler r2 = r1.f12854c
                        if (r2 != 0) goto Lc6
                        goto Lce
                    Lc6:
                        com.mycompany.app.cast.CastUtil$4 r3 = new com.mycompany.app.cast.CastUtil$4
                        r3.<init>()
                        r2.post(r3)
                    Lce:
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.cast.CastUtil.AnonymousClass3.run():void");
                }
            });
            return;
        }
        f(str, str2, null, str3, 0L, 0L, str4);
    }

    public final void f(String str, String str2, String str3, String str4, long j, long j2, String str5) {
        this.e = str;
        this.f = str2;
        this.i = str3;
        this.g = str4;
        this.m = j;
        this.n = j2;
        this.h = str5;
        MainApp.J(this.f12853a, new Runnable() { // from class: com.mycompany.app.cast.CastUtil.6
            /* JADX WARN: Code restructure failed: missing block: B:17:0x006d, code lost:
            
                if (android.text.TextUtils.isEmpty(r3) != false) goto L23;
             */
            /* JADX WARN: Code restructure failed: missing block: B:18:0x006f, code lost:
            
                r3 = r2;
                r8 = "video/*";
             */
            /* JADX WARN: Code restructure failed: missing block: B:45:0x0084, code lost:
            
                if (android.text.TextUtils.isEmpty(r3) != false) goto L23;
             */
            /* JADX WARN: Type inference failed for: r8v9, types: [com.nostra13.universalimageloader.cache.disc.naming.Md5FileNameGenerator, java.lang.Object] */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void run() {
                /*
                    r14 = this;
                    com.mycompany.app.cast.CastUtil r0 = com.mycompany.app.cast.CastUtil.this
                    java.lang.String r5 = r0.e
                    java.lang.String r1 = r0.f
                    java.lang.String r2 = r0.i
                    java.lang.String r4 = r0.g
                    long r6 = r0.m
                    long r10 = r0.n
                    java.lang.String r3 = r0.h
                    com.google.android.gms.cast.framework.CastSession r8 = r0.b
                    if (r8 != 0) goto L18
                    r0.g()
                    return
                L18:
                    boolean r8 = android.webkit.URLUtil.isNetworkUrl(r1)
                    r12 = 0
                    java.lang.String r9 = "video/*"
                    if (r8 != 0) goto L76
                    com.mycompany.app.cast.CastLocal r2 = com.mycompany.app.cast.CastLocal.a()
                    android.content.Context r8 = r0.f12853a
                    r2.b(r8)
                    com.mycompany.app.cast.CastLocal r2 = com.mycompany.app.cast.CastLocal.a()
                    com.mycompany.app.cast.CastServer r2 = r2.f12852a
                    if (r2 != 0) goto L34
                L32:
                    r1 = r12
                    goto L48
                L34:
                    boolean r8 = android.text.TextUtils.isEmpty(r1)
                    if (r8 == 0) goto L3b
                    goto L32
                L3b:
                    com.nostra13.universalimageloader.cache.disc.naming.Md5FileNameGenerator r8 = new com.nostra13.universalimageloader.cache.disc.naming.Md5FileNameGenerator
                    r8.<init>()
                    java.lang.String r8 = r8.a(r1)
                    java.lang.String r1 = r2.i(r1, r3, r8)
                L48:
                    com.mycompany.app.cast.CastLocal r2 = com.mycompany.app.cast.CastLocal.a()
                    com.mycompany.app.cast.CastServer r2 = r2.f12852a
                    if (r2 != 0) goto L52
                    r2 = r12
                    goto L5f
                L52:
                    java.lang.StringBuilder r8 = new java.lang.StringBuilder
                    r8.<init>()
                    java.lang.String r2 = r2.j
                    java.lang.String r13 = "icon"
                    java.lang.String r2 = android.support.v4.media.a.p(r8, r2, r13)
                L5f:
                    boolean r8 = android.text.TextUtils.isEmpty(r3)
                    if (r8 == 0) goto L73
                    java.lang.String r3 = com.mycompany.app.main.MainUtil.u2(r4)
                    boolean r8 = android.text.TextUtils.isEmpty(r3)
                    if (r8 == 0) goto L73
                L6f:
                    r3 = r2
                    r8 = r9
                L71:
                    r2 = r1
                    goto L87
                L73:
                    r8 = r3
                    r3 = r2
                    goto L71
                L76:
                    boolean r8 = android.text.TextUtils.isEmpty(r3)
                    if (r8 == 0) goto L73
                    java.lang.String r3 = com.mycompany.app.main.MainUtil.v2(r1)
                    boolean r8 = android.text.TextUtils.isEmpty(r3)
                    if (r8 == 0) goto L73
                    goto L6f
                L87:
                    android.content.Context r1 = r0.f12853a
                    r9 = 0
                    com.google.android.gms.cast.MediaInfo r1 = com.mycompany.app.cast.CastUtil.a(r1, r2, r3, r4, r5, r6, r8, r9)
                    if (r1 != 0) goto L9b
                    com.mycompany.app.cast.CastLocal r1 = com.mycompany.app.cast.CastLocal.a()
                    r1.c()
                    r0.g()
                    return
                L9b:
                    com.google.android.gms.cast.MediaQueueItem$Builder r2 = new com.google.android.gms.cast.MediaQueueItem$Builder     // Catch: java.lang.Exception -> Lb3
                    r2.<init>(r1)     // Catch: java.lang.Exception -> Lb3
                    com.google.android.gms.cast.MediaQueueItem r1 = r2.f3451a     // Catch: java.lang.Exception -> Lb3
                    com.google.android.gms.cast.MediaQueueItem$Writer r1 = r1.n     // Catch: java.lang.Exception -> Lb3
                    com.google.android.gms.cast.MediaQueueItem r1 = com.google.android.gms.cast.MediaQueueItem.this     // Catch: java.lang.Exception -> Lb3
                    r3 = 1
                    r1.g = r3     // Catch: java.lang.Exception -> Lb3
                    com.google.android.gms.cast.MediaQueueItem r1 = r2.a()     // Catch: java.lang.Exception -> Lb3
                    com.google.android.gms.cast.MediaQueueItem[] r2 = new com.google.android.gms.cast.MediaQueueItem[r3]     // Catch: java.lang.Exception -> Lb3
                    r3 = 0
                    r2[r3] = r1     // Catch: java.lang.Exception -> Lb3
                    r12 = r2
                Lb3:
                    if (r12 != 0) goto Lc0
                    com.mycompany.app.cast.CastLocal r1 = com.mycompany.app.cast.CastLocal.a()
                    r1.c()
                    r0.g()
                    goto Ld1
                Lc0:
                    r0.p = r12
                    r0.n = r10
                    android.os.Handler r1 = r0.f12854c
                    if (r1 != 0) goto Lc9
                    goto Ld1
                Lc9:
                    com.mycompany.app.cast.CastUtil$7 r2 = new com.mycompany.app.cast.CastUtil$7
                    r2.<init>()
                    r1.post(r2)
                Ld1:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.cast.CastUtil.AnonymousClass6.run():void");
            }
        });
    }

    public final void g() {
        Handler handler = this.f12854c;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.cast.CastUtil.2
            @Override // java.lang.Runnable
            public final void run() {
                CastSendListener castSendListener = CastUtil.this.d;
                if (castSendListener != null) {
                    castSendListener.a(false);
                }
            }
        });
    }

    public final void h() {
        Handler handler = this.f12854c;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.cast.CastUtil.1
            @Override // java.lang.Runnable
            public final void run() {
                CastSendListener castSendListener = CastUtil.this.d;
                if (castSendListener != null) {
                    castSendListener.a(true);
                }
            }
        });
    }
}
