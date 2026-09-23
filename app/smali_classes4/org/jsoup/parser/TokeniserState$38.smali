.class final enum Lorg/jsoup/parser/TokeniserState$38;
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
    const-string v0, "AttributeValue_doubleQuoted"

    .line 2
    .line 3
    const/16 v1, 0x25

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
    const/4 v2, 0x0

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
    move-result v2

    .line 19
    const/4 v3, 0x1

    .line 20
    if-lez v2, :cond_0

    .line 21
    .line 22
    iget-object v2, p1, Lorg/jsoup/parser/Tokeniser;->j:Lorg/jsoup/parser/Token$Tag;

    .line 23
    .line 24
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    iget-object v5, v2, Lorg/jsoup/parser/Token$Tag;->i:Lorg/jsoup/parser/TokenData;

    .line 29
    .line 30
    invoke-virtual {v5, v1}, Lorg/jsoup/parser/TokenData;->b(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v0, v4}, Lorg/jsoup/parser/Token$Tag;->j(II)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p1, Lorg/jsoup/parser/Tokeniser;->j:Lorg/jsoup/parser/Token$Tag;

    .line 38
    .line 39
    iput-boolean v3, v0, Lorg/jsoup/parser/Token$Tag;->j:Z

    .line 40
    .line 41
    :goto_0
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->consume()C

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_5

    .line 50
    .line 51
    const/16 v2, 0x22

    .line 52
    .line 53
    if-eq v1, v2, :cond_4

    .line 54
    .line 55
    const/16 v4, 0x26

    .line 56
    .line 57
    if-eq v1, v4, :cond_2

    .line 58
    .line 59
    const v2, 0xffff

    .line 60
    .line 61
    .line 62
    if-eq v1, v2, :cond_1

    .line 63
    .line 64
    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->j:Lorg/jsoup/parser/Token$Tag;

    .line 65
    .line 66
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    invoke-virtual {p1, v1, v0, p2}, Lorg/jsoup/parser/Token$Tag;->g(CII)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_1
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->l(Lorg/jsoup/parser/TokeniserState;)V

    .line 75
    .line 76
    .line 77
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->c:Lorg/jsoup/parser/TokeniserState$1;

    .line 78
    .line 79
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->o(Lorg/jsoup/parser/TokeniserState;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_2
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {p1, v1, v3}, Lorg/jsoup/parser/Tokeniser;->c(Ljava/lang/Character;Z)[I

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    if-eqz v1, :cond_3

    .line 92
    .line 93
    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->j:Lorg/jsoup/parser/Token$Tag;

    .line 94
    .line 95
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    invoke-virtual {p1, v1, v0, p2}, Lorg/jsoup/parser/Token$Tag;->h([III)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_3
    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->j:Lorg/jsoup/parser/Token$Tag;

    .line 104
    .line 105
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    invoke-virtual {p1, v4, v0, p2}, Lorg/jsoup/parser/Token$Tag;->g(CII)V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :cond_4
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->S:Lorg/jsoup/parser/TokeniserState$41;

    .line 114
    .line 115
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->o(Lorg/jsoup/parser/TokeniserState;)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_5
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->m(Lorg/jsoup/parser/TokeniserState;)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->j:Lorg/jsoup/parser/Token$Tag;

    .line 123
    .line 124
    const v1, 0xfffd

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    invoke-virtual {p1, v1, v0, p2}, Lorg/jsoup/parser/Token$Tag;->g(CII)V

    .line 132
    .line 133
    .line 134
    return-void
.end method
