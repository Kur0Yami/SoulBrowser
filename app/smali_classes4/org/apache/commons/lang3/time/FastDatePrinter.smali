.class public Lorg/apache/commons/lang3/time/FastDatePrinter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/time/DatePrinter;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitYearField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$WeekYear;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitMonthField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedMonthField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$TwelveHourField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$DayInWeekField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$TwentyFourHourField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNameRule;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$CharacterLiteral;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$StringLiteral;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedNumberField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitNumberField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$PaddedNumberField;
    }
.end annotation


# static fields
.field public static final j:[Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;

.field public static final k:Lj$/util/concurrent/ConcurrentHashMap;


# instance fields
.field public final c:Ljava/lang/String;

.field public final f:Ljava/util/TimeZone;

.field public final g:Ljava/util/Locale;

.field public final transient h:[Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;

.field public final transient i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;

    .line 3
    .line 4
    sput-object v0, Lorg/apache/commons/lang3/time/FastDatePrinter;->j:[Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;

    .line 5
    .line 6
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    const/4 v1, 0x7

    .line 9
    invoke-direct {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lorg/apache/commons/lang3/time/FastDatePrinter;->k:Lj$/util/concurrent/ConcurrentHashMap;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object v1, v0, Lorg/apache/commons/lang3/time/FastDatePrinter;->c:Ljava/lang/String;

    move-object/from16 v2, p2

    .line 3
    iput-object v2, v0, Lorg/apache/commons/lang3/time/FastDatePrinter;->f:Ljava/util/TimeZone;

    .line 4
    sget v2, Lorg/apache/commons/lang3/LocaleUtils;->a:I

    if-eqz p3, :cond_0

    move-object/from16 v2, p3

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 6
    :goto_0
    iput-object v2, v0, Lorg/apache/commons/lang3/time/FastDatePrinter;->g:Ljava/util/Locale;

    .line 7
    new-instance v3, Ljava/text/DateFormatSymbols;

    invoke-direct {v3, v2}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v6

    .line 11
    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v7

    .line 12
    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v8

    .line 13
    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v9

    .line 14
    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    .line 16
    new-array v12, v11, [I

    const/4 v13, 0x0

    move v14, v13

    :goto_1
    if-ge v14, v10, :cond_22

    .line 17
    aput v14, v12, v13

    .line 18
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    aget v15, v12, v13

    move/from16 p2, v11

    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    move/from16 p3, v13

    .line 21
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 22
    invoke-static {v13}, Lorg/apache/commons/lang3/CharUtils;->a(C)Z

    move-result v16

    move-object/from16 v17, v8

    if-eqz v16, :cond_2

    .line 23
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v8, v15, 0x1

    move-object/from16 v18, v9

    if-ge v8, v11, :cond_6

    .line 24
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v13, :cond_1

    goto :goto_6

    .line 25
    :cond_1
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v15, v8

    move-object/from16 v9, v18

    goto :goto_2

    :cond_2
    move-object/from16 v18, v9

    const/16 v8, 0x27

    .line 26
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move/from16 v9, p3

    :goto_3
    if-ge v15, v11, :cond_6

    .line 27
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v13, v8, :cond_4

    add-int/lit8 v8, v15, 0x1

    move/from16 v19, v9

    if-ge v8, v11, :cond_3

    .line 28
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v1, 0x27

    if-ne v9, v1, :cond_3

    .line 29
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v15, v8

    :goto_4
    move/from16 v9, v19

    goto :goto_5

    :cond_3
    xor-int/lit8 v1, v19, 0x1

    move v9, v1

    goto :goto_5

    :cond_4
    move/from16 v19, v9

    if-nez v19, :cond_5

    .line 30
    invoke-static {v13}, Lorg/apache/commons/lang3/CharUtils;->a(C)Z

    move-result v1

    if-eqz v1, :cond_5

    add-int/lit8 v15, v15, -0x1

    goto :goto_6

    .line 31
    :cond_5
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :goto_5
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p1

    const/16 v8, 0x27

    goto :goto_3

    .line 32
    :cond_6
    :goto_6
    aput v15, v12, p3

    .line 33
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 34
    aget v8, v12, p3

    .line 35
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_7

    move/from16 v13, p3

    goto/16 :goto_13

    :cond_7
    move/from16 v11, p3

    .line 36
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v11, 0x27

    if-eq v13, v11, :cond_20

    const/16 v11, 0x53

    if-eq v13, v11, :cond_1f

    const/16 v11, 0x61

    if-eq v13, v11, :cond_1e

    const/16 v11, 0x64

    if-eq v13, v11, :cond_1d

    const/16 v11, 0x68

    if-eq v13, v11, :cond_1c

    const/16 v11, 0x6b

    if-eq v13, v11, :cond_1b

    const/16 v11, 0x6d

    if-eq v13, v11, :cond_1a

    const/16 v11, 0x73

    if-eq v13, v11, :cond_19

    const/16 v11, 0x75

    if-eq v13, v11, :cond_18

    const/16 v11, 0x77

    const/4 v15, 0x3

    if-eq v13, v11, :cond_17

    const/16 v11, 0x79

    const/4 v14, 0x2

    if-eq v13, v11, :cond_a

    const/16 v11, 0x7a

    if-eq v13, v11, :cond_14

    packed-switch v13, :pswitch_data_0

    .line 37
    sget-object v11, Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedMonthField;->a:Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedMonthField;

    sget-object v16, Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitMonthField;->a:Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitMonthField;

    packed-switch v13, :pswitch_data_1

    sget-object v11, Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;->d:Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;

    packed-switch v13, :pswitch_data_2

    .line 38
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Illegal pattern component: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    move/from16 v1, p2

    if-ne v9, v1, :cond_8

    .line 39
    sget-object v11, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;->c:Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;

    :goto_7
    move v9, v1

    :goto_8
    const/4 v13, 0x0

    goto/16 :goto_12

    :cond_8
    if-ne v9, v14, :cond_9

    goto :goto_7

    .line 40
    :cond_9
    sget-object v11, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;->b:Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;

    goto :goto_7

    :cond_a
    :pswitch_1
    const/4 v1, 0x4

    goto/16 :goto_e

    :pswitch_2
    move/from16 v1, p2

    if-eq v9, v1, :cond_d

    if-eq v9, v14, :cond_c

    if-ne v9, v15, :cond_b

    goto :goto_9

    .line 41
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid number of X"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_c
    sget-object v1, Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;->c:Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;

    goto/16 :goto_11

    .line 43
    :cond_d
    sget-object v1, Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;->b:Lorg/apache/commons/lang3/time/FastDatePrinter$Iso8601_Rule;

    goto/16 :goto_11

    :cond_e
    :goto_9
    const/4 v9, 0x1

    goto :goto_8

    :pswitch_3
    const/4 v1, 0x4

    .line 44
    invoke-static {v1, v9}, Lorg/apache/commons/lang3/time/FastDatePrinter;->e(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v11

    goto :goto_9

    :pswitch_4
    const/4 v1, 0x4

    if-lt v9, v1, :cond_f

    .line 45
    new-instance v11, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;

    invoke-direct {v11, v6, v14}, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;-><init>([Ljava/lang/String;I)V

    goto :goto_9

    :cond_f
    if-ne v9, v15, :cond_10

    .line 46
    new-instance v11, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;

    invoke-direct {v11, v7, v14}, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;-><init>([Ljava/lang/String;I)V

    goto :goto_9

    :cond_10
    if-ne v9, v14, :cond_e

    :goto_a
    move-object/from16 v11, v16

    goto :goto_9

    :pswitch_5
    const/4 v1, 0x4

    if-lt v9, v1, :cond_11

    .line 47
    new-instance v11, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;

    .line 48
    new-instance v1, Lorg/apache/commons/lang3/time/CalendarUtils;

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v9

    invoke-direct {v1, v9, v2}, Lorg/apache/commons/lang3/time/CalendarUtils;-><init>(Ljava/util/Calendar;Ljava/util/Locale;)V

    const v9, 0x8002

    .line 49
    invoke-virtual {v1, v9}, Lorg/apache/commons/lang3/time/CalendarUtils;->a(I)[Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-direct {v11, v1, v14}, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;-><init>([Ljava/lang/String;I)V

    goto :goto_9

    :cond_11
    if-ne v9, v15, :cond_12

    .line 51
    new-instance v11, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;

    .line 52
    new-instance v1, Lorg/apache/commons/lang3/time/CalendarUtils;

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v9

    invoke-direct {v1, v9, v2}, Lorg/apache/commons/lang3/time/CalendarUtils;-><init>(Ljava/util/Calendar;Ljava/util/Locale;)V

    const v9, 0x8001

    .line 53
    invoke-virtual {v1, v9}, Lorg/apache/commons/lang3/time/CalendarUtils;->a(I)[Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-direct {v11, v1, v14}, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;-><init>([Ljava/lang/String;I)V

    goto :goto_9

    :cond_12
    if-ne v9, v14, :cond_e

    goto :goto_a

    :pswitch_6
    const/16 v1, 0xa

    .line 55
    invoke-static {v1, v9}, Lorg/apache/commons/lang3/time/FastDatePrinter;->e(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v11

    goto :goto_9

    :pswitch_7
    const/16 v1, 0xb

    .line 56
    invoke-static {v1, v9}, Lorg/apache/commons/lang3/time/FastDatePrinter;->e(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v11

    goto :goto_9

    .line 57
    :pswitch_8
    new-instance v11, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;

    const/4 v1, 0x0

    invoke-direct {v11, v5, v1}, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;-><init>([Ljava/lang/String;I)V

    move v13, v1

    const/4 v9, 0x1

    goto/16 :goto_12

    :pswitch_9
    const/16 v1, 0x8

    .line 58
    invoke-static {v1, v9}, Lorg/apache/commons/lang3/time/FastDatePrinter;->e(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v11

    goto :goto_9

    .line 59
    :pswitch_a
    new-instance v11, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;

    const/4 v1, 0x4

    if-ge v9, v1, :cond_13

    move-object/from16 v1, v18

    :goto_b
    const/4 v9, 0x7

    goto :goto_c

    :cond_13
    move-object/from16 v1, v17

    goto :goto_b

    :goto_c
    invoke-direct {v11, v1, v9}, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;-><init>([Ljava/lang/String;I)V

    goto/16 :goto_9

    :pswitch_b
    const/4 v1, 0x6

    .line 60
    invoke-static {v1, v9}, Lorg/apache/commons/lang3/time/FastDatePrinter;->e(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v11

    goto/16 :goto_9

    :cond_14
    const/4 v1, 0x4

    .line 61
    new-instance v11, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNameRule;

    iget-object v13, v0, Lorg/apache/commons/lang3/time/FastDatePrinter;->f:Ljava/util/TimeZone;

    if-lt v9, v1, :cond_15

    const/4 v1, 0x1

    goto :goto_d

    :cond_15
    const/4 v1, 0x0

    :goto_d
    invoke-direct {v11, v13, v2, v1}, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNameRule;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;I)V

    goto/16 :goto_9

    :goto_e
    if-ne v9, v14, :cond_16

    .line 62
    sget-object v1, Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitYearField;->a:Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitYearField;

    :goto_f
    move-object v11, v1

    goto :goto_10

    .line 63
    :cond_16
    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v9, 0x1

    invoke-static {v9, v1}, Lorg/apache/commons/lang3/time/FastDatePrinter;->e(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v1

    goto :goto_f

    :goto_10
    const/16 v1, 0x59

    if-ne v13, v1, :cond_e

    .line 64
    new-instance v1, Lorg/apache/commons/lang3/time/FastDatePrinter$WeekYear;

    invoke-direct {v1, v11}, Lorg/apache/commons/lang3/time/FastDatePrinter$WeekYear;-><init>(Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;)V

    :goto_11
    move-object v11, v1

    goto/16 :goto_9

    .line 65
    :cond_17
    invoke-static {v15, v9}, Lorg/apache/commons/lang3/time/FastDatePrinter;->e(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v11

    goto/16 :goto_9

    .line 66
    :cond_18
    new-instance v11, Lorg/apache/commons/lang3/time/FastDatePrinter$DayInWeekField;

    const/4 v1, 0x7

    invoke-static {v1, v9}, Lorg/apache/commons/lang3/time/FastDatePrinter;->e(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v1

    invoke-direct {v11, v1}, Lorg/apache/commons/lang3/time/FastDatePrinter$DayInWeekField;-><init>(Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;)V

    goto/16 :goto_9

    :cond_19
    const/16 v1, 0xd

    .line 67
    invoke-static {v1, v9}, Lorg/apache/commons/lang3/time/FastDatePrinter;->e(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v11

    goto/16 :goto_9

    :cond_1a
    const/16 v1, 0xc

    .line 68
    invoke-static {v1, v9}, Lorg/apache/commons/lang3/time/FastDatePrinter;->e(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v11

    goto/16 :goto_9

    .line 69
    :cond_1b
    new-instance v11, Lorg/apache/commons/lang3/time/FastDatePrinter$TwentyFourHourField;

    const/16 v1, 0xb

    invoke-static {v1, v9}, Lorg/apache/commons/lang3/time/FastDatePrinter;->e(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v1

    invoke-direct {v11, v1}, Lorg/apache/commons/lang3/time/FastDatePrinter$TwentyFourHourField;-><init>(Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;)V

    goto/16 :goto_9

    .line 70
    :cond_1c
    new-instance v11, Lorg/apache/commons/lang3/time/FastDatePrinter$TwelveHourField;

    const/16 v1, 0xa

    invoke-static {v1, v9}, Lorg/apache/commons/lang3/time/FastDatePrinter;->e(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v1

    invoke-direct {v11, v1}, Lorg/apache/commons/lang3/time/FastDatePrinter$TwelveHourField;-><init>(Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;)V

    goto/16 :goto_9

    :cond_1d
    const/4 v1, 0x5

    .line 71
    invoke-static {v1, v9}, Lorg/apache/commons/lang3/time/FastDatePrinter;->e(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v11

    goto/16 :goto_9

    .line 72
    :cond_1e
    new-instance v11, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;

    const/16 v1, 0x9

    invoke-direct {v11, v3, v1}, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;-><init>([Ljava/lang/String;I)V

    goto/16 :goto_9

    :cond_1f
    const/16 v1, 0xe

    .line 73
    invoke-static {v1, v9}, Lorg/apache/commons/lang3/time/FastDatePrinter;->e(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v11

    goto/16 :goto_9

    :cond_20
    move/from16 v9, p2

    .line 74
    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    if-ne v11, v9, :cond_21

    .line 76
    new-instance v11, Lorg/apache/commons/lang3/time/FastDatePrinter$CharacterLiteral;

    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {v11, v1}, Lorg/apache/commons/lang3/time/FastDatePrinter$CharacterLiteral;-><init>(C)V

    goto :goto_12

    :cond_21
    const/4 v13, 0x0

    .line 77
    new-instance v11, Lorg/apache/commons/lang3/time/FastDatePrinter$StringLiteral;

    invoke-direct {v11, v1}, Lorg/apache/commons/lang3/time/FastDatePrinter$StringLiteral;-><init>(Ljava/lang/String;)V

    .line 78
    :goto_12
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v8, 0x1

    move-object/from16 v1, p1

    move v11, v9

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    goto/16 :goto_1

    .line 79
    :cond_22
    :goto_13
    sget-object v1, Lorg/apache/commons/lang3/time/FastDatePrinter;->j:[Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;

    iput-object v1, v0, Lorg/apache/commons/lang3/time/FastDatePrinter;->h:[Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;

    .line 80
    array-length v1, v1

    :goto_14
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_23

    .line 81
    iget-object v2, v0, Lorg/apache/commons/lang3/time/FastDatePrinter;->h:[Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;->b()I

    move-result v2

    add-int/2addr v13, v2

    goto :goto_14

    .line 82
    :cond_23
    iput v13, v0, Lorg/apache/commons/lang3/time/FastDatePrinter;->i:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4b
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x57
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/StringBuilder;I)V
    .locals 1

    .line 1
    div-int/lit8 v0, p1, 0xa

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x30

    .line 4
    .line 5
    int-to-char v0, v0

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 7
    .line 8
    .line 9
    rem-int/lit8 p1, p1, 0xa

    .line 10
    .line 11
    add-int/lit8 p1, p1, 0x30

    .line 12
    .line 13
    int-to-char p1, p1

    .line 14
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static b(Ljava/lang/StringBuilder;II)V
    .locals 8

    .line 1
    const/16 v0, 0x2710

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    const/16 v2, 0x30

    .line 6
    .line 7
    if-ge p1, v0, :cond_a

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    const/4 v3, 0x3

    .line 11
    const/4 v4, 0x4

    .line 12
    const/4 v5, 0x1

    .line 13
    const/16 v6, 0x3e8

    .line 14
    .line 15
    const/16 v7, 0x64

    .line 16
    .line 17
    if-ge p1, v6, :cond_2

    .line 18
    .line 19
    if-ge p1, v7, :cond_1

    .line 20
    .line 21
    if-ge p1, v1, :cond_0

    .line 22
    .line 23
    move v6, v5

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v6, v0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v6, v3

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    move v6, v4

    .line 30
    :goto_0
    sub-int/2addr p2, v6

    .line 31
    :goto_1
    if-lez p2, :cond_3

    .line 32
    .line 33
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 34
    .line 35
    .line 36
    add-int/lit8 p2, p2, -0x1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    if-eq v6, v5, :cond_9

    .line 40
    .line 41
    if-eq v6, v0, :cond_7

    .line 42
    .line 43
    if-eq v6, v3, :cond_5

    .line 44
    .line 45
    if-eq v6, v4, :cond_4

    .line 46
    .line 47
    goto :goto_7

    .line 48
    :cond_4
    div-int/lit16 p2, p1, 0x3e8

    .line 49
    .line 50
    add-int/2addr p2, v2

    .line 51
    int-to-char p2, p2

    .line 52
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 53
    .line 54
    .line 55
    rem-int/lit16 p1, p1, 0x3e8

    .line 56
    .line 57
    :cond_5
    if-lt p1, v7, :cond_6

    .line 58
    .line 59
    div-int/lit8 p2, p1, 0x64

    .line 60
    .line 61
    add-int/2addr p2, v2

    .line 62
    int-to-char p2, p2

    .line 63
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 64
    .line 65
    .line 66
    rem-int/lit8 p1, p1, 0x64

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_6
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 70
    .line 71
    .line 72
    :cond_7
    :goto_2
    if-lt p1, v1, :cond_8

    .line 73
    .line 74
    div-int/lit8 p2, p1, 0xa

    .line 75
    .line 76
    add-int/2addr p2, v2

    .line 77
    int-to-char p2, p2

    .line 78
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 79
    .line 80
    .line 81
    rem-int/lit8 p1, p1, 0xa

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_8
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 85
    .line 86
    .line 87
    :cond_9
    :goto_3
    add-int/2addr p1, v2

    .line 88
    int-to-char p1, p1

    .line 89
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_a
    new-array v0, v1, [C

    .line 94
    .line 95
    const/4 v1, 0x0

    .line 96
    :goto_4
    if-eqz p1, :cond_b

    .line 97
    .line 98
    add-int/lit8 v3, v1, 0x1

    .line 99
    .line 100
    rem-int/lit8 v4, p1, 0xa

    .line 101
    .line 102
    add-int/2addr v4, v2

    .line 103
    int-to-char v4, v4

    .line 104
    aput-char v4, v0, v1

    .line 105
    .line 106
    div-int/lit8 p1, p1, 0xa

    .line 107
    .line 108
    move v1, v3

    .line 109
    goto :goto_4

    .line 110
    :cond_b
    :goto_5
    if-ge v1, p2, :cond_c

    .line 111
    .line 112
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 113
    .line 114
    .line 115
    add-int/lit8 p2, p2, -0x1

    .line 116
    .line 117
    goto :goto_5

    .line 118
    :cond_c
    :goto_6
    add-int/lit8 v1, v1, -0x1

    .line 119
    .line 120
    if-ltz v1, :cond_d

    .line 121
    .line 122
    aget-char p1, v0, v1

    .line 123
    .line 124
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 125
    .line 126
    .line 127
    goto :goto_6

    .line 128
    :cond_d
    :goto_7
    return-void
.end method

.method public static d(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;-><init>(Ljava/util/TimeZone;ZILjava/util/Locale;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lorg/apache/commons/lang3/time/g;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1, p2, p3}, Lorg/apache/commons/lang3/time/g;-><init>(Ljava/util/TimeZone;ZILjava/util/Locale;)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->k:Lj$/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-static {p0, v0, v1}, Lj$/util/concurrent/ConcurrentMap$-EL;->computeIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Ljava/lang/String;

    .line 18
    .line 19
    return-object p0
.end method

.method public static e(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$PaddedNumberField;

    .line 8
    .line 9
    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/time/FastDatePrinter$PaddedNumberField;-><init>(II)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance p1, Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitNumberField;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitNumberField;-><init>(I)V

    .line 16
    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_1
    new-instance p1, Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedNumberField;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedNumberField;-><init>(I)V

    .line 22
    .line 23
    .line 24
    return-object p1
.end method


# virtual methods
.method public final c(Ljava/util/Date;)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->f:Ljava/util/TimeZone;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->g:Ljava/util/Locale;

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 10
    .line 11
    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    iget v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->i:I

    .line 15
    .line 16
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->h:[Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;

    .line 20
    .line 21
    array-length v2, v1

    .line 22
    const/4 v3, 0x0

    .line 23
    :goto_0
    if-ge v3, v2, :cond_0

    .line 24
    .line 25
    aget-object v4, v1, v3

    .line 26
    .line 27
    invoke-interface {v4, p1, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;->a(Ljava/lang/StringBuilder;Ljava/util/Calendar;)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v3, v3, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lorg/apache/commons/lang3/time/FastDatePrinter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lorg/apache/commons/lang3/time/FastDatePrinter;

    .line 8
    .line 9
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->c:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, p1, Lorg/apache/commons/lang3/time/FastDatePrinter;->c:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->f:Ljava/util/TimeZone;

    .line 20
    .line 21
    iget-object v2, p1, Lorg/apache/commons/lang3/time/FastDatePrinter;->f:Ljava/util/TimeZone;

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->g:Ljava/util/Locale;

    .line 30
    .line 31
    iget-object p1, p1, Lorg/apache/commons/lang3/time/FastDatePrinter;->g:Ljava/util/Locale;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    return p1

    .line 41
    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->c:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->f:Ljava/util/TimeZone;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->g:Ljava/util/Locale;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/Locale;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    mul-int/lit8 v2, v2, 0xd

    .line 20
    .line 21
    add-int/2addr v2, v1

    .line 22
    mul-int/lit8 v2, v2, 0xd

    .line 23
    .line 24
    add-int/2addr v2, v0

    .line 25
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "FastDatePrinter["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->c:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ","

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->g:Ljava/util/Locale;

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->f:Ljava/util/TimeZone;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, "]"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0
.end method
