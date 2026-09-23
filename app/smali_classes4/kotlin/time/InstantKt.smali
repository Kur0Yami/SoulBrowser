.class public final Lkotlin/time/InstantKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\u0008\u000c\n\u0002\u0010\u0015\n\u0002\u0008\u0006\u001a\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0003\u001a\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002H\u0003\u001a\'\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\t2\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001bH\u0082\u0008\u001a\'\u0010\u001d\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\t2\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001bH\u0082\u0008\u001a\u0010\u0010%\u001a\u00020\u00012\u0006\u0010&\u001a\u00020\u0015H\u0000\u001a\u0014\u0010\'\u001a\u00020\u0015*\u00020\u00152\u0006\u0010%\u001a\u00020\u0001H\u0002\u001a\u0014\u0010-\u001a\u00020\u0012*\u00020\u00102\u0006\u0010.\u001a\u00020\u0015H\u0002\"\u001f\u0010\u0000\u001a\u00020\u0001*\u00020\u00028\u00c6\u0002X\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0000\u0010\u0005\"\u001f\u0010\u0006\u001a\u00020\u0001*\u00020\u00028\u00c6\u0002X\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0007\u0010\u0004\u001a\u0004\u0008\u0006\u0010\u0005\"\u000e\u0010\u0008\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000c\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0014\u001a\u00020\u0015X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0016\u001a\u00020\u0015X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u001e\u001a\u00020\u0015X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u001f\u001a\u00020\u0015X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010 \u001a\u00020\u0015X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010!\u001a\u00020\u0015X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\"\u001a\u00020\u0015X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010#\u001a\u00020\u0015X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010$\u001a\u00020\u0015X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010(\u001a\u00020)X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010*\u001a\u00020)X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010+\u001a\u00020)X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010,\u001a\u00020)X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006/"
    }
    d2 = {
        "isDistantPast",
        "",
        "Lkotlin/time/Instant;",
        "isDistantPast$annotations",
        "(Lkotlin/time/Instant;)V",
        "(Lkotlin/time/Instant;)Z",
        "isDistantFuture",
        "isDistantFuture$annotations",
        "DISTANT_PAST_SECONDS",
        "",
        "DISTANT_FUTURE_SECONDS",
        "MIN_SECOND",
        "MAX_SECOND",
        "parseIso",
        "Lkotlin/time/InstantParseResult;",
        "isoString",
        "",
        "formatIso",
        "",
        "instant",
        "DAYS_PER_CYCLE",
        "",
        "DAYS_0000_TO_1970",
        "safeAddOrElse",
        "a",
        "b",
        "action",
        "Lkotlin/Function0;",
        "",
        "safeMultiplyOrElse",
        "SECONDS_PER_HOUR",
        "SECONDS_PER_MINUTE",
        "HOURS_PER_DAY",
        "SECONDS_PER_DAY",
        "NANOS_PER_SECOND",
        "NANOS_PER_MILLI",
        "MILLIS_PER_SECOND",
        "isLeapYear",
        "year",
        "monthLength",
        "POWERS_OF_TEN",
        "",
        "asciiDigitPositionsInIsoStringAfterYear",
        "colonsInIsoOffsetString",
        "asciiDigitsInIsoOffsetString",
        "truncateForErrorMessage",
        "maxLength",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nInstant.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Instant.kt\nkotlin/time/InstantKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Instant.kt\nkotlin/time/UnboundLocalDateTime\n*L\n1#1,864:1\n1#2:865\n479#3,28:866\n*S KotlinDebug\n*F\n+ 1 Instant.kt\nkotlin/time/InstantKt\n*L\n689#1:866,28\n*E\n"
    }
.end annotation


# static fields
.field private static final DAYS_0000_TO_1970:I = 0xafaa8

.field private static final DAYS_PER_CYCLE:I = 0x23ab1

.field private static final DISTANT_FUTURE_SECONDS:J = 0x2d044a2eb00L

.field private static final DISTANT_PAST_SECONDS:J = -0x2ed378be301L

.field private static final HOURS_PER_DAY:I = 0x18

.field private static final MAX_SECOND:J = 0x701cd2fa9578ffL

.field private static final MILLIS_PER_SECOND:I = 0x3e8

.field private static final MIN_SECOND:J = -0x701cefeb9bec00L

.field private static final NANOS_PER_MILLI:I = 0xf4240

.field public static final NANOS_PER_SECOND:I = 0x3b9aca00

