.class Lcom/mycompany/app/dialog/DialogCreateAlbum$20$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogCreateAlbum$20;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogCreateAlbum$20;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogCreateAlbum$20$2;->c:Lcom/mycompany/app/dialog/DialogCreateAlbum$20;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogCreateAlbum$20$2;->c:Lcom/mycompany/app/dialog/DialogCreateAlbum$20;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum$20;->a:Lcom/mycompany/app/dialog/DialogCreateAlbum;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->u0:Landroid/widget/LinearLayout;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_5

    .line 10
    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogCreateAlbum;->H()V

    .line 12
    .line 13
    .line 14
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->t0:Landroidx/core/widget/NestedScrollView;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->u0:Landroid/widget/LinearLayout;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->j1:Ljava/util/ArrayList;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move v1, v2

    .line 35
    :goto_0
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->x0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 36
    .line 37
    new-instance v4, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v5, ""

    .line 40
    .line 41
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget v6, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->e1:I

    .line 45
    .line 46
    invoke-static {v4, v6, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->B(Ljava/lang/StringBuilder;ILandroidx/appcompat/widget/AppCompatTextView;)V

    .line 47
    .line 48
    .line 49
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->B0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 50
    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    iget v3, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->g1:I

    .line 67
    .line 68
    const/high16 v4, -0x1000000

    .line 69
    .line 70
    const v5, -0x50506

    .line 71
    .line 72
    .line 73
    if-lez v3, :cond_2

    .line 74
    .line 75
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->z0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 76
    .line 77
    new-instance v6, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    iget-object v7, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->b0:Landroid/content/Context;

    .line 83
    .line 84
    sget v8, Lnet/kaki87/soul2/testing/R$string;->not_loaded:I

    .line 85
    .line 86
    const-string v9, "    "

    .line 87
    .line 88
    invoke-static {v7, v8, v6, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget v7, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->g1:I

    .line 92
    .line 93
    invoke-static {v6, v7, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->B(Ljava/lang/StringBuilder;ILandroidx/appcompat/widget/AppCompatTextView;)V

    .line 94
    .line 95
    .line 96
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->z0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 97
    .line 98
    const v6, -0xbbcca

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_2
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->z0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 106
    .line 107
    const-string v6, "0"

    .line 108
    .line 109
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    .line 111
    .line 112
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->z0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 113
    .line 114
    sget-boolean v6, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 115
    .line 116
    if-eqz v6, :cond_3

    .line 117
    .line 118
    move v6, v5

    .line 119
    goto :goto_1

    .line 120
    :cond_3
    move v6, v4

    .line 121
    :goto_1
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    .line 123
    .line 124
    :goto_2
    iget v3, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->g1:I

    .line 125
    .line 126
    if-lez v3, :cond_7

    .line 127
    .line 128
    const v3, -0xe19938

    .line 129
    .line 130
    .line 131
    if-nez v1, :cond_5

    .line 132
    .line 133
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->S0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 134
    .line 135
    invoke-virtual {v1, v2}, Landroid/view/View;->setActivated(Z)V

    .line 136
    .line 137
    .line 138
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->S0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 139
    .line 140
    sget v2, Lnet/kaki87/soul2/testing/R$string;->retry:I

    .line 141
    .line 142
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 143
    .line 144
    .line 145
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->S0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 146
    .line 147
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 148
    .line 149
    if-eqz v1, :cond_4

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_4
    move v5, v3

    .line 153
    :goto_3
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :cond_5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->S0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 158
    .line 159
    invoke-virtual {v1, v2}, Landroid/view/View;->setActivated(Z)V

    .line 160
    .line 161
    .line 162
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->S0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 163
    .line 164
    sget v4, Lnet/kaki87/soul2/testing/R$string;->create_album:I

    .line 165
    .line 166
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 167
    .line 168
    .line 169
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->S0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 170
    .line 171
    sget-boolean v4, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 172
    .line 173
    if-eqz v4, :cond_6

    .line 174
    .line 175
    goto :goto_4

    .line 176
    :cond_6
    move v5, v3

    .line 177
    :goto_4
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
    .line 179
    .line 180
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->T0:Lcom/mycompany/app/view/MyLineText;

    .line 181
    .line 182
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    :cond_7
    if-nez v1, :cond_a

    .line 187
    .line 188
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->S0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 189
    .line 190
    const/4 v3, 0x1

    .line 191
    invoke-virtual {v1, v3}, Landroid/view/View;->setActivated(Z)V

    .line 192
    .line 193
    .line 194
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->S0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 195
    .line 196
    sget v3, Lnet/kaki87/soul2/testing/R$string;->close:I

    .line 197
    .line 198
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 199
    .line 200
    .line 201
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->S0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 202
    .line 203
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 204
    .line 205
    if-eqz v3, :cond_8

    .line 206
    .line 207
    move v4, v5

    .line 208
    :cond_8
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 209
    .line 210
    .line 211
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->C0:Lcom/mycompany/app/view/MyLineText;

    .line 212
    .line 213
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 214
    .line 215
    .line 216
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->t0:Landroidx/core/widget/NestedScrollView;

    .line 217
    .line 218
    if-nez v1, :cond_9

    .line 219
    .line 220
    goto :goto_5

    .line 221
    :cond_9
    new-instance v2, Lcom/mycompany/app/dialog/DialogCreateAlbum$18;

    .line 222
    .line 223
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogCreateAlbum$18;-><init>(Lcom/mycompany/app/dialog/DialogCreateAlbum;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 227
    .line 228
    .line 229
    return-void

    .line 230
    :cond_a
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->j1:Ljava/util/ArrayList;

    .line 231
    .line 232
    if-eqz v1, :cond_c

    .line 233
    .line 234
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    if-nez v1, :cond_c

    .line 239
    .line 240
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogCreateAlbum;->D()V

    .line 241
    .line 242
    .line 243
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->S0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 244
    .line 245
    if-nez v1, :cond_b

    .line 246
    .line 247
    goto :goto_5

    .line 248
    :cond_b
    new-instance v2, Lcom/mycompany/app/dialog/DialogCreateAlbum$22;

    .line 249
    .line 250
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogCreateAlbum$22;-><init>(Lcom/mycompany/app/dialog/DialogCreateAlbum;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 254
    .line 255
    .line 256
    :cond_c
    :goto_5
    return-void
.end method
