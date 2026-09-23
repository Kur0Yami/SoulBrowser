.class Lcom/mycompany/app/main/MainListView$77;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/MainListView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView$77;->a:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView$77;->a:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView;->E()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 9

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView$77;->a:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/main/MainListView;->b:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v1, p1, Lcom/mycompany/app/main/MainListView;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget v1, p1, Lcom/mycompany/app/main/MainListView;->d:I

    .line 12
    .line 13
    const/16 v3, 0xd

    .line 14
    .line 15
    const-wide/16 v4, 0x0

    .line 16
    .line 17
    const/4 v6, -0x1

    .line 18
    const/4 v7, 0x4

    .line 19
    const/4 v8, 0x0

    .line 20
    if-ne v1, v3, :cond_2

    .line 21
    .line 22
    sget-object v1, Lcom/mycompany/app/main/MainConst;->l0:[I

    .line 23
    .line 24
    array-length v3, v1

    .line 25
    rem-int/2addr p2, v3

    .line 26
    sget v3, Lcom/mycompany/app/pref/PrefList;->r:I

    .line 27
    .line 28
    aget v1, v1, p2

    .line 29
    .line 30
    if-ne v3, v1, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    sput v1, Lcom/mycompany/app/pref/PrefList;->r:I

    .line 34
    .line 35
    const-string v3, "mCastType"

    .line 36
    .line 37
    invoke-static {v0, v7, v1, v3}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p1, Lcom/mycompany/app/main/MainListView;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 41
    .line 42
    sget-object v3, Lcom/mycompany/app/main/MainConst;->m0:[I

    .line 43
    .line 44
    aget p2, v3, p2

    .line 45
    .line 46
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v8, v6, v8, v8}, Lcom/mycompany/app/main/MainListView;->d0(ZIZZ)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v4, v5, v2}, Lcom/mycompany/app/main/MainListView;->o0(JZ)V

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Lcom/mycompany/app/data/DataCast;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataCast;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {p2}, Lcom/mycompany/app/data/DataList;->j()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v8, v8}, Lcom/mycompany/app/main/MainListView;->U(ZZ)V

    .line 63
    .line 64
    .line 65
    return v2

    .line 66
    :cond_2
    const/16 v3, 0x20

    .line 67
    .line 68
    if-ne v1, v3, :cond_4

    .line 69
    .line 70
    sget-object v1, Lcom/mycompany/app/main/MainConst;->j0:[I

    .line 71
    .line 72
    array-length v3, v1

    .line 73
    rem-int/2addr p2, v3

    .line 74
    sget v3, Lcom/mycompany/app/pref/PrefList;->Z0:I

    .line 75
    .line 76
    aget v1, v1, p2

    .line 77
    .line 78
    if-ne v3, v1, :cond_3

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    sput v1, Lcom/mycompany/app/pref/PrefList;->Z0:I

    .line 82
    .line 83
    const-string v3, "mBookDownType"

    .line 84
    .line 85
    invoke-static {v0, v7, v1, v3}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p1, Lcom/mycompany/app/main/MainListView;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 89
    .line 90
    sget-object v1, Lcom/mycompany/app/main/MainConst;->k0:[I

    .line 91
    .line 92
    aget p2, v1, p2

    .line 93
    .line 94
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v8, v6, v8, v8}, Lcom/mycompany/app/main/MainListView;->d0(ZIZZ)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v8, v8}, Lcom/mycompany/app/main/MainListView;->U(ZZ)V

    .line 101
    .line 102
    .line 103
    return v2

    .line 104
    :cond_4
    sget-object v1, Lcom/mycompany/app/main/MainConst;->h0:[I

    .line 105
    .line 106
    array-length v3, v1

    .line 107
    rem-int/2addr p2, v3

    .line 108
    sget v3, Lcom/mycompany/app/pref/PrefList;->j:I

    .line 109
    .line 110
    aget v1, v1, p2

    .line 111
    .line 112
    if-ne v3, v1, :cond_5

    .line 113
    .line 114
    :goto_0
    return v2

    .line 115
    :cond_5
    sput v1, Lcom/mycompany/app/pref/PrefList;->j:I

    .line 116
    .line 117
    const-string v3, "mViewType"

    .line 118
    .line 119
    invoke-static {v0, v7, v1, v3}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p1, Lcom/mycompany/app/main/MainListView;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 123
    .line 124
    sget-object v1, Lcom/mycompany/app/main/MainConst;->i0:[I

    .line 125
    .line 126
    aget p2, v1, p2

    .line 127
    .line 128
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 129
    .line 130
    .line 131
    iget-object p2, p1, Lcom/mycompany/app/main/MainListView;->g0:Lcom/mycompany/app/list/ListTask;

    .line 132
    .line 133
    if-eqz p2, :cond_6

    .line 134
    .line 135
    invoke-virtual {p2}, Lcom/mycompany/app/list/ListTask;->a()V

    .line 136
    .line 137
    .line 138
    :cond_6
    sget p2, Lcom/mycompany/app/pref/PrefList;->j:I

    .line 139
    .line 140
    iput p2, p1, Lcom/mycompany/app/main/MainListView;->d:I

    .line 141
    .line 142
    iget-object v0, p1, Lcom/mycompany/app/main/MainListView;->o:Lcom/mycompany/app/main/MainListListener;

    .line 143
    .line 144
    if-eqz v0, :cond_7

    .line 145
    .line 146
    invoke-virtual {v0, p2}, Lcom/mycompany/app/main/MainListListener;->d(I)V

    .line 147
    .line 148
    .line 149
    :cond_7
    invoke-virtual {p1, v8, v6, v8, v8}, Lcom/mycompany/app/main/MainListView;->d0(ZIZZ)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, v4, v5, v2}, Lcom/mycompany/app/main/MainListView;->o0(JZ)V

    .line 153
    .line 154
    .line 155
    iget-object p2, p1, Lcom/mycompany/app/main/MainListView;->b0:Lcom/mycompany/app/view/MyLineText;

    .line 156
    .line 157
    if-eqz p2, :cond_9

    .line 158
    .line 159
    iget v0, p1, Lcom/mycompany/app/main/MainListView;->d:I

    .line 160
    .line 161
    if-ne v0, v2, :cond_8

    .line 162
    .line 163
    invoke-virtual {p2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 164
    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_8
    const/16 v0, 0x8

    .line 168
    .line 169
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 170
    .line 171
    .line 172
    :cond_9
    :goto_1
    iput-boolean v2, p1, Lcom/mycompany/app/main/MainListView;->j0:Z

    .line 173
    .line 174
    iput v6, p1, Lcom/mycompany/app/main/MainListView;->k0:I

    .line 175
    .line 176
    iput v6, p1, Lcom/mycompany/app/main/MainListView;->l0:I

    .line 177
    .line 178
    iput-boolean v8, p1, Lcom/mycompany/app/main/MainListView;->m0:Z

    .line 179
    .line 180
    iput v6, p1, Lcom/mycompany/app/main/MainListView;->s:I

    .line 181
    .line 182
    iput v6, p1, Lcom/mycompany/app/main/MainListView;->q0:I

    .line 183
    .line 184
    iput v6, p1, Lcom/mycompany/app/main/MainListView;->r0:I

    .line 185
    .line 186
    iput v6, p1, Lcom/mycompany/app/main/MainListView;->t0:I

    .line 187
    .line 188
    iput v6, p1, Lcom/mycompany/app/main/MainListView;->u0:I

    .line 189
    .line 190
    iget-object p2, p1, Lcom/mycompany/app/main/MainListView;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 191
    .line 192
    if-eqz p2, :cond_c

    .line 193
    .line 194
    iget v0, p1, Lcom/mycompany/app/main/MainListView;->d:I

    .line 195
    .line 196
    const/4 v1, 0x2

    .line 197
    if-ne v0, v1, :cond_a

    .line 198
    .line 199
    sget v0, Lnet/kaki87/soul2/testing/R$string;->pdf:I

    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_a
    const/4 v1, 0x3

    .line 203
    if-ne v0, v1, :cond_b

    .line 204
    .line 205
    sget v0, Lnet/kaki87/soul2/testing/R$string;->zip:I

    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_b
    sget v0, Lnet/kaki87/soul2/testing/R$string;->album:I

    .line 209
    .line 210
    :goto_2
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 211
    .line 212
    .line 213
    :cond_c
    invoke-virtual {p1}, Lcom/mycompany/app/main/MainListView;->H()V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1, v2, v8}, Lcom/mycompany/app/main/MainListView;->U(ZZ)V

    .line 217
    .line 218
    .line 219
    return v2
.end method
