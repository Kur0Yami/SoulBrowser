package org.apache.commons.text.similarity;

import j$.util.function.Function$CC;
import java.util.ArrayList;
import java.util.function.Function;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes4.dex */
final class RegexTokenizer implements CharSequenceTokenizer<CharSequence> {

    /* renamed from: a, reason: collision with root package name */
    public static final Pattern f22505a = Pattern.compile("(\\w)+");
    public static final RegexTokenizer b = new Object();

    public static CharSequence[] c(CharSequence charSequence) {
        int d = StringUtils.d(charSequence);
        boolean z = true;
        if (d != 0) {
            int i = 0;
            while (true) {
                if (i >= d) {
                    break;
                }
                if (!Character.isWhitespace(charSequence.charAt(i))) {
                    z = false;
                    break;
                }
                i++;
            }
        }
        Object[] objArr = new Object[0];
        if (!z) {
            Matcher matcher = f22505a.matcher(charSequence);
            ArrayList arrayList = new ArrayList();
            while (matcher.find()) {
                arrayList.add(matcher.group(0));
            }
            return (CharSequence[]) arrayList.toArray(ArrayUtils.b);
        }
        String str = "Invalid text";
        if (!ArrayUtils.b(objArr)) {
            str = String.format("Invalid text", objArr);
        }
        throw new IllegalArgumentException(str);
    }

    @Override // java.util.function.Function
    /* renamed from: andThen */
    public /* synthetic */ Function mo17andThen(Function function) {
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return c((CharSequence) obj);
    }

    @Override // java.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        return Function$CC.$default$compose(this, function);
    }
}
