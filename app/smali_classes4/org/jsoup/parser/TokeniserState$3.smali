.class final enum Lorg/jsoup/parser/TokeniserState$3;
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
    const-string v0, "Rcdata"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final d(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->current()C

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    const/16 v1, 0x26

    .line 8
    .line 9
    if-eq v0, v1, :cond_4

    .line 10
    .line 11
    const/16 v2, 0x3c

    .line 12
    .line 13
    if-eq v0, v2, :cond_3

    .line 14
    .line 15
    const v3, 0xffff

    .line 16
    .line 17
    .line 18
    if-eq v0, v3, :cond_2

    .line 19
    .line 20
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->a()V

    .line 21
    .line 22
    .line 23
    iget v0, p2, Lorg/jsoup/parser/CharacterReader;->h:I

    .line 24
    .line 25
    iget v3, p2, Lorg/jsoup/parser/CharacterReader;->i:I

    .line 26
    .line 27
    iget-object v4, p2, Lorg/jsoup/parser/CharacterReader;->g:[C

    .line 28
    .line 29
    move v5, v0

    .line 30
    :goto_0
    if-ge v5, v3, :cond_0

    .line 31
    .line 32
    aget-char v6, v4, v5

    .line 33
    .line 34
    if-eq v6, v1, :cond_0

    .line 35
    .line 36
    if-eq v6, v2, :cond_0

    .line 37
    .line 38
    if-eqz v6, :cond_0

    .line 39
    .line 40
    add-int/lit8 v5, v5, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iput v5, p2, Lorg/jsoup/parser/CharacterReader;->h:I

    .line 44
    .line 45
    if-le v5, v0, :cond_1

    .line 46
    .line 47
    iget-object v1, p2, Lorg/jsoup/parser/CharacterReader;->g:[C

    .line 48
    .line 49
    iget-object p2, p2, Lorg/jsoup/parser/CharacterReader;->c:[Ljava/lang/String;

    .line 50
    .line 51
    sub-int/2addr v5, v0

    .line 52
    invoke-static {v1, p2, v0, v5}, Lorg/jsoup/parser/CharacterReader;->b([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    const-string p2, ""

    .line 58
    .line 59
    :goto_1
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->g(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    new-instance p2, Lorg/jsoup/parser/Token$EOF;

    .line 64
    .line 65
    invoke-direct {p2}, Lorg/jsoup/parser/Token$EOF;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->h(Lorg/jsoup/parser/Token;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_3
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->o:Lorg/jsoup/parser/TokeniserState$11;

    .line 73
    .line 74
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->a(Lorg/jsoup/parser/TokeniserState;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_4
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->h:Lorg/jsoup/parser/TokeniserState$4;

    .line 79
    .line 80
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->a(Lorg/jsoup/parser/TokeniserState;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_5
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->m(Lorg/jsoup/parser/TokeniserState;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->advance()V

    .line 88
    .line 89
    .line 90
    const p2, 0xfffd

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->f(C)V

    .line 94
    .line 95
    .line 96
    return-void
.end method
