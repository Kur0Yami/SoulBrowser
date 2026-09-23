package kotlin.text;

import kotlin.Metadata;

@Metadata(d1 = {"kotlin/text/StringsKt__AppendableKt", "kotlin/text/StringsKt__IndentKt", "kotlin/text/StringsKt__RegexExtensionsJVMKt", "kotlin/text/StringsKt__RegexExtensionsKt", "kotlin/text/StringsKt__StringBuilderJVMKt", "kotlin/text/StringsKt__StringBuilderKt", "kotlin/text/StringsKt__StringNumberConversionsJVMKt", "kotlin/text/StringsKt__StringNumberConversionsKt", "kotlin/text/StringsKt__StringsJVMKt", "kotlin/text/StringsKt__StringsKt", "kotlin/text/StringsKt___StringsJvmKt", "kotlin/text/StringsKt___StringsKt"}, k = 4, mv = {2, 2, 0}, xi = 49)
/* loaded from: classes4.dex */
public final class StringsKt extends StringsKt___StringsKt {
    private StringsKt() {
    }

    public static /* bridge */ /* synthetic */ String A(String str, String str2) {
        return StringsKt__StringsKt.removePrefix(str, (CharSequence) str2);
    }

    public static /* bridge */ /* synthetic */ String B(String str) {
        return StringsKt__StringsKt.removeSuffix(str, (CharSequence) "Client");
    }

    public static /* bridge */ /* synthetic */ boolean H(String str, String str2) {
        return StringsKt__StringsJVMKt.startsWith(str, str2, true);
    }

    public static /* bridge */ /* synthetic */ boolean K(String str, String str2) {
        return StringsKt__StringsJVMKt.startsWith$default(str, str2, false, 2, null);
    }

    public static /* bridge */ /* synthetic */ boolean o(CharSequence charSequence, CharSequence charSequence2) {
        return StringsKt__StringsKt.contains$default(charSequence, charSequence2, false, 2, (Object) null);
    }
}