.field private static final POWERS_OF_TEN:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static final asciiDigitPositionsInIsoStringAfterYear:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final asciiDigitsInIsoOffsetString:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final colonsInIsoOffsetString:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v1, Lkotlin/time/InstantKt;->POWERS_OF_TEN:[I

    .line 9
    .line 10
    new-array v0, v0, [I

    .line 11
    .line 12
    fill-array-data v0, :array_1

    .line 13
    .line 14
    .line 15
    sput-object v0, Lkotlin/time/InstantKt;->asciiDigitPositionsInIsoStringAfterYear:[I

    .line 16
    .line 17
    const/4 v0, 0x3

    .line 18
    const/4 v1, 0x6

    .line 19
    filled-new-array {v0, v1}, [I

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lkotlin/time/InstantKt;->colonsInIsoOffsetString:[I

    .line 24
    .line 25
    new-array v0, v1, [I

    .line 26
    .line 27
    fill-array-data v0, :array_2

    .line 28
    .line 29
    .line 30
    sput-object v0, Lkotlin/time/InstantKt;->asciiDigitsInIsoOffsetString:[I

    .line 31
    .line 32
    return-void

    .line 33
    :array_0
    .array-data 4
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
    .end array-data

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    :array_1
    .array-data 4
        0x1
        0x2
        0x4
        0x5
        0x7
        0x8
        0xa
        0xb
        0xd
        0xe
    .end array-data

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    :array_2
    .array-data 4
        0x1
        0x2
        0x4
        0x5
        0x7
        0x8
    .end array-data
.end method

.method public static synthetic a(C)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lkotlin/time/InstantKt;->parseIso$lambda$6(C)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$formatIso(Lkotlin/time/Instant;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lkotlin/time/InstantKt;->formatIso(Lkotlin/time/Instant;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$parseIso(Ljava/lang/CharSequence;)Lkotlin/time/InstantParseResult;
    .locals 0

    .line 1
    invoke-static {p0}, Lkotlin/time/InstantKt;->parseIso(Ljava/lang/CharSequence;)Lkotlin/time/InstantParseResult;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$truncateForErrorMessage(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/InstantKt;->truncateForErrorMessage(Ljava/lang/CharSequence;I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(C)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lkotlin/time/InstantKt;->parseIso$lambda$0(C)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(C)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lkotlin/time/InstantKt;->parseIso$lambda$4(C)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(C)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lkotlin/time/InstantKt;->parseIso$lambda$10(C)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(C)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lkotlin/time/InstantKt;->parseIso$lambda$2(C)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(C)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lkotlin/time/InstantKt;->parseIso$lambda$8(C)Z

    move-result p0

    return p0
.end method

.method private static final formatIso(Lkotlin/time/Instant;)Ljava/lang/String;
    .locals 7
    .annotation build Lkotlin/time/ExperimentalTime;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lkotlin/time/UnboundLocalDateTime;->Companion:Lkotlin/time/UnboundLocalDateTime$Companion;

    .line 7
    .line 8
    invoke-virtual {v1, p0}, Lkotlin/time/UnboundLocalDateTime$Companion;->fromInstant(Lkotlin/time/Instant;)Lkotlin/time/UnboundLocalDateTime;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Lkotlin/time/UnboundLocalDateTime;->getYear()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/16 v3, 0x3e8

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x1

    .line 24
    const/16 v6, 0x2710

    .line 25
    .line 26
    if-ge v2, v3, :cond_1

    .line 27
    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v3, "deleteCharAt(...)"

    .line 34
    .line 35
    if-ltz v1, :cond_0

    .line 36
    .line 37
    add-int/2addr v1, v6

    .line 38
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    sub-int/2addr v1, v6

    .line 50
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    if-lt v1, v6, :cond_2

    .line 65
    .line 66
    const/16 v2, 0x2b

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    :goto_1
    const/16 v1, 0x2d

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lkotlin/time/UnboundLocalDateTime;->getMonth()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    invoke-static {v0, v0, v2}, Lkotlin/time/InstantKt;->formatIso$lambda$0$appendTwoDigits(Ljava/lang/Appendable;Ljava/lang/StringBuilder;I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lkotlin/time/UnboundLocalDateTime;->getDay()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    invoke-static {v0, v0, v1}, Lkotlin/time/InstantKt;->formatIso$lambda$0$appendTwoDigits(Ljava/lang/Appendable;Ljava/lang/StringBuilder;I)V

    .line 94
    .line 95
    .line 96
    const/16 v1, 0x54

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lkotlin/time/UnboundLocalDateTime;->getHour()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    invoke-static {v0, v0, v1}, Lkotlin/time/InstantKt;->formatIso$lambda$0$appendTwoDigits(Ljava/lang/Appendable;Ljava/lang/StringBuilder;I)V

    .line 106
    .line 107
    .line 108
    const/16 v1, 0x3a

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lkotlin/time/UnboundLocalDateTime;->getMinute()I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    invoke-static {v0, v0, v2}, Lkotlin/time/InstantKt;->formatIso$lambda$0$appendTwoDigits(Ljava/lang/Appendable;Ljava/lang/StringBuilder;I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Lkotlin/time/UnboundLocalDateTime;->getSecond()I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    invoke-static {v0, v0, v1}, Lkotlin/time/InstantKt;->formatIso$lambda$0$appendTwoDigits(Ljava/lang/Appendable;Ljava/lang/StringBuilder;I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Lkotlin/time/UnboundLocalDateTime;->getNanosecond()I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_4

    .line 135
    .line 136
    const/16 v1, 0x2e

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    :goto_2
    invoke-virtual {p0}, Lkotlin/time/UnboundLocalDateTime;->getNanosecond()I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    sget-object v2, Lkotlin/time/InstantKt;->POWERS_OF_TEN:[I

    .line 146
    .line 147
    add-int/lit8 v3, v4, 0x1

    .line 148
    .line 149
    aget v6, v2, v3

    .line 150
    .line 151
    rem-int/2addr v1, v6

    .line 152
    if-nez v1, :cond_3

    .line 153
    .line 154
    move v4, v3

    .line 155
    goto :goto_2

    .line 156
    :cond_3
    rem-int/lit8 v1, v4, 0x3

    .line 157
    .line 158
    sub-int/2addr v4, v1

    .line 159
    invoke-virtual {p0}, Lkotlin/time/UnboundLocalDateTime;->getNanosecond()I

    .line 160
    .line 161
    .line 162
    move-result p0

    .line 163
    aget v1, v2, v4

    .line 164
    .line 165
    div-int/2addr p0, v1

    .line 166
    rsub-int/lit8 v1, v4, 0x9

    .line 167
    .line 168
    aget v1, v2, v1

    .line 169
    .line 170
    add-int/2addr p0, v1

    .line 171
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    const-string v1, "null cannot be cast to non-null type java.lang.String"

    .line 176
    .line 177
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    const-string v1, "substring(...)"

    .line 185
    .line 186
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    :cond_4
    const/16 p0, 0x5a

    .line 193
    .line 194
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    return-object p0
.end method

.method private static final formatIso$lambda$0$appendTwoDigits(Ljava/lang/Appendable;Ljava/lang/StringBuilder;I)V
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    if-ge p2, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x30

    .line 6
    .line 7
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private static final isDistantFuture(Lkotlin/time/Instant;)Z
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lkotlin/time/Instant;->Companion:Lkotlin/time/Instant$Companion;

    .line 7
    .line 8
    invoke-virtual {v0}, Lkotlin/time/Instant$Companion;->getDISTANT_FUTURE()Lkotlin/time/Instant;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0, v0}, Lkotlin/time/Instant;->compareTo(Lkotlin/time/Instant;)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-ltz p0, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method public static synthetic isDistantFuture$annotations(Lkotlin/time/Instant;)V
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "2.1"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .annotation build Lkotlin/time/ExperimentalTime;
    .end annotation

    return-void
.end method

.method private static final isDistantPast(Lkotlin/time/Instant;)Z
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lkotlin/time/Instant;->Companion:Lkotlin/time/Instant$Companion;

    .line 7
    .line 8
    invoke-virtual {v0}, Lkotlin/time/Instant$Companion;->getDISTANT_PAST()Lkotlin/time/Instant;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0, v0}, Lkotlin/time/Instant;->compareTo(Lkotlin/time/Instant;)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-gtz p0, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method public static synthetic isDistantPast$annotations(Lkotlin/time/Instant;)V
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "2.1"
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .annotation build Lkotlin/time/ExperimentalTime;
    .end annotation

    return-void
.end method

.method public static final isLeapYear(I)Z
    .locals 1

    .line 1
    and-int/lit8 v0, p0, 0x3

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    rem-int/lit8 v0, p0, 0x64

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    rem-int/lit16 p0, p0, 0x190

    .line 10
    .line 11
    if-nez p0, :cond_1

    .line 12
    .line 13
    :cond_0
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_1
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method private static final monthLength(IZ)I
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    const/4 p1, 0x6

    if-eq p0, p1, :cond_0

    const/16 p1, 0x9

    if-eq p0, p1, :cond_0

    const/16 p1, 0xb

    if-eq p0, p1, :cond_0

    const/16 p0, 0x1f

    return p0

    :cond_0
    const/16 p0, 0x1e

    return p0

    :cond_1
    if-eqz p1, :cond_2

    const/16 p0, 0x1d

    return p0

    :cond_2
    const/16 p0, 0x1c

    return p0
.end method

.method private static final parseIso(Ljava/lang/CharSequence;)Lkotlin/time/InstantParseResult;
    .locals 25
    .annotation build Lkotlin/time/ExperimentalTime;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Lkotlin/time/InstantParseResult$Failure;

    .line 10
    .line 11
    const-string v2, "An empty string is not a valid Instant"

    .line 12
    .line 13
    invoke-direct {v1, v2, v0}, Lkotlin/time/InstantParseResult$Failure;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    return-object v1

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/16 v3, 0x20

    .line 23
    .line 24
    const/16 v4, 0x2b

    .line 25
    .line 26
    const/16 v5, 0x2d

    .line 27
    .line 28
    const/4 v6, 0x1

    .line 29
    if-eq v2, v4, :cond_1

    .line 30
    .line 31
    if-eq v2, v5, :cond_1

    .line 32
    .line 33
    move v7, v1

    .line 34
    move v2, v3

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move v7, v6

    .line 37
    :goto_0
    move v9, v1

    .line 38
    move v8, v7

    .line 39
    :goto_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 40
    .line 41
    .line 42
    move-result v10

    .line 43
    const/16 v11, 0x3a

    .line 44
    .line 45
    const/16 v12, 0x30

    .line 46
    .line 47
    if-ge v8, v10, :cond_2

    .line 48
    .line 49
    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    .line 50
    .line 51
    .line 52
    move-result v10

    .line 53
    if-gt v12, v10, :cond_2

    .line 54
    .line 55
    if-ge v10, v11, :cond_2

    .line 56
    .line 57
    mul-int/lit8 v9, v9, 0xa

    .line 58
    .line 59
    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    sub-int/2addr v10, v12

    .line 64
    add-int/2addr v9, v10

    .line 65
    add-int/lit8 v8, v8, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    sub-int v10, v8, v7

    .line 69
    .line 70
    const-string v13, " digits"

    .line 71
    .line 72
    const/16 v14, 0xa

    .line 73
    .line 74
    if-le v10, v14, :cond_3

    .line 75
    .line 76
    const-string v1, "Expected at most 10 digits for the year number, got "

    .line 77
    .line 78
    invoke-static {v10, v1, v13}, Landroid/support/v4/media/a;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/InstantParseResult$Failure;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    return-object v0

    .line 87
    :cond_3
    if-ne v10, v14, :cond_4

    .line 88
    .line 89
    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    const/16 v15, 0x32

    .line 94
    .line 95
    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    if-ltz v7, :cond_4

    .line 100
    .line 101
    const-string v1, "Expected at most 9 digits for the year number or year 1000000000, got "

    .line 102
    .line 103
    invoke-static {v10, v1, v13}, Landroid/support/v4/media/a;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/InstantParseResult$Failure;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    return-object v0

    .line 112
    :cond_4
    const/4 v7, 0x4

    .line 113
    if-ge v10, v7, :cond_5

    .line 114
    .line 115
    const-string v1, "The year number must be padded to 4 digits, got "

    .line 116
    .line 117
    invoke-static {v10, v1, v13}, Landroid/support/v4/media/a;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/InstantParseResult$Failure;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    return-object v0

    .line 126
    :cond_5
    if-ne v2, v4, :cond_6

    .line 127
    .line 128
    if-ne v10, v7, :cond_6

    .line 129
    .line 130
    const-string v1, "The \'+\' sign at the start is only valid for year numbers longer than 4 digits"

    .line 131
    .line 132
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/InstantParseResult$Failure;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    return-object v0

    .line 137
    :cond_6
    if-ne v2, v3, :cond_7

    .line 138
    .line 139
    if-eq v10, v7, :cond_7

    .line 140
    .line 141
    const-string v1, "A \'+\' or \'-\' sign is required for year numbers longer than 4 digits"

    .line 142
    .line 143
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/InstantParseResult$Failure;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    return-object v0

    .line 148
    :cond_7
    if-ne v2, v5, :cond_8

    .line 149
    .line 150
    neg-int v9, v9

    .line 151
    :cond_8
    move/from16 v16, v9

    .line 152
    .line 153
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    add-int/lit8 v3, v8, 0x10

    .line 158
    .line 159
    if-ge v2, v3, :cond_9

    .line 160
    .line 161
    const-string v1, "The input string is too short"

    .line 162
    .line 163
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/InstantParseResult$Failure;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    return-object v0

    .line 168
    :cond_9
    new-instance v2, Lkotlin/time/b;

    .line 169
    .line 170
    const/4 v9, 0x0

    .line 171
    invoke-direct {v2, v9}, Lkotlin/time/b;-><init>(I)V

    .line 172
    .line 173
    .line 174
    const-string v9, "\'-\'"

    .line 175
    .line 176
    invoke-static {v0, v9, v8, v2}, Lkotlin/time/InstantKt;->parseIso$expect(Ljava/lang/CharSequence;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Lkotlin/time/InstantParseResult$Failure;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    if-eqz v2, :cond_a

    .line 181
    .line 182
    return-object v2

    .line 183
    :cond_a
    add-int/lit8 v2, v8, 0x3

    .line 184
    .line 185
    new-instance v10, Lkotlin/time/b;

    .line 186
    .line 187
    const/4 v15, 0x1

    .line 188
    invoke-direct {v10, v15}, Lkotlin/time/b;-><init>(I)V

    .line 189
    .line 190
    .line 191
    invoke-static {v0, v9, v2, v10}, Lkotlin/time/InstantKt;->parseIso$expect(Ljava/lang/CharSequence;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Lkotlin/time/InstantParseResult$Failure;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    if-eqz v2, :cond_b

    .line 196
    .line 197
    return-object v2

    .line 198
    :cond_b
    add-int/lit8 v2, v8, 0x6

    .line 199
    .line 200
    new-instance v9, Lkotlin/time/b;

    .line 201
    .line 202
    const/4 v10, 0x2

    .line 203
    invoke-direct {v9, v10}, Lkotlin/time/b;-><init>(I)V

    .line 204
    .line 205
    .line 206
    const-string v10, "\'T\' or \'t\'"

    .line 207
    .line 208
    invoke-static {v0, v10, v2, v9}, Lkotlin/time/InstantKt;->parseIso$expect(Ljava/lang/CharSequence;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Lkotlin/time/InstantParseResult$Failure;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    if-eqz v2, :cond_c

    .line 213
    .line 214
    return-object v2

    .line 215
    :cond_c
    add-int/lit8 v2, v8, 0x9

    .line 216
    .line 217
    new-instance v9, Lkotlin/time/b;

    .line 218
    .line 219
    const/4 v10, 0x3

    .line 220
    invoke-direct {v9, v10}, Lkotlin/time/b;-><init>(I)V

    .line 221
    .line 222
    .line 223
    const-string v10, "\':\'"

    .line 224
    .line 225
    invoke-static {v0, v10, v2, v9}, Lkotlin/time/InstantKt;->parseIso$expect(Ljava/lang/CharSequence;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Lkotlin/time/InstantParseResult$Failure;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    if-eqz v2, :cond_d

    .line 230
    .line 231
    return-object v2

    .line 232
    :cond_d
    add-int/lit8 v2, v8, 0xc

    .line 233
    .line 234
    new-instance v9, Lkotlin/time/b;

    .line 235
    .line 236
    const/4 v15, 0x4

    .line 237
    invoke-direct {v9, v15}, Lkotlin/time/b;-><init>(I)V

    .line 238
    .line 239
    .line 240
    invoke-static {v0, v10, v2, v9}, Lkotlin/time/InstantKt;->parseIso$expect(Ljava/lang/CharSequence;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Lkotlin/time/InstantParseResult$Failure;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    if-eqz v2, :cond_e

    .line 245
    .line 246
    return-object v2

    .line 247
    :cond_e
    sget-object v2, Lkotlin/time/InstantKt;->asciiDigitPositionsInIsoStringAfterYear:[I

    .line 248
    .line 249
    array-length v9, v2

    .line 250
    move v10, v1

    .line 251
    :goto_2
    if-ge v10, v9, :cond_10

    .line 252
    .line 253
    aget v15, v2, v10

    .line 254
    .line 255
    add-int/2addr v15, v8

    .line 256
    new-instance v1, Lkotlin/time/b;

    .line 257
    .line 258
    const/4 v7, 0x5

    .line 259
    invoke-direct {v1, v7}, Lkotlin/time/b;-><init>(I)V

    .line 260
    .line 261
    .line 262
    const-string v7, "an ASCII digit"

    .line 263
    .line 264
    invoke-static {v0, v7, v15, v1}, Lkotlin/time/InstantKt;->parseIso$expect(Ljava/lang/CharSequence;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Lkotlin/time/InstantParseResult$Failure;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    if-eqz v1, :cond_f

    .line 269
    .line 270
    return-object v1

    .line 271
    :cond_f
    add-int/lit8 v10, v10, 0x1

    .line 272
    .line 273
    const/4 v1, 0x0

    .line 274
    const/4 v7, 0x4

    .line 275
    goto :goto_2

    .line 276
    :cond_10
    add-int/lit8 v1, v8, 0x1

    .line 277
    .line 278
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$twoDigitNumber(Ljava/lang/CharSequence;I)I

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    add-int/lit8 v2, v8, 0x4

    .line 283
    .line 284
    invoke-static {v0, v2}, Lkotlin/time/InstantKt;->parseIso$twoDigitNumber(Ljava/lang/CharSequence;I)I

    .line 285
    .line 286
    .line 287
    move-result v2

    .line 288
    add-int/lit8 v7, v8, 0x7

    .line 289
    .line 290
    invoke-static {v0, v7}, Lkotlin/time/InstantKt;->parseIso$twoDigitNumber(Ljava/lang/CharSequence;I)I

    .line 291
    .line 292
    .line 293
    move-result v7

    .line 294
    add-int/lit8 v9, v8, 0xa

    .line 295
    .line 296
    invoke-static {v0, v9}, Lkotlin/time/InstantKt;->parseIso$twoDigitNumber(Ljava/lang/CharSequence;I)I

    .line 297
    .line 298
    .line 299
    move-result v9

    .line 300
    add-int/lit8 v10, v8, 0xd

    .line 301
    .line 302
    invoke-static {v0, v10}, Lkotlin/time/InstantKt;->parseIso$twoDigitNumber(Ljava/lang/CharSequence;I)I

    .line 303
    .line 304
    .line 305
    move-result v10

    .line 306
    add-int/lit8 v8, v8, 0xf

    .line 307
    .line 308
    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    .line 309
    .line 310
    .line 311
    move-result v15

    .line 312
    const/16 v5, 0x2e

    .line 313
    .line 314
    const/16 v4, 0x9

    .line 315
    .line 316
    if-ne v15, v5, :cond_13

    .line 317
    .line 318
    move v8, v3

    .line 319
    const/4 v5, 0x0

    .line 320
    :goto_3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 321
    .line 322
    .line 323
    move-result v15

    .line 324
    if-ge v8, v15, :cond_11

    .line 325
    .line 326
    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    .line 327
    .line 328
    .line 329
    move-result v15

    .line 330
    if-gt v12, v15, :cond_11

    .line 331
    .line 332
    if-ge v15, v11, :cond_11

    .line 333
    .line 334
    mul-int/lit8 v5, v5, 0xa

    .line 335
    .line 336
    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    .line 337
    .line 338
    .line 339
    move-result v15

    .line 340
    sub-int/2addr v15, v12

    .line 341
    add-int/2addr v5, v15

    .line 342
    add-int/lit8 v8, v8, 0x1

    .line 343
    .line 344
    goto :goto_3

    .line 345
    :cond_11
    sub-int v3, v8, v3

    .line 346
    .line 347
    if-gt v6, v3, :cond_12

    .line 348
    .line 349
    if-ge v3, v14, :cond_12

    .line 350
    .line 351
    sget-object v13, Lkotlin/time/InstantKt;->POWERS_OF_TEN:[I

    .line 352
    .line 353
    rsub-int/lit8 v3, v3, 0x9

    .line 354
    .line 355
    aget v3, v13, v3

    .line 356
    .line 357
    mul-int/2addr v5, v3

    .line 358
    move/from16 v22, v5

    .line 359
    .line 360
    goto :goto_4

    .line 361
    :cond_12
    const-string v1, "1..9 digits are supported for the fraction of the second, got "

    .line 362
    .line 363
    invoke-static {v3, v1, v13}, Landroid/support/v4/media/a;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/InstantParseResult$Failure;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    return-object v0

    .line 372
    :cond_13
    const/16 v22, 0x0

    .line 373
    .line 374
    :goto_4
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 375
    .line 376
    .line 377
    move-result v3

    .line 378
    if-lt v8, v3, :cond_14

    .line 379
    .line 380
    const-string v1, "The UTC offset at the end of the string is missing"

    .line 381
    .line 382
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/InstantParseResult$Failure;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    return-object v0

    .line 387
    :cond_14
    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    .line 388
    .line 389
    .line 390
    move-result v3

    .line 391
    const/16 v5, 0x27

    .line 392
    .line 393
    const-string v13, ", got \'"

    .line 394
    .line 395
    move/from16 v23, v6

    .line 396
    .line 397
    const/16 v6, 0x2b

    .line 398
    .line 399
    if-eq v3, v6, :cond_17

    .line 400
    .line 401
    const/16 v6, 0x2d

    .line 402
    .line 403
    if-eq v3, v6, :cond_17

    .line 404
    .line 405
    const/16 v4, 0x5a

    .line 406
    .line 407
    if-eq v3, v4, :cond_15

    .line 408
    .line 409
    const/16 v4, 0x7a

    .line 410
    .line 411
    if-eq v3, v4, :cond_15

    .line 412
    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    .line 414
    .line 415
    const-string v2, "Expected the UTC offset at position "

    .line 416
    .line 417
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/InstantParseResult$Failure;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    return-object v0

    .line 441
    :cond_15
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 442
    .line 443
    .line 444
    move-result v3

    .line 445
    add-int/lit8 v8, v8, 0x1

    .line 446
    .line 447
    if-ne v3, v8, :cond_16

    .line 448
    .line 449
    const/4 v3, 0x0

    .line 450
    const/4 v5, 0x3

    .line 451
    :goto_5
    move/from16 v4, v23

    .line 452
    .line 453
    goto/16 :goto_e

    .line 454
    .line 455
    :cond_16
    const-string v1, "Extra text after the instant at position "

    .line 456
    .line 457
    invoke-static {v8, v1}, Landroid/support/v4/media/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v1

    .line 461
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/InstantParseResult$Failure;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    return-object v0

    .line 466
    :cond_17
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 467
    .line 468
    .line 469
    move-result v6

    .line 470
    sub-int/2addr v6, v8

    .line 471
    if-le v6, v4, :cond_18

    .line 472
    .line 473
    new-instance v1, Ljava/lang/StringBuilder;

    .line 474
    .line 475
    const-string v2, "The UTC offset string \""

    .line 476
    .line 477
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 481
    .line 482
    .line 483
    move-result v2

    .line 484
    invoke-interface {v0, v8, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 485
    .line 486
    .line 487
    move-result-object v2

    .line 488
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v2

    .line 492
    const/16 v3, 0x10

    .line 493
    .line 494
    invoke-static {v2, v3}, Lkotlin/time/InstantKt;->truncateForErrorMessage(Ljava/lang/CharSequence;I)Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v2

    .line 498
    const-string v3, "\" is too long"

    .line 499
    .line 500
    invoke-static {v1, v2, v3}, Landroid/support/v4/media/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v1

    .line 504
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/InstantParseResult$Failure;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    return-object v0

    .line 509
    :cond_18
    rem-int/lit8 v4, v6, 0x3

    .line 510
    .line 511
    if-eqz v4, :cond_19

    .line 512
    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    .line 514
    .line 515
    const-string v2, "Invalid UTC offset string \""

    .line 516
    .line 517
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 521
    .line 522
    .line 523
    move-result v2

    .line 524
    invoke-interface {v0, v8, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 525
    .line 526
    .line 527
    move-result-object v2

    .line 528
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v2

    .line 532
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    const/16 v2, 0x22

    .line 536
    .line 537
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v1

    .line 544
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/InstantParseResult$Failure;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    return-object v0

    .line 549
    :cond_19
    sget-object v4, Lkotlin/time/InstantKt;->colonsInIsoOffsetString:[I

    .line 550
    .line 551
    array-length v14, v4

    .line 552
    const/4 v15, 0x0

    .line 553
    :goto_6
    if-ge v15, v14, :cond_1c

    .line 554
    .line 555
    aget v21, v4, v15

    .line 556
    .line 557
    add-int v12, v8, v21

    .line 558
    .line 559
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 560
    .line 561
    .line 562
    move-result v5

    .line 563
    if-lt v12, v5, :cond_1a

    .line 564
    .line 565
    goto :goto_7

    .line 566
    :cond_1a
    invoke-interface {v0, v12}, Ljava/lang/CharSequence;->charAt(I)C

    .line 567
    .line 568
    .line 569
    move-result v5

    .line 570
    if-eq v5, v11, :cond_1b

    .line 571
    .line 572
    const-string v1, "Expected \':\' at index "

    .line 573
    .line 574
    invoke-static {v12, v1, v13}, Landroid/support/v4/media/a;->s(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    move-result-object v1

    .line 578
    invoke-interface {v0, v12}, Ljava/lang/CharSequence;->charAt(I)C

    .line 579
    .line 580
    .line 581
    move-result v2

    .line 582
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    const/16 v2, 0x27

    .line 586
    .line 587
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v1

    .line 594
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/InstantParseResult$Failure;

    .line 595
    .line 596
    .line 597
    move-result-object v0

    .line 598
    return-object v0

    .line 599
    :cond_1b
    add-int/lit8 v15, v15, 0x1

    .line 600
    .line 601
    const/16 v5, 0x27

    .line 602
    .line 603
    const/16 v12, 0x30

    .line 604
    .line 605
    goto :goto_6

    .line 606
    :cond_1c
    :goto_7
    sget-object v4, Lkotlin/time/InstantKt;->asciiDigitsInIsoOffsetString:[I

    .line 607
    .line 608
    array-length v5, v4

    .line 609
    const/4 v12, 0x0

    .line 610
    :goto_8
    if-ge v12, v5, :cond_1f

    .line 611
    .line 612
    aget v14, v4, v12

    .line 613
    .line 614
    add-int/2addr v14, v8

    .line 615
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 616
    .line 617
    .line 618
    move-result v15

    .line 619
    if-lt v14, v15, :cond_1d

    .line 620
    .line 621
    goto :goto_9

    .line 622
    :cond_1d
    invoke-interface {v0, v14}, Ljava/lang/CharSequence;->charAt(I)C

    .line 623
    .line 624
    .line 625
    move-result v15

    .line 626
    move-object/from16 v24, v4

    .line 627
    .line 628
    const/16 v4, 0x30

    .line 629
    .line 630
    if-gt v4, v15, :cond_1e

    .line 631
    .line 632
    if-ge v15, v11, :cond_1e

    .line 633
    .line 634
    add-int/lit8 v12, v12, 0x1

    .line 635
    .line 636
    move-object/from16 v4, v24

    .line 637
    .line 638
    goto :goto_8

    .line 639
    :cond_1e
    const-string v1, "Expected an ASCII digit at index "

    .line 640
    .line 641
    invoke-static {v14, v1, v13}, Landroid/support/v4/media/a;->s(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    .line 643
    .line 644
    move-result-object v1

    .line 645
    invoke-interface {v0, v14}, Ljava/lang/CharSequence;->charAt(I)C

    .line 646
    .line 647
    .line 648
    move-result v2

    .line 649
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 650
    .line 651
    .line 652
    const/16 v2, 0x27

    .line 653
    .line 654
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object v1

    .line 661
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/InstantParseResult$Failure;

    .line 662
    .line 663
    .line 664
    move-result-object v0

    .line 665
    return-object v0

    .line 666
    :cond_1f
    :goto_9
    add-int/lit8 v4, v8, 0x1

    .line 667
    .line 668
    invoke-static {v0, v4}, Lkotlin/time/InstantKt;->parseIso$twoDigitNumber(Ljava/lang/CharSequence;I)I

    .line 669
    .line 670
    .line 671
    move-result v4

    .line 672
    const/4 v5, 0x3

    .line 673
    if-le v6, v5, :cond_20

    .line 674
    .line 675
    add-int/lit8 v11, v8, 0x4

    .line 676
    .line 677
    invoke-static {v0, v11}, Lkotlin/time/InstantKt;->parseIso$twoDigitNumber(Ljava/lang/CharSequence;I)I

    .line 678
    .line 679
    .line 680
    move-result v11

    .line 681
    goto :goto_a

    .line 682
    :cond_20
    const/4 v11, 0x0

    .line 683
    :goto_a
    const/4 v12, 0x6

    .line 684
    if-le v6, v12, :cond_21

    .line 685
    .line 686
    add-int/lit8 v6, v8, 0x7

    .line 687
    .line 688
    invoke-static {v0, v6}, Lkotlin/time/InstantKt;->parseIso$twoDigitNumber(Ljava/lang/CharSequence;I)I

    .line 689
    .line 690
    .line 691
    move-result v6

    .line 692
    :goto_b
    const/16 v12, 0x3b

    .line 693
    .line 694
    goto :goto_c

    .line 695
    :cond_21
    const/4 v6, 0x0

    .line 696
    goto :goto_b

    .line 697
    :goto_c
    if-le v11, v12, :cond_22

    .line 698
    .line 699
    const-string v1, "Expected offset-minute-of-hour in 0..59, got "

    .line 700
    .line 701
    invoke-static {v11, v1}, Landroid/support/v4/media/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    move-result-object v1

    .line 705
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/InstantParseResult$Failure;

    .line 706
    .line 707
    .line 708
    move-result-object v0

    .line 709
    return-object v0

    .line 710
    :cond_22
    if-le v6, v12, :cond_23

    .line 711
    .line 712
    const-string v1, "Expected offset-second-of-minute in 0..59, got "

    .line 713
    .line 714
    invoke-static {v6, v1}, Landroid/support/v4/media/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 715
    .line 716
    .line 717
    move-result-object v1

    .line 718
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/InstantParseResult$Failure;

    .line 719
    .line 720
    .line 721
    move-result-object v0

    .line 722
    return-object v0

    .line 723
    :cond_23
    const/16 v12, 0x11

    .line 724
    .line 725
    if-le v4, v12, :cond_25

    .line 726
    .line 727
    const/16 v12, 0x12

    .line 728
    .line 729
    if-ne v4, v12, :cond_24

    .line 730
    .line 731
    if-nez v11, :cond_24

    .line 732
    .line 733
    if-eqz v6, :cond_25

    .line 734
    .line 735
    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 736
    .line 737
    const-string v2, "Expected an offset in -18:00..+18:00, got "

    .line 738
    .line 739
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 740
    .line 741
    .line 742
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 743
    .line 744
    .line 745
    move-result v2

    .line 746
    invoke-interface {v0, v8, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 747
    .line 748
    .line 749
    move-result-object v2

    .line 750
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 751
    .line 752
    .line 753
    move-result-object v2

    .line 754
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    .line 756
    .line 757
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 758
    .line 759
    .line 760
    move-result-object v1

    .line 761
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/InstantParseResult$Failure;

    .line 762
    .line 763
    .line 764
    move-result-object v0

    .line 765
    return-object v0

    .line 766
    :cond_25
    mul-int/lit16 v4, v4, 0xe10

    .line 767
    .line 768
    mul-int/lit8 v11, v11, 0x3c

    .line 769
    .line 770
    add-int/2addr v11, v4

    .line 771
    add-int/2addr v11, v6

    .line 772
    const/16 v6, 0x2d

    .line 773
    .line 774
    if-ne v3, v6, :cond_26

    .line 775
    .line 776
    const/4 v3, -0x1

    .line 777
    goto :goto_d

    .line 778
    :cond_26
    move/from16 v3, v23

    .line 779
    .line 780
    :goto_d
    mul-int/2addr v3, v11

    .line 781
    goto/16 :goto_5

    .line 782
    .line 783
    :goto_e
    if-gt v4, v1, :cond_2e

    .line 784
    .line 785
    const/16 v6, 0xd

    .line 786
    .line 787
    if-ge v1, v6, :cond_2e

    .line 788
    .line 789
    if-gt v4, v2, :cond_2d

    .line 790
    .line 791
    invoke-static/range {v16 .. v16}, Lkotlin/time/InstantKt;->isLeapYear(I)Z

    .line 792
    .line 793
    .line 794
    move-result v4

    .line 795
    invoke-static {v1, v4}, Lkotlin/time/InstantKt;->monthLength(IZ)I

    .line 796
    .line 797
    .line 798
    move-result v4

    .line 799
    if-gt v2, v4, :cond_2d

    .line 800
    .line 801
    const/16 v4, 0x17

    .line 802
    .line 803
    if-le v7, v4, :cond_27

    .line 804
    .line 805
    const-string v1, "Expected hour in 0..23, got "

    .line 806
    .line 807
    invoke-static {v7, v1}, Landroid/support/v4/media/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 808
    .line 809
    .line 810
    move-result-object v1

    .line 811
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/InstantParseResult$Failure;

    .line 812
    .line 813
    .line 814
    move-result-object v0

    .line 815
    return-object v0

    .line 816
    :cond_27
    const/16 v12, 0x3b

    .line 817
    .line 818
    if-le v9, v12, :cond_28

    .line 819
    .line 820
    const-string v1, "Expected minute-of-hour in 0..59, got "

    .line 821
    .line 822
    invoke-static {v9, v1}, Landroid/support/v4/media/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 823
    .line 824
    .line 825
    move-result-object v1

    .line 826
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/InstantParseResult$Failure;

    .line 827
    .line 828
    .line 829
    move-result-object v0

    .line 830
    return-object v0

    .line 831
    :cond_28
    if-le v10, v12, :cond_29

    .line 832
    .line 833
    const-string v1, "Expected second-of-minute in 0..59, got "

    .line 834
    .line 835
    invoke-static {v10, v1}, Landroid/support/v4/media/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 836
    .line 837
    .line 838
    move-result-object v1

    .line 839
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/InstantParseResult$Failure;

    .line 840
    .line 841
    .line 842
    move-result-object v0

    .line 843
    return-object v0

    .line 844
    :cond_29
    new-instance v15, Lkotlin/time/UnboundLocalDateTime;

    .line 845
    .line 846
    move/from16 v17, v1

    .line 847
    .line 848
    move/from16 v18, v2

    .line 849
    .line 850
    move/from16 v19, v7

    .line 851
    .line 852
    move/from16 v20, v9

    .line 853
    .line 854
    move/from16 v21, v10

    .line 855
    .line 856
    invoke-direct/range {v15 .. v22}, Lkotlin/time/UnboundLocalDateTime;-><init>(IIIIIII)V

    .line 857
    .line 858
    .line 859
    invoke-virtual {v15}, Lkotlin/time/UnboundLocalDateTime;->getYear()I

    .line 860
    .line 861
    .line 862
    move-result v0

    .line 863
    int-to-long v0, v0

    .line 864
    const/16 v2, 0x16d

    .line 865
    .line 866
    int-to-long v6, v2

    .line 867
    mul-long/2addr v6, v0

    .line 868
    const-wide/16 v8, 0x0

    .line 869
    .line 870
    cmp-long v2, v0, v8

    .line 871
    .line 872
    if-ltz v2, :cond_2a

    .line 873
    .line 874
    int-to-long v4, v5

    .line 875
    add-long/2addr v4, v0

    .line 876
    const/4 v2, 0x4

    .line 877
    int-to-long v8, v2

    .line 878
    div-long/2addr v4, v8

    .line 879
    const/16 v2, 0x63

    .line 880
    .line 881
    int-to-long v8, v2

    .line 882
    add-long/2addr v8, v0

    .line 883
    const/16 v2, 0x64

    .line 884
    .line 885
    int-to-long v10, v2

    .line 886
    div-long/2addr v8, v10

    .line 887
    sub-long/2addr v4, v8

    .line 888
    const/16 v2, 0x18f

    .line 889
    .line 890
    int-to-long v8, v2

    .line 891
    add-long/2addr v0, v8

    .line 892
    const/16 v2, 0x190

    .line 893
    .line 894
    int-to-long v8, v2

    .line 895
    div-long/2addr v0, v8

    .line 896
    add-long/2addr v0, v4

    .line 897
    add-long/2addr v0, v6

    .line 898
    goto :goto_f

    .line 899
    :cond_2a
    const/4 v2, -0x4

    .line 900
    int-to-long v4, v2

    .line 901
    div-long v4, v0, v4

    .line 902
    .line 903
    const/16 v2, -0x64

    .line 904
    .line 905
    int-to-long v8, v2

    .line 906
    div-long v8, v0, v8

    .line 907
    .line 908
    sub-long/2addr v4, v8

    .line 909
    const/16 v2, -0x190

    .line 910
    .line 911
    int-to-long v8, v2

    .line 912
    div-long/2addr v0, v8

    .line 913
    add-long/2addr v0, v4

    .line 914
    sub-long v0, v6, v0

    .line 915
    .line 916
    :goto_f
    invoke-virtual {v15}, Lkotlin/time/UnboundLocalDateTime;->getMonth()I

    .line 917
    .line 918
    .line 919
    move-result v2

    .line 920
    mul-int/lit16 v2, v2, 0x16f

    .line 921
    .line 922
    add-int/lit16 v2, v2, -0x16a

    .line 923
    .line 924
    div-int/lit8 v2, v2, 0xc

    .line 925
    .line 926
    int-to-long v4, v2

    .line 927
    add-long/2addr v0, v4

    .line 928
    invoke-virtual {v15}, Lkotlin/time/UnboundLocalDateTime;->getDay()I

    .line 929
    .line 930
    .line 931
    move-result v2

    .line 932
    const/16 v23, 0x1

    .line 933
    .line 934
    add-int/lit8 v2, v2, -0x1

    .line 935
    .line 936
    int-to-long v4, v2

    .line 937
    add-long/2addr v0, v4

    .line 938
    invoke-virtual {v15}, Lkotlin/time/UnboundLocalDateTime;->getMonth()I

    .line 939
    .line 940
    .line 941
    move-result v2

    .line 942
    const/4 v4, 0x2

    .line 943
    if-le v2, v4, :cond_2c

    .line 944
    .line 945
    const-wide/16 v4, -0x1

    .line 946
    .line 947
    add-long/2addr v4, v0

    .line 948
    invoke-virtual {v15}, Lkotlin/time/UnboundLocalDateTime;->getYear()I

    .line 949
    .line 950
    .line 951
    move-result v2

    .line 952
    invoke-static {v2}, Lkotlin/time/InstantKt;->isLeapYear(I)Z

    .line 953
    .line 954
    .line 955
    move-result v2

    .line 956
    if-nez v2, :cond_2b

    .line 957
    .line 958
    const-wide/16 v4, -0x2

    .line 959
    .line 960
    add-long/2addr v0, v4

    .line 961
    goto :goto_10

    .line 962
    :cond_2b
    move-wide v0, v4

    .line 963
    :cond_2c
    :goto_10
    const v2, 0xafaa8

    .line 964
    .line 965
    .line 966
    int-to-long v4, v2

    .line 967
    sub-long/2addr v0, v4

    .line 968
    invoke-virtual {v15}, Lkotlin/time/UnboundLocalDateTime;->getHour()I

    .line 969
    .line 970
    .line 971
    move-result v2

    .line 972
    mul-int/lit16 v2, v2, 0xe10

    .line 973
    .line 974
    invoke-virtual {v15}, Lkotlin/time/UnboundLocalDateTime;->getMinute()I

    .line 975
    .line 976
    .line 977
    move-result v4

    .line 978
    mul-int/lit8 v4, v4, 0x3c

    .line 979
    .line 980
    add-int/2addr v4, v2

    .line 981
    invoke-virtual {v15}, Lkotlin/time/UnboundLocalDateTime;->getSecond()I

    .line 982
    .line 983
    .line 984
    move-result v2

    .line 985
    add-int/2addr v4, v2

    .line 986
    const v2, 0x15180

    .line 987
    .line 988
    .line 989
    int-to-long v5, v2

    .line 990
    mul-long/2addr v0, v5

    .line 991
    int-to-long v4, v4

    .line 992
    add-long/2addr v0, v4

    .line 993
    int-to-long v2, v3

    .line 994
    sub-long/2addr v0, v2

    .line 995
    invoke-virtual {v15}, Lkotlin/time/UnboundLocalDateTime;->getNanosecond()I

    .line 996
    .line 997
    .line 998
    move-result v2

    .line 999
    new-instance v3, Lkotlin/time/InstantParseResult$Success;

    .line 1000
    .line 1001
    invoke-direct {v3, v0, v1, v2}, Lkotlin/time/InstantParseResult$Success;-><init>(JI)V

    .line 1002
    .line 1003
    .line 1004
    return-object v3

    .line 1005
    :cond_2d
    move/from16 v9, v16

    .line 1006
    .line 1007
    const-string v3, " of year "

    .line 1008
    .line 1009
    const-string v4, ", got "

    .line 1010
    .line 1011
    const-string v5, "Expected a valid day-of-month for month "

    .line 1012
    .line 1013
    invoke-static {v5, v1, v9, v3, v4}, Landroid/support/v4/media/a;->u(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v1

    .line 1017
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1018
    .line 1019
    .line 1020
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v1

    .line 1024
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/InstantParseResult$Failure;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v0

    .line 1028
    return-object v0

    .line 1029
    :cond_2e
    const-string v2, "Expected a month number in 1..12, got "

    .line 1030
    .line 1031
    invoke-static {v1, v2}, Landroid/support/v4/media/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v1

    .line 1035
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/InstantParseResult$Failure;

    .line 1036
    .line 1037
    .line 1038
    move-result-object v0

    .line 1039
    return-object v0
.end method

.method private static final parseIso$expect(Ljava/lang/CharSequence;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Lkotlin/time/InstantParseResult$Failure;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Character;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lkotlin/time/InstantParseResult$Failure;"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    check-cast p3, Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    if-eqz p3, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return-object p0

    .line 23
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v1, "Expected "

    .line 26
    .line 27
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p1, ", but got \'"

    .line 34
    .line 35
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p1, "\' at position "

    .line 42
    .line 43
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p0, p1}, Lkotlin/time/InstantKt;->parseIso$parseFailure(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/InstantParseResult$Failure;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method

.method private static final parseIso$lambda$0(C)Z
    .locals 1

    const/16 v0, 0x2d

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final parseIso$lambda$10(C)Z
    .locals 2

    const/16 v0, 0x30

    const/4 v1, 0x0

    if-gt v0, p0, :cond_0

    const/16 v0, 0x3a

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method private static final parseIso$lambda$2(C)Z
    .locals 1

    const/16 v0, 0x2d

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final parseIso$lambda$4(C)Z
    .locals 1

    const/16 v0, 0x54

    if-eq p0, v0, :cond_1

    const/16 v0, 0x74

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static final parseIso$lambda$6(C)Z
    .locals 1

    const/16 v0, 0x3a

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final parseIso$lambda$8(C)Z
    .locals 1

    const/16 v0, 0x3a

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final parseIso$parseFailure(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/InstantParseResult$Failure;
    .locals 2

    .line 1
    new-instance v0, Lkotlin/time/InstantParseResult$Failure;

    .line 2
    .line 3
    const-string v1, " when parsing an Instant from \""

    .line 4
    .line 5
    invoke-static {p1, v1}, Landroid/support/v4/media/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/16 v1, 0x40

    .line 10
    .line 11
    invoke-static {p0, v1}, Lkotlin/time/InstantKt;->truncateForErrorMessage(Ljava/lang/CharSequence;I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const/16 v1, 0x22

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-direct {v0, p1, p0}, Lkotlin/time/InstantParseResult$Failure;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method private static final parseIso$twoDigitNumber(Ljava/lang/CharSequence;I)I
    .locals 1

    .line 1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x30

    .line 6
    .line 7
    mul-int/lit8 v0, v0, 0xa

    .line 8
    .line 9
    add-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    add-int/lit8 p0, p0, -0x30

    .line 16
    .line 17
    add-int/2addr p0, v0

    .line 18
    return p0
.end method

.method private static final safeAddOrElse(JJLkotlin/jvm/functions/Function0;)J
    .locals 6

    .line 1
    add-long v0, p0, p2

    .line 2
    .line 3
    xor-long v2, p0, v0

    .line 4
    .line 5
    const-wide/16 v4, 0x0

    .line 6
    .line 7
    cmp-long v2, v2, v4

    .line 8
    .line 9
    if-gez v2, :cond_1

    .line 10
    .line 11
    xor-long/2addr p0, p2

    .line 12
    cmp-long p0, p0, v4

    .line 13
    .line 14
    if-gez p0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    new-instance p0, Lkotlin/KotlinNothingValueException;

    .line 21
    .line 22
    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 23
    .line 24
    .line 25
    throw p0

    .line 26
    :cond_1
    :goto_0
    return-wide v0
.end method

.method private static final safeMultiplyOrElse(JJLkotlin/jvm/functions/Function0;)J
    .locals 7

    .line 1
    const-wide/16 v0, 0x1

    .line 2
    .line 3
    cmp-long v2, p2, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    return-wide p0

    .line 8
    :cond_0
    cmp-long v0, p0, v0

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    return-wide p2

    .line 13
    :cond_1
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    cmp-long v2, p0, v0

    .line 16
    .line 17
    if-eqz v2, :cond_6

    .line 18
    .line 19
    cmp-long v2, p2, v0

    .line 20
    .line 21
    if-nez v2, :cond_2

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    mul-long v0, p0, p2

    .line 25
    .line 26
    div-long v2, v0, p2

    .line 27
    .line 28
    cmp-long v2, v2, p0

    .line 29
    .line 30
    if-nez v2, :cond_5

    .line 31
    .line 32
    const-wide/high16 v2, -0x8000000000000000L

    .line 33
    .line 34
    cmp-long v4, p0, v2

    .line 35
    .line 36
    const-wide/16 v5, -0x1

    .line 37
    .line 38
    if-nez v4, :cond_3

    .line 39
    .line 40
    cmp-long v4, p2, v5

    .line 41
    .line 42
    if-eqz v4, :cond_5

    .line 43
    .line 44
    :cond_3
    cmp-long p2, p2, v2

    .line 45
    .line 46
    if-nez p2, :cond_4

    .line 47
    .line 48
    cmp-long p0, p0, v5

    .line 49
    .line 50
    if-eqz p0, :cond_5

    .line 51
    .line 52
    :cond_4
    return-wide v0

    .line 53
    :cond_5
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    new-instance p0, Lkotlin/KotlinNothingValueException;

    .line 57
    .line 58
    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 59
    .line 60
    .line 61
    throw p0

    .line 62
    :cond_6
    :goto_0
    return-wide v0
.end method

.method private static final truncateForErrorMessage(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gt v0, p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-interface {p0, v1, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p0, "..."

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method
