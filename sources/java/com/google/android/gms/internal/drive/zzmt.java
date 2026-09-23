package com.google.android.gms.internal.drive;

/* loaded from: classes.dex */
final class zzmt {
    public static String a(zzjc zzjcVar) {
        StringBuilder sb = new StringBuilder(zzjcVar.size());
        for (int i = 0; i < zzjcVar.size(); i++) {
            byte k = zzjcVar.k(i);
            if (k != 34) {
                if (k != 39) {
                    if (k != 92) {
                        switch (k) {
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
                                if (k >= 32 && k <= 126) {
                                    sb.append((char) k);
                                    break;
                                } else {
                                    sb.append('\\');
                                    sb.append((char) (((k >>> 6) & 3) + 48));
                                    sb.append((char) (((k >>> 3) & 7) + 48));
                                    sb.append((char) ((k & 7) + 48));
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
