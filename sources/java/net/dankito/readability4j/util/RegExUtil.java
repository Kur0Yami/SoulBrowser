package net.dankito.readability4j.util;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lnet/dankito/readability4j/util/RegExUtil;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Companion", "Readability4J"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public class RegExUtil {

    /* renamed from: a, reason: collision with root package name */
    public final Pattern f21973a;
    public final Pattern b;

    /* renamed from: c, reason: collision with root package name */
    public final Pattern f21974c;
    public final Pattern d;
    public final Pattern e;
    public final Pattern f;
    public final Pattern g;
    public final Pattern h;
    public final Pattern i;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0014\u0010\n\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\u0004R\u0014\u0010\u000b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0004R\u0014\u0010\f\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\f\u0010\u0004R\u0014\u0010\r\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\r\u0010\u0004R\u0014\u0010\u000e\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000e\u0010\u0004R\u0014\u0010\u000f\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000f\u0010\u0004R\u0014\u0010\u0010\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0010\u0010\u0004¨\u0006\u0011"}, d2 = {"Lnet/dankito/readability4j/util/RegExUtil$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "BylineDefaultPattern", "Ljava/lang/String;", "ExtraneousDefaultPattern", "HasContentDefaultPattern", "NegativeDefaultPattern", "NextLinkDefaultPattern", "NormalizeDefaultPattern", "OkMaybeItsACandidateDefaultPattern", "PositiveDefaultPattern", "PrevLinkDefaultPattern", "ReplaceFontsDefaultPattern", "UnlikelyCandidatesDefaultPattern", "VideosDefaultPattern", "WhitespaceDefaultPattern", "Readability4J"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class Companion {
    }

    public RegExUtil() {
        Pattern compile = Pattern.compile("banner|breadcrumbs|combx|comment|community|cover-wrap|disqus|extra|foot|header|legends|menu|related|remark|replies|rss|shoutbox|sidebar|skyscraper|social|sponsor|supplemental|ad-break|agegate|pagination|pager|popup|yom-remote", 2);
        Intrinsics.checkExpressionValueIsNotNull(compile, "Pattern.compile(unlikely…Pattern.CASE_INSENSITIVE)");
        this.f21973a = compile;
        Pattern compile2 = Pattern.compile("and|article|body|column|main|shadow", 2);
        Intrinsics.checkExpressionValueIsNotNull(compile2, "Pattern.compile(okMaybeI…Pattern.CASE_INSENSITIVE)");
        this.b = compile2;
        Pattern compile3 = Pattern.compile("article|body|content|entry|hentry|h-entry|main|page|pagination|post|text|blog|story", 2);
        Intrinsics.checkExpressionValueIsNotNull(compile3, "Pattern.compile(positive…Pattern.CASE_INSENSITIVE)");
        this.f21974c = compile3;
        Pattern compile4 = Pattern.compile("hidden|^hid$| hid$| hid |^hid |banner|combx|comment|com-|contact|foot|footer|footnote|masthead|media|meta|outbrain|promo|related|scroll|share|shoutbox|sidebar|skyscraper|sponsor|shopping|tags|tool|widget", 2);
        Intrinsics.checkExpressionValueIsNotNull(compile4, "Pattern.compile(negative…Pattern.CASE_INSENSITIVE)");
        this.d = compile4;
        Intrinsics.checkExpressionValueIsNotNull(Pattern.compile("print|archive|comment|discuss|e[\\-]?mail|share|reply|all|login|sign|single|utility", 2), "Pattern.compile(extraneo…Pattern.CASE_INSENSITIVE)");
        Pattern compile5 = Pattern.compile("byline|author|dateline|writtenby|p-author", 2);
        Intrinsics.checkExpressionValueIsNotNull(compile5, "Pattern.compile(bylinePa…Pattern.CASE_INSENSITIVE)");
        this.e = compile5;
        Intrinsics.checkExpressionValueIsNotNull(Pattern.compile("<(/?)font[^>]*>", 2), "Pattern.compile(replaceF…Pattern.CASE_INSENSITIVE)");
        Pattern compile6 = Pattern.compile("\\s{2,}");
        Intrinsics.checkExpressionValueIsNotNull(compile6, "Pattern.compile(normalizePattern)");
        this.f = compile6;
        Pattern compile7 = Pattern.compile("//(www\\.)?(dailymotion|youtube|youtube-nocookie|player\\.vimeo)\\.com", 2);
        Intrinsics.checkExpressionValueIsNotNull(compile7, "Pattern.compile(videosPa…Pattern.CASE_INSENSITIVE)");
        this.g = compile7;
        Intrinsics.checkExpressionValueIsNotNull(Pattern.compile("(next|weiter|continue|>([^\\|]|$)|»([^\\|]|$))", 2), "Pattern.compile(nextLink…Pattern.CASE_INSENSITIVE)");
        Intrinsics.checkExpressionValueIsNotNull(Pattern.compile("(prev|earl|old|new|<|«)", 2), "Pattern.compile(prevLink…Pattern.CASE_INSENSITIVE)");
        Pattern compile8 = Pattern.compile("^\\s*$");
        Intrinsics.checkExpressionValueIsNotNull(compile8, "Pattern.compile(whitespacePattern)");
        this.h = compile8;
        Pattern compile9 = Pattern.compile("\\S$");
        Intrinsics.checkExpressionValueIsNotNull(compile9, "Pattern.compile(hasContentPattern)");
        this.i = compile9;
    }
}
