package com.google.android.gms.internal.consent_sdk;

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
final class zzrs {

    /* renamed from: a, reason: collision with root package name */
    public static final char[] f10098a;

    static {
        char[] cArr = new char[80];
        f10098a = cArr;
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
            zzpm zzpmVar = zzpm.f;
            sb.append(zzsk.a(new zzpk(((String) obj).getBytes(zzqs.f10085a))));
            sb.append(Typography.quote);
            return;
        }
        if (obj instanceof zzpm) {
            sb.append(": \"");
            sb.append(zzsk.a((zzpm) obj));
            sb.append(Typography.quote);
            return;
        }
        if (obj instanceof zzqm) {
            sb.append(" {");
            c((zzqm) obj, sb, i + 2);
            sb.append("\n");
            b(sb, i);
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
            sb.append(f10098a, 0, i2);
            i -= i2;
        }
    }

    public static void c(zzqm zzqmVar, StringBuilder sb, int i) {
        int i2;
        boolean equals;
        Method method;
        Method method2;
        HashSet hashSet = new HashSet();
        HashMap hashMap = new HashMap();
        TreeMap treeMap = new TreeMap();
        Method[] declaredMethods = zzqmVar.getClass().getDeclaredMethods();
        int length = declaredMethods.length;
        int i3 = 0;
        while (true) {
            i2 = 3;
            if (i3 >= length) {
                break;
            }
            Method method3 = declaredMethods[i3];
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
            i3++;
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            String substring = ((String) entry.getKey()).substring(i2);
            if (substring.endsWith("List") && !substring.endsWith("OrBuilderList") && !substring.equals("List") && (method2 = (Method) entry.getValue()) != null && method2.getReturnType().equals(List.class)) {
                a(sb, i, substring.substring(0, substring.length() - 4), zzqm.i(method2, zzqmVar, new Object[0]));
            } else if (substring.endsWith("Map") && !substring.equals("Map") && (method = (Method) entry.getValue()) != null && method.getReturnType().equals(Map.class) && !method.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method.getModifiers())) {
                a(sb, i, substring.substring(0, substring.length() - 3), zzqm.i(method, zzqmVar, new Object[0]));
            } else if (hashSet.contains("set".concat(substring)) && (!substring.endsWith("Bytes") || !treeMap.containsKey("get".concat(String.valueOf(substring.substring(0, substring.length() - 5)))))) {
                Method method4 = (Method) entry.getValue();
                Method method5 = (Method) hashMap.get("has".concat(substring));
                if (method4 != null) {
                    Object i4 = zzqm.i(method4, zzqmVar, new Object[0]);
                    if (method5 == null) {
                        if (i4 instanceof Boolean) {
                            if (!((Boolean) i4).booleanValue()) {
                            }
                            a(sb, i, substring, i4);
                        } else if (i4 instanceof Integer) {
                            if (((Integer) i4).intValue() == 0) {
                            }
                            a(sb, i, substring, i4);
                        } else if (i4 instanceof Float) {
                            if (Float.floatToRawIntBits(((Float) i4).floatValue()) == 0) {
                            }
                            a(sb, i, substring, i4);
                        } else if (i4 instanceof Double) {
                            if (Double.doubleToRawLongBits(((Double) i4).doubleValue()) == 0) {
                            }
                            a(sb, i, substring, i4);
                        } else {
                            if (i4 instanceof String) {
                                equals = i4.equals(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                            } else if (i4 instanceof zzpm) {
                                equals = i4.equals(zzpm.f);
                            } else if (i4 instanceof zzrq) {
                                if (i4 == ((zzrq) i4).zzl()) {
                                }
                                a(sb, i, substring, i4);
                            } else {
                                if ((i4 instanceof Enum) && ((Enum) i4).ordinal() == 0) {
                                }
                                a(sb, i, substring, i4);
                            }
                            if (equals) {
                            }
                            a(sb, i, substring, i4);
                        }
                    } else {
                        if (!((Boolean) zzqm.i(method5, zzqmVar, new Object[0])).booleanValue()) {
                        }
                        a(sb, i, substring, i4);
                    }
                }
            }
            i2 = 3;
        }
        if (zzqmVar instanceof zzqk) {
            Iterator b = ((zzqk) zzqmVar).zzb.b();
            if (b.hasNext()) {
                throw null;
            }
        }
    }
}
