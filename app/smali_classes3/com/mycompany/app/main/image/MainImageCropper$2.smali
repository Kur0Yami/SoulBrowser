.class Lcom/mycompany/app/main/image/MainImageCropper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/image/MainImageCropper;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImageCropper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageCropper$2;->c:Lcom/mycompany/app/main/image/MainImageCropper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageCropper$2;->c:Lcom/mycompany/app/main/image/MainImageCropper;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageCropper;->p1:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageCropper;->g1:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v2, v0, Lcom/mycompany/app/main/image/MainImageCropper;->h1:Landroid/net/Uri;

    .line 11
    .line 12
    iget-object v3, v0, Lcom/mycompany/app/main/image/MainImageCropper;->q1:Lcom/mycompany/app/crop/CropImageView;

    .line 13
    .line 14
    if-nez v3, :cond_1

    .line 15
    .line 16
    goto/16 :goto_3

    .line 17
    .line 18
    :cond_1
    iget-boolean v4, v0, Lcom/mycompany/app/main/image/MainImageCropper;->o1:Z

    .line 19
    .line 20
    const-string v5, "Cannot set aspect ratio value to a number less than or equal to 0."

    .line 21
    .line 22
    const/4 v6, 0x1

    .line 23
    if-eqz v4, :cond_3

    .line 24
    .line 25
    invoke-virtual {v3, v6}, Lcom/mycompany/app/crop/CropImageView;->setFixedAspectRatio(Z)V

    .line 26
    .line 27
    .line 28
    iget-object v3, v0, Lcom/mycompany/app/main/image/MainImageCropper;->q1:Lcom/mycompany/app/crop/CropImageView;

    .line 29
    .line 30
    iget v4, v0, Lcom/mycompany/app/main/image/MainImageCropper;->m1:I

    .line 31
    .line 32
    iget v7, v0, Lcom/mycompany/app/main/image/MainImageCropper;->n1:I

    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    if-lez v4, :cond_2

    .line 38
    .line 39
    if-lez v7, :cond_2

    .line 40
    .line 41
    iput v4, v3, Lcom/mycompany/app/crop/CropImageView;->s:I

    .line 42
    .line 43
    iput v7, v3, Lcom/mycompany/app/crop/CropImageView;->t:I

    .line 44
    .line 45
    iget-boolean v4, v3, Lcom/mycompany/app/crop/CropImageView;->r:Z

    .line 46
    .line 47
    if-eqz v4, :cond_3

    .line 48
    .line 49
    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 54
    .line 55
    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v0

    .line 59
    :cond_3
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-nez v3, :cond_7

    .line 64
    .line 65
    iget-object v3, v0, Lcom/mycompany/app/main/image/MainImageCropper;->v1:Lcom/mycompany/app/view/MyCoverView;

    .line 66
    .line 67
    invoke-virtual {v3}, Lcom/mycompany/app/view/MyCoverView;->l()V

    .line 68
    .line 69
    .line 70
    iget-object v3, v0, Lcom/mycompany/app/main/image/MainImageCropper;->i1:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-nez v3, :cond_4

    .line 77
    .line 78
    iget-object v3, v0, Lcom/mycompany/app/main/image/MainImageCropper;->i1:Ljava/lang/String;

    .line 79
    .line 80
    const-string v4, "image/svg"

    .line 81
    .line 82
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    goto :goto_1

    .line 87
    :cond_4
    const/4 v3, 0x0

    .line 88
    invoke-static {v1, v3, v3, v6}, Lcom/mycompany/app/main/MainUtil;->V3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-static {v3}, Lcom/mycompany/app/compress/Compress;->I(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    :goto_1
    iput-boolean v3, v0, Lcom/mycompany/app/main/image/MainImageCropper;->B1:Z

    .line 97
    .line 98
    if-eqz v3, :cond_8

    .line 99
    .line 100
    iget-boolean v2, v0, Lcom/mycompany/app/main/image/MainImageCropper;->o1:Z

    .line 101
    .line 102
    if-eqz v2, :cond_6

    .line 103
    .line 104
    iget-object v2, v0, Lcom/mycompany/app/main/image/MainImageCropper;->q1:Lcom/mycompany/app/crop/CropImageView;

    .line 105
    .line 106
    invoke-virtual {v2, v6}, Lcom/mycompany/app/crop/CropImageView;->setFixedAspectRatio(Z)V

    .line 107
    .line 108
    .line 109
    iget-object v2, v0, Lcom/mycompany/app/main/image/MainImageCropper;->q1:Lcom/mycompany/app/crop/CropImageView;

    .line 110
    .line 111
    iget v3, v0, Lcom/mycompany/app/main/image/MainImageCropper;->m1:I

    .line 112
    .line 113
    iget v4, v0, Lcom/mycompany/app/main/image/MainImageCropper;->n1:I

    .line 114
    .line 115
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    if-lez v3, :cond_5

    .line 119
    .line 120
    if-lez v4, :cond_5

    .line 121
    .line 122
    iput v3, v2, Lcom/mycompany/app/crop/CropImageView;->s:I

    .line 123
    .line 124
    iput v4, v2, Lcom/mycompany/app/crop/CropImageView;->t:I

    .line 125
    .line 126
    iget-boolean v3, v2, Lcom/mycompany/app/crop/CropImageView;->r:Z

    .line 127
    .line 128
    if-eqz v3, :cond_6

    .line 129
    .line 130
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 135
    .line 136
    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw v0

    .line 140
    :cond_6
    :goto_2
    iput-object v1, v0, Lcom/mycompany/app/main/image/MainImageCropper;->F1:Ljava/lang/String;

    .line 141
    .line 142
    new-instance v1, Lcom/mycompany/app/main/image/MainImageCropper$8;

    .line 143
    .line 144
    invoke-direct {v1, v0}, Lcom/mycompany/app/main/image/MainImageCropper$8;-><init>(Lcom/mycompany/app/main/image/MainImageCropper;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_7
    if-eqz v2, :cond_9

    .line 152
    .line 153
    iget-object v3, v0, Lcom/mycompany/app/main/image/MainImageCropper;->v1:Lcom/mycompany/app/view/MyCoverView;

    .line 154
    .line 155
    invoke-virtual {v3}, Lcom/mycompany/app/view/MyCoverView;->l()V

    .line 156
    .line 157
    .line 158
    :cond_8
    iput-object v1, v0, Lcom/mycompany/app/main/image/MainImageCropper;->C1:Ljava/lang/String;

    .line 159
    .line 160
    iput-object v2, v0, Lcom/mycompany/app/main/image/MainImageCropper;->D1:Landroid/net/Uri;

    .line 161
    .line 162
    new-instance v1, Lcom/mycompany/app/main/image/MainImageCropper$6;

    .line 163
    .line 164
    invoke-direct {v1, v0}, Lcom/mycompany/app/main/image/MainImageCropper$6;-><init>(Lcom/mycompany/app/main/image/MainImageCropper;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 168
    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_9
    iput-boolean v6, v0, Lcom/mycompany/app/main/image/MainImageCropper;->w1:Z

    .line 172
    .line 173
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageCropper;->q1:Lcom/mycompany/app/crop/CropImageView;

    .line 174
    .line 175
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 176
    .line 177
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 178
    .line 179
    .line 180
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageCropper;->q1:Lcom/mycompany/app/crop/CropImageView;

    .line 181
    .line 182
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_error_dark_web_48:I

    .line 183
    .line 184
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 185
    .line 186
    .line 187
    :goto_3
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageCropper;->r1:Lcom/mycompany/app/view/MyButtonImage;

    .line 188
    .line 189
    new-instance v2, Lcom/mycompany/app/main/image/MainImageCropper$3;

    .line 190
    .line 191
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/image/MainImageCropper$3;-><init>(Lcom/mycompany/app/main/image/MainImageCropper;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    .line 196
    .line 197
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageCropper;->t1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 198
    .line 199
    new-instance v2, Lcom/mycompany/app/main/image/MainImageCropper$4;

    .line 200
    .line 201
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/image/MainImageCropper$4;-><init>(Lcom/mycompany/app/main/image/MainImageCropper;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    .line 206
    .line 207
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageCropper;->u1:Lcom/mycompany/app/view/MyLineText;

    .line 208
    .line 209
    new-instance v2, Lcom/mycompany/app/main/image/MainImageCropper$5;

    .line 210
    .line 211
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/image/MainImageCropper$5;-><init>(Lcom/mycompany/app/main/image/MainImageCropper;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    .line 216
    .line 217
    return-void
.end method
