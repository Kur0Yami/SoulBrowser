package org.apache.commons.lang3.text.translate;

import java.io.StringWriter;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
import org.apache.commons.lang3.CharUtils;

@Deprecated
/* loaded from: classes4.dex */
public class NumericEntityUnescaper extends CharSequenceTranslator {
    public final EnumSet b;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Deprecated
    /* loaded from: classes4.dex */
    public static final class OPTION {

        /* renamed from: c, reason: collision with root package name */
        public static final OPTION f22401c;
        public static final OPTION f;
        public static final /* synthetic */ OPTION[] g;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [org.apache.commons.lang3.text.translate.NumericEntityUnescaper$OPTION, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r3v1, types: [org.apache.commons.lang3.text.translate.NumericEntityUnescaper$OPTION, java.lang.Enum] */
        static {
            ?? r0 = new Enum("semiColonRequired", 0);
            f22401c = r0;
            Enum r1 = new Enum("semiColonOptional", 1);
            ?? r3 = new Enum("errorIfNoSemiColon", 2);
            f = r3;
            g = new OPTION[]{r0, r1, r3};
        }

        public static OPTION valueOf(String str) {
            return (OPTION) Enum.valueOf(OPTION.class, str);
        }

        public static OPTION[] values() {
            return (OPTION[]) g.clone();
        }
    }

    public NumericEntityUnescaper(OPTION... optionArr) {
        if (optionArr.length > 0) {
            this.b = EnumSet.copyOf((Collection) Arrays.asList(optionArr));
        } else {
            this.b = EnumSet.copyOf((Collection) Collections.singletonList(OPTION.f22401c));
        }
    }

    @Override // org.apache.commons.lang3.text.translate.CharSequenceTranslator
    public final int a(CharSequence charSequence, int i, StringWriter stringWriter) {
        int i2;
        int i3;
        int parseInt;
        int length = charSequence.length();
        if (charSequence.charAt(i) == '&' && i < length - 2 && charSequence.charAt(i + 1) == '#') {
            int i4 = i + 2;
            char charAt = charSequence.charAt(i4);
            if (charAt != 'x' && charAt != 'X') {
                i2 = 0;
            } else {
                i4 = i + 3;
                if (i4 != length) {
                    i2 = 1;
                }
            }
            int i5 = i4;
            while (i5 < length) {
                char charAt2 = charSequence.charAt(i5);
                int i6 = CharUtils.f22342a;
                if ((charAt2 < '0' || charAt2 > '9') && ((charAt2 < 'a' || charAt2 > 'f') && (charAt2 < 'A' || charAt2 > 'F'))) {
                    break;
                }
                i5++;
            }
            if (i5 != length && charSequence.charAt(i5) == ';') {
                i3 = 1;
            } else {
                i3 = 0;
            }
            if (i3 == 0) {
                EnumSet enumSet = this.b;
                if (enumSet != null && enumSet.contains(OPTION.f22401c)) {
                    return 0;
                }
                if (enumSet != null && enumSet.contains(OPTION.f)) {
                    throw new IllegalArgumentException("Semi-colon required at end of numeric entity");
                }
            }
            try {
                if (i2 != 0) {
                    parseInt = Integer.parseInt(charSequence.subSequence(i4, i5).toString(), 16);
                } else {
                    parseInt = Integer.parseInt(charSequence.subSequence(i4, i5).toString(), 10);
                }
                if (parseInt > 65535) {
                    char[] chars = Character.toChars(parseInt);
                    stringWriter.write(chars[0]);
                    stringWriter.write(chars[1]);
                } else {
                    stringWriter.write(parseInt);
                }
                return ((i5 + 2) - i4) + i2 + i3;
            } catch (NumberFormatException unused) {
            }
        }
        return 0;
    }
}
