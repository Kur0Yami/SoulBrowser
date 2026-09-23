.class Lcom/mycompany/app/dialog/DialogUrlLink$ShareTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogUrlLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShareTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/io/File;

.field public h:Landroid/graphics/Bitmap;

.field public final i:Landroid/graphics/drawable/PictureDrawable;

.field public j:Ljava/lang/String;

.field public k:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogUrlLink;Ljava/lang/String;Ljava/io/File;Landroid/graphics/Bitmap;Landroid/graphics/drawable/PictureDrawable;)V
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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink$ShareTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/dialog/DialogUrlLink;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogUrlLink$ShareTask;->f:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogUrlLink$ShareTask;->g:Ljava/io/File;

    .line 23
    .line 24
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogUrlLink$ShareTask;->h:Landroid/graphics/Bitmap;

    .line 25
    .line 26
    iput-object p5, p0, Lcom/mycompany/app/dialog/DialogUrlLink$ShareTask;->i:Landroid/graphics/drawable/PictureDrawable;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink$ShareTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_1

    .line 6
    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/mycompany/app/dialog/DialogUrlLink;

    .line 12
    .line 13
    if-eqz v0, :cond_b

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    goto/16 :goto_1

    .line 20
    .line 21
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogUrlLink$ShareTask;->f:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    goto/16 :goto_1

    .line 30
    .line 31
    :cond_2
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->b0:Landroid/content/Context;

    .line 32
    .line 33
    if-nez v2, :cond_3

    .line 34
    .line 35
    goto/16 :goto_1

    .line 36
    .line 37
    :cond_3
    const/4 v3, 0x0

    .line 38
    const/4 v4, 0x1

    .line 39
    invoke-static {v1, v3, v3, v4}, Lcom/mycompany/app/main/MainUtil;->V3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    const/4 v6, 0x0

    .line 44
    iget-object v7, p0, Lcom/mycompany/app/dialog/DialogUrlLink$ShareTask;->i:Landroid/graphics/drawable/PictureDrawable;

    .line 45
    .line 46
    if-eqz v7, :cond_4

    .line 47
    .line 48
    invoke-static {v7, v6}, Lcom/mycompany/app/main/MainUtil;->H(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    iput-object v7, p0, Lcom/mycompany/app/dialog/DialogUrlLink$ShareTask;->h:Landroid/graphics/Bitmap;

    .line 53
    .line 54
    :cond_4
    iget-object v7, p0, Lcom/mycompany/app/dialog/DialogUrlLink$ShareTask;->h:Landroid/graphics/Bitmap;

    .line 55
    .line 56
    invoke-static {v7}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    if-eqz v7, :cond_8

    .line 61
    .line 62
    invoke-static {v5, v4, v4}, Lcom/mycompany/app/compress/Compress;->C(Ljava/lang/String;ZZ)Z

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    if-nez v7, :cond_6

    .line 67
    .line 68
    iget-object v5, p0, Lcom/mycompany/app/dialog/DialogUrlLink$ShareTask;->h:Landroid/graphics/Bitmap;

    .line 69
    .line 70
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->hasAlpha()Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-eqz v5, :cond_5

    .line 75
    .line 76
    const-string v5, "image/png"

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_5
    const-string v5, "image/jpg"

    .line 80
    .line 81
    :goto_0
    invoke-static {v1, v3, v5, v4}, Lcom/mycompany/app/main/MainUtil;->V3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    :cond_6
    invoke-static {v2, v5}, Lcom/mycompany/app/main/MainUtil;->k0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogUrlLink$ShareTask;->j:Ljava/lang/String;

    .line 90
    .line 91
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogUrlLink$ShareTask;->h:Landroid/graphics/Bitmap;

    .line 92
    .line 93
    invoke-static {v2, v3, v1}, Lcom/mycompany/app/main/MainUtil;->p(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    iput-boolean v1, p0, Lcom/mycompany/app/dialog/DialogUrlLink$ShareTask;->k:Z

    .line 98
    .line 99
    if-eqz v1, :cond_b

    .line 100
    .line 101
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->T0:Z

    .line 102
    .line 103
    if-nez v1, :cond_7

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_7
    invoke-static {v6}, Lcom/mycompany/app/main/MainUtil;->G2(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->Z0:Ljava/lang/String;

    .line 111
    .line 112
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->G2(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->a1:Ljava/lang/String;

    .line 117
    .line 118
    return-void

    .line 119
    :cond_8
    iget-object v7, p0, Lcom/mycompany/app/dialog/DialogUrlLink$ShareTask;->g:Ljava/io/File;

    .line 120
    .line 121
    if-eqz v7, :cond_b

    .line 122
    .line 123
    invoke-virtual {v7}, Ljava/io/File;->length()J

    .line 124
    .line 125
    .line 126
    move-result-wide v8

    .line 127
    const-wide/16 v10, 0x0

    .line 128
    .line 129
    cmp-long v8, v8, v10

    .line 130
    .line 131
    if-lez v8, :cond_b

    .line 132
    .line 133
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    invoke-static {v5, v4, v4}, Lcom/mycompany/app/compress/Compress;->C(Ljava/lang/String;ZZ)Z

    .line 138
    .line 139
    .line 140
    move-result v8

    .line 141
    if-nez v8, :cond_9

    .line 142
    .line 143
    invoke-static {v7}, Lcom/mycompany/app/main/MainUtil;->S0(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    const-string v8, "image/"

    .line 148
    .line 149
    invoke-virtual {v8, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    invoke-static {v1, v3, v5, v4}, Lcom/mycompany/app/main/MainUtil;->V3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    :cond_9
    invoke-static {v2, v5}, Lcom/mycompany/app/main/MainUtil;->k0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogUrlLink$ShareTask;->j:Ljava/lang/String;

    .line 162
    .line 163
    invoke-static {v7, v1}, Lcom/mycompany/app/main/MainUtil;->u(Ljava/lang/String;Ljava/lang/String;)Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    iput-boolean v1, p0, Lcom/mycompany/app/dialog/DialogUrlLink$ShareTask;->k:Z

    .line 168
    .line 169
    if-eqz v1, :cond_b

    .line 170
    .line 171
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->T0:Z

    .line 172
    .line 173
    if-nez v1, :cond_a

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_a
    invoke-static {v6}, Lcom/mycompany/app/main/MainUtil;->G2(I)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->Z0:Ljava/lang/String;

    .line 181
    .line 182
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->G2(I)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->a1:Ljava/lang/String;

    .line 187
    .line 188
    :cond_b
    :goto_1
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink$ShareTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/dialog/DialogUrlLink;

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
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->N0:Lcom/mycompany/app/dialog/DialogUrlLink$ShareTask;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->v0:Lcom/mycompany/app/view/MyDialogLink;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogLink;->b(Z)V

    .line 24
    .line 25
    .line 26
    :cond_2
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink$ShareTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/dialog/DialogUrlLink;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->N0:Lcom/mycompany/app/dialog/DialogUrlLink$ShareTask;

    .line 17
    .line 18
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->v0:Lcom/mycompany/app/view/MyDialogLink;

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyDialogLink;->b(Z)V

    .line 24
    .line 25
    .line 26
    :cond_2
    iget-boolean v2, p0, Lcom/mycompany/app/dialog/DialogUrlLink$ShareTask;->k:Z

    .line 27
    .line 28
    if-nez v2, :cond_3

    .line 29
    .line 30
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->b0:Landroid/content/Context;

    .line 31
    .line 32
    sget v1, Lnet/kaki87/soul2/testing/R$string;->image_fail:I

    .line 33
    .line 34
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_3
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogUrlLink$ShareTask;->j:Ljava/lang/String;

    .line 39
    .line 40
    iget-boolean v3, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->T0:Z

    .line 41
    .line 42
    if-nez v3, :cond_4

    .line 43
    .line 44
    const/4 v3, 0x4

    .line 45
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 46
    .line 47
    invoke-static {v3, v4, v2, v1, v1}, Lcom/mycompany/app/main/MainUtil;->Z7(ILandroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 52
    .line 53
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->Z0:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->a1:Ljava/lang/String;

    .line 56
    .line 57
    if-eqz v1, :cond_6

    .line 58
    .line 59
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_5

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_5
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "image/*"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "android.intent.extra.STREAM"

    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->R3(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v5}, Lcom/mycompany/app/web/WebViewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5b

    goto :goto_1

    :cond_5b
    :try_start_1
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v6, Landroid/content/ComponentName;

    invoke-direct {v6, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "image/*"

    invoke-virtual {v5, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.STREAM"

    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->R3(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v5, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v2, 0x3

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v5}, Lcom/mycompany/app/web/WebViewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    :cond_6
    :goto_1
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->u0:Lcom/mycompany/app/dialog/DialogUrlLink$UrlLinkListener;

    .line 110
    .line 111
    if-nez v6, :cond_7

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_7
    iget-object v7, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->f0:Ljava/lang/String;

    .line 115
    .line 116
    iget-boolean v11, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->n0:Z

    .line 117
    .line 118
    iget-object v10, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->i0:Ljava/lang/String;

    .line 119
    .line 120
    const/4 v12, 0x0

    .line 121
    const/4 v8, 0x6

    .line 122
    const/4 v9, 0x0

    .line 123
    invoke-interface/range {v6 .. v12}, Lcom/mycompany/app/dialog/DialogUrlLink$UrlLinkListener;->c(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :goto_2
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogUrlLink;->dismiss()V

    .line 127
    .line 128
    .line 129
    return-void
.end method
