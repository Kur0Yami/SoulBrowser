.class Lcom/mycompany/app/video/VideoActivity$CropTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/video/VideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CropTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public f:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoActivity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/video/VideoActivity$CropTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/video/VideoActivity;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/video/VideoActivity;->Q1:Lcom/mycompany/app/view/MyCoverView;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    :goto_0
    return-void

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p1, v0}, Lcom/mycompany/app/video/VideoActivity;->G1(Z)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p1, Lcom/mycompany/app/video/VideoActivity;->Q1:Lcom/mycompany/app/view/MyCoverView;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyCoverView;->l()V

    .line 32
    .line 33
    .line 34
    iget-object p1, p1, Lcom/mycompany/app/video/VideoActivity;->L1:Landroid/view/TextureView;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity$CropTask;->f:Landroid/graphics/Bitmap;

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$CropTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_9

    .line 6
    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/mycompany/app/video/VideoActivity;

    .line 12
    .line 13
    if-eqz v0, :cond_10

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    goto/16 :goto_9

    .line 20
    .line 21
    :cond_1
    iget-object v2, p0, Lcom/mycompany/app/video/VideoActivity$CropTask;->f:Landroid/graphics/Bitmap;

    .line 22
    .line 23
    sget v1, Lcom/mycompany/app/video/VideoActivity;->r4:I

    .line 24
    .line 25
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v9, 0x0

    .line 30
    if-nez v1, :cond_2

    .line 31
    .line 32
    :goto_0
    move-object v2, v9

    .line 33
    goto/16 :goto_8

    .line 34
    .line 35
    :cond_2
    iget-boolean v1, v0, Lcom/mycompany/app/video/VideoActivity;->S2:Z

    .line 36
    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    new-instance v4, Landroid/graphics/Matrix;

    .line 48
    .line 49
    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 50
    .line 51
    .line 52
    iget v5, v0, Lcom/mycompany/app/video/VideoActivity;->N2:I

    .line 53
    .line 54
    int-to-float v5, v5

    .line 55
    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 56
    .line 57
    .line 58
    :goto_1
    move v10, v3

    .line 59
    goto :goto_2

    .line 60
    :cond_3
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    move-object v4, v9

    .line 69
    goto :goto_1

    .line 70
    :goto_2
    iget-object v3, v0, Lcom/mycompany/app/video/VideoActivity;->T1:Lcom/mycompany/app/zoom/ZoomVideoAttacher;

    .line 71
    .line 72
    if-nez v3, :cond_4

    .line 73
    .line 74
    goto/16 :goto_8

    .line 75
    .line 76
    :cond_4
    iget-object v3, v3, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->v:Landroid/graphics/RectF;

    .line 77
    .line 78
    if-nez v3, :cond_5

    .line 79
    .line 80
    move-object v11, v9

    .line 81
    goto :goto_3

    .line 82
    :cond_5
    move-object v11, v3

    .line 83
    :goto_3
    if-nez v11, :cond_6

    .line 84
    .line 85
    goto/16 :goto_8

    .line 86
    .line 87
    :cond_6
    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    float-to-int v3, v3

    .line 92
    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    float-to-int v5, v5

    .line 97
    if-ne v1, v3, :cond_8

    .line 98
    .line 99
    if-eq v10, v5, :cond_7

    .line 100
    .line 101
    goto :goto_5

    .line 102
    :cond_7
    :goto_4
    move-object v7, v4

    .line 103
    goto :goto_6

    .line 104
    :cond_8
    :goto_5
    if-nez v4, :cond_9

    .line 105
    .line 106
    new-instance v4, Landroid/graphics/Matrix;

    .line 107
    .line 108
    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 109
    .line 110
    .line 111
    :cond_9
    int-to-float v3, v3

    .line 112
    int-to-float v6, v1

    .line 113
    div-float/2addr v3, v6

    .line 114
    int-to-float v5, v5

    .line 115
    int-to-float v6, v10

    .line 116
    div-float/2addr v5, v6

    .line 117
    invoke-virtual {v4, v3, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 118
    .line 119
    .line 120
    goto :goto_4

    .line 121
    :goto_6
    if-eqz v7, :cond_a

    .line 122
    .line 123
    :try_start_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 128
    .line 129
    .line 130
    move-result v6

    .line 131
    const/4 v8, 0x1

    .line 132
    const/4 v3, 0x0

    .line 133
    const/4 v4, 0x0

    .line 134
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 135
    .line 136
    .line 137
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    goto :goto_7

    .line 139
    :catch_0
    move-object v3, v9

    .line 140
    :goto_7
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    if-eqz v4, :cond_a

    .line 145
    .line 146
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 151
    .line 152
    .line 153
    move-result v10

    .line 154
    move-object v2, v3

    .line 155
    :cond_a
    iget v3, v11, Landroid/graphics/RectF;->left:F

    .line 156
    .line 157
    neg-float v3, v3

    .line 158
    const/4 v4, 0x0

    .line 159
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    float-to-int v3, v3

    .line 164
    iget v5, v11, Landroid/graphics/RectF;->top:F

    .line 165
    .line 166
    neg-float v5, v5

    .line 167
    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    float-to-int v4, v4

    .line 172
    iget v5, v0, Lcom/mycompany/app/video/VideoActivity;->O2:I

    .line 173
    .line 174
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    iget v0, v0, Lcom/mycompany/app/video/VideoActivity;->P2:I

    .line 179
    .line 180
    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    add-int v6, v3, v5

    .line 185
    .line 186
    if-le v6, v1, :cond_b

    .line 187
    .line 188
    sub-int v5, v1, v3

    .line 189
    .line 190
    :cond_b
    add-int v1, v4, v0

    .line 191
    .line 192
    if-le v1, v10, :cond_c

    .line 193
    .line 194
    sub-int v0, v10, v4

    .line 195
    .line 196
    :cond_c
    const/4 v1, 0x0

    .line 197
    const/4 v6, 0x1

    .line 198
    if-ge v5, v6, :cond_d

    .line 199
    .line 200
    move v3, v1

    .line 201
    move v5, v6

    .line 202
    :cond_d
    if-ge v0, v6, :cond_e

    .line 203
    .line 204
    move v4, v1

    .line 205
    move v0, v6

    .line 206
    :cond_e
    :try_start_1
    invoke-static {v2, v3, v4, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 207
    .line 208
    .line 209
    move-result-object v9
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 210
    :catch_1
    invoke-static {v9}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-eqz v0, :cond_f

    .line 215
    .line 216
    goto/16 :goto_0

    .line 217
    .line 218
    :cond_f
    :goto_8
    iput-object v2, p0, Lcom/mycompany/app/video/VideoActivity$CropTask;->f:Landroid/graphics/Bitmap;

    .line 219
    .line 220
    :cond_10
    :goto_9
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$CropTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/video/VideoActivity;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->U2:Lcom/mycompany/app/video/VideoActivity$CropTask;

    .line 17
    .line 18
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->Q1:Lcom/mycompany/app/view/MyCoverView;

    .line 19
    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    :goto_0
    return-void

    .line 23
    :cond_2
    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, v1}, Lcom/mycompany/app/video/VideoActivity;->G1(Z)V

    .line 25
    .line 26
    .line 27
    iget-object v0, v0, Lcom/mycompany/app/video/VideoActivity;->Q1:Lcom/mycompany/app/view/MyCoverView;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final e()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$CropTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/video/VideoActivity;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->U2:Lcom/mycompany/app/video/VideoActivity$CropTask;

    .line 17
    .line 18
    iget-object v2, v0, Lcom/mycompany/app/video/VideoActivity;->Q1:Lcom/mycompany/app/view/MyCoverView;

    .line 19
    .line 20
    if-nez v2, :cond_2

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    const/4 v2, 0x1

    .line 24
    invoke-virtual {v0, v2}, Lcom/mycompany/app/video/VideoActivity;->G1(Z)V

    .line 25
    .line 26
    .line 27
    iget-object v3, v0, Lcom/mycompany/app/video/VideoActivity;->Q1:Lcom/mycompany/app/view/MyCoverView;

    .line 28
    .line 29
    invoke-virtual {v3, v2}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 30
    .line 31
    .line 32
    iget-object v3, p0, Lcom/mycompany/app/video/VideoActivity$CropTask;->f:Landroid/graphics/Bitmap;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/mycompany/app/video/VideoActivity;->y1()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_3

    .line 39
    .line 40
    :goto_0
    return-void

    .line 41
    :cond_3
    iget-object v4, v0, Lcom/mycompany/app/video/VideoActivity;->V2:Lcom/mycompany/app/dialog/DialogCapture;

    .line 42
    .line 43
    if-eqz v4, :cond_4

    .line 44
    .line 45
    invoke-virtual {v4}, Lcom/mycompany/app/dialog/DialogCapture;->dismiss()V

    .line 46
    .line 47
    .line 48
    iput-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->V2:Lcom/mycompany/app/dialog/DialogCapture;

    .line 49
    .line 50
    :cond_4
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    sget v1, Lnet/kaki87/soul2/testing/R$string;->image_fail:I

    .line 57
    .line 58
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_5
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Lcom/mycompany/app/video/VideoControl;->o(Z)V

    .line 65
    .line 66
    .line 67
    new-instance v1, Lcom/mycompany/app/dialog/DialogCapture;

    .line 68
    .line 69
    iget-object v2, v0, Lcom/mycompany/app/video/VideoActivity;->r2:Ljava/lang/String;

    .line 70
    .line 71
    const/4 v4, 0x0

    .line 72
    invoke-direct {v1, v0, v3, v4, v2}, Lcom/mycompany/app/dialog/DialogCapture;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/graphics/Bitmap;ZLjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iput-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->V2:Lcom/mycompany/app/dialog/DialogCapture;

    .line 76
    .line 77
    new-instance v2, Lcom/mycompany/app/video/VideoActivity$43;

    .line 78
    .line 79
    invoke-direct {v2, v0}, Lcom/mycompany/app/video/VideoActivity$43;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyDialogNormal;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method
