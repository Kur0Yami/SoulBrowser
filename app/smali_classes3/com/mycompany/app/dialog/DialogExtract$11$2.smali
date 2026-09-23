.class Lcom/mycompany/app/dialog/DialogExtract$11$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic f:J

.field public final synthetic g:J

.field public final synthetic h:Lcom/mycompany/app/dialog/DialogExtract$11;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogExtract$11;Ljava/lang/String;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogExtract$11$2;->h:Lcom/mycompany/app/dialog/DialogExtract$11;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogExtract$11$2;->c:Ljava/lang/String;

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/mycompany/app/dialog/DialogExtract$11$2;->f:J

    .line 9
    .line 10
    iput-wide p5, p0, Lcom/mycompany/app/dialog/DialogExtract$11$2;->g:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogExtract$11$2;->h:Lcom/mycompany/app/dialog/DialogExtract$11;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogExtract$11;->a:Lcom/mycompany/app/dialog/DialogExtract;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogExtract;->q0:[Lcom/mycompany/app/view/MyProgressBar;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    iput-boolean v3, v1, Lcom/mycompany/app/dialog/DialogExtract;->N0:Z

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogExtract;->K0:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogExtract$11$2;->c:Ljava/lang/String;

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogExtract$11;->a:Lcom/mycompany/app/dialog/DialogExtract;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogExtract;->K0:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogExtract$11;->a:Lcom/mycompany/app/dialog/DialogExtract;

    .line 34
    .line 35
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogExtract;->K0:Ljava/lang/String;

    .line 36
    .line 37
    iget v4, v1, Lcom/mycompany/app/dialog/DialogExtract;->D0:I

    .line 38
    .line 39
    iput v4, v1, Lcom/mycompany/app/dialog/DialogExtract;->H0:I

    .line 40
    .line 41
    iget v5, v1, Lcom/mycompany/app/dialog/DialogExtract;->F0:I

    .line 42
    .line 43
    iput v5, v1, Lcom/mycompany/app/dialog/DialogExtract;->I0:I

    .line 44
    .line 45
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogExtract;->k0:[Lcom/mycompany/app/view/MyRoundImage;

    .line 46
    .line 47
    aget-object v5, v5, v4

    .line 48
    .line 49
    invoke-virtual {v1, v5, v4}, Lcom/mycompany/app/dialog/DialogExtract;->G(Lcom/mycompany/app/view/MyRoundImage;I)V

    .line 50
    .line 51
    .line 52
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogExtract$11;->a:Lcom/mycompany/app/dialog/DialogExtract;

    .line 53
    .line 54
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogExtract;->l0:[Landroid/widget/TextView;

    .line 55
    .line 56
    iget v5, v1, Lcom/mycompany/app/dialog/DialogExtract;->D0:I

    .line 57
    .line 58
    aget-object v4, v4, v5

    .line 59
    .line 60
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogExtract;->a0:Landroid/content/Context;

    .line 61
    .line 62
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->b1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    .line 68
    .line 69
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogExtract$11;->a:Lcom/mycompany/app/dialog/DialogExtract;

    .line 70
    .line 71
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogExtract;->q0:[Lcom/mycompany/app/view/MyProgressBar;

    .line 72
    .line 73
    iget v1, v1, Lcom/mycompany/app/dialog/DialogExtract;->D0:I

    .line 74
    .line 75
    aget-object v1, v2, v1

    .line 76
    .line 77
    const/16 v2, 0x64

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyProgressBar;->setMax(I)V

    .line 80
    .line 81
    .line 82
    :cond_2
    iget-wide v1, p0, Lcom/mycompany/app/dialog/DialogExtract$11$2;->f:J

    .line 83
    .line 84
    const-wide/16 v4, 0x0

    .line 85
    .line 86
    cmp-long v6, v1, v4

    .line 87
    .line 88
    const/4 v7, 0x0

    .line 89
    const/high16 v8, 0x42c80000    # 100.0f

    .line 90
    .line 91
    if-lez v6, :cond_3

    .line 92
    .line 93
    iget-wide v9, p0, Lcom/mycompany/app/dialog/DialogExtract$11$2;->g:J

    .line 94
    .line 95
    long-to-float v6, v9

    .line 96
    long-to-float v1, v1

    .line 97
    div-float/2addr v6, v1

    .line 98
    mul-float/2addr v6, v8

    .line 99
    cmpl-float v1, v6, v8

    .line 100
    .line 101
    if-lez v1, :cond_4

    .line 102
    .line 103
    move v6, v8

    .line 104
    goto :goto_0

    .line 105
    :cond_3
    move v6, v7

    .line 106
    :cond_4
    :goto_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 107
    .line 108
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    const/4 v9, 0x1

    .line 113
    new-array v9, v9, [Ljava/lang/Object;

    .line 114
    .line 115
    aput-object v2, v9, v3

    .line 116
    .line 117
    const-string v2, "%.2f"

    .line 118
    .line 119
    invoke-static {v1, v2, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract$11;->a:Lcom/mycompany/app/dialog/DialogExtract;

    .line 124
    .line 125
    iget-object v9, v2, Lcom/mycompany/app/dialog/DialogExtract;->p0:[Landroid/widget/TextView;

    .line 126
    .line 127
    iget v2, v2, Lcom/mycompany/app/dialog/DialogExtract;->H0:I

    .line 128
    .line 129
    aget-object v2, v9, v2

    .line 130
    .line 131
    const-string v9, "%"

    .line 132
    .line 133
    invoke-virtual {v1, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    .line 139
    .line 140
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogExtract$11;->a:Lcom/mycompany/app/dialog/DialogExtract;

    .line 141
    .line 142
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogExtract;->q0:[Lcom/mycompany/app/view/MyProgressBar;

    .line 143
    .line 144
    iget v1, v1, Lcom/mycompany/app/dialog/DialogExtract;->H0:I

    .line 145
    .line 146
    aget-object v1, v2, v1

    .line 147
    .line 148
    invoke-virtual {v1, v6}, Lcom/mycompany/app/view/MyProgressBar;->setProgress(F)V

    .line 149
    .line 150
    .line 151
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogExtract$11;->a:Lcom/mycompany/app/dialog/DialogExtract;

    .line 152
    .line 153
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogExtract;->s0:[Lcom/mycompany/app/view/MyProgressBar;

    .line 154
    .line 155
    iget v9, v1, Lcom/mycompany/app/dialog/DialogExtract;->H0:I

    .line 156
    .line 157
    aget-object v2, v2, v9

    .line 158
    .line 159
    iget v1, v1, Lcom/mycompany/app/dialog/DialogExtract;->I0:I

    .line 160
    .line 161
    int-to-float v1, v1

    .line 162
    div-float/2addr v6, v8

    .line 163
    add-float/2addr v6, v1

    .line 164
    invoke-virtual {v2, v6}, Lcom/mycompany/app/view/MyProgressBar;->setProgress(F)V

    .line 165
    .line 166
    .line 167
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogExtract$11;->a:Lcom/mycompany/app/dialog/DialogExtract;

    .line 168
    .line 169
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogExtract;->s0:[Lcom/mycompany/app/view/MyProgressBar;

    .line 170
    .line 171
    iget v1, v1, Lcom/mycompany/app/dialog/DialogExtract;->H0:I

    .line 172
    .line 173
    aget-object v1, v2, v1

    .line 174
    .line 175
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyProgressBar;->getProgress()F

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    cmpl-float v2, v1, v7

    .line 180
    .line 181
    if-lez v2, :cond_6

    .line 182
    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 184
    .line 185
    .line 186
    move-result-wide v6

    .line 187
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract$11;->a:Lcom/mycompany/app/dialog/DialogExtract;

    .line 188
    .line 189
    iget-wide v8, v2, Lcom/mycompany/app/dialog/DialogExtract;->J0:J

    .line 190
    .line 191
    sub-long/2addr v6, v8

    .line 192
    long-to-float v6, v6

    .line 193
    iget-object v7, v2, Lcom/mycompany/app/dialog/DialogExtract;->s0:[Lcom/mycompany/app/view/MyProgressBar;

    .line 194
    .line 195
    iget v2, v2, Lcom/mycompany/app/dialog/DialogExtract;->H0:I

    .line 196
    .line 197
    aget-object v2, v7, v2

    .line 198
    .line 199
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyProgressBar;->getMax()I

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    int-to-float v2, v2

    .line 204
    sub-float/2addr v2, v1

    .line 205
    mul-float/2addr v2, v6

    .line 206
    div-float/2addr v2, v1

    .line 207
    float-to-long v1, v2

    .line 208
    cmp-long v4, v1, v4

    .line 209
    .line 210
    if-lez v4, :cond_5

    .line 211
    .line 212
    const-wide/16 v4, 0x3e8

    .line 213
    .line 214
    cmp-long v6, v1, v4

    .line 215
    .line 216
    if-gez v6, :cond_5

    .line 217
    .line 218
    move-wide v1, v4

    .line 219
    :cond_5
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogExtract$11;->a:Lcom/mycompany/app/dialog/DialogExtract;

    .line 220
    .line 221
    iget-object v5, v4, Lcom/mycompany/app/dialog/DialogExtract;->u0:[Landroid/widget/TextView;

    .line 222
    .line 223
    iget v4, v4, Lcom/mycompany/app/dialog/DialogExtract;->H0:I

    .line 224
    .line 225
    aget-object v4, v5, v4

    .line 226
    .line 227
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->s2(J)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    .line 233
    .line 234
    :cond_6
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogExtract$11;->a:Lcom/mycompany/app/dialog/DialogExtract;

    .line 235
    .line 236
    iput-boolean v3, v0, Lcom/mycompany/app/dialog/DialogExtract;->N0:Z

    .line 237
    .line 238
    return-void
.end method
