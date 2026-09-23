package com.google.android.gms.internal.measurement;

import com.google.android.gms.ads.RequestConfiguration;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import kotlin.text.Typography;

/* loaded from: classes3.dex */
final class zzll {
    public static final void a(StringBuilder sb, int i, String str, Object obj) {
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
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            sb.append(' ');
        }
        sb.append(str);
        if (obj instanceof String) {
            sb.append(": \"");
            zzjb zzjbVar = zzjb.f;
            sb.append(zzmj.a(new zziy(((String) obj).getBytes(zzkk.f10385a))));
            sb.append(Typography.quote);
            return;
        }
        if (obj instanceof zzjb) {
            sb.append(": \"");
            sb.append(zzmj.a((zzjb) obj));
            sb.append(Typography.quote);
            return;
        }
        if (obj instanceof zzkc) {
            sb.append(" {");
            c((zzkc) obj, sb, i + 2);
            sb.append("\n");
            while (i2 < i) {
                sb.append(' ');
                i2++;
            }
            sb.append("}");
            return;
        }
        if (obj instanceof Map.Entry) {
            sb.append(" {");
            Map.Entry entry = (Map.Entry) obj;
            int i4 = i + 2;
            a(sb, i4, "key", entry.getKey());
            a(sb, i4, "value", entry.getValue());
            sb.append("\n");
            while (i2 < i) {
                sb.append(' ');
                i2++;
            }
            sb.append("}");
            return;
        }
        sb.append(": ");
        sb.append(obj);
    }

    public static final String b(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (Character.isUpperCase(charAt)) {
                sb.append("_");
            }
            sb.append(Character.toLowerCase(charAt));
        }
        return sb.toString();
    }

    public static void c(zzkc zzkcVar, StringBuilder sb, int i) {
        String str;
        boolean equals;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        TreeSet treeSet = new TreeSet();
        for (Method method : zzkcVar.getClass().getDeclaredMethods()) {
            hashMap2.put(method.getName(), method);
            if (method.getParameterTypes().length == 0) {
                hashMap.put(method.getName(), method);
                if (method.getName().startsWith("get")) {
                    treeSet.add(method.getName());
                }
            }
        }
        Iterator it = treeSet.iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            if (str2.startsWith("get")) {
                str = str2.substring(3);
            } else {
                str = str2;
            }
            if (str.endsWith("List") && !str.endsWith("OrBuilderList") && !str.equals("List")) {
                String concat = String.valueOf(str.substring(0, 1).toLowerCase()).concat(String.valueOf(str.substring(1, str.length() - 4)));
                Method method2 = (Method) hashMap.get(str2);
                if (method2 != null && method2.getReturnType().equals(List.class)) {
                    a(sb, i, b(concat), zzkc.d(method2, zzkcVar, new Object[0]));
                }
            }
            if (str.endsWith("Map") && !str.equals("Map")) {
                String concat2 = String.valueOf(str.substring(0, 1).toLowerCase()).concat(String.valueOf(str.substring(1, str.length() - 3)));
                Method method3 = (Method) hashMap.get(str2);
                if (method3 != null && method3.getReturnType().equals(Map.class) && !method3.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method3.getModifiers())) {
                    a(sb, i, b(concat2), zzkc.d(method3, zzkcVar, new Object[0]));
                }
            }
            if (((Method) hashMap2.get("set".concat(str))) != null && (!str.endsWith("Bytes") || !hashMap.containsKey("get".concat(String.valueOf(str.substring(0, str.length() - 5)))))) {
                String concat3 = String.valueOf(str.substring(0, 1).toLowerCase()).concat(String.valueOf(str.substring(1)));
                Method method4 = (Method) hashMap.get("get".concat(str));
                Method method5 = (Method) hashMap.get("has".concat(str));
                if (method4 != null) {
                    Object d = zzkc.d(method4, zzkcVar, new Object[0]);
                    if (method5 == null) {
                        if (d instanceof Boolean) {
                            if (((Boolean) d).booleanValue()) {
                                a(sb, i, b(concat3), d);
                            }
                        } else if (d instanceof Integer) {
                            if (((Integer) d).intValue() != 0) {
                                a(sb, i, b(concat3), d);
                            }
                        } else if (d instanceof Float) {
                            if (Float.floatToRawIntBits(((Float) d).floatValue()) != 0) {
                                a(sb, i, b(concat3), d);
                            }
                        } else if (d instanceof Double) {
                            if (Double.doubleToRawLongBits(((Double) d).doubleValue()) != 0) {
                                a(sb, i, b(concat3), d);
                            }
                        } else {
                            if (d instanceof String) {
                                equals = d.equals(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                            } else if (d instanceof zzjb) {
                                equals = d.equals(zzjb.f);
                            } else if (d instanceof zzlj) {
                                if (d != ((zzlj) d).a()) {
                                    a(sb, i, b(concat3), d);
                                }
                            } else {
                                if ((d instanceof Enum) && ((Enum) d).ordinal() == 0) {
                                }
                                a(sb, i, b(concat3), d);
                            }
                            if (!equals) {
                                a(sb, i, b(concat3), d);
                            }
                        }
                    } else if (((Boolean) zzkc.d(method5, zzkcVar, new Object[0])).booleanValue()) {
                        a(sb, i, b(concat3), d);
                    }
                }
            }
        }
        if (!(zzkcVar instanceof zzjz)) {
            zzmm zzmmVar = zzkcVar.zzc;
            if (zzmmVar != null) {
                for (int i2 = 0; i2 < zzmmVar.f10405a; i2++) {
                    a(sb, i, String.valueOf(zzmmVar.b[i2] >>> 3), zzmmVar.f10406c[i2]);
                }
                return;
            }
            return;
        }
        throw null;
    }
}
