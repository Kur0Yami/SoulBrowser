.class public Lorg/apache/commons/lang3/time/FastDateFormat;
.super Ljava/text/Format;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/time/DateParser;
.implements Lorg/apache/commons/lang3/time/DatePrinter;


# static fields
.field public static final g:Lorg/apache/commons/lang3/time/FastDateFormat$1;


# instance fields
.field public final c:Lorg/apache/commons/lang3/time/FastDatePrinter;

.field public final f:Lorg/apache/commons/lang3/time/FastDateParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateFormat$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/lang3/time/AbstractFormatCache;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/apache/commons/lang3/time/FastDateFormat;->g:Lorg/apache/commons/lang3/time/FastDateFormat$1;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter;

    .line 5
    .line 6
    invoke-direct {v0, p1, p2, p3}, Lorg/apache/commons/lang3/time/FastDatePrinter;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/apache/commons/lang3/time/FastDateFormat;->c:Lorg/apache/commons/lang3/time/FastDatePrinter;

    .line 10
    .line 11
    new-instance v0, Lorg/apache/commons/lang3/time/FastDateParser;

    .line 12
    .line 13
    invoke-direct {v0, p1, p2, p3}, Lorg/apache/commons/lang3/time/FastDateParser;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/apache/commons/lang3/time/FastDateFormat;->f:Lorg/apache/commons/lang3/time/FastDateParser;

    .line 17
    .line 18
    return-void
.end method

