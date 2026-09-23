.class public Lorg/apache/commons/lang3/time/FastDateParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/time/DateParser;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/time/FastDateParser$Strategy;,
        Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;,
        Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;,
        Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;,
        Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;,
        Lorg/apache/commons/lang3/time/FastDateParser$CaseInsensitiveTextStrategy;,
        Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;,
        Lorg/apache/commons/lang3/time/FastDateParser$PatternStrategy;,
        Lorg/apache/commons/lang3/time/FastDateParser$CopyQuotedStrategy;
    }
.end annotation


# static fields
.field public static final A:Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

.field public static final B:Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

.field public static final C:Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

.field public static final k:Ljava/util/Locale;

.field public static final l:Ljava/util/Comparator;

.field public static final m:[Ljava/util/concurrent/ConcurrentMap;

.field public static final n:Lorg/apache/commons/lang3/time/FastDateParser$1;

.field public static final o:Lorg/apache/commons/lang3/time/FastDateParser$2;

.field public static final p:Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

.field public static final q:Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

.field public static final r:Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

.field public static final s:Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

.field public static final t:Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

.field public static final u:Lorg/apache/commons/lang3/time/FastDateParser$3;

.field public static final v:Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

.field public static final w:Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

.field public static final x:Lorg/apache/commons/lang3/time/FastDateParser$4;

.field public static final y:Lorg/apache/commons/lang3/time/FastDateParser$5;

.field public static final z:Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;


# instance fields
.field public final c:Ljava/lang/String;

.field public final f:Ljava/util/TimeZone;

.field public final g:Ljava/util/Locale;

.field public final h:I

.field public final i:I

.field public final transient j:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Locale;

    .line 2
    .line 3
    const-string v1, "ja"

    .line 4
    .line 5
    const-string v2, "JP"

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->k:Ljava/util/Locale;

    .line 11
    .line 12
    invoke-static {}, Lj$/util/Comparator$-CC;->reverseOrder()Ljava/util/Comparator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->l:Ljava/util/Comparator;

    .line 17
    .line 18
    const/16 v0, 0x11

    .line 19
    .line 20
    new-array v0, v0, [Ljava/util/concurrent/ConcurrentMap;

    .line 21
    .line 22
    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->m:[Ljava/util/concurrent/ConcurrentMap;

    .line 23
    .line 24
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$1;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->n:Lorg/apache/commons/lang3/time/FastDateParser$1;

    .line 31
    .line 32
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$2;

    .line 33
    .line 34
    const/4 v2, 0x2

    .line 35
    invoke-direct {v0, v2}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    .line 36
    .line 37
    .line 38
    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->o:Lorg/apache/commons/lang3/time/FastDateParser$2;

    .line 39
    .line 40
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    .line 41
    .line 42
    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->p:Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    .line 46
    .line 47
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    .line 48
    .line 49
    const/4 v1, 0x3

    .line 50
    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    .line 51
    .line 52
    .line 53
    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->q:Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    .line 54
    .line 55
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    .line 56
    .line 57
    const/4 v1, 0x4

    .line 58
    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    .line 59
    .line 60
    .line 61
    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->r:Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    .line 62
    .line 63
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    .line 64
    .line 65
    const/4 v1, 0x6

    .line 66
    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->s:Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    .line 70
    .line 71
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    .line 72
    .line 73
    const/4 v1, 0x5

    .line 74
    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    .line 75
    .line 76
    .line 77
    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->t:Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    .line 78
    .line 79
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$3;

    .line 80
    .line 81
    const/4 v1, 0x7

    .line 82
    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    .line 83
    .line 84
    .line 85
    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->u:Lorg/apache/commons/lang3/time/FastDateParser$3;

    .line 86
    .line 87
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    .line 88
    .line 89
    const/16 v1, 0x8

    .line 90
    .line 91
    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    .line 92
    .line 93
    .line 94
    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->v:Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    .line 95
    .line 96
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    .line 97
    .line 98
    const/16 v1, 0xb

    .line 99
    .line 100
    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    .line 101
    .line 102
    .line 103
    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->w:Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    .line 104
    .line 105
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$4;

    .line 106
    .line 107
    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    .line 108
    .line 109
    .line 110
    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->x:Lorg/apache/commons/lang3/time/FastDateParser$4;

    .line 111
    .line 112
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$5;

    .line 113
    .line 114
    const/16 v1, 0xa

    .line 115
    .line 116
    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    .line 117
    .line 118
    .line 119
    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->y:Lorg/apache/commons/lang3/time/FastDateParser$5;

    .line 120
    .line 121
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    .line 122
    .line 123
    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    .line 124
    .line 125
    .line 126
    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->z:Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    .line 127
    .line 128
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    .line 129
    .line 130
    const/16 v1, 0xc

    .line 131
    .line 132
    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    .line 133
    .line 134
    .line 135
    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->A:Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    .line 136
    .line 137
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    .line 138
    .line 139
    const/16 v1, 0xd

    .line 140
    .line 141
    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    .line 142
    .line 143
    .line 144
    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->B:Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    .line 145
    .line 146
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    .line 147
    .line 148
    const/16 v1, 0xe

    .line 149
    .line 150
    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    .line 151
    .line 152
    .line 153
    sput-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->C:Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    .line 154
    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "pattern"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/commons/lang3/time/FastDateParser;->c:Ljava/lang/String;

    .line 3
    const-string p1, "timeZone"

    invoke-static {p2, p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/commons/lang3/time/FastDateParser;->f:Ljava/util/TimeZone;

    .line 4
    sget p1, Lorg/apache/commons/lang3/LocaleUtils;->a:I

    if-eqz p3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    .line 6
    :goto_0
    iput-object p3, p0, Lorg/apache/commons/lang3/time/FastDateParser;->g:Ljava/util/Locale;

    .line 7
    invoke-static {p2, p3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    .line 8
    sget-object p2, Lorg/apache/commons/lang3/time/FastDateParser;->k:Ljava/util/Locale;

    invoke-virtual {p3, p2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    move p2, p3

    goto :goto_1

    .line 9
    :cond_1
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 10
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    add-int/lit8 p2, p2, -0x50

    .line 11
    :goto_1
    div-int/lit8 v1, p2, 0x64

    const/16 v2, 0x64

    mul-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/lang3/time/FastDateParser;->h:I

    sub-int/2addr p2, v1

    .line 12
    iput p2, p0, Lorg/apache/commons/lang3/time/FastDateParser;->i:I

    .line 13
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/apache/commons/lang3/time/FastDateParser;->j:Ljava/util/ArrayList;

    .line 14
    new-instance p2, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;

    invoke-direct {p2, p0, p1}, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;-><init>(Lorg/apache/commons/lang3/time/FastDateParser;Ljava/util/Calendar;)V

    .line 15
    :goto_2
    iget p1, p2, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->b:I

    .line 16
    iget-object v1, p2, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->c:Lorg/apache/commons/lang3/time/FastDateParser;

    iget-object v3, v1, Lorg/apache/commons/lang3/time/FastDateParser;->c:Ljava/lang/String;

    .line 17
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lt p1, v4, :cond_2

    const/4 p1, 0x0

    goto/16 :goto_6

    .line 18
    :cond_2
    iget p1, p2, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->b:I

    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 19
    invoke-static {p1}, Lorg/apache/commons/lang3/CharUtils;->a(C)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 20
    iget v4, p2, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->b:I

    .line 21
    :cond_3
    iget v5, p2, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->b:I

    add-int/2addr v5, v0

    iput v5, p2, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->b:I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 22
    iget v5, p2, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->b:I

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, p1, :cond_3

    .line 23
    :cond_4
    iget v3, p2, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->b:I

    sub-int/2addr v3, v4

    .line 24
    new-instance v4, Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;

    const/16 v5, 0x53

    if-eq p1, v5, :cond_14

    const/16 v5, 0x61

    .line 25
    iget-object v6, p2, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->a:Ljava/util/Calendar;

    if-eq p1, v5, :cond_13

    if-eq p1, v2, :cond_12

    const/16 v5, 0x68

    if-eq p1, v5, :cond_11

    const/16 v5, 0x6b

    if-eq p1, v5, :cond_10

    const/16 v5, 0x6d

    if-eq p1, v5, :cond_f

    const/16 v5, 0x73

    if-eq p1, v5, :cond_e

    const/16 v5, 0x75

    if-eq p1, v5, :cond_d

    const/16 v5, 0x77

    if-eq p1, v5, :cond_c

    const/16 v5, 0x79

    const/4 v7, 0x2

    if-eq p1, v5, :cond_a

    const/16 v5, 0x7a

    if-eq p1, v5, :cond_9

    packed-switch p1, :pswitch_data_0

    const/4 v5, 0x3

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    .line 26
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Format \'"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\' not supported"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    if-ne v3, v7, :cond_9

    .line 27
    sget-object p1, Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;->d:Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;

    goto/16 :goto_3

    :pswitch_1
    if-eq v3, v0, :cond_7

    if-eq v3, v7, :cond_6

    if-ne v3, v5, :cond_5

    .line 28
    sget-object p1, Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;->d:Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;

    goto/16 :goto_3

    .line 29
    :cond_5
    sget-object p1, Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;->b:Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;

    .line 30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid number of X"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_6
    sget-object p1, Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;->c:Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;

    goto/16 :goto_3

    .line 32
    :cond_7
    sget-object p1, Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;->b:Lorg/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;

    goto :goto_3

    .line 33
    :pswitch_2
    sget-object p1, Lorg/apache/commons/lang3/time/FastDateParser;->r:Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    goto :goto_3

    :pswitch_3
    if-lt v3, v5, :cond_8

    .line 34
    invoke-virtual {v1, v7, v6}, Lorg/apache/commons/lang3/time/FastDateParser;->b(ILjava/util/Calendar;)Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    move-result-object p1

    goto :goto_3

    .line 35
    :cond_8
    sget-object p1, Lorg/apache/commons/lang3/time/FastDateParser;->o:Lorg/apache/commons/lang3/time/FastDateParser$2;

    goto :goto_3

    :pswitch_4
    sget-object p1, Lorg/apache/commons/lang3/time/FastDateParser;->z:Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    goto :goto_3

    :pswitch_5
    sget-object p1, Lorg/apache/commons/lang3/time/FastDateParser;->w:Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    goto :goto_3

    .line 36
    :pswitch_6
    invoke-virtual {v1, p3, v6}, Lorg/apache/commons/lang3/time/FastDateParser;->b(ILjava/util/Calendar;)Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    move-result-object p1

    goto :goto_3

    .line 37
    :pswitch_7
    sget-object p1, Lorg/apache/commons/lang3/time/FastDateParser;->v:Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    goto :goto_3

    :pswitch_8
    const/4 p1, 0x7

    .line 38
    invoke-virtual {v1, p1, v6}, Lorg/apache/commons/lang3/time/FastDateParser;->b(ILjava/util/Calendar;)Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    move-result-object p1

    goto :goto_3

    .line 39
    :pswitch_9
    sget-object p1, Lorg/apache/commons/lang3/time/FastDateParser;->s:Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    goto :goto_3

    :cond_9
    const/16 p1, 0xf

    .line 40
    invoke-virtual {v1, p1, v6}, Lorg/apache/commons/lang3/time/FastDateParser;->b(ILjava/util/Calendar;)Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    move-result-object p1

    goto :goto_3

    :cond_a
    :pswitch_a
    if-le v3, v7, :cond_b

    .line 41
    sget-object p1, Lorg/apache/commons/lang3/time/FastDateParser;->p:Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    goto :goto_3

    :cond_b
    sget-object p1, Lorg/apache/commons/lang3/time/FastDateParser;->n:Lorg/apache/commons/lang3/time/FastDateParser$1;

    goto :goto_3

    :cond_c
    sget-object p1, Lorg/apache/commons/lang3/time/FastDateParser;->q:Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    goto :goto_3

    :cond_d
    sget-object p1, Lorg/apache/commons/lang3/time/FastDateParser;->u:Lorg/apache/commons/lang3/time/FastDateParser$3;

    goto :goto_3

    :cond_e
    sget-object p1, Lorg/apache/commons/lang3/time/FastDateParser;->B:Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    goto :goto_3

    :cond_f
    sget-object p1, Lorg/apache/commons/lang3/time/FastDateParser;->A:Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    goto :goto_3

    :cond_10
    sget-object p1, Lorg/apache/commons/lang3/time/FastDateParser;->x:Lorg/apache/commons/lang3/time/FastDateParser$4;

    goto :goto_3

    :cond_11
    sget-object p1, Lorg/apache/commons/lang3/time/FastDateParser;->y:Lorg/apache/commons/lang3/time/FastDateParser$5;

    goto :goto_3

    :cond_12
    sget-object p1, Lorg/apache/commons/lang3/time/FastDateParser;->t:Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    goto :goto_3

    :cond_13
    const/16 p1, 0x9

    .line 42
    invoke-virtual {v1, p1, v6}, Lorg/apache/commons/lang3/time/FastDateParser;->b(ILjava/util/Calendar;)Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    move-result-object p1

    goto :goto_3

    .line 43
    :cond_14
    sget-object p1, Lorg/apache/commons/lang3/time/FastDateParser;->C:Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;

    .line 44
    :goto_3
    invoke-direct {v4, p1, v3}, Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;-><init>(Lorg/apache/commons/lang3/time/FastDateParser$Strategy;I)V

    move-object p1, v4

    goto :goto_6

    .line 45
    :cond_15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    move v1, p3

    .line 46
    :goto_4
    iget v4, p2, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->b:I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_19

    .line 47
    iget v4, p2, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-nez v1, :cond_16

    .line 48
    invoke-static {v4}, Lorg/apache/commons/lang3/CharUtils;->a(C)Z

    move-result v5

    if-eqz v5, :cond_16

    goto :goto_5

    :cond_16
    const/16 v5, 0x27

    if-ne v4, v5, :cond_18

    .line 49
    iget v6, p2, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->b:I

    add-int/2addr v6, v0

    iput v6, p2, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->b:I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v6, v7, :cond_17

    iget v6, p2, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->b:I

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v5, :cond_18

    :cond_17
    xor-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 50
    :cond_18
    iget v5, p2, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->b:I

    add-int/2addr v5, v0

    iput v5, p2, Lorg/apache/commons/lang3/time/FastDateParser$StrategyParser;->b:I

    .line 51
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_19
    :goto_5
    if-nez v1, :cond_1b

    .line 52
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 53
    new-instance v1, Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;

    new-instance v3, Lorg/apache/commons/lang3/time/FastDateParser$CopyQuotedStrategy;

    invoke-direct {v3, p1}, Lorg/apache/commons/lang3/time/FastDateParser$CopyQuotedStrategy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-direct {v1, v3, p1}, Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;-><init>(Lorg/apache/commons/lang3/time/FastDateParser$Strategy;I)V

    move-object p1, v1

    :goto_6
    if-nez p1, :cond_1a

    return-void

    .line 54
    :cond_1a
    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDateParser;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 55
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unterminated quote"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4b
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x57
        :pswitch_2
        :pswitch_1
        :pswitch_a
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/util/Calendar;Ljava/util/Locale;ILjava/lang/StringBuilder;)Ljava/util/HashMap;
    .locals 3

    .line 1
    const-string v0, "calendar"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    sget v1, Lorg/apache/commons/lang3/LocaleUtils;->a:I

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :goto_0
    const/4 v1, 0x0

    .line 21
    invoke-virtual {p0, p2, v1, p1}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    new-instance p2, Ljava/util/TreeSet;

    .line 26
    .line 27
    sget-object v2, Lorg/apache/commons/lang3/time/FastDateParser;->l:Ljava/util/Comparator;

    .line 28
    .line 29
    invoke-direct {p2, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 30
    .line 31
    .line 32
    new-instance v2, Lorg/apache/commons/lang3/time/e;

    .line 33
    .line 34
    invoke-direct {v2, p1, p2, v0}, Lorg/apache/commons/lang3/time/e;-><init>(Ljava/util/Locale;Ljava/util/TreeSet;Ljava/util/HashMap;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p0, v2}, Lj$/util/Map$-EL;->forEach(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    .line 38
    .line 39
    .line 40
    new-instance p0, Lorg/apache/commons/lang3/time/f;

    .line 41
    .line 42
    invoke-direct {p0, p3, v1}, Lorg/apache/commons/lang3/time/f;-><init>(Ljava/lang/StringBuilder;I)V

    .line 43
    .line 44
    .line 45
    invoke-static {p2, p0}, Lj$/lang/Iterable$-EL;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    .line 46
    .line 47
    .line 48
    return-object v0
.end method

.method public static c(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/16 v2, 0x3f

    .line 7
    .line 8
    const/16 v3, 0x2e

    .line 9
    .line 10
    if-ge v0, v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/16 v4, 0x24

    .line 17
    .line 18
    const/16 v5, 0x5c

    .line 19
    .line 20
    if-eq v1, v4, :cond_0

    .line 21
    .line 22
    if-eq v1, v3, :cond_0

    .line 23
    .line 24
    if-eq v1, v2, :cond_0

    .line 25
    .line 26
    const/16 v2, 0x5e

    .line 27
    .line 28
    if-eq v1, v2, :cond_0

    .line 29
    .line 30
    const/16 v2, 0x5b

    .line 31
    .line 32
    if-eq v1, v2, :cond_0

    .line 33
    .line 34
    if-eq v1, v5, :cond_0

    .line 35
    .line 36
    const/16 v2, 0x7b

    .line 37
    .line 38
    if-eq v1, v2, :cond_0

    .line 39
    .line 40
    const/16 v2, 0x7c

    .line 41
    .line 42
    if-eq v1, v2, :cond_0

    .line 43
    .line 44
    packed-switch v1, :pswitch_data_0

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    :pswitch_0
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    add-int/lit8 v0, v0, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    add-int/lit8 p1, p1, -0x1

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-ne p1, v3, :cond_2

    .line 68
    .line 69
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    :cond_2
    return-void

    .line 73
    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final b(ILjava/util/Calendar;)Lorg/apache/commons/lang3/time/FastDateParser$Strategy;
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/time/FastDateParser;->m:[Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    aget-object v1, v0, p1

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    const/4 v2, 0x3

    .line 11
    invoke-direct {v1, v2}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 12
    .line 13
    .line 14
    aput-object v1, v0, p1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    aget-object v1, v0, p1

    .line 20
    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDateParser;->g:Ljava/util/Locale;

    .line 23
    .line 24
    new-instance v2, Lorg/apache/commons/lang3/time/d;

    .line 25
    .line 26
    invoke-direct {v2, p0, p1, p2}, Lorg/apache/commons/lang3/time/d;-><init>(Lorg/apache/commons/lang3/time/FastDateParser;ILjava/util/Calendar;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v0, v2}, Lj$/util/concurrent/ConcurrentMap$-EL;->computeIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 34
    .line 35
    return-object p1

    .line 36
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lorg/apache/commons/lang3/time/FastDateParser;

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
    check-cast p1, Lorg/apache/commons/lang3/time/FastDateParser;

    .line 8
    .line 9
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDateParser;->c:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, p1, Lorg/apache/commons/lang3/time/FastDateParser;->c:Ljava/lang/String;

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
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDateParser;->f:Ljava/util/TimeZone;

    .line 20
    .line 21
    iget-object v2, p1, Lorg/apache/commons/lang3/time/FastDateParser;->f:Ljava/util/TimeZone;

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
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDateParser;->g:Ljava/util/Locale;

    .line 30
    .line 31
    iget-object p1, p1, Lorg/apache/commons/lang3/time/FastDateParser;->g:Ljava/util/Locale;

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
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDateParser;->c:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDateParser;->f:Ljava/util/TimeZone;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDateParser;->g:Ljava/util/Locale;

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
    const-string v1, "FastDateParser["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDateParser;->c:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDateParser;->g:Ljava/util/Locale;

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
    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDateParser;->f:Ljava/util/TimeZone;

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
