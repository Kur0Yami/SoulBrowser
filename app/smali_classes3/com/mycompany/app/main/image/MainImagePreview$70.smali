.class Lcom/mycompany/app/main/image/MainImagePreview$70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/image/MainImagePreview;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImagePreview;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview$70;->c:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview$70;->c:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 4
    .line 5
    iget-object v5, v1, Lcom/mycompany/app/main/image/MainImagePreview;->B2:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v7, v1, Lcom/mycompany/app/main/image/MainImagePreview;->C2:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 8
    .line 9
    iget v4, v1, Lcom/mycompany/app/main/image/MainImagePreview;->D2:I

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    iput-object v2, v1, Lcom/mycompany/app/main/image/MainImagePreview;->B2:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v2, v1, Lcom/mycompany/app/main/image/MainImagePreview;->C2:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 15
    .line 16
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->e()Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object v3, v1, Lcom/mycompany/app/main/image/MainImagePreview;->i2:Ljava/lang/String;

    .line 25
    .line 26
    invoke-interface {v2, v3}, Lcom/nostra13/universalimageloader/cache/disc/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 34
    .line 35
    .line 36
    move-result-wide v8

    .line 37
    const-wide/16 v10, 0x0

    .line 38
    .line 39
    cmp-long v3, v8, v10

    .line 40
    .line 41
    if-nez v3, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object v3, v1, Lcom/mycompany/app/main/image/MainImagePreview;->f1:Landroid/content/Context;

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iget-object v6, v7, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v3, v2, v6}, Lcom/mycompany/app/main/MainUtil;->t(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    iget-object v2, v1, Lcom/mycompany/app/main/image/MainImagePreview;->f1:Landroid/content/Context;

    .line 56
    .line 57
    iget-object v6, v1, Lcom/mycompany/app/main/image/MainImagePreview;->z1:Ljava/lang/String;

    .line 58
    .line 59
    sget-boolean v13, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 60
    .line 61
    sget-wide v14, Lcom/mycompany/app/pref/PrefSecret;->m:J

    .line 62
    .line 63
    const/16 v16, 0x0

    .line 64
    .line 65
    const/4 v3, 0x3

    .line 66
    const/4 v12, 0x0

    .line 67
    move-wide v10, v8

    .line 68
    invoke-static/range {v2 .. v16}, Lcom/mycompany/app/db/book/DbBookDown;->u(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainUri$UriItem;JJZZJZ)J

    .line 69
    .line 70
    .line 71
    iget-object v1, v1, Lcom/mycompany/app/main/image/MainImagePreview;->g1:Landroid/widget/FrameLayout;

    .line 72
    .line 73
    if-nez v1, :cond_2

    .line 74
    .line 75
    :goto_0
    return-void

    .line 76
    :cond_2
    new-instance v2, Lcom/mycompany/app/main/image/MainImagePreview$70$1;

    .line 77
    .line 78
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/image/MainImagePreview$70$1;-><init>(Lcom/mycompany/app/main/image/MainImagePreview$70;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 82
    .line 83
    .line 84
    return-void
.end method
