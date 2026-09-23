.class final enum Lorg/jsoup/parser/TokeniserState$34;
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
    const-string v0, "BeforeAttributeName"

    .line 2
    .line 3
    const/16 v1, 0x21

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
    .locals 5

    .line 1
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->consume()C

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lorg/jsoup/parser/TokeniserState;->M:Lorg/jsoup/parser/TokeniserState$35;

    .line 6
    .line 7
    if-eqz v0, :cond_7

    .line 8
    .line 9
    const/16 v2, 0x20

    .line 10
    .line 11
    if-eq v0, v2, :cond_6

    .line 12
    .line 13
    const/16 v2, 0x22

    .line 14
    .line 15
    if-eq v0, v2, :cond_3

    .line 16
    .line 17
    const/16 v2, 0x27

    .line 18
    .line 19
    if-eq v0, v2, :cond_3

    .line 20
    .line 21
    const/16 v2, 0x2f

    .line 22
    .line 23
    if-eq v0, v2, :cond_2

    .line 24
    .line 25
    const v2, 0xffff

    .line 26
    .line 27
    .line 28
    sget-object v3, Lorg/jsoup/parser/TokeniserState;->c:Lorg/jsoup/parser/TokeniserState$1;

    .line 29
    .line 30
    if-eq v0, v2, :cond_1

    .line 31
    .line 32
    const/16 v2, 0x9

    .line 33
    .line 34
    if-eq v0, v2, :cond_6

    .line 35
    .line 36
    const/16 v2, 0xa

    .line 37
    .line 38
    if-eq v0, v2, :cond_6

    .line 39
    .line 40
    const/16 v2, 0xc

    .line 41
    .line 42
    if-eq v0, v2, :cond_6

    .line 43
    .line 44
    const/16 v2, 0xd

    .line 45
    .line 46
    if-eq v0, v2, :cond_6

    .line 47
    .line 48
    packed-switch v0, :pswitch_data_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :pswitch_0
    iget-object v0, p1, Lorg/jsoup/parser/Tokeniser;->j:Lorg/jsoup/parser/Token$Tag;

    .line 53
    .line 54
    instance-of v0, v0, Lorg/jsoup/parser/Token$XmlDecl;

    .line 55
    .line 56
    if-eqz v0, :cond_0

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_0
    :goto_0
    iget-object v0, p1, Lorg/jsoup/parser/Tokeniser;->j:Lorg/jsoup/parser/Token$Tag;

    .line 60
    .line 61
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->l()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->G()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v1}, Lorg/jsoup/parser/Tokeniser;->o(Lorg/jsoup/parser/TokeniserState;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :pswitch_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->k()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v3}, Lorg/jsoup/parser/Tokeniser;->o(Lorg/jsoup/parser/TokeniserState;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_1
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->l(Lorg/jsoup/parser/TokeniserState;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v3}, Lorg/jsoup/parser/Tokeniser;->o(Lorg/jsoup/parser/TokeniserState;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_2
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->T:Lorg/jsoup/parser/TokeniserState$42;

    .line 86
    .line 87
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->o(Lorg/jsoup/parser/TokeniserState;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_3
    :pswitch_2
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->m(Lorg/jsoup/parser/TokeniserState;)V

    .line 92
    .line 93
    .line 94
    iget-object v2, p1, Lorg/jsoup/parser/Tokeniser;->j:Lorg/jsoup/parser/Token$Tag;

    .line 95
    .line 96
    invoke-virtual {v2}, Lorg/jsoup/parser/Token$Tag;->l()V

    .line 97
    .line 98
    .line 99
    iget-object v2, p1, Lorg/jsoup/parser/Tokeniser;->j:Lorg/jsoup/parser/Token$Tag;

    .line 100
    .line 101
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    add-int/lit8 v3, v3, -0x1

    .line 106
    .line 107
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    iget-object v4, v2, Lorg/jsoup/parser/Token$Tag;->h:Lorg/jsoup/parser/TokenData;

    .line 112
    .line 113
    invoke-virtual {v4, v0}, Lorg/jsoup/parser/TokenData;->a(C)V

    .line 114
    .line 115
    .line 116
    iget-boolean v0, v2, Lorg/jsoup/parser/Token$Tag;->l:Z

    .line 117
    .line 118
    if-eqz v0, :cond_5

    .line 119
    .line 120
    iget v0, v2, Lorg/jsoup/parser/Token$Tag;->m:I

    .line 121
    .line 122
    const/4 v4, -0x1

    .line 123
    if-le v0, v4, :cond_4

    .line 124
    .line 125
    move v3, v0

    .line 126
    :cond_4
    iput v3, v2, Lorg/jsoup/parser/Token$Tag;->m:I

    .line 127
    .line 128
    iput p2, v2, Lorg/jsoup/parser/Token$Tag;->n:I

    .line 129
    .line 130
    :cond_5
    invoke-virtual {p1, v1}, Lorg/jsoup/parser/Tokeniser;->o(Lorg/jsoup/parser/TokeniserState;)V

    .line 131
    .line 132
    .line 133
    :cond_6
    :goto_1
    return-void

    .line 134
    :cond_7
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->G()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->m(Lorg/jsoup/parser/TokeniserState;)V

    .line 138
    .line 139
    .line 140
    iget-object p2, p1, Lorg/jsoup/parser/Tokeniser;->j:Lorg/jsoup/parser/Token$Tag;

    .line 141
    .line 142
    invoke-virtual {p2}, Lorg/jsoup/parser/Token$Tag;->l()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v1}, Lorg/jsoup/parser/Tokeniser;->o(Lorg/jsoup/parser/TokeniserState;)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
