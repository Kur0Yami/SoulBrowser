.class Lcom/mycompany/app/down/DownSavePath$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Landroid/content/Context;

.field public final synthetic f:Lcom/mycompany/app/main/MainDownSvc$DownItem;

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
    iput-object p5, p0, Lcom/mycompany/app/down/DownSavePath$1;->c:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p6, p0, Lcom/mycompany/app/down/DownSavePath$1;->f:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 7
    .line 8
    iput-object p8, p0, Lcom/mycompany/app/down/DownSavePath$1;->g:Ljava/lang/String;

    .line 9
    .line 10
    iput p1, p0, Lcom/mycompany/app/down/DownSavePath$1;->h:I

    .line 11
    .line 12
    iput p2, p0, Lcom/mycompany/app/down/DownSavePath$1;->i:I

    .line 13
    .line 14
    iput p3, p0, Lcom/mycompany/app/down/DownSavePath$1;->j:I

    .line 15
    .line 16
    iput p4, p0, Lcom/mycompany/app/down/DownSavePath$1;->k:I

    .line 17
    .line 18
    iput-object p7, p0, Lcom/mycompany/app/down/DownSavePath$1;->l:Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v5, p0, Lcom/mycompany/app/down/DownSavePath$1;->c:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v8, p0, Lcom/mycompany/app/down/DownSavePath$1;->g:Ljava/lang/String;

    .line 4
    .line 5
    iget v1, p0, Lcom/mycompany/app/down/DownSavePath$1;->h:I

    .line 6
    .line 7
    iget v2, p0, Lcom/mycompany/app/down/DownSavePath$1;->i:I

    .line 8
    .line 9
    iget v3, p0, Lcom/mycompany/app/down/DownSavePath$1;->j:I

    .line 10
    .line 11
    iget v4, p0, Lcom/mycompany/app/down/DownSavePath$1;->k:I

    .line 12
    .line 13
    iget-object v7, p0, Lcom/mycompany/app/down/DownSavePath$1;->l:Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;

    .line 14
    .line 15
    iget-object v6, p0, Lcom/mycompany/app/down/DownSavePath$1;->f:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 16
    .line 17
    if-eqz v6, :cond_0

    .line 18
    .line 19
    :try_start_0
    new-instance v0, Lcom/mycompany/app/down/DownSavePath$2;

    .line 20
    .line 21
    invoke-direct/range {v0 .. v8}, Lcom/mycompany/app/down/DownSavePath$2;-><init>(IIIILandroid/content/Context;Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v5, v0}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catch_0
    const/4 v0, 0x1

    .line 29
    iput-boolean v0, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->N:Z

    .line 30
    .line 31
    invoke-interface {v7, v6}, Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;->b(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method
