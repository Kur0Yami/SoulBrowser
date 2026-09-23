.class final enum Lorg/jsoup/parser/TokeniserState$40;
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
    const-string v0, "AttributeValue_unquoted"

    .line 2
    .line 3
    const/16 v1, 0x27

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
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lorg/jsoup/parser/TokeniserState;->v0:[C

    .line 6
    .line 7
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/CharacterReader;->i([C)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-lez v2, :cond_0

    .line 16
    .line 17
    iget-object v2, p1, Lorg/jsoup/parser/Tokeniser;->j:Lorg/jsoup/parser/Token$Tag;

    .line 18
    .line 19
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    iget-object v4, v2, Lorg/jsoup/parser/Token$Tag;->i:Lorg/jsoup/parser/TokenData;

    .line 24
    .line 25
    invoke-virtual {v4, v1}, Lorg/jsoup/parser/TokenData;->b(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v0, v3}, Lorg/jsoup/parser/Token$Tag;->j(II)V

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->consume()C

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_6

    .line 40
    .line 41
    const/16 v2, 0x20

    .line 42
    .line 43
    if-eq v1, v2, :cond_5

    .line 44
    .line 45
    const/16 v2, 0x22

    .line 46
    .line 47
    if-eq v1, v2, :cond_4

    .line 48
    .line 49
    const/16 v2, 0x60

    .line 50
    .line 51
    if-eq v1, v2, :cond_4

    .line 52
    .line 53
    const v2, 0xffff

    .line 54
    .line 55
    .line 56
    sget-object v3, Lorg/jsoup/parser/TokeniserState;->c:Lorg/jsoup/parser/TokeniserState$1;

    .line 57
    .line 58
    if-eq v1, v2, :cond_3

    .line 59
    .line 60
    const/16 v2, 0x9

    .line 61
    .line 62
    if-eq v1, v2, :cond_5

    .line 63
    .line 64
    const/16 v2, 0xa

    .line 65
    .line 66
    if-eq v1, v2, :cond_5

    .line 67
    .line 68
    const/16 v2, 0xc

    .line 69
    .line 70
    if-eq v1, v2, :cond_5

    .line 71
    .line 72
    const/16 v2, 0xd

    .line 73
    .line 74
    if-eq v1, v2, :cond_5

    .line 75
    .line 76
    const/16 v2, 0x26

    .line 77
    .line 78
    if-eq v1, v2, :cond_1

    .line 79
    .line 80
    const/16 v2, 0x27

    .line 81
    .line 82
    if-eq v1, v2, :cond_4

    .line 83
    .line 84
    packed-switch v1, :pswitch_data_0

    .line 85
    .line 86
    .line 87
    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->j:Lorg/jsoup/parser/Token$Tag;

    .line 88
    .line 89
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    invoke-virtual {p1, v1, v0, p2}, Lorg/jsoup/parser/Token$Tag;->g(CII)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :pswitch_0
    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->k()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v3}, Lorg/jsoup/parser/Tokeniser;->o(Lorg/jsoup/parser/TokeniserState;)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_1
    const/16 v1, 0x3e

    .line 105
    .line 106
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    const/4 v3, 0x1

    .line 111
    invoke-virtual {p1, v1, v3}, Lorg/jsoup/parser/Tokeniser;->c(Ljava/lang/Character;Z)[I

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    if-eqz v1, :cond_2

    .line 116
    .line 117
    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->j:Lorg/jsoup/parser/Token$Tag;

    .line 118
    .line 119
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 120
    .line 121
    .line 122
    move-result p2

    .line 123
    invoke-virtual {p1, v1, v0, p2}, Lorg/jsoup/parser/Token$Tag;->h([III)V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_2
    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->j:Lorg/jsoup/parser/Token$Tag;

    .line 128
    .line 129
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 130
    .line 131
    .line 132
    move-result p2

    .line 133
    invoke-virtual {p1, v2, v0, p2}, Lorg/jsoup/parser/Token$Tag;->g(CII)V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :cond_3
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->l(Lorg/jsoup/parser/TokeniserState;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v3}, Lorg/jsoup/parser/Tokeniser;->o(Lorg/jsoup/parser/TokeniserState;)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :cond_4
    :pswitch_1
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->m(Lorg/jsoup/parser/TokeniserState;)V

    .line 145
    .line 146
    .line 147
    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->j:Lorg/jsoup/parser/Token$Tag;

    .line 148
    .line 149
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 150
    .line 151
    .line 152
    move-result p2

    .line 153
    invoke-virtual {p1, v1, v0, p2}, Lorg/jsoup/parser/Token$Tag;->g(CII)V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :cond_5
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->L:Lorg/jsoup/parser/TokeniserState$34;

    .line 158
    .line 159
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->o(Lorg/jsoup/parser/TokeniserState;)V

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :cond_6
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->m(Lorg/jsoup/parser/TokeniserState;)V

    .line 164
    .line 165
    .line 166
    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->j:Lorg/jsoup/parser/Token$Tag;

    .line 167
    .line 168
    const v1, 0xfffd

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 172
    .line 173
    .line 174
    move-result p2

    .line 175
    invoke-virtual {p1, v1, v0, p2}, Lorg/jsoup/parser/Token$Tag;->g(CII)V

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
