package com.google.gson;

import java.lang.reflect.Field;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes3.dex */
public abstract class FieldNamingPolicy implements FieldNamingStrategy {

    /* renamed from: c, reason: collision with root package name */
    public static final FieldNamingPolicy f12661c;
    public static final /* synthetic */ FieldNamingPolicy[] f;

    static {
        FieldNamingPolicy fieldNamingPolicy = new FieldNamingPolicy() { // from class: com.google.gson.FieldNamingPolicy.1
            @Override // com.google.gson.FieldNamingStrategy
            public final String b(Field field) {
                return field.getName();
            }
        };
        f12661c = fieldNamingPolicy;
        f = new FieldNamingPolicy[]{fieldNamingPolicy, new FieldNamingPolicy() { // from class: com.google.gson.FieldNamingPolicy.2
            @Override // com.google.gson.FieldNamingStrategy
            public final String b(Field field) {
                return FieldNamingPolicy.d(field.getName());
            }
        }, new FieldNamingPolicy() { // from class: com.google.gson.FieldNamingPolicy.3
            @Override // com.google.gson.FieldNamingStrategy
            public final String b(Field field) {
                return FieldNamingPolicy.d(FieldNamingPolicy.c(' ', field.getName()));
            }
        }, new FieldNamingPolicy() { // from class: com.google.gson.FieldNamingPolicy.4
            @Override // com.google.gson.FieldNamingStrategy
            public final String b(Field field) {
                return FieldNamingPolicy.c('_', field.getName()).toUpperCase(Locale.ENGLISH);
            }
        }, new FieldNamingPolicy() { // from class: com.google.gson.FieldNamingPolicy.5
            @Override // com.google.gson.FieldNamingStrategy
            public final String b(Field field) {
                return FieldNamingPolicy.c('_', field.getName()).toLowerCase(Locale.ENGLISH);
            }
        }, new FieldNamingPolicy() { // from class: com.google.gson.FieldNamingPolicy.6
            @Override // com.google.gson.FieldNamingStrategy
            public final String b(Field field) {
                return FieldNamingPolicy.c('-', field.getName()).toLowerCase(Locale.ENGLISH);
            }
        }, new FieldNamingPolicy() { // from class: com.google.gson.FieldNamingPolicy.7
            @Override // com.google.gson.FieldNamingStrategy
            public final String b(Field field) {
                return FieldNamingPolicy.c('.', field.getName()).toLowerCase(Locale.ENGLISH);
            }
        }};
    }

    public static String c(char c2, String str) {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (Character.isUpperCase(charAt) && sb.length() != 0) {
                sb.append(c2);
            }
            sb.append(charAt);
        }
        return sb.toString();
    }

    public static String d(String str) {
        int length = str.length();
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            char charAt = str.charAt(i);
            if (Character.isLetter(charAt)) {
                if (!Character.isUpperCase(charAt)) {
                    char upperCase = Character.toUpperCase(charAt);
                    if (i == 0) {
                        return upperCase + str.substring(1);
                    }
                    return str.substring(0, i) + upperCase + str.substring(i + 1);
                }
            } else {
                i++;
            }
        }
        return str;
    }

    public static FieldNamingPolicy valueOf(String str) {
        return (FieldNamingPolicy) Enum.valueOf(FieldNamingPolicy.class, str);
    }

    public static FieldNamingPolicy[] values() {
        return (FieldNamingPolicy[]) f.clone();
    }

    @Override // com.google.gson.FieldNamingStrategy
    public final void a() {
        List list = Collections.EMPTY_LIST;
    }
}
