package com.google.android.gms.internal.ads;

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

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzice {

    /* renamed from: a, reason: collision with root package name */
    public static final char[] f8932a;

    static {
        char[] cArr = new char[80];
        f8932a = cArr;
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
        c(sb, i);
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
            zzhzl zzhzlVar = zzhzl.f;
            sb.append(zzidd.a(new zzhzj(((String) obj).getBytes(zzibe.f8915a))));
            sb.append(Typography.quote);
            return;
        }
        if (obj instanceof zzhzl) {
            sb.append(": \"");
            sb.append(zzidd.a((zzhzl) obj));
            sb.append(Typography.quote);
            return;
        }
        if (obj instanceof zziar) {
            sb.append(" {");
            b((zziar) obj, sb, i + 2);
            sb.append("\n");
            c(sb, i);
            sb.append("}");
            return;
        }
        if (obj instanceof Map.Entry) {
            int i3 = i + 2;
            sb.append(" {");
            Map.Entry entry = (Map.Entry) obj;
            a(sb, i3, "key", entry.getKey());
            a(sb, i3, "value", entry.getValue());
            sb.append("\n");
            c(sb, i);
            sb.append("}");
            return;
        }
        sb.append(": ");
        sb.append(obj);
    }

    public static void b(zziar zziarVar, StringBuilder sb, int i) {
        int i2;
        int i3;
        boolean equals;
        Method method;
        Method method2;
        HashSet hashSet = new HashSet();
        HashMap hashMap = new HashMap();
        TreeMap treeMap = new TreeMap();
        Method[] declaredMethods = zziarVar.getClass().getDeclaredMethods();
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
                    a(sb, i, substring.substring(0, substring.length() - 4), zziar.p(method2, zziarVar, new Object[0]));
                    i2 = i3;
                }
            } else {
                i3 = i2;
            }
            if (substring.endsWith("Map") && !substring.equals("Map") && (method = (Method) entry.getValue()) != null && method.getReturnType().equals(Map.class) && !method.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method.getModifiers())) {
                a(sb, i, substring.substring(0, substring.length() - 3), zziar.p(method, zziarVar, new Object[0]));
            } else if (hashSet.contains("set".concat(substring)) && (!substring.endsWith("Bytes") || !treeMap.containsKey("get".concat(String.valueOf(substring.substring(0, substring.length() - 5)))))) {
                Method method4 = (Method) entry.getValue();
                Method method5 = (Method) hashMap.get("has".concat(substring));
                if (method4 != null) {
                    Object p = zziar.p(method4, zziarVar, new Object[0]);
                    if (method5 == null) {
                        if (p instanceof Boolean) {
                            if (!((Boolean) p).booleanValue()) {
                            }
                            a(sb, i, substring, p);
                        } else if (p instanceof Integer) {
                            if (((Integer) p).intValue() == 0) {
                            }
                            a(sb, i, substring, p);
                        } else if (p instanceof Float) {
                            if (Float.floatToRawIntBits(((Float) p).floatValue()) == 0) {
                            }
                            a(sb, i, substring, p);
                        } else if (p instanceof Double) {
                            if (Double.doubleToRawLongBits(((Double) p).doubleValue()) == 0) {
                            }
                            a(sb, i, substring, p);
                        } else {
                            if (p instanceof String) {
                                equals = p.equals(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                            } else if (p instanceof zzhzl) {
                                equals = p.equals(zzhzl.f);
                            } else if (p instanceof zzicc) {
                                if (p == ((zzicc) p).e()) {
                                }
                                a(sb, i, substring, p);
                            } else {
                                if ((p instanceof Enum) && ((Enum) p).ordinal() == 0) {
                                }
                                a(sb, i, substring, p);
                            }
                            if (equals) {
                            }
                            a(sb, i, substring, p);
                        }
                    } else {
                        if (!((Boolean) zziar.p(method5, zziarVar, new Object[0])).booleanValue()) {
                        }
                        a(sb, i, substring, p);
                    }
                }
            }
            i2 = i3;
        }
        if (zziarVar instanceof zzian) {
            Iterator b = ((zzian) zziarVar).zza.b();
            while (b.hasNext()) {
                Map.Entry entry2 = (Map.Entry) b.next();
                ((zziao) entry2.getKey()).getClass();
                StringBuilder sb2 = new StringBuilder(String.valueOf(0).length() + 2);
                sb2.append("[0]");
                a(sb, i, sb2.toString(), entry2.getValue());
            }
        }
        zzidg zzidgVar = zziarVar.zzt;
        if (zzidgVar != null) {
            for (int i5 = 0; i5 < zzidgVar.f8950a; i5++) {
                a(sb, i, String.valueOf(zzidgVar.b[i5] >>> 3), zzidgVar.f8951c[i5]);
            }
        }
    }

    public static void c(StringBuilder sb, int i) {
        while (i > 0) {
            int i2 = 80;
            if (i <= 80) {
                i2 = i;
            }
            sb.append(f8932a, 0, i2);
            i -= i2;
        }
    }
}
