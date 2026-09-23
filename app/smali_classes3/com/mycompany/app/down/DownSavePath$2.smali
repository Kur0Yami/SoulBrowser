.class Lcom/mycompany/app/down/DownSavePath$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainDownSvc$DownItem;

.field public final synthetic f:Landroid/content/Context;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:I

.field public final synthetic i:I

.field public final synthetic j:I

.field public final synthetic k:I

.field public final synthetic l:Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;


# direct methods
.method public constructor <init>(IIIILandroid/content/Context;Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p6, p0, Lcom/mycompany/app/down/DownSavePath$2;->c:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 5
    .line 6
    iput-object p5, p0, Lcom/mycompany/app/down/DownSavePath$2;->f:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p8, p0, Lcom/mycompany/app/down/DownSavePath$2;->g:Ljava/lang/String;

    .line 9
    .line 10
    iput p1, p0, Lcom/mycompany/app/down/DownSavePath$2;->h:I

    .line 11
    .line 12
    iput p2, p0, Lcom/mycompany/app/down/DownSavePath$2;->i:I

    .line 13
    .line 14
    iput p3, p0, Lcom/mycompany/app/down/DownSavePath$2;->j:I

    .line 15
    .line 16
    iput p4, p0, Lcom/mycompany/app/down/DownSavePath$2;->k:I

    .line 17
    .line 18
    iput-object p7, p0, Lcom/mycompany/app/down/DownSavePath$2;->l:Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v1, p0, Lcom/mycompany/app/down/DownSavePath$2;->c:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 2
    .line 3
    iget v0, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 4
    .line 5
    const/4 v9, 0x1

    .line 6
    if-eq v0, v9, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mycompany/app/down/DownSavePath$2;->f:Landroid/content/Context;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/mycompany/app/down/DownSavePath$2;->g:Ljava/lang/String;

    .line 12
    .line 13
    iget v3, p0, Lcom/mycompany/app/down/DownSavePath$2;->h:I

    .line 14
    .line 15
    iget v4, p0, Lcom/mycompany/app/down/DownSavePath$2;->i:I

    .line 16
    .line 17
    iget v5, p0, Lcom/mycompany/app/down/DownSavePath$2;->j:I

    .line 18
    .line 19
    iget v6, p0, Lcom/mycompany/app/down/DownSavePath$2;->k:I

    .line 20
    .line 21
    iget-object v8, p0, Lcom/mycompany/app/down/DownSavePath$2;->l:Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;

    .line 22
    .line 23
    const/4 v7, 0x1

    .line 24
    invoke-static/range {v0 .. v8}, Lcom/mycompany/app/down/DownSavePath;->a(Landroid/content/Context;Lcom/mycompany/app/main/MainDownSvc$DownItem;Ljava/lang/String;IIIIZLcom/mycompany/app/main/MainDownSvc$DownSaveListener;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catch_0
    iget-object v0, p0, Lcom/mycompany/app/down/DownSavePath$2;->c:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 29
    .line 30
    iput-boolean v9, v0, Lcom/mycompany/app/main/MainDownSvc$DownItem;->N:Z

    .line 31
    .line 32
    iget-object v1, p0, Lcom/mycompany/app/down/DownSavePath$2;->l:Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;

    .line 33
    .line 34
    invoke-interface {v1, v0}, Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;->b(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
