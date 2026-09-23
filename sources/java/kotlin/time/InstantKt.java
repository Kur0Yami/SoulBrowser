package kotlin.time;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.api.client.http.HttpStatusCodes;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.internal.InlineOnly;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Typography;
import kotlin.time.InstantParseResult;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000F\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\b\f\n\u0002\u0010\u0015\n\u0002\b\u0006\u001a\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0003\u001a\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002H\u0003\u001a'\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\t2\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001bH\u0082\b\u001a'\u0010\u001d\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\t2\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001bH\u0082\b\u001a\u0010\u0010%\u001a\u00020\u00012\u0006\u0010&\u001a\u00020\u0015H\u0000\u001a\u0014\u0010'\u001a\u00020\u0015*\u00020\u00152\u0006\u0010%\u001a\u00020\u0001H\u0002\u001a\u0014\u0010-\u001a\u00020\u0012*\u00020\u00102\u0006\u0010.\u001a\u00020\u0015H\u0002\"\u001f\u0010\u0000\u001a\u00020\u0001*\u00020\u00028Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0000\u0010\u0005\"\u001f\u0010\u0006\u001a\u00020\u0001*\u00020\u00028Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\u0007\u0010\u0004\u001a\u0004\b\u0006\u0010\u0005\"\u000e\u0010\b\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\f\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0014\u001a\u00020\u0015X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0016\u001a\u00020\u0015X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u001e\u001a\u00020\u0015X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u001f\u001a\u00020\u0015X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010 \u001a\u00020\u0015X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010!\u001a\u00020\u0015X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\"\u001a\u00020\u0015X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010#\u001a\u00020\u0015X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010$\u001a\u00020\u0015X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010(\u001a\u00020)X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010*\u001a\u00020)X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010+\u001a\u00020)X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010,\u001a\u00020)X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006/"}, d2 = {"isDistantPast", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Lkotlin/time/Instant;", "isDistantPast$annotations", "(Lkotlin/time/Instant;)V", "(Lkotlin/time/Instant;)Z", "isDistantFuture", "isDistantFuture$annotations", "DISTANT_PAST_SECONDS", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "DISTANT_FUTURE_SECONDS", "MIN_SECOND", "MAX_SECOND", "parseIso", "Lkotlin/time/InstantParseResult;", "isoString", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "formatIso", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "instant", "DAYS_PER_CYCLE", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "DAYS_0000_TO_1970", "safeAddOrElse", "a", "b", "action", "Lkotlin/Function0;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "safeMultiplyOrElse", "SECONDS_PER_HOUR", "SECONDS_PER_MINUTE", "HOURS_PER_DAY", "SECONDS_PER_DAY", "NANOS_PER_SECOND", "NANOS_PER_MILLI", "MILLIS_PER_SECOND", "isLeapYear", "year", "monthLength", "POWERS_OF_TEN", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "asciiDigitPositionsInIsoStringAfterYear", "colonsInIsoOffsetString", "asciiDigitsInIsoOffsetString", "truncateForErrorMessage", "maxLength", "kotlin-stdlib"}, k = 2, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nInstant.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Instant.kt\nkotlin/time/InstantKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Instant.kt\nkotlin/time/UnboundLocalDateTime\n*L\n1#1,864:1\n1#2:865\n479#3,28:866\n*S KotlinDebug\n*F\n+ 1 Instant.kt\nkotlin/time/InstantKt\n*L\n689#1:866,28\n*E\n"})
/* loaded from: classes4.dex */
public final class InstantKt {
    private static final int DAYS_0000_TO_1970 = 719528;
    private static final int DAYS_PER_CYCLE = 146097;
    private static final long DISTANT_FUTURE_SECONDS = 3093527980800L;
    private static final long DISTANT_PAST_SECONDS = -3217862419201L;
    private static final int HOURS_PER_DAY = 24;
    private static final long MAX_SECOND = 31556889864403199L;
    private static final long MIN_SECOND = -31557014167219200L;
    private static final int NANOS_PER_MILLI = 1000000;
    private static final int SECONDS_PER_DAY = 86400;
    private static final int SECONDS_PER_HOUR = 3600;
    private static final int SECONDS_PER_MINUTE = 60;
    private static final int MILLIS_PER_SECOND = 1000;
    public static final int NANOS_PER_SECOND = 1000000000;

