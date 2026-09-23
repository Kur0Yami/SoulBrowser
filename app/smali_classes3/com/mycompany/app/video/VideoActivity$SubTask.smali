.class Lcom/mycompany/app/video/VideoActivity$SubTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/video/VideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public f:Ljava/util/ArrayList;

.field public final g:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoActivity;Z)V
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
    iput-object v0, p0, Lcom/mycompany/app/video/VideoActivity$SubTask;->e:Ljava/lang/ref/WeakReference;

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
    return-void

    .line 20
    :cond_0
    iput-boolean p2, p0, Lcom/mycompany/app/video/VideoActivity$SubTask;->g:Z

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$SubTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_3

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
    if-eqz v0, :cond_7

    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    goto :goto_3

    .line 19
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 20
    .line 21
    iget-object v2, v0, Lcom/mycompany/app/video/VideoActivity;->G3:Ljava/lang/String;

    .line 22
    .line 23
    new-instance v3, Lcom/mycompany/app/video/VideoActivity$SubTask$1;

    .line 24
    .line 25
    invoke-direct {v3, v0}, Lcom/mycompany/app/video/VideoActivity$SubTask$1;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v4, 0x0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUri;->k(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->W0(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    const/4 v6, -0x1

    .line 49
    if-eqz v5, :cond_4

    .line 50
    .line 51
    :cond_3
    move v5, v6

    .line 52
    goto :goto_1

    .line 53
    :cond_4
    const/4 v5, 0x0

    .line 54
    :goto_0
    const/16 v7, 0xa

    .line 55
    .line 56
    if-ge v5, v7, :cond_3

    .line 57
    .line 58
    sget-object v7, Lcom/mycompany/app/subtitle/Subtitle;->a:[Ljava/lang/String;

    .line 59
    .line 60
    aget-object v7, v7, v5

    .line 61
    .line 62
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    if-eqz v7, :cond_5

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :goto_1
    if-ne v5, v6, :cond_6

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_6
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    invoke-virtual {v0, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->o0(Ljava/io/InputStream;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-static {v5, v1, v0, v3}, Lcom/mycompany/app/subtitle/Subtitle;->a(ILjava/io/InputStream;Ljava/lang/String;Lcom/mycompany/app/subtitle/Subtitle$SubtitleListener;)Ljava/util/ArrayList;

    .line 104
    .line 105
    .line 106
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :catch_0
    :goto_2
    iput-object v4, p0, Lcom/mycompany/app/video/VideoActivity$SubTask;->f:Ljava/util/ArrayList;

    .line 108
    .line 109
    :cond_7
    :goto_3
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$SubTask;->e:Ljava/lang/ref/WeakReference;

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
    :goto_0
    return-void

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->J3:Lcom/mycompany/app/video/VideoActivity$SubTask;

    .line 17
    .line 18
    return-void
.end method

.method public final e()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$SubTask;->e:Ljava/lang/ref/WeakReference;

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
    iput-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->J3:Lcom/mycompany/app/video/VideoActivity$SubTask;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/mycompany/app/video/VideoActivity$SubTask;->f:Ljava/util/ArrayList;

    .line 19
    .line 20
    iput-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->K3:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/mycompany/app/video/VideoActivity;->a1()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iget-boolean v2, p0, Lcom/mycompany/app/video/VideoActivity$SubTask;->g:Z

    .line 27
    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    if-eqz v2, :cond_5

    .line 31
    .line 32
    sget v1, Lnet/kaki87/soul2/testing/R$string;->invalid_file:I

    .line 33
    .line 34
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    if-eqz v2, :cond_3

    .line 39
    .line 40
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 41
    .line 42
    iget-object v2, v0, Lcom/mycompany/app/video/VideoActivity;->J2:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v3, v0, Lcom/mycompany/app/video/VideoActivity;->G3:Ljava/lang/String;

    .line 45
    .line 46
    iget v4, v0, Lcom/mycompany/app/video/VideoActivity;->H3:I

    .line 47
    .line 48
    iget v5, v0, Lcom/mycompany/app/video/VideoActivity;->I3:I

    .line 49
    .line 50
    invoke-static {v1, v2, v3, v4, v5}, Lcom/mycompany/app/db/book/DbBookSub;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 51
    .line 52
    .line 53
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->D3:Lcom/mycompany/app/video/VideoSubLayout;

    .line 54
    .line 55
    if-eqz v1, :cond_4

    .line 56
    .line 57
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->E3:Lcom/mycompany/app/web/WebVideoProgress;

    .line 58
    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/mycompany/app/video/VideoActivity;->B1()V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 66
    .line 67
    if-nez v1, :cond_6

    .line 68
    .line 69
    :cond_5
    :goto_0
    return-void

    .line 70
    :cond_6
    new-instance v2, Lcom/mycompany/app/video/VideoActivity$78;

    .line 71
    .line 72
    invoke-direct {v2, v0}, Lcom/mycompany/app/video/VideoActivity$78;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    .line 77
    .line 78
    return-void
.end method
