.class public Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;
.super Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final b:Ljava/util/EnumSet;


# direct methods
.method public varargs constructor <init>([Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    array-length v0, p1

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;->b:Ljava/util/EnumSet;

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    sget-object p1, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;->c:Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    .line 19
    .line 20
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;->b:Ljava/util/EnumSet;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;ILjava/io/StringWriter;)I
    .locals 7

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/16 v2, 0x26

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-ne v1, v2, :cond_d

    .line 13
    .line 14
    add-int/lit8 v1, v0, -0x2

    .line 15
    .line 16
    if-ge p2, v1, :cond_d

    .line 17
    .line 18
    add-int/lit8 v1, p2, 0x1

    .line 19
    .line 20
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/16 v2, 0x23

    .line 25
    .line 26
    if-ne v1, v2, :cond_d

    .line 27
    .line 28
    add-int/lit8 v1, p2, 0x2

    .line 29
    .line 30
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const/16 v4, 0x78

    .line 35
    .line 36
    const/4 v5, 0x1

    .line 37
    if-eq v2, v4, :cond_1

    .line 38
    .line 39
    const/16 v4, 0x58

    .line 40
    .line 41
    if-ne v2, v4, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move p2, v3

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    add-int/lit8 v1, p2, 0x3

    .line 47
    .line 48
    if-ne v1, v0, :cond_2

    .line 49
    .line 50
    goto/16 :goto_8

    .line 51
    .line 52
    :cond_2
    move p2, v5

    .line 53
    :goto_1
    move v2, v1

    .line 54
    :goto_2
    if-ge v2, v0, :cond_6

    .line 55
    .line 56
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    sget v6, Lorg/apache/commons/lang3/CharUtils;->a:I

    .line 61
    .line 62
    const/16 v6, 0x30

    .line 63
    .line 64
    if-lt v4, v6, :cond_3

    .line 65
    .line 66
    const/16 v6, 0x39

    .line 67
    .line 68
    if-gt v4, v6, :cond_3

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_3
    const/16 v6, 0x61

    .line 72
    .line 73
    if-lt v4, v6, :cond_4

    .line 74
    .line 75
    const/16 v6, 0x66

    .line 76
    .line 77
    if-le v4, v6, :cond_5

    .line 78
    .line 79
    :cond_4
    const/16 v6, 0x41

    .line 80
    .line 81
    if-lt v4, v6, :cond_6

    .line 82
    .line 83
    const/16 v6, 0x46

    .line 84
    .line 85
    if-gt v4, v6, :cond_6

    .line 86
    .line 87
    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_6
    if-eq v2, v0, :cond_7

    .line 91
    .line 92
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    const/16 v4, 0x3b

    .line 97
    .line 98
    if-ne v0, v4, :cond_7

    .line 99
    .line 100
    move v0, v5

    .line 101
    goto :goto_4

    .line 102
    :cond_7
    move v0, v3

    .line 103
    :goto_4
    if-nez v0, :cond_a

    .line 104
    .line 105
    iget-object v4, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;->b:Ljava/util/EnumSet;

    .line 106
    .line 107
    if-eqz v4, :cond_8

    .line 108
    .line 109
    sget-object v6, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;->c:Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    .line 110
    .line 111
    invoke-virtual {v4, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    if-eqz v6, :cond_8

    .line 116
    .line 117
    return v3

    .line 118
    :cond_8
    if-eqz v4, :cond_a

    .line 119
    .line 120
    sget-object v6, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;->f:Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    .line 121
    .line 122
    invoke-virtual {v4, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    if-nez v4, :cond_9

    .line 127
    .line 128
    goto :goto_5

    .line 129
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 130
    .line 131
    const-string p2, "Semi-colon required at end of numeric entity"

    .line 132
    .line 133
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p1

    .line 137
    :cond_a
    :goto_5
    if-eqz p2, :cond_b

    .line 138
    .line 139
    :try_start_0
    invoke-interface {p1, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    const/16 v4, 0x10

    .line 148
    .line 149
    invoke-static {p1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    goto :goto_6

    .line 154
    :cond_b
    invoke-interface {p1, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    const/16 v4, 0xa

    .line 163
    .line 164
    invoke-static {p1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 165
    .line 166
    .line 167
    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_6
    const v4, 0xffff

    .line 169
    .line 170
    .line 171
    if-le p1, v4, :cond_c

    .line 172
    .line 173
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    aget-char v3, p1, v3

    .line 178
    .line 179
    invoke-virtual {p3, v3}, Ljava/io/Writer;->write(I)V

    .line 180
    .line 181
    .line 182
    aget-char p1, p1, v5

    .line 183
    .line 184
    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(I)V

    .line 185
    .line 186
    .line 187
    goto :goto_7

    .line 188
    :cond_c
    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(I)V

    .line 189
    .line 190
    .line 191
    :goto_7
    add-int/lit8 v2, v2, 0x2

    .line 192
    .line 193
    sub-int/2addr v2, v1

    .line 194
    add-int/2addr v2, p2

    .line 195
    add-int/2addr v2, v0

    .line 196
    return v2

    .line 197
    :catch_0
    :cond_d
    :goto_8
    return v3
.end method