    @NotNull
    private static final int[] POWERS_OF_TEN = {1, 10, 100, MILLIS_PER_SECOND, 10000, 100000, 1000000, 10000000, 100000000, NANOS_PER_SECOND};

    @NotNull
    private static final int[] asciiDigitPositionsInIsoStringAfterYear = {1, 2, 4, 5, 7, 8, 10, 11, 13, 14};

    @NotNull
    private static final int[] colonsInIsoOffsetString = {3, 6};

    @NotNull
    private static final int[] asciiDigitsInIsoOffsetString = {1, 2, 4, 5, 7, 8};

    /* JADX INFO: Access modifiers changed from: private */
    @ExperimentalTime
    public static final String formatIso(Instant instant) {
        int[] iArr;
        StringBuilder sb = new StringBuilder();
        UnboundLocalDateTime fromInstant = UnboundLocalDateTime.INSTANCE.fromInstant(instant);
        int year = fromInstant.getYear();
        int i = 0;
        if (Math.abs(year) < MILLIS_PER_SECOND) {
            StringBuilder sb2 = new StringBuilder();
            if (year >= 0) {
                sb2.append(year + 10000);
                Intrinsics.checkNotNullExpressionValue(sb2.deleteCharAt(0), "deleteCharAt(...)");
            } else {
                sb2.append(year - 10000);
                Intrinsics.checkNotNullExpressionValue(sb2.deleteCharAt(1), "deleteCharAt(...)");
            }
            sb.append((CharSequence) sb2);
        } else {
            if (year >= 10000) {
                sb.append('+');
            }
            sb.append(year);
        }
        sb.append('-');
        formatIso$lambda$0$appendTwoDigits(sb, sb, fromInstant.getMonth());
        sb.append('-');
        formatIso$lambda$0$appendTwoDigits(sb, sb, fromInstant.getDay());
        sb.append('T');
        formatIso$lambda$0$appendTwoDigits(sb, sb, fromInstant.getHour());
        sb.append(':');
        formatIso$lambda$0$appendTwoDigits(sb, sb, fromInstant.getMinute());
        sb.append(':');
        formatIso$lambda$0$appendTwoDigits(sb, sb, fromInstant.getSecond());
        if (fromInstant.getNanosecond() != 0) {
            sb.append('.');
            while (true) {
                int nanosecond = fromInstant.getNanosecond();
                iArr = POWERS_OF_TEN;
                int i2 = i + 1;
                if (nanosecond % iArr[i2] != 0) {
                    break;
                }
                i = i2;
            }
            int i3 = i - (i % 3);
            String valueOf = String.valueOf((fromInstant.getNanosecond() / iArr[i3]) + iArr[9 - i3]);
            Intrinsics.checkNotNull(valueOf, "null cannot be cast to non-null type java.lang.String");
            String substring = valueOf.substring(1);
            Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
            sb.append(substring);
        }
        sb.append('Z');
        return sb.toString();
    }

    private static final void formatIso$lambda$0$appendTwoDigits(Appendable appendable, StringBuilder sb, int i) {
        if (i < 10) {
            appendable.append('0');
        }
        sb.append(i);
    }

    private static final boolean isDistantFuture(Instant instant) {
        Intrinsics.checkNotNullParameter(instant, "<this>");
        if (instant.compareTo(Instant.INSTANCE.getDISTANT_FUTURE()) >= 0) {
            return true;
        }
        return false;
    }

    @SinceKotlin(version = "2.1")
    @InlineOnly
    @ExperimentalTime
    public static /* synthetic */ void isDistantFuture$annotations(Instant instant) {
    }

    private static final boolean isDistantPast(Instant instant) {
        Intrinsics.checkNotNullParameter(instant, "<this>");
        if (instant.compareTo(Instant.INSTANCE.getDISTANT_PAST()) <= 0) {
            return true;
        }
        return false;
    }

