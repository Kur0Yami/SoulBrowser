.class Lcom/mycompany/app/down/DownSaveImage$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Landroid/content/Context;

.field public final synthetic f:Ljava/util/List;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:I

.field public final synthetic i:Z

.field public final synthetic j:J

.field public final synthetic k:I

.field public final synthetic l:I

.field public final synthetic m:Lcom/mycompany/app/main/MainDownSvc$ImageItem;

.field public final synthetic n:Lcom/mycompany/app/main/MainDownSvc$DownImageListener;


# direct methods
.method public constructor <init>(IIIJLandroid/content/Context;Lcom/mycompany/app/main/MainDownSvc$DownImageListener;Lcom/mycompany/app/main/MainDownSvc$ImageItem;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p6, p0, Lcom/mycompany/app/down/DownSaveImage$1;->c:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p10, p0, Lcom/mycompany/app/down/DownSaveImage$1;->f:Ljava/util/List;

    .line 7
    .line 8
    iput-object p9, p0, Lcom/mycompany/app/down/DownSaveImage$1;->g:Ljava/lang/String;

    .line 9
    .line 10
    iput p1, p0, Lcom/mycompany/app/down/DownSaveImage$1;->h:I

    .line 11
    .line 12
    iput-boolean p11, p0, Lcom/mycompany/app/down/DownSaveImage$1;->i:Z

    .line 13
    .line 14
    iput-wide p4, p0, Lcom/mycompany/app/down/DownSaveImage$1;->j:J

    .line 15
    .line 16
    iput p2, p0, Lcom/mycompany/app/down/DownSaveImage$1;->k:I

    .line 17
    .line 18
    iput p3, p0, Lcom/mycompany/app/down/DownSaveImage$1;->l:I

    .line 19
    .line 20
    iput-object p8, p0, Lcom/mycompany/app/down/DownSaveImage$1;->m:Lcom/mycompany/app/main/MainDownSvc$ImageItem;

    .line 21
    .line 22
    iput-object p7, p0, Lcom/mycompany/app/down/DownSaveImage$1;->n:Lcom/mycompany/app/main/MainDownSvc$DownImageListener;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v6, p0, Lcom/mycompany/app/down/DownSaveImage$1;->c:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v10, p0, Lcom/mycompany/app/down/DownSaveImage$1;->f:Ljava/util/List;

    .line 4
    .line 5
    iget-object v9, p0, Lcom/mycompany/app/down/DownSaveImage$1;->g:Ljava/lang/String;

    .line 6
    .line 7
    iget v1, p0, Lcom/mycompany/app/down/DownSaveImage$1;->h:I

    .line 8
    .line 9
    iget-boolean v11, p0, Lcom/mycompany/app/down/DownSaveImage$1;->i:Z

    .line 10
    .line 11
    iget-wide v4, p0, Lcom/mycompany/app/down/DownSaveImage$1;->j:J

    .line 12
    .line 13
    iget v2, p0, Lcom/mycompany/app/down/DownSaveImage$1;->k:I

    .line 14
    .line 15
    iget v3, p0, Lcom/mycompany/app/down/DownSaveImage$1;->l:I

    .line 16
    .line 17
    iget-object v8, p0, Lcom/mycompany/app/down/DownSaveImage$1;->m:Lcom/mycompany/app/main/MainDownSvc$ImageItem;

    .line 18
    .line 19
    iget-object v7, p0, Lcom/mycompany/app/down/DownSaveImage$1;->n:Lcom/mycompany/app/main/MainDownSvc$DownImageListener;

    .line 20
    .line 21
    :try_start_0
    new-instance v0, Lcom/mycompany/app/down/DownSaveImage$2;

    .line 22
    .line 23
    invoke-direct/range {v0 .. v11}, Lcom/mycompany/app/down/DownSaveImage$2;-><init>(IIIJLandroid/content/Context;Lcom/mycompany/app/main/MainDownSvc$DownImageListener;Lcom/mycompany/app/main/MainDownSvc$ImageItem;Ljava/lang/String;Ljava/util/List;Z)V

    .line 24
    .line 25
    .line 26
    invoke-static {v6, v0}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catch_0
    const/4 v0, 0x4

    .line 31
    iput v0, v8, Lcom/mycompany/app/main/MainDownSvc$ImageItem;->g:I

    .line 32
    .line 33
    invoke-interface {v7, v10, v11}, Lcom/mycompany/app/main/MainDownSvc$DownImageListener;->b(Ljava/util/List;Z)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
