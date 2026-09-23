package okhttp3;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.MatchGroup;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.Typography;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lokhttp3/MediaType;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Companion", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class MediaType {
    public static final Regex b = new Regex("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");

    /* renamed from: c, reason: collision with root package name */
    public static final Regex f22054c = new Regex(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");

    /* renamed from: a, reason: collision with root package name */
    public final String f22055a;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\b¨\u0006\n"}, d2 = {"Lokhttp3/MediaType$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "TOKEN", "Ljava/lang/String;", "QUOTED", "Lkotlin/text/Regex;", "TYPE_SUBTYPE", "Lkotlin/text/Regex;", "PARAMETER", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nMediaType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaType.kt\nokhttp3/MediaType$Companion\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,183:1\n37#2,2:184\n*S KotlinDebug\n*F\n+ 1 MediaType.kt\nokhttp3/MediaType$Companion\n*L\n145#1:184,2\n*E\n"})
    /* loaded from: classes4.dex */
    public static final class Companion {
        public static MediaType a(String str) {
            String str2;
            boolean startsWith$default;
            boolean endsWith$default;
            Intrinsics.checkNotNullParameter(str, "<this>");
            MatchResult matchAt = MediaType.b.matchAt(str, 0);
            if (matchAt != null) {
                String str3 = matchAt.getGroupValues().get(1);
                Locale locale = Locale.ROOT;
                String lowerCase = str3.toLowerCase(locale);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                String lowerCase2 = matchAt.getGroupValues().get(2).toLowerCase(locale);
                Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
                ArrayList arrayList = new ArrayList();
                int last = matchAt.getRange().getLast();
                while (true) {
                    int i = last + 1;
                    if (i < str.length()) {
                        MatchResult matchAt2 = MediaType.f22054c.matchAt(str, i);
                        if (matchAt2 != null) {
                            MatchGroup matchGroup = matchAt2.getGroups().get(1);
                            String str4 = null;
                            if (matchGroup != null) {
                                str2 = matchGroup.getValue();
                            } else {
                                str2 = null;
                            }
                            if (str2 == null) {
                                last = matchAt2.getRange().getLast();
                            } else {
                                MatchGroup matchGroup2 = matchAt2.getGroups().get(2);
                                if (matchGroup2 != null) {
                                    str4 = matchGroup2.getValue();
                                }
                                if (str4 != null) {
                                    startsWith$default = StringsKt__StringsKt.startsWith$default((CharSequence) str4, '\'', false, 2, (Object) null);
                                    if (startsWith$default) {
                                        endsWith$default = StringsKt__StringsKt.endsWith$default((CharSequence) str4, '\'', false, 2, (Object) null);
                                        if (endsWith$default && str4.length() > 2) {
                                            str4 = str4.substring(1, str4.length() - 1);
                                            Intrinsics.checkNotNullExpressionValue(str4, "substring(...)");
                                        }
                                    }
                                } else {
                                    MatchGroup matchGroup3 = matchAt2.getGroups().get(3);
                                    Intrinsics.checkNotNull(matchGroup3);
                                    str4 = matchGroup3.getValue();
                                }
                                arrayList.add(str2);
                                arrayList.add(str4);
                                last = matchAt2.getRange().getLast();
                            }
                        } else {
                            StringBuilder sb = new StringBuilder("Parameter is not formatted correctly: \"");
                            String substring = str.substring(i);
                            Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
                            sb.append(substring);
                            sb.append("\" for: \"");
                            sb.append(str);
                            sb.append(Typography.quote);
                            throw new IllegalArgumentException(sb.toString().toString());
                        }
                    } else {
                        return new MediaType(str, lowerCase, lowerCase2, (String[]) arrayList.toArray(new String[0]));
                    }
                }
            } else {
                throw new IllegalArgumentException("No subtype found for: \"" + str + Typography.quote);
            }
        }
    }

    public MediaType(String mediaType, String type, String subtype, String[] parameterNamesAndValues) {
        Intrinsics.checkNotNullParameter(mediaType, "mediaType");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(subtype, "subtype");
        Intrinsics.checkNotNullParameter(parameterNamesAndValues, "parameterNamesAndValues");
        this.f22055a = mediaType;
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof MediaType) && Intrinsics.areEqual(((MediaType) obj).f22055a, this.f22055a)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.f22055a.hashCode();
    }

    /* renamed from: toString, reason: from getter */
    public final String getF22055a() {
        return this.f22055a;
    }
}
