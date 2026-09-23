.class Lcom/mycompany/app/image/ImageViewListVert$82;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/image/ImageViewListVert;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewListVert;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewListVert$82;->c:Lcom/mycompany/app/image/ImageViewListVert;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListVert$82;->c:Lcom/mycompany/app/image/ImageViewListVert;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/image/ImageViewListVert;->n1:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v6, v1, Lcom/mycompany/app/image/ImageViewListVert;->o1:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v8, v1, Lcom/mycompany/app/image/ImageViewListVert;->p1:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 10
    .line 11
    iget v5, v1, Lcom/mycompany/app/image/ImageViewListVert;->q1:I

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    iput-object v3, v1, Lcom/mycompany/app/image/ImageViewListVert;->n1:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v3, v1, Lcom/mycompany/app/image/ImageViewListVert;->o1:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v3, v1, Lcom/mycompany/app/image/ImageViewListVert;->p1:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 19
    .line 20
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->e()Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-interface {v3, v2}, Lcom/nostra13/universalimageloader/cache/disc/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 36
    .line 37
    .line 38
    move-result-wide v9

    .line 39
    const-wide/16 v3, 0x0

    .line 40
    .line 41
    cmp-long v3, v9, v3

    .line 42
    .line 43
    if-nez v3, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object v3, v1, Lcom/mycompany/app/image/ImageViewListVert;->a:Landroid/content/Context;

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    iget-object v4, v8, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v3, v2, v4}, Lcom/mycompany/app/main/MainUtil;->t(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    iget-object v3, v1, Lcom/mycompany/app/image/ImageViewListVert;->a:Landroid/content/Context;

    .line 58
    .line 59
    iget-object v7, v1, Lcom/mycompany/app/image/ImageViewListVert;->l:Ljava/lang/String;

    .line 60
    .line 61
    sget-boolean v14, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 62
    .line 63
    sget-wide v15, Lcom/mycompany/app/pref/PrefSecret;->m:J

    .line 64
    .line 65
    const/16 v17, 0x0

    .line 66
    .line 67
    const/4 v4, 0x3

    .line 68
    const/4 v13, 0x0

    .line 69
    move-wide v11, v9

    .line 70
    invoke-static/range {v3 .. v17}, Lcom/mycompany/app/db/book/DbBookDown;->u(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainUri$UriItem;JJZZJZ)J

    .line 71
    .line 72
    .line 73
    iget-object v1, v1, Lcom/mycompany/app/image/ImageViewListVert;->H:Lcom/mycompany/app/view/MySizeFrame;

    .line 74
    .line 75
    if-nez v1, :cond_2

    .line 76
    .line 77
    :goto_0
    return-void

    .line 78
    :cond_2
    new-instance v2, Lcom/mycompany/app/image/ImageViewListVert$82$1;

    .line 79
    .line 80
    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewListVert$82$1;-><init>(Lcom/mycompany/app/image/ImageViewListVert$82;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 84
    .line 85
    .line 86
    return-void
.end method
