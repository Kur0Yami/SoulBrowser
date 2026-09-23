package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzidd {
    public static String a(zzhzl zzhzlVar) {
        StringBuilder sb = new StringBuilder(zzhzlVar.k());
        for (int i = 0; i < zzhzlVar.k(); i++) {
            byte g = zzhzlVar.g(i);
            if (g != 34) {
                if (g != 39) {
                    if (g != 92) {
                        switch (g) {
                            case 7:
                                sb.append("\\a");
                                break;
                            case 8:
                                sb.append("\\b");
                                break;
                            case 9:
                                sb.append("\\t");
                                break;
                            case 10:
                                sb.append("\\n");
                                break;
                            case 11:
                                sb.append("\\v");
                                break;
                            case 12:
                                sb.append("\\f");
                                break;
                            case 13:
                                sb.append("\\r");
                                break;
                            default:
                                if (g >= 32 && g <= 126) {
                                    sb.append((char) g);
                                    break;
                                } else {
                                    sb.append('\\');
                                    sb.append((char) (((g >>> 6) & 3) + 48));
                                    sb.append((char) (((g >>> 3) & 7) + 48));
                                    sb.append((char) ((g & 7) + 48));
                                    break;
                                }
                                break;
                        }
                    } else {
                        sb.append("\\\\");
                    }
                } else {
                    sb.append("\\'");
                }
            } else {
                sb.append("\\\"");
            }
        }
        return sb.toString();
    }
}