    @SinceKotlin(version = "2.1")
    @InlineOnly
    @ExperimentalTime
    public static /* synthetic */ void isDistantPast$annotations(Instant instant) {
    }

    public static final boolean isLeapYear(int i) {
        if ((i & 3) == 0) {
            if (i % 100 != 0 || i % HttpStatusCodes.STATUS_CODE_BAD_REQUEST == 0) {
                return true;
            }
            return false;
        }
        return false;
    }

    private static final int monthLength(int i, boolean z) {
        return i != 2 ? (i == 4 || i == 6 || i == 9 || i == 11) ? 30 : 31 : z ? 29 : 28;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @ExperimentalTime
    public static final InstantParseResult parseIso(CharSequence charSequence) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        long j;
        char charAt;
        char charAt2;
        if (charSequence.length() == 0) {
            return new InstantParseResult.Failure("An empty string is not a valid Instant", charSequence);
        }
        char charAt3 = charSequence.charAt(0);
        if (charAt3 != '+' && charAt3 != '-') {
            i = 0;
            charAt3 = ' ';
        } else {
            i = 1;
        }
        int i8 = 0;
        int i9 = i;
        while (i9 < charSequence.length() && '0' <= (charAt2 = charSequence.charAt(i9)) && charAt2 < ':') {
            i8 = (i8 * 10) + (charSequence.charAt(i9) - '0');
            i9++;
        }
        int i10 = i9 - i;
        if (i10 > 10) {
            return parseIso$parseFailure(charSequence, android.support.v4.media.a.f(i10, "Expected at most 10 digits for the year number, got ", " digits"));
        }
        if (i10 == 10 && Intrinsics.compare((int) charSequence.charAt(i), 50) >= 0) {
            return parseIso$parseFailure(charSequence, android.support.v4.media.a.f(i10, "Expected at most 9 digits for the year number or year 1000000000, got ", " digits"));
        }
        if (i10 < 4) {
            return parseIso$parseFailure(charSequence, android.support.v4.media.a.f(i10, "The year number must be padded to 4 digits, got ", " digits"));
        }
        if (charAt3 == '+' && i10 == 4) {
            return parseIso$parseFailure(charSequence, "The '+' sign at the start is only valid for year numbers longer than 4 digits");
        }
        if (charAt3 == ' ' && i10 != 4) {
            return parseIso$parseFailure(charSequence, "A '+' or '-' sign is required for year numbers longer than 4 digits");
        }
        if (charAt3 == '-') {
            i8 = -i8;
        }
        int i11 = i8;
        int i12 = i9 + 16;
        if (charSequence.length() < i12) {
            return parseIso$parseFailure(charSequence, "The input string is too short");
        }
        final int i13 = 0;
        InstantParseResult.Failure parseIso$expect = parseIso$expect(charSequence, "'-'", i9, new Function1() { // from class: kotlin.time.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean parseIso$lambda$0;
                int i14 = i13;
                char charValue = ((Character) obj).charValue();
                switch (i14) {
                    case 0:
                        parseIso$lambda$0 = InstantKt.parseIso$lambda$0(charValue);
                        break;
                    case 1:
                        parseIso$lambda$0 = InstantKt.parseIso$lambda$2(charValue);
                        break;
                    case 2:
                        parseIso$lambda$0 = InstantKt.parseIso$lambda$4(charValue);
                        break;
                    case 3:
                        parseIso$lambda$0 = InstantKt.parseIso$lambda$6(charValue);
                        break;
                    case 4:
                        parseIso$lambda$0 = InstantKt.parseIso$lambda$8(charValue);
                        break;
                    default:
                        parseIso$lambda$0 = InstantKt.parseIso$lambda$10(charValue);
                        break;
                }
                return Boolean.valueOf(parseIso$lambda$0);
            }
        });
        if (parseIso$expect != null) {
            return parseIso$expect;
        }
        final int i14 = 1;
        InstantParseResult.Failure parseIso$expect2 = parseIso$expect(charSequence, "'-'", i9 + 3, new Function1() { // from class: kotlin.time.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean parseIso$lambda$0;
                int i142 = i14;
                char charValue = ((Character) obj).charValue();
                switch (i142) {
                    case 0:
                        parseIso$lambda$0 = InstantKt.parseIso$lambda$0(charValue);
                        break;
                    case 1:
                        parseIso$lambda$0 = InstantKt.parseIso$lambda$2(charValue);
                        break;
                    case 2:
                        parseIso$lambda$0 = InstantKt.parseIso$lambda$4(charValue);
                        break;
                    case 3:
                        parseIso$lambda$0 = InstantKt.parseIso$lambda$6(charValue);
                        break;
                    case 4:
                        parseIso$lambda$0 = InstantKt.parseIso$lambda$8(charValue);
                        break;
                    default:
                        parseIso$lambda$0 = InstantKt.parseIso$lambda$10(charValue);
                        break;
                }
                return Boolean.valueOf(parseIso$lambda$0);
            }
        });
        if (parseIso$expect2 != null) {
            return parseIso$expect2;
        }
        final int i15 = 2;
        InstantParseResult.Failure parseIso$expect3 = parseIso$expect(charSequence, "'T' or 't'", i9 + 6, new Function1() { // from class: kotlin.time.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean parseIso$lambda$0;
                int i142 = i15;
                char charValue = ((Character) obj).charValue();
                switch (i142) {
                    case 0:
                        parseIso$lambda$0 = InstantKt.parseIso$lambda$0(charValue);
                        break;
                    case 1:
                        parseIso$lambda$0 = InstantKt.parseIso$lambda$2(charValue);
                        break;
                    case 2:
                        parseIso$lambda$0 = InstantKt.parseIso$lambda$4(charValue);
                        break;
                    case 3:
                        parseIso$lambda$0 = InstantKt.parseIso$lambda$6(charValue);
                        break;
                    case 4:
                        parseIso$lambda$0 = InstantKt.parseIso$lambda$8(charValue);
                        break;
                    default:
                        parseIso$lambda$0 = InstantKt.parseIso$lambda$10(charValue);
                        break;
                }
                return Boolean.valueOf(parseIso$lambda$0);
            }
        });
        if (parseIso$expect3 != null) {
            return parseIso$expect3;
        }
        final int i16 = 3;
        InstantParseResult.Failure parseIso$expect4 = parseIso$expect(charSequence, "':'", i9 + 9, new Function1() { // from class: kotlin.time.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean parseIso$lambda$0;
                int i142 = i16;
                char charValue = ((Character) obj).charValue();
                switch (i142) {
                    case 0:
                        parseIso$lambda$0 = InstantKt.parseIso$lambda$0(charValue);
                        break;
                    case 1:
                        parseIso$lambda$0 = InstantKt.parseIso$lambda$2(charValue);
                        break;
                    case 2:
                        parseIso$lambda$0 = InstantKt.parseIso$lambda$4(charValue);
                        break;
                    case 3:
                        parseIso$lambda$0 = InstantKt.parseIso$lambda$6(charValue);
                        break;
                    case 4:
                        parseIso$lambda$0 = InstantKt.parseIso$lambda$8(charValue);
                        break;
                    default:
                        parseIso$lambda$0 = InstantKt.parseIso$lambda$10(charValue);
                        break;
                }
                return Boolean.valueOf(parseIso$lambda$0);
            }
        });
        if (parseIso$expect4 != null) {
            return parseIso$expect4;
        }
        final int i17 = 4;
        InstantParseResult.Failure parseIso$expect5 = parseIso$expect(charSequence, "':'", i9 + 12, new Function1() { // from class: kotlin.time.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean parseIso$lambda$0;
                int i142 = i17;
                char charValue = ((Character) obj).charValue();
                switch (i142) {
                    case 0:
                        parseIso$lambda$0 = InstantKt.parseIso$lambda$0(charValue);
                        break;
                    case 1:
                        parseIso$lambda$0 = InstantKt.parseIso$lambda$2(charValue);
                        break;
                    case 2:
                        parseIso$lambda$0 = InstantKt.parseIso$lambda$4(charValue);
                        break;
                    case 3:
                        parseIso$lambda$0 = InstantKt.parseIso$lambda$6(charValue);
                        break;
                    case 4:
                        parseIso$lambda$0 = InstantKt.parseIso$lambda$8(charValue);
                        break;
                    default:
                        parseIso$lambda$0 = InstantKt.parseIso$lambda$10(charValue);
                        break;
                }
                return Boolean.valueOf(parseIso$lambda$0);
            }
        });
        if (parseIso$expect5 != null) {
            return parseIso$expect5;
        }
        for (int i18 : asciiDigitPositionsInIsoStringAfterYear) {
            final int i19 = 5;
            InstantParseResult.Failure parseIso$expect6 = parseIso$expect(charSequence, "an ASCII digit", i18 + i9, new Function1() { // from class: kotlin.time.b
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    boolean parseIso$lambda$0;
                    int i142 = i19;
                    char charValue = ((Character) obj).charValue();
                    switch (i142) {
                        case 0:
                            parseIso$lambda$0 = InstantKt.parseIso$lambda$0(charValue);
                            break;
                        case 1:
                            parseIso$lambda$0 = InstantKt.parseIso$lambda$2(charValue);
                            break;
                        case 2:
                            parseIso$lambda$0 = InstantKt.parseIso$lambda$4(charValue);
                            break;
                        case 3:
                            parseIso$lambda$0 = InstantKt.parseIso$lambda$6(charValue);
                            break;
                        case 4:
                            parseIso$lambda$0 = InstantKt.parseIso$lambda$8(charValue);
                            break;
                        default:
                            parseIso$lambda$0 = InstantKt.parseIso$lambda$10(charValue);
                            break;
                    }
                    return Boolean.valueOf(parseIso$lambda$0);
                }
            });
            if (parseIso$expect6 != null) {
                return parseIso$expect6;
            }
        }
        int parseIso$twoDigitNumber = parseIso$twoDigitNumber(charSequence, i9 + 1);
        int parseIso$twoDigitNumber2 = parseIso$twoDigitNumber(charSequence, i9 + 4);
        int parseIso$twoDigitNumber3 = parseIso$twoDigitNumber(charSequence, i9 + 7);
        int parseIso$twoDigitNumber4 = parseIso$twoDigitNumber(charSequence, i9 + 10);
        int parseIso$twoDigitNumber5 = parseIso$twoDigitNumber(charSequence, i9 + 13);
        int i20 = i9 + 15;
        if (charSequence.charAt(i20) == '.') {
            i20 = i12;
            int i21 = 0;
            while (i20 < charSequence.length() && '0' <= (charAt = charSequence.charAt(i20)) && charAt < ':') {
                i21 = (i21 * 10) + (charSequence.charAt(i20) - '0');
                i20++;
            }
            int i22 = i20 - i12;
            if (1 <= i22 && i22 < 10) {
                i2 = i21 * POWERS_OF_TEN[9 - i22];
            } else {
                return parseIso$parseFailure(charSequence, android.support.v4.media.a.f(i22, "1..9 digits are supported for the fraction of the second, got ", " digits"));
            }
        } else {
            i2 = 0;
        }
        if (i20 >= charSequence.length()) {
            return parseIso$parseFailure(charSequence, "The UTC offset at the end of the string is missing");
        }
        char charAt4 = charSequence.charAt(i20);
        if (charAt4 != '+' && charAt4 != '-') {
            if (charAt4 != 'Z' && charAt4 != 'z') {
                return parseIso$parseFailure(charSequence, "Expected the UTC offset at position " + i20 + ", got '" + charAt4 + '\'');
            }
            int i23 = i20 + 1;
            if (charSequence.length() == i23) {
                i7 = 0;
                i3 = 3;
            } else {
                return parseIso$parseFailure(charSequence, android.support.v4.media.a.e(i23, "Extra text after the instant at position "));
            }
        } else {
            int length = charSequence.length() - i20;
            if (length > 9) {
                return parseIso$parseFailure(charSequence, android.support.v4.media.a.p(new StringBuilder("The UTC offset string \""), truncateForErrorMessage(charSequence.subSequence(i20, charSequence.length()).toString(), 16), "\" is too long"));
            }
            if (length % 3 != 0) {
                return parseIso$parseFailure(charSequence, "Invalid UTC offset string \"" + charSequence.subSequence(i20, charSequence.length()).toString() + Typography.quote);
            }
            for (int i24 : colonsInIsoOffsetString) {
                int i25 = i20 + i24;
                if (i25 >= charSequence.length()) {
                    break;
                }
                if (charSequence.charAt(i25) != ':') {
                    StringBuilder s = android.support.v4.media.a.s(i25, "Expected ':' at index ", ", got '");
                    s.append(charSequence.charAt(i25));
                    s.append('\'');
                    return parseIso$parseFailure(charSequence, s.toString());
                }
            }
            int[] iArr = asciiDigitsInIsoOffsetString;
            int length2 = iArr.length;
            int i26 = 0;
            while (i26 < length2) {
                int i27 = iArr[i26] + i20;
                if (i27 >= charSequence.length()) {
                    break;
                }
                char charAt5 = charSequence.charAt(i27);
                int[] iArr2 = iArr;
                if ('0' <= charAt5 && charAt5 < ':') {
                    i26++;
                    iArr = iArr2;
                } else {
                    StringBuilder s2 = android.support.v4.media.a.s(i27, "Expected an ASCII digit at index ", ", got '");
                    s2.append(charSequence.charAt(i27));
                    s2.append('\'');
                    return parseIso$parseFailure(charSequence, s2.toString());
                }
            }
            int parseIso$twoDigitNumber6 = parseIso$twoDigitNumber(charSequence, i20 + 1);
            i3 = 3;
            if (length > 3) {
                i4 = parseIso$twoDigitNumber(charSequence, i20 + 4);
            } else {
                i4 = 0;
            }
            if (length > 6) {
                i5 = parseIso$twoDigitNumber(charSequence, i20 + 7);
            } else {
                i5 = 0;
            }
            if (i4 > 59) {
                return parseIso$parseFailure(charSequence, android.support.v4.media.a.e(i4, "Expected offset-minute-of-hour in 0..59, got "));
            }
            if (i5 > 59) {
                return parseIso$parseFailure(charSequence, android.support.v4.media.a.e(i5, "Expected offset-second-of-minute in 0..59, got "));
            }
            if (parseIso$twoDigitNumber6 > 17 && (parseIso$twoDigitNumber6 != 18 || i4 != 0 || i5 != 0)) {
                return parseIso$parseFailure(charSequence, "Expected an offset in -18:00..+18:00, got " + charSequence.subSequence(i20, charSequence.length()).toString());
            }
            int i28 = (i4 * SECONDS_PER_MINUTE) + (parseIso$twoDigitNumber6 * SECONDS_PER_HOUR) + i5;
            if (charAt4 == '-') {
                i6 = -1;
            } else {
                i6 = 1;
            }
            i7 = i6 * i28;
        }
        if (1 <= parseIso$twoDigitNumber && parseIso$twoDigitNumber < 13) {
            if (1 <= parseIso$twoDigitNumber2 && parseIso$twoDigitNumber2 <= monthLength(parseIso$twoDigitNumber, isLeapYear(i11))) {
                if (parseIso$twoDigitNumber3 > 23) {
                    return parseIso$parseFailure(charSequence, android.support.v4.media.a.e(parseIso$twoDigitNumber3, "Expected hour in 0..23, got "));
                }
                if (parseIso$twoDigitNumber4 > 59) {
                    return parseIso$parseFailure(charSequence, android.support.v4.media.a.e(parseIso$twoDigitNumber4, "Expected minute-of-hour in 0..59, got "));
                }
                if (parseIso$twoDigitNumber5 > 59) {
                    return parseIso$parseFailure(charSequence, android.support.v4.media.a.e(parseIso$twoDigitNumber5, "Expected second-of-minute in 0..59, got "));
                }
                UnboundLocalDateTime unboundLocalDateTime = new UnboundLocalDateTime(i11, parseIso$twoDigitNumber, parseIso$twoDigitNumber2, parseIso$twoDigitNumber3, parseIso$twoDigitNumber4, parseIso$twoDigitNumber5, i2);
                long year = unboundLocalDateTime.getYear();
                long j2 = 365 * year;
                if (year >= 0) {
                    j = ((year + 399) / HttpStatusCodes.STATUS_CODE_BAD_REQUEST) + (((i3 + year) / 4) - ((99 + year) / 100)) + j2;
                } else {
                    j = j2 - ((year / (-400)) + ((year / (-4)) - (year / (-100))));
                }
                long month = j + (((unboundLocalDateTime.getMonth() * 367) - 362) / 12) + (unboundLocalDateTime.getDay() - 1);
                if (unboundLocalDateTime.getMonth() > 2) {
                    month = !isLeapYear(unboundLocalDateTime.getYear()) ? month - 2 : (-1) + month;
                }
                return new InstantParseResult.Success((((month - DAYS_0000_TO_1970) * SECONDS_PER_DAY) + (((unboundLocalDateTime.getMinute() * SECONDS_PER_MINUTE) + (unboundLocalDateTime.getHour() * SECONDS_PER_HOUR)) + unboundLocalDateTime.getSecond())) - i7, unboundLocalDateTime.getNanosecond());
            }
            StringBuilder u = android.support.v4.media.a.u("Expected a valid day-of-month for month ", parseIso$twoDigitNumber, i11, " of year ", ", got ");
            u.append(parseIso$twoDigitNumber2);
            return parseIso$parseFailure(charSequence, u.toString());
        }
        return parseIso$parseFailure(charSequence, android.support.v4.media.a.e(parseIso$twoDigitNumber, "Expected a month number in 1..12, got "));
    }

    private static final InstantParseResult.Failure parseIso$expect(CharSequence charSequence, String str, int i, Function1<? super Character, Boolean> function1) {
        char charAt = charSequence.charAt(i);
        if (function1.invoke(Character.valueOf(charAt)).booleanValue()) {
            return null;
        }
        return parseIso$parseFailure(charSequence, "Expected " + str + ", but got '" + charAt + "' at position " + i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean parseIso$lambda$0(char c2) {
        return c2 == '-';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean parseIso$lambda$10(char c2) {
        return '0' <= c2 && c2 < ':';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean parseIso$lambda$2(char c2) {
        return c2 == '-';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean parseIso$lambda$4(char c2) {
        return c2 == 'T' || c2 == 't';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean parseIso$lambda$6(char c2) {
        return c2 == ':';
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean parseIso$lambda$8(char c2) {
        return c2 == ':';
    }

    private static final InstantParseResult.Failure parseIso$parseFailure(CharSequence charSequence, String str) {
        StringBuilder v = android.support.v4.media.a.v(str, " when parsing an Instant from \"");
        v.append(truncateForErrorMessage(charSequence, 64));
        v.append(Typography.quote);
        return new InstantParseResult.Failure(v.toString(), charSequence);
    }

    private static final int parseIso$twoDigitNumber(CharSequence charSequence, int i) {
        return (charSequence.charAt(i + 1) - '0') + ((charSequence.charAt(i) - '0') * 10);
    }

    private static final long safeAddOrElse(long j, long j2, Function0 function0) {
        long j3 = j + j2;
        if ((j ^ j3) < 0 && (j ^ j2) >= 0) {
            function0.invoke();
            throw new KotlinNothingValueException();
        }
        return j3;
    }

    private static final long safeMultiplyOrElse(long j, long j2, Function0 function0) {
        if (j2 == 1) {
            return j;
        }
        if (j == 1) {
            return j2;
        }
        if (j == 0 || j2 == 0) {
            return 0L;
        }
        long j3 = j * j2;
        if (j3 / j2 == j && ((j != Long.MIN_VALUE || j2 != -1) && (j2 != Long.MIN_VALUE || j != -1))) {
            return j3;
        }
        function0.invoke();
        throw new KotlinNothingValueException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String truncateForErrorMessage(CharSequence charSequence, int i) {
        if (charSequence.length() <= i) {
            return charSequence.toString();
        }
        return charSequence.subSequence(0, i).toString() + "...";
    }
}
