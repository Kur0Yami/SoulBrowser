.class public Lcom/mycompany/app/compress/CompressCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/compress/CompressCache$BitmapInfo;
    }
.end annotation


# static fields
.field public static b:Lcom/mycompany/app/compress/CompressCache;


# instance fields
.field public a:Landroidx/collection/LruCache;


# direct methods
.method public static a()Lcom/mycompany/app/compress/CompressCache;
    .locals 5

    .line 1
    sget-object v0, Lcom/mycompany/app/compress/CompressCache;->b:Lcom/mycompany/app/compress/CompressCache;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/mycompany/app/compress/CompressCache;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/mycompany/app/compress/CompressCache;->b:Lcom/mycompany/app/compress/CompressCache;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/mycompany/app/compress/CompressCache;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    int-to-float v2, v2

    .line 19
    const/high16 v3, 0x42c80000    # 100.0f

    .line 20
    .line 21
    div-float/2addr v2, v3

    .line 22
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3}, Ljava/lang/Runtime;->maxMemory()J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    long-to-float v3, v3

    .line 31
    mul-float/2addr v2, v3

    .line 32
    const/high16 v3, 0x44800000    # 1024.0f

    .line 33
    .line 34
    div-float/2addr v2, v3

    .line 35
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    new-instance v3, Lcom/mycompany/app/compress/CompressCache$1;

    .line 40
    .line 41
    invoke-direct {v3, v2}, Landroidx/collection/LruCache;-><init>(I)V

    .line 42
    .line 43
    .line 44
    iput-object v3, v1, Lcom/mycompany/app/compress/CompressCache;->a:Landroidx/collection/LruCache;

    .line 45
    .line 46
    sput-object v1, Lcom/mycompany/app/compress/CompressCache;->b:Lcom/mycompany/app/compress/CompressCache;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception v1

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    :goto_0
    monitor-exit v0

    .line 52
    goto :goto_2

    .line 53
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw v1

    .line 55
    :cond_1
    :goto_2
    sget-object v0, Lcom/mycompany/app/compress/CompressCache;->b:Lcom/mycompany/app/compress/CompressCache;

    .line 56
    .line 57
    return-object v0
.end method
