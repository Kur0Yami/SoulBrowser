package com.google.android.gms.internal.ads;

import android.text.Layout;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* loaded from: classes.dex */
public final class zzamy implements zzaly {
    public static final Pattern b = Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");

    /* renamed from: c, reason: collision with root package name */
    public static final Pattern f4217c = Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");
    public static final Pattern d = Pattern.compile("^(([0-9]*.)?[0-9]+)(px|em|%)$");
    public static final Pattern e = Pattern.compile("^([-+]?\\d+\\.?\\d*?)%$");
    public static final Pattern f = Pattern.compile("^([-+]?\\d+\\.?\\d*?)% ([-+]?\\d+\\.?\\d*?)%$");
    public static final Pattern g = Pattern.compile("^([-+]?\\d+\\.?\\d*?)px ([-+]?\\d+\\.?\\d*?)px$");
    public static final Pattern h = Pattern.compile("^(\\d+) (\\d+)$");
    public static final zzamw i = new zzamw(30.0f, 1, 1);

    /* renamed from: a, reason: collision with root package name */
    public final XmlPullParserFactory f4218a;

    public zzamy() {
        try {
            XmlPullParserFactory newInstance = XmlPullParserFactory.newInstance();
            this.f4218a = newInstance;
            newInstance.setNamespaceAware(true);
        } catch (XmlPullParserException e2) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:180:0x0334, code lost:
    
        if (r3.equals("text") != false) goto L170;
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x0348, code lost:
    
        r0 = d(r0);
        r0.m = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x033d, code lost:
    
        if (r3.equals("base") != false) goto L179;
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x037a, code lost:
    
        r0 = d(r0);
        r0.m = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x0346, code lost:
    
        if (r3.equals("textContainer") != false) goto L170;
     */
    /* JADX WARN: Code restructure failed: missing block: B:194:0x0378, code lost:
    
        if (r3.equals("baseContainer") != false) goto L179;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:178:0x0329. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0029. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0207 A[Catch: zzalu -> 0x026f, TryCatch #3 {zzalu -> 0x026f, blocks: (B:92:0x0196, B:95:0x01b1, B:96:0x01c3, B:98:0x01c9, B:100:0x01d0, B:109:0x01e8, B:110:0x0201, B:112:0x0207, B:114:0x020f, B:117:0x0210, B:118:0x022d, B:122:0x01f3, B:127:0x01ff, B:130:0x022e, B:132:0x022f, B:133:0x024c, B:135:0x01b8, B:137:0x024d, B:138:0x026e), top: B:91:0x0196 }] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x020f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0119  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzanb c(org.xmlpull.v1.XmlPullParser r16, com.google.android.gms.internal.ads.zzanb r17) {
        /*
            Method dump skipped, instructions count: 1238
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzamy.c(org.xmlpull.v1.XmlPullParser, com.google.android.gms.internal.ads.zzanb):com.google.android.gms.internal.ads.zzanb");
    }

    public static zzanb d(zzanb zzanbVar) {
        return zzanbVar == null ? new zzanb() : zzanbVar;
    }

    public static Layout.Alignment e(String str) {
        String a2 = zzgpj.a(str);
        switch (a2.hashCode()) {
            case -1364013995:
                if (a2.equals("center")) {
                    return Layout.Alignment.ALIGN_CENTER;
                }
                return null;
            case 100571:
                if (!a2.equals("end")) {
                    return null;
                }
                break;
            case 3317767:
                if (!a2.equals("left")) {
                    return null;
                }
                return Layout.Alignment.ALIGN_NORMAL;
            case 108511772:
                if (!a2.equals("right")) {
                    return null;
                }
                break;
            case 109757538:
                if (!a2.equals("start")) {
                    return null;
                }
                return Layout.Alignment.ALIGN_NORMAL;
            default:
                return null;
        }
        return Layout.Alignment.ALIGN_OPPOSITE;
    }

    public static long f(String str, zzamw zzamwVar) {
        double d2;
        double d3;
        double d4;
        double d5;
        Matcher matcher = b.matcher(str);
        if (matcher.matches()) {
            String group = matcher.group(1);
            group.getClass();
            long parseLong = Long.parseLong(group) * 3600;
            String group2 = matcher.group(2);
            group2.getClass();
            long parseLong2 = Long.parseLong(group2) * 60;
            String group3 = matcher.group(3);
            group3.getClass();
            double d6 = parseLong + parseLong2;
            double parseLong3 = Long.parseLong(group3);
            String group4 = matcher.group(4);
            double d7 = 0.0d;
            if (group4 != null) {
                d4 = Double.parseDouble(group4);
            } else {
                d4 = 0.0d;
            }
            double d8 = d6 + parseLong3;
            String group5 = matcher.group(5);
            if (group5 != null) {
                d5 = ((float) Long.parseLong(group5)) / zzamwVar.f4214a;
            } else {
                d5 = 0.0d;
            }
            double d9 = d8 + d4;
            if (matcher.group(6) != null) {
                d7 = (Long.parseLong(r12) / zzamwVar.b) / zzamwVar.f4214a;
            }
            return (long) ((d9 + d5 + d7) * 1000000.0d);
        }
        Matcher matcher2 = f4217c.matcher(str);
        if (matcher2.matches()) {
            String group6 = matcher2.group(1);
            group6.getClass();
            double parseDouble = Double.parseDouble(group6);
            String group7 = matcher2.group(2);
            group7.getClass();
            int hashCode = group7.hashCode();
            if (hashCode != 102) {
                if (hashCode != 104) {
                    if (hashCode != 109) {
                        if (hashCode != 3494) {
                            if (hashCode != 115) {
                                if (hashCode == 116 && group7.equals("t")) {
                                    d2 = zzamwVar.f4215c;
                                    parseDouble /= d2;
                                }
                            } else {
                                group7.equals("s");
                            }
                        } else if (group7.equals("ms")) {
                            d2 = 1000.0d;
                            parseDouble /= d2;
                        }
                    } else if (group7.equals("m")) {
                        d3 = 60.0d;
                        parseDouble *= d3;
                    }
                } else if (group7.equals("h")) {
                    d3 = 3600.0d;
                    parseDouble *= d3;
                }
                return (long) (parseDouble * 1000000.0d);
            }
            if (group7.equals("f")) {
                d2 = zzamwVar.f4214a;
                parseDouble /= d2;
            }
            return (long) (parseDouble * 1000000.0d);
        }
        throw new Exception("Malformed time expression: ".concat(String.valueOf(str)));
    }

    @Override // com.google.android.gms.internal.ads.zzaly
    public final void a(byte[] bArr, int i2, int i3, zzdr zzdrVar) {
        zzals.a(b(bArr, i2, i3), zzdrVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:176:0x051c, code lost:
    
        if (r0.equals("tblr") != false) goto L260;
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x0527, code lost:
    
        r44 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x0525, code lost:
    
        if (r0.equals("tb") != false) goto L260;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:256:0x05de. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:123:0x035e  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0408 A[Catch: IOException -> 0x0096, XmlPullParserException -> 0x0099, TRY_LEAVE, TryCatch #17 {IOException -> 0x0096, XmlPullParserException -> 0x0099, blocks: (B:3:0x0008, B:6:0x005c, B:8:0x006b, B:11:0x0077, B:14:0x0087, B:16:0x008f, B:18:0x009f, B:20:0x00a7, B:23:0x00bd, B:24:0x00d8, B:26:0x00e2, B:27:0x00e6, B:29:0x00f2, B:30:0x00f6, B:34:0x0195, B:39:0x01ee, B:42:0x0202, B:44:0x0208, B:46:0x0210, B:48:0x0218, B:50:0x0220, B:52:0x0228, B:54:0x0230, B:56:0x0236, B:58:0x023e, B:60:0x0246, B:62:0x024c, B:64:0x0252, B:66:0x0258, B:68:0x0260, B:71:0x0269, B:74:0x07c3, B:75:0x029c, B:78:0x02a4, B:80:0x02ad, B:82:0x02be, B:84:0x02c8, B:85:0x02d8, B:87:0x02de, B:89:0x02f4, B:91:0x02fa, B:93:0x0589, B:101:0x02cf, B:103:0x0309, B:106:0x0317, B:110:0x0539, B:113:0x0334, B:115:0x033c, B:117:0x0344, B:119:0x034c, B:124:0x0360, B:128:0x0373, B:130:0x0379, B:132:0x0386, B:134:0x03ee, B:136:0x03f4, B:138:0x03fa, B:140:0x0402, B:142:0x0408, B:146:0x0417, B:148:0x041d, B:150:0x042a, B:151:0x04a1, B:153:0x04a9, B:162:0x04ea, B:164:0x04f4, B:174:0x052c, B:186:0x0435, B:189:0x0436, B:190:0x0437, B:192:0x0444, B:195:0x044c, B:198:0x045a, B:200:0x0460, B:202:0x046b, B:204:0x047f, B:206:0x0480, B:207:0x0481, B:208:0x048e, B:211:0x038f, B:213:0x0390, B:214:0x0391, B:215:0x039e, B:218:0x03a8, B:221:0x03b1, B:223:0x03b7, B:225:0x03c2, B:227:0x03d2, B:229:0x03d3, B:230:0x03d4, B:231:0x03dc, B:235:0x054c, B:237:0x0559, B:239:0x0564, B:241:0x056a, B:242:0x0576, B:251:0x05b0, B:255:0x05d2, B:260:0x05ea, B:263:0x05f3, B:269:0x0742, B:283:0x0619, B:294:0x0624, B:287:0x063d, B:277:0x06be, B:286:0x062f, B:301:0x066f, B:304:0x0688, B:307:0x069f, B:310:0x06b6, B:320:0x06d8, B:324:0x06e4, B:327:0x06ed, B:333:0x0700, B:336:0x0716, B:339:0x0722, B:341:0x0727, B:343:0x072b, B:344:0x0732, B:348:0x0709, B:358:0x01a2, B:360:0x01ac, B:363:0x01b5, B:365:0x01bb, B:367:0x01c6, B:369:0x01d0, B:371:0x01d1, B:372:0x01d2, B:373:0x0112, B:375:0x011e, B:378:0x012a, B:382:0x0130, B:384:0x013d, B:393:0x015e, B:397:0x016d, B:398:0x017c, B:401:0x018c, B:406:0x0186, B:409:0x018b, B:419:0x0766, B:421:0x0772, B:422:0x0779, B:425:0x0780, B:428:0x0784, B:430:0x078e, B:432:0x0798, B:433:0x07a0, B:437:0x079d, B:441:0x07b8, B:445:0x07c0, B:451:0x07e2), top: B:2:0x0008, inners: #1, #7, #9, #10, #12 }] */
    /* JADX WARN: Removed duplicated region for block: B:153:0x04a9 A[Catch: IOException -> 0x0096, XmlPullParserException -> 0x0099, TRY_LEAVE, TryCatch #17 {IOException -> 0x0096, XmlPullParserException -> 0x0099, blocks: (B:3:0x0008, B:6:0x005c, B:8:0x006b, B:11:0x0077, B:14:0x0087, B:16:0x008f, B:18:0x009f, B:20:0x00a7, B:23:0x00bd, B:24:0x00d8, B:26:0x00e2, B:27:0x00e6, B:29:0x00f2, B:30:0x00f6, B:34:0x0195, B:39:0x01ee, B:42:0x0202, B:44:0x0208, B:46:0x0210, B:48:0x0218, B:50:0x0220, B:52:0x0228, B:54:0x0230, B:56:0x0236, B:58:0x023e, B:60:0x0246, B:62:0x024c, B:64:0x0252, B:66:0x0258, B:68:0x0260, B:71:0x0269, B:74:0x07c3, B:75:0x029c, B:78:0x02a4, B:80:0x02ad, B:82:0x02be, B:84:0x02c8, B:85:0x02d8, B:87:0x02de, B:89:0x02f4, B:91:0x02fa, B:93:0x0589, B:101:0x02cf, B:103:0x0309, B:106:0x0317, B:110:0x0539, B:113:0x0334, B:115:0x033c, B:117:0x0344, B:119:0x034c, B:124:0x0360, B:128:0x0373, B:130:0x0379, B:132:0x0386, B:134:0x03ee, B:136:0x03f4, B:138:0x03fa, B:140:0x0402, B:142:0x0408, B:146:0x0417, B:148:0x041d, B:150:0x042a, B:151:0x04a1, B:153:0x04a9, B:162:0x04ea, B:164:0x04f4, B:174:0x052c, B:186:0x0435, B:189:0x0436, B:190:0x0437, B:192:0x0444, B:195:0x044c, B:198:0x045a, B:200:0x0460, B:202:0x046b, B:204:0x047f, B:206:0x0480, B:207:0x0481, B:208:0x048e, B:211:0x038f, B:213:0x0390, B:214:0x0391, B:215:0x039e, B:218:0x03a8, B:221:0x03b1, B:223:0x03b7, B:225:0x03c2, B:227:0x03d2, B:229:0x03d3, B:230:0x03d4, B:231:0x03dc, B:235:0x054c, B:237:0x0559, B:239:0x0564, B:241:0x056a, B:242:0x0576, B:251:0x05b0, B:255:0x05d2, B:260:0x05ea, B:263:0x05f3, B:269:0x0742, B:283:0x0619, B:294:0x0624, B:287:0x063d, B:277:0x06be, B:286:0x062f, B:301:0x066f, B:304:0x0688, B:307:0x069f, B:310:0x06b6, B:320:0x06d8, B:324:0x06e4, B:327:0x06ed, B:333:0x0700, B:336:0x0716, B:339:0x0722, B:341:0x0727, B:343:0x072b, B:344:0x0732, B:348:0x0709, B:358:0x01a2, B:360:0x01ac, B:363:0x01b5, B:365:0x01bb, B:367:0x01c6, B:369:0x01d0, B:371:0x01d1, B:372:0x01d2, B:373:0x0112, B:375:0x011e, B:378:0x012a, B:382:0x0130, B:384:0x013d, B:393:0x015e, B:397:0x016d, B:398:0x017c, B:401:0x018c, B:406:0x0186, B:409:0x018b, B:419:0x0766, B:421:0x0772, B:422:0x0779, B:425:0x0780, B:428:0x0784, B:430:0x078e, B:432:0x0798, B:433:0x07a0, B:437:0x079d, B:441:0x07b8, B:445:0x07c0, B:451:0x07e2), top: B:2:0x0008, inners: #1, #7, #9, #10, #12 }] */
    /* JADX WARN: Removed duplicated region for block: B:164:0x04f4 A[Catch: IOException -> 0x0096, XmlPullParserException -> 0x0099, TRY_LEAVE, TryCatch #17 {IOException -> 0x0096, XmlPullParserException -> 0x0099, blocks: (B:3:0x0008, B:6:0x005c, B:8:0x006b, B:11:0x0077, B:14:0x0087, B:16:0x008f, B:18:0x009f, B:20:0x00a7, B:23:0x00bd, B:24:0x00d8, B:26:0x00e2, B:27:0x00e6, B:29:0x00f2, B:30:0x00f6, B:34:0x0195, B:39:0x01ee, B:42:0x0202, B:44:0x0208, B:46:0x0210, B:48:0x0218, B:50:0x0220, B:52:0x0228, B:54:0x0230, B:56:0x0236, B:58:0x023e, B:60:0x0246, B:62:0x024c, B:64:0x0252, B:66:0x0258, B:68:0x0260, B:71:0x0269, B:74:0x07c3, B:75:0x029c, B:78:0x02a4, B:80:0x02ad, B:82:0x02be, B:84:0x02c8, B:85:0x02d8, B:87:0x02de, B:89:0x02f4, B:91:0x02fa, B:93:0x0589, B:101:0x02cf, B:103:0x0309, B:106:0x0317, B:110:0x0539, B:113:0x0334, B:115:0x033c, B:117:0x0344, B:119:0x034c, B:124:0x0360, B:128:0x0373, B:130:0x0379, B:132:0x0386, B:134:0x03ee, B:136:0x03f4, B:138:0x03fa, B:140:0x0402, B:142:0x0408, B:146:0x0417, B:148:0x041d, B:150:0x042a, B:151:0x04a1, B:153:0x04a9, B:162:0x04ea, B:164:0x04f4, B:174:0x052c, B:186:0x0435, B:189:0x0436, B:190:0x0437, B:192:0x0444, B:195:0x044c, B:198:0x045a, B:200:0x0460, B:202:0x046b, B:204:0x047f, B:206:0x0480, B:207:0x0481, B:208:0x048e, B:211:0x038f, B:213:0x0390, B:214:0x0391, B:215:0x039e, B:218:0x03a8, B:221:0x03b1, B:223:0x03b7, B:225:0x03c2, B:227:0x03d2, B:229:0x03d3, B:230:0x03d4, B:231:0x03dc, B:235:0x054c, B:237:0x0559, B:239:0x0564, B:241:0x056a, B:242:0x0576, B:251:0x05b0, B:255:0x05d2, B:260:0x05ea, B:263:0x05f3, B:269:0x0742, B:283:0x0619, B:294:0x0624, B:287:0x063d, B:277:0x06be, B:286:0x062f, B:301:0x066f, B:304:0x0688, B:307:0x069f, B:310:0x06b6, B:320:0x06d8, B:324:0x06e4, B:327:0x06ed, B:333:0x0700, B:336:0x0716, B:339:0x0722, B:341:0x0727, B:343:0x072b, B:344:0x0732, B:348:0x0709, B:358:0x01a2, B:360:0x01ac, B:363:0x01b5, B:365:0x01bb, B:367:0x01c6, B:369:0x01d0, B:371:0x01d1, B:372:0x01d2, B:373:0x0112, B:375:0x011e, B:378:0x012a, B:382:0x0130, B:384:0x013d, B:393:0x015e, B:397:0x016d, B:398:0x017c, B:401:0x018c, B:406:0x0186, B:409:0x018b, B:419:0x0766, B:421:0x0772, B:422:0x0779, B:425:0x0780, B:428:0x0784, B:430:0x078e, B:432:0x0798, B:433:0x07a0, B:437:0x079d, B:441:0x07b8, B:445:0x07c0, B:451:0x07e2), top: B:2:0x0008, inners: #1, #7, #9, #10, #12 }] */
    /* JADX WARN: Removed duplicated region for block: B:209:0x049d  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x03e4  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x05a6  */
    /* JADX WARN: Removed duplicated region for block: B:358:0x01a2 A[Catch: IOException -> 0x0096, XmlPullParserException -> 0x0099, TryCatch #17 {IOException -> 0x0096, XmlPullParserException -> 0x0099, blocks: (B:3:0x0008, B:6:0x005c, B:8:0x006b, B:11:0x0077, B:14:0x0087, B:16:0x008f, B:18:0x009f, B:20:0x00a7, B:23:0x00bd, B:24:0x00d8, B:26:0x00e2, B:27:0x00e6, B:29:0x00f2, B:30:0x00f6, B:34:0x0195, B:39:0x01ee, B:42:0x0202, B:44:0x0208, B:46:0x0210, B:48:0x0218, B:50:0x0220, B:52:0x0228, B:54:0x0230, B:56:0x0236, B:58:0x023e, B:60:0x0246, B:62:0x024c, B:64:0x0252, B:66:0x0258, B:68:0x0260, B:71:0x0269, B:74:0x07c3, B:75:0x029c, B:78:0x02a4, B:80:0x02ad, B:82:0x02be, B:84:0x02c8, B:85:0x02d8, B:87:0x02de, B:89:0x02f4, B:91:0x02fa, B:93:0x0589, B:101:0x02cf, B:103:0x0309, B:106:0x0317, B:110:0x0539, B:113:0x0334, B:115:0x033c, B:117:0x0344, B:119:0x034c, B:124:0x0360, B:128:0x0373, B:130:0x0379, B:132:0x0386, B:134:0x03ee, B:136:0x03f4, B:138:0x03fa, B:140:0x0402, B:142:0x0408, B:146:0x0417, B:148:0x041d, B:150:0x042a, B:151:0x04a1, B:153:0x04a9, B:162:0x04ea, B:164:0x04f4, B:174:0x052c, B:186:0x0435, B:189:0x0436, B:190:0x0437, B:192:0x0444, B:195:0x044c, B:198:0x045a, B:200:0x0460, B:202:0x046b, B:204:0x047f, B:206:0x0480, B:207:0x0481, B:208:0x048e, B:211:0x038f, B:213:0x0390, B:214:0x0391, B:215:0x039e, B:218:0x03a8, B:221:0x03b1, B:223:0x03b7, B:225:0x03c2, B:227:0x03d2, B:229:0x03d3, B:230:0x03d4, B:231:0x03dc, B:235:0x054c, B:237:0x0559, B:239:0x0564, B:241:0x056a, B:242:0x0576, B:251:0x05b0, B:255:0x05d2, B:260:0x05ea, B:263:0x05f3, B:269:0x0742, B:283:0x0619, B:294:0x0624, B:287:0x063d, B:277:0x06be, B:286:0x062f, B:301:0x066f, B:304:0x0688, B:307:0x069f, B:310:0x06b6, B:320:0x06d8, B:324:0x06e4, B:327:0x06ed, B:333:0x0700, B:336:0x0716, B:339:0x0722, B:341:0x0727, B:343:0x072b, B:344:0x0732, B:348:0x0709, B:358:0x01a2, B:360:0x01ac, B:363:0x01b5, B:365:0x01bb, B:367:0x01c6, B:369:0x01d0, B:371:0x01d1, B:372:0x01d2, B:373:0x0112, B:375:0x011e, B:378:0x012a, B:382:0x0130, B:384:0x013d, B:393:0x015e, B:397:0x016d, B:398:0x017c, B:401:0x018c, B:406:0x0186, B:409:0x018b, B:419:0x0766, B:421:0x0772, B:422:0x0779, B:425:0x0780, B:428:0x0784, B:430:0x078e, B:432:0x0798, B:433:0x07a0, B:437:0x079d, B:441:0x07b8, B:445:0x07c0, B:451:0x07e2), top: B:2:0x0008, inners: #1, #7, #9, #10, #12 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0202 A[Catch: IOException -> 0x0096, XmlPullParserException -> 0x0099, TRY_ENTER, TryCatch #17 {IOException -> 0x0096, XmlPullParserException -> 0x0099, blocks: (B:3:0x0008, B:6:0x005c, B:8:0x006b, B:11:0x0077, B:14:0x0087, B:16:0x008f, B:18:0x009f, B:20:0x00a7, B:23:0x00bd, B:24:0x00d8, B:26:0x00e2, B:27:0x00e6, B:29:0x00f2, B:30:0x00f6, B:34:0x0195, B:39:0x01ee, B:42:0x0202, B:44:0x0208, B:46:0x0210, B:48:0x0218, B:50:0x0220, B:52:0x0228, B:54:0x0230, B:56:0x0236, B:58:0x023e, B:60:0x0246, B:62:0x024c, B:64:0x0252, B:66:0x0258, B:68:0x0260, B:71:0x0269, B:74:0x07c3, B:75:0x029c, B:78:0x02a4, B:80:0x02ad, B:82:0x02be, B:84:0x02c8, B:85:0x02d8, B:87:0x02de, B:89:0x02f4, B:91:0x02fa, B:93:0x0589, B:101:0x02cf, B:103:0x0309, B:106:0x0317, B:110:0x0539, B:113:0x0334, B:115:0x033c, B:117:0x0344, B:119:0x034c, B:124:0x0360, B:128:0x0373, B:130:0x0379, B:132:0x0386, B:134:0x03ee, B:136:0x03f4, B:138:0x03fa, B:140:0x0402, B:142:0x0408, B:146:0x0417, B:148:0x041d, B:150:0x042a, B:151:0x04a1, B:153:0x04a9, B:162:0x04ea, B:164:0x04f4, B:174:0x052c, B:186:0x0435, B:189:0x0436, B:190:0x0437, B:192:0x0444, B:195:0x044c, B:198:0x045a, B:200:0x0460, B:202:0x046b, B:204:0x047f, B:206:0x0480, B:207:0x0481, B:208:0x048e, B:211:0x038f, B:213:0x0390, B:214:0x0391, B:215:0x039e, B:218:0x03a8, B:221:0x03b1, B:223:0x03b7, B:225:0x03c2, B:227:0x03d2, B:229:0x03d3, B:230:0x03d4, B:231:0x03dc, B:235:0x054c, B:237:0x0559, B:239:0x0564, B:241:0x056a, B:242:0x0576, B:251:0x05b0, B:255:0x05d2, B:260:0x05ea, B:263:0x05f3, B:269:0x0742, B:283:0x0619, B:294:0x0624, B:287:0x063d, B:277:0x06be, B:286:0x062f, B:301:0x066f, B:304:0x0688, B:307:0x069f, B:310:0x06b6, B:320:0x06d8, B:324:0x06e4, B:327:0x06ed, B:333:0x0700, B:336:0x0716, B:339:0x0722, B:341:0x0727, B:343:0x072b, B:344:0x0732, B:348:0x0709, B:358:0x01a2, B:360:0x01ac, B:363:0x01b5, B:365:0x01bb, B:367:0x01c6, B:369:0x01d0, B:371:0x01d1, B:372:0x01d2, B:373:0x0112, B:375:0x011e, B:378:0x012a, B:382:0x0130, B:384:0x013d, B:393:0x015e, B:397:0x016d, B:398:0x017c, B:401:0x018c, B:406:0x0186, B:409:0x018b, B:419:0x0766, B:421:0x0772, B:422:0x0779, B:425:0x0780, B:428:0x0784, B:430:0x078e, B:432:0x0798, B:433:0x07a0, B:437:0x079d, B:441:0x07b8, B:445:0x07c0, B:451:0x07e2), top: B:2:0x0008, inners: #1, #7, #9, #10, #12 }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x02a4 A[Catch: IOException -> 0x0096, XmlPullParserException -> 0x0099, LOOP:1: B:78:0x02a4->B:95:0x0596, LOOP_START, PHI: r1 r2 r3 r7 r9 r10 r12 r15 r30 r51
      0x02a4: PHI (r1v12 java.lang.String) = (r1v9 java.lang.String), (r1v51 java.lang.String) binds: [B:77:0x02a2, B:95:0x0596] A[DONT_GENERATE, DONT_INLINE]
      0x02a4: PHI (r2v24 java.lang.String) = (r2v14 java.lang.String), (r2v49 java.lang.String) binds: [B:77:0x02a2, B:95:0x0596] A[DONT_GENERATE, DONT_INLINE]
      0x02a4: PHI (r3v9 java.lang.String) = (r3v1 java.lang.String), (r3v21 java.lang.String) binds: [B:77:0x02a2, B:95:0x0596] A[DONT_GENERATE, DONT_INLINE]
      0x02a4: PHI (r7v18 java.util.HashMap) = (r7v1 java.util.HashMap), (r7v41 java.util.HashMap) binds: [B:77:0x02a2, B:95:0x0596] A[DONT_GENERATE, DONT_INLINE]
      0x02a4: PHI (r9v26 int) = (r9v7 int), (r9v43 int) binds: [B:77:0x02a2, B:95:0x0596] A[DONT_GENERATE, DONT_INLINE]
      0x02a4: PHI (r10v16 java.lang.String) = (r10v5 java.lang.String), (r10v19 java.lang.String) binds: [B:77:0x02a2, B:95:0x0596] A[DONT_GENERATE, DONT_INLINE]
      0x02a4: PHI (r12v10 java.lang.String) = (r12v7 java.lang.String), (r12v19 java.lang.String) binds: [B:77:0x02a2, B:95:0x0596] A[DONT_GENERATE, DONT_INLINE]
      0x02a4: PHI (r15v18 java.lang.String) = (r15v6 java.lang.String), (r15v24 java.lang.String) binds: [B:77:0x02a2, B:95:0x0596] A[DONT_GENERATE, DONT_INLINE]
      0x02a4: PHI (r30v1 java.util.HashMap) = (r30v0 java.util.HashMap), (r30v4 java.util.HashMap) binds: [B:77:0x02a2, B:95:0x0596] A[DONT_GENERATE, DONT_INLINE]
      0x02a4: PHI (r51v2 int) = (r51v1 int), (r51v3 int) binds: [B:77:0x02a2, B:95:0x0596] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TryCatch #17 {IOException -> 0x0096, XmlPullParserException -> 0x0099, blocks: (B:3:0x0008, B:6:0x005c, B:8:0x006b, B:11:0x0077, B:14:0x0087, B:16:0x008f, B:18:0x009f, B:20:0x00a7, B:23:0x00bd, B:24:0x00d8, B:26:0x00e2, B:27:0x00e6, B:29:0x00f2, B:30:0x00f6, B:34:0x0195, B:39:0x01ee, B:42:0x0202, B:44:0x0208, B:46:0x0210, B:48:0x0218, B:50:0x0220, B:52:0x0228, B:54:0x0230, B:56:0x0236, B:58:0x023e, B:60:0x0246, B:62:0x024c, B:64:0x0252, B:66:0x0258, B:68:0x0260, B:71:0x0269, B:74:0x07c3, B:75:0x029c, B:78:0x02a4, B:80:0x02ad, B:82:0x02be, B:84:0x02c8, B:85:0x02d8, B:87:0x02de, B:89:0x02f4, B:91:0x02fa, B:93:0x0589, B:101:0x02cf, B:103:0x0309, B:106:0x0317, B:110:0x0539, B:113:0x0334, B:115:0x033c, B:117:0x0344, B:119:0x034c, B:124:0x0360, B:128:0x0373, B:130:0x0379, B:132:0x0386, B:134:0x03ee, B:136:0x03f4, B:138:0x03fa, B:140:0x0402, B:142:0x0408, B:146:0x0417, B:148:0x041d, B:150:0x042a, B:151:0x04a1, B:153:0x04a9, B:162:0x04ea, B:164:0x04f4, B:174:0x052c, B:186:0x0435, B:189:0x0436, B:190:0x0437, B:192:0x0444, B:195:0x044c, B:198:0x045a, B:200:0x0460, B:202:0x046b, B:204:0x047f, B:206:0x0480, B:207:0x0481, B:208:0x048e, B:211:0x038f, B:213:0x0390, B:214:0x0391, B:215:0x039e, B:218:0x03a8, B:221:0x03b1, B:223:0x03b7, B:225:0x03c2, B:227:0x03d2, B:229:0x03d3, B:230:0x03d4, B:231:0x03dc, B:235:0x054c, B:237:0x0559, B:239:0x0564, B:241:0x056a, B:242:0x0576, B:251:0x05b0, B:255:0x05d2, B:260:0x05ea, B:263:0x05f3, B:269:0x0742, B:283:0x0619, B:294:0x0624, B:287:0x063d, B:277:0x06be, B:286:0x062f, B:301:0x066f, B:304:0x0688, B:307:0x069f, B:310:0x06b6, B:320:0x06d8, B:324:0x06e4, B:327:0x06ed, B:333:0x0700, B:336:0x0716, B:339:0x0722, B:341:0x0727, B:343:0x072b, B:344:0x0732, B:348:0x0709, B:358:0x01a2, B:360:0x01ac, B:363:0x01b5, B:365:0x01bb, B:367:0x01c6, B:369:0x01d0, B:371:0x01d1, B:372:0x01d2, B:373:0x0112, B:375:0x011e, B:378:0x012a, B:382:0x0130, B:384:0x013d, B:393:0x015e, B:397:0x016d, B:398:0x017c, B:401:0x018c, B:406:0x0186, B:409:0x018b, B:419:0x0766, B:421:0x0772, B:422:0x0779, B:425:0x0780, B:428:0x0784, B:430:0x078e, B:432:0x0798, B:433:0x07a0, B:437:0x079d, B:441:0x07b8, B:445:0x07c0, B:451:0x07e2), top: B:2:0x0008, inners: #1, #7, #9, #10, #12 }] */
    /* JADX WARN: Type inference failed for: r50v1, types: [java.lang.Throwable, com.google.android.gms.internal.ads.zzanb] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzalt b(byte[] r49, int r50, int r51) {
        /*
            Method dump skipped, instructions count: 2062
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzamy.b(byte[], int, int):com.google.android.gms.internal.ads.zzalt");
    }
}
