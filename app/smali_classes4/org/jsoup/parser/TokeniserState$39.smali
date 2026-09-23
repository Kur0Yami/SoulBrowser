.class final enum Lorg/jsoup/parser/TokeniserState$39;
.super Lorg/jsoup/parser/TokeniserState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/TokeniserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "AttributeValue_singleQuoted"

    .line 2
    .line 3
    const/16 v1, 0x26

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final d(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Lorg/jsoup/parser/c;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, v2}, Lorg/jsoup/parser/c;-><init>(Z)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/CharacterReader;->f(Lorg/jsoup/parser/CharacterReader$CharPredicate;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-lez v3, :cond_0

    .line 20
    .line 21
    iget-object v3, p1, Lorg/jsoup/parser/Tokeniser;->j:Lorg/jsoup/parser/Token$Tag;

    .line 22
    .line 23
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    iget-object v5, v3, Lorg/jsoup/parser/Token$Tag;->i:Lorg/jsoup/parser/TokenData;

    .line 28
    .line 29
    invoke-virtual {v5, v1}, Lorg/jsoup/parser/TokenData;->b(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v0, v4}, Lorg/jsoup/parser/Token$Tag;->j(II)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p1, Lorg/jsoup/parser/Tokeniser;->j:Lorg/jsoup/parser/Token$Tag;

    .line 37
    .line 38
    iput-boolean v2, v0, Lorg/jsoup/parser/Token$Tag;->j:Z

    .line 39
    .line 40
    :goto_0
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->consume()C

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_5

    .line 49
    .line 50
    const v3, 0xffff

    .line 51
    .line 52
    .line 53
    if-eq v1, v3, :cond_4

    .line 54
    .line 55
    const/16 v3, 0x27

    .line 56
    .line 57
    const/16 v4, 0x26

    .line 58
    .line 59
    if-eq v1, v4, :cond_2

    .line 60
    .line 61
    if-eq v1, v3, :cond_1

    .line 62
    .line 63
    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->j:Lorg/jsoup/parser/Token$Tag;

    .line 64
    .line 65
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    invoke-virtual {p1, v1, v0, p2}, Lorg/jsoup/parser/Token$Tag;->g(CII)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_1
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->S:Lorg/jsoup/parser/TokeniserState$41;

    .line 74
    .line 75
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->o(Lorg/jsoup/parser/TokeniserState;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_2
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {p1, v1, v2}, Lorg/jsoup/parser/Tokeniser;->c(Ljava/lang/Character;Z)[I

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    if-eqz v1, :cond_3

    .line 88
    .line 89
    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->j:Lorg/jsoup/parser/Token$Tag;

    .line 90
    .line 91
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    invoke-virtual {p1, v1, v0, p2}, Lorg/jsoup/parser/Token$Tag;->h([III)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_3
    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->j:Lorg/jsoup/parser/Token$Tag;

    .line 100
    .line 101
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    invoke-virtual {p1, v4, v0, p2}, Lorg/jsoup/parser/Token$Tag;->g(CII)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_4
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->l(Lorg/jsoup/parser/TokeniserState;)V

    .line 110
    .line 111
    .line 112
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->c:Lorg/jsoup/parser/TokeniserState$1;

    .line 113
    .line 114
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->o(Lorg/jsoup/parser/TokeniserState;)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :cond_5
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->m(Lorg/jsoup/parser/TokeniserState;)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->j:Lorg/jsoup/parser/Token$Tag;

    .line 122
    .line 123
    const v1, 0xfffd

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 127
    .line 128
    .line 129
    move-result p2

    .line 130
    invoke-virtual {p1, v1, v0, p2}, Lorg/jsoup/parser/Token$Tag;->g(CII)V

    .line 131
    .line 132
    .line 133
    return-void
.end method
