.class Lcom/mycompany/app/image/ImageListAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainItem$ViewItem;

.field public final synthetic f:Lcom/mycompany/app/image/ImageListAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageListAdapter;Lcom/mycompany/app/main/MainItem$ViewItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageListAdapter$3;->f:Lcom/mycompany/app/image/ImageListAdapter;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/image/ImageListAdapter$3;->c:Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageListAdapter$3;->f:Lcom/mycompany/app/image/ImageListAdapter;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/image/ImageListAdapter;->q:Z

    .line 4
    .line 5
    if-eqz v1, :cond_8

    .line 6
    .line 7
    iget-object v1, p0, Lcom/mycompany/app/image/ImageListAdapter$3;->c:Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 8
    .line 9
    if-eqz v1, :cond_8

    .line 10
    .line 11
    iget-object v2, v0, Lcom/mycompany/app/image/ImageListAdapter;->h:Lcom/mycompany/app/compress/Compress;

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    goto :goto_5

    .line 16
    :cond_0
    iget v1, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 17
    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    iget-object v2, v0, Lcom/mycompany/app/image/ImageListAdapter;->r:Ljava/util/ArrayList;

    .line 21
    .line 22
    const/4 v3, -0x1

    .line 23
    if-eqz v2, :cond_7

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    goto :goto_4

    .line 32
    :cond_1
    iget-object v2, v0, Lcom/mycompany/app/image/ImageListAdapter;->h:Lcom/mycompany/app/compress/Compress;

    .line 33
    .line 34
    if-nez v2, :cond_2

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_2
    invoke-virtual {v2}, Lcom/mycompany/app/compress/Compress;->R()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_3

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_3
    iget-object v4, v0, Lcom/mycompany/app/image/ImageListAdapter;->d:Ljava/lang/Object;

    .line 45
    .line 46
    monitor-enter v4

    .line 47
    const/4 v5, 0x0

    .line 48
    :goto_0
    if-ge v5, v2, :cond_6

    .line 49
    .line 50
    add-int v6, v1, v5

    .line 51
    .line 52
    :try_start_0
    rem-int/2addr v6, v2

    .line 53
    iget-object v7, v0, Lcom/mycompany/app/image/ImageListAdapter;->h:Lcom/mycompany/app/compress/Compress;

    .line 54
    .line 55
    invoke-virtual {v7, v6}, Lcom/mycompany/app/compress/Compress;->n(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    if-eqz v8, :cond_4

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_4
    iget-object v8, v0, Lcom/mycompany/app/image/ImageListAdapter;->r:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    if-nez v7, :cond_5

    .line 73
    .line 74
    :try_start_1
    monitor-exit v4

    .line 75
    move v1, v6

    .line 76
    goto :goto_4

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    goto :goto_3

    .line 79
    :cond_5
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catch_0
    :cond_6
    monitor-exit v4

    .line 83
    :goto_2
    move v1, v3

    .line 84
    goto :goto_4

    .line 85
    :goto_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    throw v0

    .line 87
    :cond_7
    :goto_4
    if-eq v1, v3, :cond_8

    .line 88
    .line 89
    iget-object v0, p0, Lcom/mycompany/app/image/ImageListAdapter$3;->f:Lcom/mycompany/app/image/ImageListAdapter;

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Lcom/mycompany/app/image/ImageListAdapter;->y(I)V

    .line 92
    .line 93
    .line 94
    :cond_8
    :goto_5
    return-void
.end method
