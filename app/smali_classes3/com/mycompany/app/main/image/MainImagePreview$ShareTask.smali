.class Lcom/mycompany/app/main/image/MainImagePreview$ShareTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/main/image/MainImagePreview;
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

.field public k:Ljava/lang/String;

.field public l:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImagePreview;Ljava/lang/String;Ljava/io/File;Landroid/graphics/Bitmap;Landroid/graphics/drawable/PictureDrawable;)V
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
    iput-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview$ShareTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/main/image/MainImagePreview;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iput-object p2, p0, Lcom/mycompany/app/main/image/MainImagePreview$ShareTask;->f:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p3, p0, Lcom/mycompany/app/main/image/MainImagePreview$ShareTask;->g:Ljava/io/File;

    .line 23
    .line 24
    iput-object p4, p0, Lcom/mycompany/app/main/image/MainImagePreview$ShareTask;->h:Landroid/graphics/Bitmap;

    .line 25
    .line 26
    iput-object p5, p0, Lcom/mycompany/app/main/image/MainImagePreview$ShareTask;->i:Landroid/graphics/drawable/PictureDrawable;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview$ShareTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/main/image/MainImagePreview;

    .line 12
    .line 13
    if-eqz v0, :cond_8

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
    iget-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview$ShareTask;->f:Ljava/lang/String;

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
    const/4 v2, 0x0

    .line 32
    const/4 v3, 0x1

    .line 33
    invoke-static {v1, v2, v2, v3}, Lcom/mycompany/app/main/MainUtil;->V3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    iput-object v4, p0, Lcom/mycompany/app/main/image/MainImagePreview$ShareTask;->k:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v4, p0, Lcom/mycompany/app/main/image/MainImagePreview$ShareTask;->i:Landroid/graphics/drawable/PictureDrawable;

    .line 40
    .line 41
    if-eqz v4, :cond_3

    .line 42
    .line 43
    const/4 v5, 0x0

    .line 44
    invoke-static {v4, v5}, Lcom/mycompany/app/main/MainUtil;->H(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    iput-object v4, p0, Lcom/mycompany/app/main/image/MainImagePreview$ShareTask;->h:Landroid/graphics/Bitmap;

    .line 49
    .line 50
    :cond_3
    iget-object v4, p0, Lcom/mycompany/app/main/image/MainImagePreview$ShareTask;->h:Landroid/graphics/Bitmap;

    .line 51
    .line 52
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_6

    .line 57
    .line 58
    iget-object v4, p0, Lcom/mycompany/app/main/image/MainImagePreview$ShareTask;->k:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v4, v3, v3}, Lcom/mycompany/app/compress/Compress;->C(Ljava/lang/String;ZZ)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-nez v4, :cond_5

    .line 65
    .line 66
    iget-object v4, p0, Lcom/mycompany/app/main/image/MainImagePreview$ShareTask;->h:Landroid/graphics/Bitmap;

    .line 67
    .line 68
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->hasAlpha()Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_4

    .line 73
    .line 74
    const-string v4, "image/png"

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_4
    const-string v4, "image/jpg"

    .line 78
    .line 79
    :goto_0
    invoke-static {v1, v2, v4, v3}, Lcom/mycompany/app/main/MainUtil;->V3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview$ShareTask;->k:Ljava/lang/String;

    .line 84
    .line 85
    :cond_5
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->f1:Landroid/content/Context;

    .line 86
    .line 87
    iget-object v2, p0, Lcom/mycompany/app/main/image/MainImagePreview$ShareTask;->k:Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->k0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview$ShareTask;->j:Ljava/lang/String;

    .line 94
    .line 95
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImagePreview;->f1:Landroid/content/Context;

    .line 96
    .line 97
    iget-object v2, p0, Lcom/mycompany/app/main/image/MainImagePreview$ShareTask;->h:Landroid/graphics/Bitmap;

    .line 98
    .line 99
    invoke-static {v0, v2, v1}, Lcom/mycompany/app/main/MainUtil;->p(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    iput-boolean v0, p0, Lcom/mycompany/app/main/image/MainImagePreview$ShareTask;->l:Z

    .line 104
    .line 105
    return-void

    .line 106
    :cond_6
    iget-object v4, p0, Lcom/mycompany/app/main/image/MainImagePreview$ShareTask;->g:Ljava/io/File;

    .line 107
    .line 108
    if-eqz v4, :cond_8

    .line 109
    .line 110
    invoke-virtual {v4}, Ljava/io/File;->length()J

    .line 111
    .line 112
    .line 113
    move-result-wide v5

    .line 114
    const-wide/16 v7, 0x0

    .line 115
    .line 116
    cmp-long v5, v5, v7

    .line 117
    .line 118
    if-lez v5, :cond_8

    .line 119
    .line 120
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    iget-object v5, p0, Lcom/mycompany/app/main/image/MainImagePreview$ShareTask;->k:Ljava/lang/String;

    .line 125
    .line 126
    invoke-static {v5, v3, v3}, Lcom/mycompany/app/compress/Compress;->C(Ljava/lang/String;ZZ)Z

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    if-nez v5, :cond_7

    .line 131
    .line 132
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->S0(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    const-string v6, "image/"

    .line 137
    .line 138
    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    invoke-static {v1, v2, v5, v3}, Lcom/mycompany/app/main/MainUtil;->V3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    iput-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview$ShareTask;->k:Ljava/lang/String;

    .line 147
    .line 148
    :cond_7
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImagePreview;->f1:Landroid/content/Context;

    .line 149
    .line 150
    iget-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview$ShareTask;->k:Ljava/lang/String;

    .line 151
    .line 152
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->k0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    iput-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview$ShareTask;->j:Ljava/lang/String;

    .line 157
    .line 158
    invoke-static {v4, v0}, Lcom/mycompany/app/main/MainUtil;->u(Ljava/lang/String;Ljava/lang/String;)Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    iput-boolean v0, p0, Lcom/mycompany/app/main/image/MainImagePreview$ShareTask;->l:Z

    .line 163
    .line 164
    :cond_8
    :goto_1
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview$ShareTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/main/image/MainImagePreview;

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
    iput-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->H1:Lcom/mycompany/app/main/image/MainImagePreview$ShareTask;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImagePreview;->r1:Lcom/mycompany/app/view/MyCoverView;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 24
    .line 25
    .line 26
    :cond_2
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview$ShareTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/main/image/MainImagePreview;

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
    iput-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->H1:Lcom/mycompany/app/main/image/MainImagePreview$ShareTask;

    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/mycompany/app/main/image/MainImagePreview$ShareTask;->l:Z

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    if-nez v1, :cond_3

    .line 22
    .line 23
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->r1:Lcom/mycompany/app/view/MyCoverView;

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 28
    .line 29
    .line 30
    :cond_2
    sget v1, Lnet/kaki87/soul2/testing/R$string;->image_fail:I

    .line 31
    .line 32
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview$ShareTask;->j:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v3, p0, Lcom/mycompany/app/main/image/MainImagePreview$ShareTask;->k:Ljava/lang/String;

    .line 39
    .line 40
    const-string v4, "image/*"

    .line 41
    .line 42
    const/4 v5, 0x4

    .line 43
    invoke-static {v5, v0, v1, v3, v4}, Lcom/mycompany/app/main/MainUtil;->Z7(ILandroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_4

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Lcom/mycompany/app/main/image/MainImagePreview;->d1(Z)V

    .line 50
    .line 51
    .line 52
    :cond_4
    :goto_0
    return-void
.end method
