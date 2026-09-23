.class final enum Lorg/jsoup/parser/TokeniserState$36;
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
    const-string v0, "AfterAttributeName"

    .line 2
    .line 3
    const/16 v1, 0x23

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
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->consume()C

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    sget-object v2, Lorg/jsoup/parser/TokeniserState;->M:Lorg/jsoup/parser/TokeniserState$35;

    .line 7
    .line 8
    if-eqz v0, :cond_6

    .line 9
    .line 10
    const/16 v3, 0x20

    .line 11
    .line 12
    if-eq v0, v3, :cond_5

    .line 13
    .line 14
    const/16 v3, 0x22

    .line 15
    .line 16
    if-eq v0, v3, :cond_2

    .line 17
    .line 18
    const/16 v3, 0x27

    .line 19
    .line 20
    if-eq v0, v3, :cond_2

    .line 21
    .line 22
    const/16 v3, 0x2f

    .line 23
    .line 24
    if-eq v0, v3, :cond_1

    .line 25
    .line 26
    const v3, 0xffff

    .line 27
    .line 28
    .line 29
    sget-object v4, Lorg/jsoup/parser/TokeniserState;->c:Lorg/jsoup/parser/TokeniserState$1;

    .line 30
    .line 31
    if-eq v0, v3, :cond_0

    .line 32
    .line 33
    const/16 v3, 0x9

    .line 34
    .line 35
    if-eq v0, v3, :cond_5

    .line 36
    .line 37
    const/16 v3, 0xa

    .line 38
    .line 39
    if-eq v0, v3, :cond_5

    .line 40
    .line 41
    const/16 v3, 0xc

    .line 42
    .line 43
    if-eq v0, v3, :cond_5

    .line 44
    .line 45
    const/16 v3, 0xd

    .line 46
    .line 47
    if-eq v0, v3, :cond_5

    .line 48
    .line 49
    packed-switch v0, :pswitch_data_0

    .line 50
    .line 51
    .line 52
    iget-object v0, p1, Lorg/jsoup/parser/Tokeniser;->j:Lorg/jsoup/parser/Token$Tag;

    .line 53
    .line 54
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->l()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->G()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v2}, Lorg/jsoup/parser/Tokeniser;->o(Lorg/jsoup/parser/TokeniserState;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :pswitch_0
    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->k()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v4}, Lorg/jsoup/parser/Tokeniser;->o(Lorg/jsoup/parser/TokeniserState;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :pswitch_1
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->O:Lorg/jsoup/parser/TokeniserState$37;

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->o(Lorg/jsoup/parser/TokeniserState;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_0
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->l(Lorg/jsoup/parser/TokeniserState;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v4}, Lorg/jsoup/parser/Tokeniser;->o(Lorg/jsoup/parser/TokeniserState;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_1
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->T:Lorg/jsoup/parser/TokeniserState$42;

    .line 85
    .line 86
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->o(Lorg/jsoup/parser/TokeniserState;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_2
    :pswitch_2
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->m(Lorg/jsoup/parser/TokeniserState;)V

    .line 91
    .line 92
    .line 93
    iget-object v3, p1, Lorg/jsoup/parser/Tokeniser;->j:Lorg/jsoup/parser/Token$Tag;

    .line 94
    .line 95
    invoke-virtual {v3}, Lorg/jsoup/parser/Token$Tag;->l()V

    .line 96
    .line 97
    .line 98
    iget-object v3, p1, Lorg/jsoup/parser/Tokeniser;->j:Lorg/jsoup/parser/Token$Tag;

    .line 99
    .line 100
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    add-int/lit8 v4, v4, -0x1

    .line 105
    .line 106
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    iget-object v5, v3, Lorg/jsoup/parser/Token$Tag;->h:Lorg/jsoup/parser/TokenData;

    .line 111
    .line 112
    invoke-virtual {v5, v0}, Lorg/jsoup/parser/TokenData;->a(C)V

    .line 113
    .line 114
    .line 115
    iget-boolean v0, v3, Lorg/jsoup/parser/Token$Tag;->l:Z

    .line 116
    .line 117
    if-eqz v0, :cond_4

    .line 118
    .line 119
    iget v0, v3, Lorg/jsoup/parser/Token$Tag;->m:I

    .line 120
    .line 121
    if-le v0, v1, :cond_3

    .line 122
    .line 123
    move v4, v0

    .line 124
    :cond_3
    iput v4, v3, Lorg/jsoup/parser/Token$Tag;->m:I

    .line 125
    .line 126
    iput p2, v3, Lorg/jsoup/parser/Token$Tag;->n:I

    .line 127
    .line 128
    :cond_4
    invoke-virtual {p1, v2}, Lorg/jsoup/parser/Tokeniser;->o(Lorg/jsoup/parser/TokeniserState;)V

    .line 129
    .line 130
    .line 131
    :cond_5
    return-void

    .line 132
    :cond_6
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->m(Lorg/jsoup/parser/TokeniserState;)V

    .line 133
    .line 134
    .line 135
    iget-object v0, p1, Lorg/jsoup/parser/Tokeniser;->j:Lorg/jsoup/parser/Token$Tag;

    .line 136
    .line 137
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    add-int/lit8 v3, v3, -0x1

    .line 142
    .line 143
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 144
    .line 145
    .line 146
    move-result p2

    .line 147
    iget-object v4, v0, Lorg/jsoup/parser/Token$Tag;->h:Lorg/jsoup/parser/TokenData;

    .line 148
    .line 149
    const v5, 0xfffd

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4, v5}, Lorg/jsoup/parser/TokenData;->a(C)V

    .line 153
    .line 154
    .line 155
    iget-boolean v4, v0, Lorg/jsoup/parser/Token$Tag;->l:Z

    .line 156
    .line 157
    if-eqz v4, :cond_8

    .line 158
    .line 159
    iget v4, v0, Lorg/jsoup/parser/Token$Tag;->m:I

    .line 160
    .line 161
    if-le v4, v1, :cond_7

    .line 162
    .line 163
    move v3, v4

    .line 164
    :cond_7
    iput v3, v0, Lorg/jsoup/parser/Token$Tag;->m:I

    .line 165
    .line 166
    iput p2, v0, Lorg/jsoup/parser/Token$Tag;->n:I

    .line 167
    .line 168
    :cond_8
    invoke-virtual {p1, v2}, Lorg/jsoup/parser/Tokeniser;->o(Lorg/jsoup/parser/TokeniserState;)V

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    nop

    .line 173
    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
