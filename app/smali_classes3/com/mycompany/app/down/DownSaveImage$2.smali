.class Lcom/mycompany/app/down/DownSaveImage$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainDownSvc$DownImageListener;

.field public final synthetic f:Landroid/content/Context;

.field public final synthetic g:Ljava/util/List;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:I

.field public final synthetic j:Z

.field public final synthetic k:J

.field public final synthetic l:I

.field public final synthetic m:I

.field public final synthetic n:Lcom/mycompany/app/main/MainDownSvc$ImageItem;


# direct methods
.method public constructor <init>(IIIJLandroid/content/Context;Lcom/mycompany/app/main/MainDownSvc$DownImageListener;Lcom/mycompany/app/main/MainDownSvc$ImageItem;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p7, p0, Lcom/mycompany/app/down/DownSaveImage$2;->c:Lcom/mycompany/app/main/MainDownSvc$DownImageListener;

    .line 5
    .line 6
    iput-object p6, p0, Lcom/mycompany/app/down/DownSaveImage$2;->f:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p10, p0, Lcom/mycompany/app/down/DownSaveImage$2;->g:Ljava/util/List;

    .line 9
    .line 10
    iput-object p9, p0, Lcom/mycompany/app/down/DownSaveImage$2;->h:Ljava/lang/String;

    .line 11
    .line 12
    iput p1, p0, Lcom/mycompany/app/down/DownSaveImage$2;->i:I

    .line 13
    .line 14
    iput-boolean p11, p0, Lcom/mycompany/app/down/DownSaveImage$2;->j:Z

    .line 15
    .line 16
    iput-wide p4, p0, Lcom/mycompany/app/down/DownSaveImage$2;->k:J

    .line 17
    .line 18
    iput p2, p0, Lcom/mycompany/app/down/DownSaveImage$2;->l:I

    .line 19
    .line 20
    iput p3, p0, Lcom/mycompany/app/down/DownSaveImage$2;->m:I

    .line 21
    .line 22
    iput-object p8, p0, Lcom/mycompany/app/down/DownSaveImage$2;->n:Lcom/mycompany/app/main/MainDownSvc$ImageItem;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v9, p0, Lcom/mycompany/app/down/DownSaveImage$2;->c:Lcom/mycompany/app/main/MainDownSvc$DownImageListener;

    .line 2
    .line 3
    invoke-interface {v9}, Lcom/mycompany/app/main/MainDownSvc$DownImageListener;->isRunning()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mycompany/app/down/DownSaveImage$2;->f:Landroid/content/Context;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/mycompany/app/down/DownSaveImage$2;->g:Ljava/util/List;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/mycompany/app/down/DownSaveImage$2;->h:Ljava/lang/String;

    .line 15
    .line 16
    iget v3, p0, Lcom/mycompany/app/down/DownSaveImage$2;->i:I

    .line 17
    .line 18
    iget-boolean v4, p0, Lcom/mycompany/app/down/DownSaveImage$2;->j:Z

    .line 19
    .line 20
    iget-wide v5, p0, Lcom/mycompany/app/down/DownSaveImage$2;->k:J

    .line 21
    .line 22
    iget v7, p0, Lcom/mycompany/app/down/DownSaveImage$2;->l:I

    .line 23
    .line 24
    iget v8, p0, Lcom/mycompany/app/down/DownSaveImage$2;->m:I

    .line 25
    .line 26
    invoke-static/range {v0 .. v9}, Lcom/mycompany/app/down/DownSaveImage;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;IZJIILcom/mycompany/app/main/MainDownSvc$DownImageListener;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catch_0
    iget-object v0, p0, Lcom/mycompany/app/down/DownSaveImage$2;->n:Lcom/mycompany/app/main/MainDownSvc$ImageItem;

    .line 31
    .line 32
    const/4 v1, 0x4

    .line 33
    iput v1, v0, Lcom/mycompany/app/main/MainDownSvc$ImageItem;->g:I

    .line 34
    .line 35
    iget-object v0, p0, Lcom/mycompany/app/down/DownSaveImage$2;->g:Ljava/util/List;

    .line 36
    .line 37
    iget-boolean v1, p0, Lcom/mycompany/app/down/DownSaveImage$2;->j:Z

    .line 38
    .line 39
    invoke-interface {v9, v0, v1}, Lcom/mycompany/app/main/MainDownSvc$DownImageListener;->b(Ljava/util/List;Z)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
