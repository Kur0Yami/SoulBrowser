.class Lcom/mycompany/app/image/ImageViewPageScroll$28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainItem$ViewItem;

.field public final synthetic f:Lcom/mycompany/app/image/ImageViewPageScroll;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewPageScroll;Lcom/mycompany/app/main/MainItem$ViewItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewPageScroll$28;->f:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/image/ImageViewPageScroll$28;->c:Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageScroll$28;->f:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->n:Z

    .line 4
    .line 5
    if-eqz v1, :cond_8

    .line 6
    .line 7
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageScroll$28;->c:Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 8
    .line 9
    if-eqz v1, :cond_8

    .line 10
    .line 11
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->E:Lcom/mycompany/app/compress/Compress;

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
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->o:Ljava/util/ArrayList;

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
    iget v2, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->x:I

    .line 33
    .line 34
    if-eqz v2, :cond_6

    .line 35
    .line 36
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->E:Lcom/mycompany/app/compress/Compress;

    .line 37
    .line 38
    if-nez v2, :cond_2

    .line 39
    .line 40
    goto :goto_3

    .line 41
    :cond_2
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->a:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter v2

    .line 44
    const/4 v4, 0x0

    .line 45
    :goto_0
    :try_start_0
    iget v5, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->x:I

    .line 46
    .line 47
    if-ge v4, v5, :cond_5

    .line 48
    .line 49
    add-int v6, v1, v4

    .line 50
    .line 51
    rem-int/2addr v6, v5

    .line 52
    iget-object v5, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->E:Lcom/mycompany/app/compress/Compress;

    .line 53
    .line 54
    invoke-virtual {v5, v6}, Lcom/mycompany/app/compress/Compress;->n(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    if-eqz v7, :cond_3

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    iget-object v7, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->o:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    if-nez v5, :cond_4

    .line 72
    .line 73
    :try_start_1
    monitor-exit v2

    .line 74
    move v1, v6

    .line 75
    goto :goto_4

    .line 76
    :catchall_0
    move-exception v0

    .line 77
    goto :goto_2

    .line 78
    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catch_0
    :cond_5
    monitor-exit v2

    .line 82
    goto :goto_3

    .line 83
    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    throw v0

    .line 85
    :cond_6
    :goto_3
    move v1, v3

    .line 86
    :cond_7
    :goto_4
    if-eq v1, v3, :cond_8

    .line 87
    .line 88
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageScroll$28;->f:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Lcom/mycompany/app/image/ImageViewPageScroll;->c0(I)V

    .line 91
    .line 92
    .line 93
    :cond_8
    :goto_5
    return-void
.end method
