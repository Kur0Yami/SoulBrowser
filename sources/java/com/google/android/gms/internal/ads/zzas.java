package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.jsoup.parser.HtmlTreeBuilder;

/* loaded from: classes.dex */
public final class zzas {

    /* renamed from: a, reason: collision with root package name */
    public static final ArrayList f4380a = new ArrayList();
    public static final Pattern b = Pattern.compile("^mp4a\\.([a-zA-Z0-9]{2})(?:\\.([0-9]{1,2}))?$");

    public static boolean a(String str) {
        return "audio".equals(j(str));
    }

    public static boolean b(String str) {
        return "video".equals(j(str));
    }

    public static boolean c(String str) {
        if (!"image".equals(j(str)) && !"application/x-image-uri".equals(str)) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0009. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0088 A[ADDED_TO_REGION, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0088 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0087 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean d(java.lang.String r3, java.lang.String r4) {
        /*
            r0 = 0
            if (r3 != 0) goto L4
            return r0
        L4:
            int r1 = r3.hashCode()
            r2 = 1
            switch(r1) {
                case -2123537834: goto L7f;
                case -432837260: goto L76;
                case -432837259: goto L6d;
                case -53558318: goto L4f;
                case 187078296: goto L46;
                case 187094639: goto L3d;
                case 1504578661: goto L34;
                case 1504619009: goto L2b;
                case 1504831518: goto L22;
                case 1903231877: goto L18;
                case 1903589369: goto Le;
                default: goto Lc;
            }
        Lc:
            goto L88
        Le:
            java.lang.String r4 = "audio/g711-mlaw"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L88
            goto L87
        L18:
            java.lang.String r4 = "audio/g711-alaw"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L88
            goto L87
        L22:
            java.lang.String r4 = "audio/mpeg"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L88
            goto L87
        L2b:
            java.lang.String r4 = "audio/flac"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L88
            goto L87
        L34:
            java.lang.String r4 = "audio/eac3"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L88
            goto L87
        L3d:
            java.lang.String r4 = "audio/raw"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L88
            goto L87
        L46:
            java.lang.String r4 = "audio/ac3"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L88
            goto L87
        L4f:
            java.lang.String r1 = "audio/mp4a-latm"
            boolean r3 = r3.equals(r1)
            if (r3 == 0) goto L88
            if (r4 != 0) goto L5a
            return r0
        L5a:
            com.google.android.gms.internal.ads.zzar r3 = i(r4)
            if (r3 != 0) goto L61
            return r0
        L61:
            int r3 = r3.a()
            if (r3 == 0) goto L6c
            r4 = 16
            if (r3 == r4) goto L6c
            return r2
        L6c:
            return r0
        L6d:
            java.lang.String r4 = "audio/mpeg-L2"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L88
            goto L87
        L76:
            java.lang.String r4 = "audio/mpeg-L1"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L88
            goto L87
        L7f:
            java.lang.String r4 = "audio/eac3-joc"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L88
        L87:
            return r2
        L88:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzas.d(java.lang.String, java.lang.String):boolean");
    }

    public static String e(int i) {
        if (i == 32) {
            return "video/mp4v-es";
        }
        if (i == 33) {
            return "video/avc";
        }
        if (i == 35) {
            return "video/hevc";
        }
        if (i == 64) {
            return "audio/mp4a-latm";
        }
        if (i == 163) {
            return "video/wvc1";
        }
        if (i == 177) {
            return "video/x-vnd.on2.vp9";
        }
        if (i == 221) {
            return "audio/vorbis";
        }
        if (i == 165) {
            return "audio/ac3";
        }
        if (i == 166) {
            return "audio/eac3";
        }
        switch (i) {
            case 96:
            case 97:
            case 98:
            case 99:
            case HtmlTreeBuilder.MaxScopeSearchDepth /* 100 */:
            case 101:
                return "video/mpeg2";
            case 102:
            case 103:
            case 104:
                return "audio/mp4a-latm";
            case 105:
            case 107:
                return "audio/mpeg";
            case 106:
                return "video/mpeg";
            case 108:
                return "image/jpeg";
            default:
                switch (i) {
                    case 169:
                    case 172:
                        return "audio/vnd.dts";
                    case 170:
                    case 171:
                        return "audio/vnd.dts.hd";
                    case 173:
                        return "audio/opus";
                    case 174:
                        return "audio/ac4";
                    default:
                        return null;
                }
        }
    }

    public static int f(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (a(str)) {
            return 1;
        }
        if (!b(str)) {
            if (!"text".equals(j(str)) && !"application/x-media3-cues".equals(str) && !"application/cea-608".equals(str) && !"application/cea-708".equals(str) && !"application/x-mp4-cea-608".equals(str) && !"application/x-subrip".equals(str) && !"application/ttml+xml".equals(str) && !"application/x-quicktime-tx3g".equals(str) && !"application/x-mp4-vtt".equals(str) && !"application/x-rawcc".equals(str) && !"application/vobsub".equals(str) && !"application/pgs".equals(str) && !"application/dvbsubs".equals(str)) {
                if (c(str)) {
                    return 4;
                }
                if (!"application/id3".equals(str) && !"application/x-emsg".equals(str) && !"application/x-scte35".equals(str) && !"application/x-icy".equals(str) && !"application/vnd.dvb.ait".equals(str) && !"application/meta".equals(str)) {
                    if (!"application/x-camera-motion".equals(str)) {
                        ArrayList arrayList = f4380a;
                        int size = arrayList.size();
                        for (int i = 0; i < size; i++) {
                            ((zzaq) arrayList.get(i)).getClass();
                            if (str.equals(null)) {
                                return 0;
                            }
                        }
                        return -1;
                    }
                    return 6;
                }
                return 5;
            }
            return 3;
        }
        return 2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0095 A[ADDED_TO_REGION, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0095 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int g(java.lang.String r3, java.lang.String r4) {
        /*
            int r0 = r3.hashCode()
            r1 = 8
            r2 = 0
            switch(r0) {
                case -2123537834: goto L8a;
                case -1365340241: goto L81;
                case -1095064472: goto L77;
                case -53558318: goto L60;
                case 187078296: goto L56;
                case 187078297: goto L4b;
                case 550520934: goto L40;
                case 1504578661: goto L36;
                case 1504831518: goto L2b;
                case 1504891608: goto L20;
                case 1505942594: goto L17;
                case 1556697186: goto Lc;
                default: goto La;
            }
        La:
            goto L95
        Lc:
            java.lang.String r4 = "audio/true-hd"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L95
            r3 = 14
            return r3
        L17:
            java.lang.String r4 = "audio/vnd.dts.hd"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L95
            return r1
        L20:
            java.lang.String r4 = "audio/opus"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L95
            r3 = 20
            return r3
        L2b:
            java.lang.String r4 = "audio/mpeg"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L95
            r3 = 9
            return r3
        L36:
            java.lang.String r4 = "audio/eac3"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L95
            r3 = 6
            return r3
        L40:
            java.lang.String r4 = "audio/vnd.dts.uhd;profile=p2"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L95
            r3 = 30
            return r3
        L4b:
            java.lang.String r4 = "audio/ac4"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L95
            r3 = 17
            return r3
        L56:
            java.lang.String r4 = "audio/ac3"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L95
            r3 = 5
            return r3
        L60:
            java.lang.String r0 = "audio/mp4a-latm"
            boolean r3 = r3.equals(r0)
            if (r3 == 0) goto L95
            if (r4 != 0) goto L6b
            return r2
        L6b:
            com.google.android.gms.internal.ads.zzar r3 = i(r4)
            if (r3 != 0) goto L72
            return r2
        L72:
            int r3 = r3.a()
            return r3
        L77:
            java.lang.String r4 = "audio/vnd.dts"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L95
            r3 = 7
            return r3
        L81:
            java.lang.String r4 = "audio/vnd.dts.hd;profile=lbr"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L95
            return r1
        L8a:
            java.lang.String r4 = "audio/eac3-joc"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L95
            r3 = 18
            return r3
        L95:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzas.g(java.lang.String, java.lang.String):int");
    }

    public static String h(String str) {
        if (str == null) {
            return null;
        }
        String a2 = zzgpj.a(str);
        switch (a2.hashCode()) {
            case -1833600100:
                if (a2.equals("video/x-mvhevc")) {
                    return "video/mv-hevc";
                }
                return a2;
            case -1007807498:
                if (a2.equals("audio/x-flac")) {
                    return "audio/flac";
                }
                return a2;
            case -979095690:
                if (a2.equals("application/x-mpegurl")) {
                    return "application/x-mpegURL";
                }
                return a2;
            case -586683234:
                if (a2.equals("audio/x-wav")) {
                    return "audio/wav";
                }
                return a2;
            case -432836268:
                if (a2.equals("audio/mpeg-l1")) {
                    return "audio/mpeg-L1";
                }
                return a2;
            case -432836267:
                if (a2.equals("audio/mpeg-l2")) {
                    return "audio/mpeg-L2";
                }
                return a2;
            case 187090231:
                if (a2.equals("audio/mp3")) {
                    return "audio/mpeg";
                }
                return a2;
            default:
                return a2;
        }
    }

    public static zzar i(String str) {
        int i;
        Matcher matcher = b.matcher(str);
        if (matcher.matches()) {
            String group = matcher.group(1);
            group.getClass();
            String group2 = matcher.group(2);
            try {
                Integer.parseInt(group, 16);
                if (group2 != null) {
                    i = Integer.parseInt(group2);
                } else {
                    i = 0;
                }
                return new zzar(i);
            } catch (NumberFormatException unused) {
                return null;
            }
        }
        return null;
    }

    public static String j(String str) {
        int indexOf;
        if (str != null && (indexOf = str.indexOf(47)) != -1) {
            return str.substring(0, indexOf);
        }
        return null;
    }
}
