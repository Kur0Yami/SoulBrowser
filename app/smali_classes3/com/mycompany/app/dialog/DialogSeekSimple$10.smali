.class Lcom/mycompany/app/dialog/DialogSeekSimple$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSeekSimple;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSeekSimple;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekSimple$10;->a:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 13

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->x0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekSimple$10;->a:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSeekSimple;->C()V

    .line 6
    .line 7
    .line 8
    iget v1, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->t0:I

    .line 9
    .line 10
    iget v2, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->a0:I

    .line 11
    .line 12
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 13
    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    goto/16 :goto_7

    .line 17
    .line 18
    :cond_0
    iget v4, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->f0:I

    .line 19
    .line 20
    const/16 v5, 0xc

    .line 21
    .line 22
    const/4 v6, 0x6

    .line 23
    const/4 v7, 0x3

    .line 24
    const/4 v8, 0x2

    .line 25
    const/4 v9, 0x1

    .line 26
    if-nez v4, :cond_1

    .line 27
    .line 28
    const/16 v10, 0x64

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_1
    const/16 v10, 0xa

    .line 32
    .line 33
    if-ne v4, v9, :cond_2

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    if-ne v4, v8, :cond_3

    .line 37
    .line 38
    move v10, v9

    .line 39
    goto :goto_2

    .line 40
    :cond_3
    if-ne v4, v7, :cond_4

    .line 41
    .line 42
    const/16 v10, 0x46

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_4
    const/4 v11, 0x4

    .line 46
    if-ne v4, v11, :cond_5

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_5
    const/4 v11, 0x5

    .line 50
    if-ne v4, v11, :cond_6

    .line 51
    .line 52
    :goto_0
    move v10, v8

    .line 53
    goto :goto_2

    .line 54
    :cond_6
    if-ne v4, v6, :cond_7

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_7
    const/4 v12, 0x7

    .line 58
    if-ne v4, v12, :cond_8

    .line 59
    .line 60
    const/16 v10, 0x14

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_8
    const/16 v12, 0x8

    .line 64
    .line 65
    if-ne v4, v12, :cond_a

    .line 66
    .line 67
    :cond_9
    :goto_1
    move v10, v11

    .line 68
    goto :goto_2

    .line 69
    :cond_a
    const/16 v12, 0x9

    .line 70
    .line 71
    if-ne v4, v12, :cond_b

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_b
    if-eq v4, v10, :cond_9

    .line 75
    .line 76
    const/16 v10, 0xb

    .line 77
    .line 78
    if-ne v4, v10, :cond_c

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_c
    if-ne v4, v5, :cond_d

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_d
    move v10, v2

    .line 85
    :goto_2
    iget v11, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->s0:I

    .line 86
    .line 87
    if-eq v11, v10, :cond_17

    .line 88
    .line 89
    iput v10, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->s0:I

    .line 90
    .line 91
    const-string v10, "%"

    .line 92
    .line 93
    if-nez v4, :cond_e

    .line 94
    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    iget v4, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->s0:I

    .line 101
    .line 102
    invoke-static {v1, v4, v10, v3}, Lcom/mycompany/app/dialog/a;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 103
    .line 104
    .line 105
    goto/16 :goto_6

    .line 106
    .line 107
    :cond_e
    const-string v11, "x"

    .line 108
    .line 109
    const/4 v12, 0x0

    .line 110
    if-ne v4, v9, :cond_10

    .line 111
    .line 112
    new-instance v4, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget v5, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->s0:I

    .line 118
    .line 119
    invoke-static {v4, v5, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->B(Ljava/lang/StringBuilder;ILandroidx/appcompat/widget/AppCompatTextView;)V

    .line 120
    .line 121
    .line 122
    iget-boolean v3, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->u0:Z

    .line 123
    .line 124
    iget v4, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->s0:I

    .line 125
    .line 126
    if-le v4, v1, :cond_f

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_f
    move v9, v12

    .line 130
    :goto_3
    iput-boolean v9, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->u0:Z

    .line 131
    .line 132
    if-eq v3, v9, :cond_16

    .line 133
    .line 134
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSeekSimple;->D()V

    .line 135
    .line 136
    .line 137
    goto :goto_6

    .line 138
    :cond_10
    if-ne v4, v8, :cond_12

    .line 139
    .line 140
    new-instance v4, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget v5, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->s0:I

    .line 146
    .line 147
    invoke-static {v5}, Lcom/mycompany/app/ocr/OcrDetector;->x(I)F

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    .line 160
    .line 161
    iget-boolean v3, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->u0:Z

    .line 162
    .line 163
    iget v4, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->s0:I

    .line 164
    .line 165
    if-le v4, v1, :cond_11

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_11
    move v9, v12

    .line 169
    :goto_4
    iput-boolean v9, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->u0:Z

    .line 170
    .line 171
    if-eq v3, v9, :cond_16

    .line 172
    .line 173
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSeekSimple;->D()V

    .line 174
    .line 175
    .line 176
    goto :goto_6

    .line 177
    :cond_12
    if-ne v4, v7, :cond_13

    .line 178
    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    iget v4, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->s0:I

    .line 185
    .line 186
    invoke-static {v1, v4, v10, v3}, Lcom/mycompany/app/dialog/a;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 187
    .line 188
    .line 189
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->i0:Lcom/mycompany/app/view/MyImageFilter;

    .line 190
    .line 191
    if-eqz v1, :cond_16

    .line 192
    .line 193
    iget v3, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->s0:I

    .line 194
    .line 195
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyImageFilter;->setImageBright(I)V

    .line 196
    .line 197
    .line 198
    goto :goto_6

    .line 199
    :cond_13
    if-eq v4, v6, :cond_15

    .line 200
    .line 201
    if-ne v4, v5, :cond_14

    .line 202
    .line 203
    goto :goto_5

    .line 204
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    const-string v4, ""

    .line 207
    .line 208
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    iget v4, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->s0:I

    .line 212
    .line 213
    invoke-static {v1, v4, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->B(Ljava/lang/StringBuilder;ILandroidx/appcompat/widget/AppCompatTextView;)V

    .line 214
    .line 215
    .line 216
    goto :goto_6

    .line 217
    :cond_15
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    iget v4, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->s0:I

    .line 223
    .line 224
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->v0:Ljava/lang/String;

    .line 228
    .line 229
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    .line 238
    .line 239
    :cond_16
    :goto_6
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->l0:Landroid/widget/SeekBar;

    .line 240
    .line 241
    iget v3, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->s0:I

    .line 242
    .line 243
    sub-int/2addr v3, v2

    .line 244
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 245
    .line 246
    .line 247
    :cond_17
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->e0:Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;

    .line 248
    .line 249
    if-eqz v1, :cond_18

    .line 250
    .line 251
    iget v0, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->s0:I

    .line 252
    .line 253
    invoke-interface {v1, v0}, Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;->a(I)V

    .line 254
    .line 255
    .line 256
    :cond_18
    :goto_7
    return-void
.end method
