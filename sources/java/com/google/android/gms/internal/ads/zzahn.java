package com.google.android.gms.internal.ads;

import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes.dex */
final class zzahn {

    /* renamed from: a, reason: collision with root package name */
    public static final String[] f4041a = {"Camera:MotionPhoto", "GCamera:MotionPhoto", "Camera:MicroVideo", "GCamera:MicroVideo"};
    public static final String[] b = {"Camera:MotionPhotoPresentationTimestampUs", "GCamera:MotionPhotoPresentationTimestampUs", "Camera:MicroVideoPresentationTimestampUs", "GCamera:MicroVideoPresentationTimestampUs"};

    /* renamed from: c, reason: collision with root package name */
    public static final String[] f4042c = {"Camera:MicroVideoOffset", "GCamera:MicroVideoOffset"};

    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.android.gms.internal.ads.zzgta, com.google.android.gms.internal.ads.zzgsx] */
    public static zzgtd a(XmlPullParser xmlPullParser, String str, String str2) {
        long j;
        zzgvs zzgvsVar = zzgtd.f;
        ?? zzgsxVar = new zzgsx(4);
        do {
            String concat = str.concat(":Item");
            xmlPullParser.next();
            if (zzfq.b(xmlPullParser, concat)) {
                String concat2 = str2.concat(":Mime");
                String concat3 = str2.concat(":Semantic");
                String concat4 = str2.concat(":Length");
                String concat5 = str2.concat(":Padding");
                String c2 = zzfq.c(xmlPullParser, concat2);
                String c3 = zzfq.c(xmlPullParser, concat3);
                String c4 = zzfq.c(xmlPullParser, concat4);
                String c5 = zzfq.c(xmlPullParser, concat5);
                if (c2 != null && c3 != null) {
                    long j2 = 0;
                    if (c4 != null) {
                        j = Long.parseLong(c4);
                    } else {
                        j = 0;
                    }
                    if (c5 != null) {
                        j2 = Long.parseLong(c5);
                    }
                    zzgsxVar.c(new zzahl(j, j2, c2));
                } else {
                    return zzguy.i;
                }
            }
        } while (!zzfq.a(xmlPullParser, str.concat(":Directory")));
        return zzgsxVar.f();
    }
}
