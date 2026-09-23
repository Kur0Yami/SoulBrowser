package com.google.android.gms.internal.auth;

import com.google.android.gms.ads.RequestConfiguration;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import kotlin.text.Typography;

/* loaded from: classes.dex */
final class zzfz {

    /* renamed from: a, reason: collision with root package name */
    public static final char[] f9547a;

    static {
        char[] cArr = new char[80];
        f9547a = cArr;
        Arrays.fill(cArr, ' ');
    }

    public static void a(StringBuilder sb, int i, String str, Object obj) {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                a(sb, i, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                a(sb, i, str, (Map.Entry) it2.next());
            }
            return;
        }
        sb.append('\n');
        b(sb, i);
        if (!str.isEmpty()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(Character.toLowerCase(str.charAt(0)));
            for (int i2 = 1; i2 < str.length(); i2++) {
                char charAt = str.charAt(i2);
                if (Character.isUpperCase(charAt)) {
                    sb2.append("_");
                }
                sb2.append(Character.toLowerCase(charAt));
            }
            str = sb2.toString();
        }
        sb.append(str);
        if (obj instanceof String) {
            sb.append(": \"");
            sb.append(zzgx.a(new zzec(((String) obj).getBytes(zzfa.f9540a))));
            sb.append(Typography.quote);
            return;
        }
        if (obj instanceof zzef) {
            sb.append(": \"");
            sb.append(zzgx.a((zzef) obj));
            sb.append(Typography.quote);
            return;
        }
        if (obj instanceof zzev) {
            sb.append(" {");
            c((zzev) obj, sb, i + 2);
            sb.append("\n");
            b(sb, i);
            sb.append("}");
            return;
        }
        if (obj instanceof Map.Entry) {
            sb.append(" {");
            Map.Entry entry = (Map.Entry) obj;
            int i3 = i + 2;
            a(sb, i3, "key", entry.getKey());
            a(sb, i3, "value", entry.getValue());
            sb.append("\n");
            b(sb, i);
            sb.append("}");
            return;
        }
        sb.append(": ");
        sb.append(obj);
    }

    public static void b(StringBuilder sb, int i) {
        while (i > 0) {
            int i2 = 80;
            if (i <= 80) {
                i2 = i;
            }
            sb.append(f9547a, 0, i2);
            i -= i2;
        }
    }

    public static void c(zzev zzevVar, StringBuilder sb, int i) {
        int i2;
        int i3;
        boolean equals;
        Method method;
        Method method2;
        HashSet hashSet = new HashSet();
        HashMap hashMap = new HashMap();
        TreeMap treeMap = new TreeMap();
        Method[] declaredMethods = zzevVar.getClass().getDeclaredMethods();
        int length = declaredMethods.length;
        int i4 = 0;
        while (true) {
            i2 = 3;
            if (i4 >= length) {
                break;
            }
            Method method3 = declaredMethods[i4];
            if (!Modifier.isStatic(method3.getModifiers()) && method3.getName().length() >= 3) {
                if (method3.getName().startsWith("set")) {
                    hashSet.add(method3.getName());
                } else if (Modifier.isPublic(method3.getModifiers()) && method3.getParameterTypes().length == 0) {
                    if (method3.getName().startsWith("has")) {
                        hashMap.put(method3.getName(), method3);
                    } else if (method3.getName().startsWith("get")) {
                        treeMap.put(method3.getName(), method3);
                    }
                }
            }
            i4++;
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            String substring = ((String) entry.getKey()).substring(i2);
            if (substring.endsWith("List") && !substring.endsWith("OrBuilderList") && !substring.equals("List") && (method2 = (Method) entry.getValue()) != null) {
                i3 = i2;
                if (method2.getReturnType().equals(List.class)) {
                    a(sb, i, substring.substring(0, substring.length() - 4), zzev.c(method2, zzevVar, new Object[0]));
                    i2 = i3;
                }
            } else {
                i3 = i2;
            }
            if (substring.endsWith("Map") && !substring.equals("Map") && (method = (Method) entry.getValue()) != null && method.getReturnType().equals(Map.class) && !method.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method.getModifiers())) {
                a(sb, i, substring.substring(0, substring.length() - 3), zzev.c(method, zzevVar, new Object[0]));
            } else if (hashSet.contains("set".concat(substring)) && (!substring.endsWith("Bytes") || !treeMap.containsKey("get".concat(String.valueOf(substring.substring(0, substring.length() - 5)))))) {
                Method method4 = (Method) entry.getValue();
                Method method5 = (Method) hashMap.get("has".concat(substring));
                if (method4 != null) {
                    Object c2 = zzev.c(method4, zzevVar, new Object[0]);
                    if (method5 == null) {
                        if (c2 instanceof Boolean) {
                            if (!((Boolean) c2).booleanValue()) {
                            }
                            a(sb, i, substring, c2);
                        } else if (c2 instanceof Integer) {
                            if (((Integer) c2).intValue() == 0) {
                            }
                            a(sb, i, substring, c2);
                        } else if (c2 instanceof Float) {
                            if (Float.floatToRawIntBits(((Float) c2).floatValue()) == 0) {
                            }
                            a(sb, i, substring, c2);
                        } else if (c2 instanceof Double) {
                            if (Double.doubleToRawLongBits(((Double) c2).doubleValue()) == 0) {
                            }
                            a(sb, i, substring, c2);
                        } else {
                            if (c2 instanceof String) {
                                equals = c2.equals(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                            } else if (c2 instanceof zzef) {
                                equals = c2.equals(zzef.f);
                            } else if (c2 instanceof zzfx) {
                                if (c2 == ((zzfx) c2).zze()) {
                                }
                                a(sb, i, substring, c2);
                            } else {
                                if ((c2 instanceof Enum) && ((Enum) c2).ordinal() == 0) {
                                }
                                a(sb, i, substring, c2);
                            }
                            if (equals) {
                            }
                            a(sb, i, substring, c2);
                        }
                    } else {
                        if (!((Boolean) zzev.c(method5, zzevVar, new Object[0])).booleanValue()) {
                        }
                        a(sb, i, substring, c2);
                    }
                }
            }
            i2 = i3;
        }
        if (!(zzevVar instanceof zzeu)) {
            zzha zzhaVar = zzevVar.zzc;
            if (zzhaVar != null) {
                for (int i5 = 0; i5 < zzhaVar.f9564a; i5++) {
                    a(sb, i, String.valueOf(zzhaVar.b[i5] >>> 3), zzhaVar.f9565c[i5]);
                }
                return;
            }
            return;
        }
        throw null;
    }
}