.method public static a()Lorg/apache/commons/lang3/time/FastDateFormat;
    .locals 8

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/time/FastDateFormat;->g:Lorg/apache/commons/lang3/time/FastDateFormat$1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    sget v5, Lorg/apache/commons/lang3/LocaleUtils;->a:I

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    :goto_0
    if-eqz v4, :cond_1

    .line 29
    .line 30
    move-object v5, v4

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    :goto_1
    new-instance v6, Lorg/apache/commons/lang3/time/AbstractFormatCache$ArrayKey;

    .line 37
    .line 38
    new-array v1, v1, [Ljava/lang/Object;

    .line 39
    .line 40
    const/4 v7, 0x0

    .line 41
    aput-object v2, v1, v7

    .line 42
    .line 43
    const/4 v7, 0x1

    .line 44
    aput-object v2, v1, v7

    .line 45
    .line 46
    const/4 v7, 0x2

    .line 47
    aput-object v5, v1, v7

    .line 48
    .line 49
    invoke-direct {v6, v1}, Lorg/apache/commons/lang3/time/AbstractFormatCache$ArrayKey;-><init>([Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    sget-object v1, Lorg/apache/commons/lang3/time/AbstractFormatCache;->b:Lj$/util/concurrent/ConcurrentHashMap;

    .line 53
    .line 54
    new-instance v7, Lorg/apache/commons/lang3/time/b;

    .line 55
    .line 56
    invoke-direct {v7, v2, v2, v5}, Lorg/apache/commons/lang3/time/b;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Locale;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v1, v6, v7}, Lj$/util/concurrent/ConcurrentMap$-EL;->computeIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v0, v1, v3, v4}, Lorg/apache/commons/lang3/time/AbstractFormatCache;->b(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Lorg/apache/commons/lang3/time/FastDateFormat;

    .line 70
    .line 71
    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lorg/apache/commons/lang3/time/FastDateFormat;
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/time/FastDateFormat;->g:Lorg/apache/commons/lang3/time/FastDateFormat$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p0, v1, v1}, Lorg/apache/commons/lang3/time/AbstractFormatCache;->b(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lorg/apache/commons/lang3/time/FastDateFormat;

    .line 9
    .line 10
    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/apache/commons/lang3/time/FastDateFormat;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    check-cast p1, Lorg/apache/commons/lang3/time/FastDateFormat;

    .line 8
    .line 9
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDateFormat;->c:Lorg/apache/commons/lang3/time/FastDatePrinter;

    .line 10
    .line 11
    iget-object p1, p1, Lorg/apache/commons/lang3/time/FastDateFormat;->c:Lorg/apache/commons/lang3/time/FastDatePrinter;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lorg/apache/commons/lang3/time/FastDatePrinter;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public final format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 4

    .line 1
    instance-of p3, p1, Ljava/util/Date;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDateFormat;->c:Lorg/apache/commons/lang3/time/FastDatePrinter;

    .line 5
    .line 6
    if-eqz p3, :cond_1

    .line 7
    .line 8
    check-cast p1, Ljava/util/Date;

    .line 9
    .line 10
    iget-object p3, v1, Lorg/apache/commons/lang3/time/FastDatePrinter;->f:Ljava/util/TimeZone;

    .line 11
    .line 12
    iget-object v2, v1, Lorg/apache/commons/lang3/time/FastDatePrinter;->g:Ljava/util/Locale;

    .line 13
    .line 14
    invoke-static {p3, v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    invoke-virtual {p3, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 19
    .line 20
    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    iget v2, v1, Lorg/apache/commons/lang3/time/FastDatePrinter;->i:I

    .line 24
    .line 25
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 26
    .line 27
    .line 28
    iget-object v1, v1, Lorg/apache/commons/lang3/time/FastDatePrinter;->h:[Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;

    .line 29
    .line 30
    array-length v2, v1

    .line 31
    :goto_0
    if-ge v0, v2, :cond_0

    .line 32
    .line 33
    aget-object v3, v1, v0

    .line 34
    .line 35
    invoke-interface {v3, p1, p3}, Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;->a(Ljava/lang/StringBuilder;Ljava/util/Calendar;)V

    .line 36
    .line 37
    .line 38
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    goto :goto_3

    .line 46
    :cond_1
    instance-of p3, p1, Ljava/util/Calendar;

    .line 47
    .line 48
    if-eqz p3, :cond_4

    .line 49
    .line 50
    check-cast p1, Ljava/util/Calendar;

    .line 51
    .line 52
    new-instance p3, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    iget v2, v1, Lorg/apache/commons/lang3/time/FastDatePrinter;->i:I

    .line 55
    .line 56
    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    iget-object v3, v1, Lorg/apache/commons/lang3/time/FastDatePrinter;->f:Ljava/util/TimeZone;

    .line 64
    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-nez v2, :cond_2

    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Ljava/util/Calendar;

    .line 76
    .line 77
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 78
    .line 79
    .line 80
    :cond_2
    iget-object v1, v1, Lorg/apache/commons/lang3/time/FastDatePrinter;->h:[Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;

    .line 81
    .line 82
    array-length v2, v1

    .line 83
    :goto_1
    if-ge v0, v2, :cond_3

    .line 84
    .line 85
    aget-object v3, v1, v0

    .line 86
    .line 87
    invoke-interface {v3, p3, p1}, Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;->a(Ljava/lang/StringBuilder;Ljava/util/Calendar;)V

    .line 88
    .line 89
    .line 90
    add-int/lit8 v0, v0, 0x1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    goto :goto_3

    .line 98
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    instance-of p3, p1, Ljava/lang/Long;

    .line 102
    .line 103
    if-eqz p3, :cond_6

    .line 104
    .line 105
    check-cast p1, Ljava/lang/Long;

    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 108
    .line 109
    .line 110
    move-result-wide v2

    .line 111
    iget-object p1, v1, Lorg/apache/commons/lang3/time/FastDatePrinter;->f:Ljava/util/TimeZone;

    .line 112
    .line 113
    iget-object p3, v1, Lorg/apache/commons/lang3/time/FastDatePrinter;->g:Ljava/util/Locale;

    .line 114
    .line 115
    invoke-static {p1, p3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 120
    .line 121
    .line 122
    new-instance p3, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    iget v2, v1, Lorg/apache/commons/lang3/time/FastDatePrinter;->i:I

    .line 125
    .line 126
    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 127
    .line 128
    .line 129
    iget-object v1, v1, Lorg/apache/commons/lang3/time/FastDatePrinter;->h:[Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;

    .line 130
    .line 131
    array-length v2, v1

    .line 132
    :goto_2
    if-ge v0, v2, :cond_5

    .line 133
    .line 134
    aget-object v3, v1, v0

    .line 135
    .line 136
    invoke-interface {v3, p3, p1}, Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;->a(Ljava/lang/StringBuilder;Ljava/util/Calendar;)V

    .line 137
    .line 138
    .line 139
    add-int/lit8 v0, v0, 0x1

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_5
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    :goto_3
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    .line 148
    .line 149
    return-object p2

    .line 150
    :cond_6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 151
    .line 152
    sget-object p3, Lorg/apache/commons/lang3/ClassUtils;->a:Ljava/util/HashMap;

    .line 153
    .line 154
    if-nez p1, :cond_7

    .line 155
    .line 156
    const-string p1, "<null>"

    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    :goto_4
    const-string p3, "Unknown class: "

    .line 168
    .line 169
    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw p2
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDateFormat;->c:Lorg/apache/commons/lang3/time/FastDatePrinter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDateFormat;->f:Lorg/apache/commons/lang3/time/FastDateParser;

    .line 2
    .line 3
    iget-object v0, v1, Lorg/apache/commons/lang3/time/FastDateParser;->f:Ljava/util/TimeZone;

    .line 4
    .line 5
    iget-object v2, v1, Lorg/apache/commons/lang3/time/FastDateParser;->g:Ljava/util/Locale;

    .line 6
    .line 7
    invoke-static {v0, v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    .line 12
    .line 13
    .line 14
    iget-object v0, v1, Lorg/apache/commons/lang3/time/FastDateParser;->j:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    :goto_0
    invoke-interface {v6}, Ljava/util/ListIterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-interface {v6}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;

    .line 31
    .line 32
    iget-object v3, v0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;->a:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 33
    .line 34
    invoke-virtual {v3}, Lorg/apache/commons/lang3/time/FastDateParser$Strategy;->a()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    const/4 v4, 0x0

    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    invoke-interface {v6}, Ljava/util/ListIterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-nez v3, :cond_0

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    invoke-interface {v6}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;

    .line 53
    .line 54
    iget-object v3, v3, Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;->a:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 55
    .line 56
    invoke-interface {v6}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Lorg/apache/commons/lang3/time/FastDateParser$Strategy;->a()Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_1

    .line 64
    .line 65
    iget v4, v0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;->b:I

    .line 66
    .line 67
    :cond_1
    :goto_1
    move v5, v4

    .line 68
    iget-object v0, v0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;->a:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 69
    .line 70
    move-object v3, p1

    .line 71
    move-object v4, p2

    .line 72
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/lang3/time/FastDateParser$Strategy;->b(Lorg/apache/commons/lang3/time/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;Ljava/text/ParsePosition;I)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-nez p1, :cond_2

    .line 77
    .line 78
    const/4 p1, 0x0

    .line 79
    return-object p1

    .line 80
    :cond_2
    move-object p1, v3

    .line 81
    move-object p2, v4

    .line 82
    goto :goto_0

    .line 83
    :cond_3
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "FastDateFormat["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDateFormat;->c:Lorg/apache/commons/lang3/time/FastDatePrinter;

    .line 9
    .line 10
    iget-object v2, v1, Lorg/apache/commons/lang3/time/FastDatePrinter;->c:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, ","

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v3, v1, Lorg/apache/commons/lang3/time/FastDatePrinter;->g:Ljava/util/Locale;

    .line 21
    .line 22
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, v1, Lorg/apache/commons/lang3/time/FastDatePrinter;->f:Ljava/util/TimeZone;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, "]"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0
.end method
