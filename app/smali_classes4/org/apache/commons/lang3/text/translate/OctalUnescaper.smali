.class public Lorg/apache/commons/lang3/text/translate/OctalUnescaper;
.super Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public final a(Ljava/lang/CharSequence;ILjava/io/StringWriter;)I
    .locals 8

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sub-int/2addr v0, p2

    .line 6
    const/4 v1, 0x1

    .line 7
    sub-int/2addr v0, v1

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/16 v4, 0x5c

    .line 18
    .line 19
    if-ne v3, v4, :cond_1

    .line 20
    .line 21
    if-lez v0, :cond_1

    .line 22
    .line 23
    add-int/lit8 v3, p2, 0x1

    .line 24
    .line 25
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    sget v5, Lorg/apache/commons/lang3/CharUtils;->a:I

    .line 30
    .line 31
    const/16 v5, 0x30

    .line 32
    .line 33
    if-lt v4, v5, :cond_1

    .line 34
    .line 35
    const/16 v6, 0x37

    .line 36
    .line 37
    if-gt v4, v6, :cond_1

    .line 38
    .line 39
    add-int/lit8 v4, p2, 0x2

    .line 40
    .line 41
    add-int/lit8 p2, p2, 0x3

    .line 42
    .line 43
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    if-le v0, v1, :cond_0

    .line 51
    .line 52
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    if-lt v7, v5, :cond_0

    .line 57
    .line 58
    if-gt v7, v6, :cond_0

    .line 59
    .line 60
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const/4 v4, 0x2

    .line 68
    if-le v0, v4, :cond_0

    .line 69
    .line 70
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-lt v0, v5, :cond_0

    .line 75
    .line 76
    const/16 v3, 0x33

    .line 77
    .line 78
    if-gt v0, v3, :cond_0

    .line 79
    .line 80
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-lt v0, v5, :cond_0

    .line 85
    .line 86
    if-gt v0, v6, :cond_0

    .line 87
    .line 88
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    const/16 p2, 0x8

    .line 100
    .line 101
    invoke-static {p1, p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    add-int/2addr p1, v1

    .line 113
    return p1

    .line 114
    :cond_1
    const/4 p1, 0x0

    .line 115
    return p1
.end method
