.class Lcom/mycompany/app/down/DownSaveSplit$1;
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

.field public final synthetic j:Z

.field public final synthetic k:Z

.field public final synthetic l:I

.field public final synthetic m:I

.field public final synthetic n:Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;


# direct methods
.method public constructor <init>(IIIILandroid/content/Context;Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p5, p0, Lcom/mycompany/app/down/DownSaveSplit$1;->c:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p6, p0, Lcom/mycompany/app/down/DownSaveSplit$1;->f:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 7
    .line 8
    iput-object p8, p0, Lcom/mycompany/app/down/DownSaveSplit$1;->g:Ljava/lang/String;

    .line 9
    .line 10
    iput p1, p0, Lcom/mycompany/app/down/DownSaveSplit$1;->h:I

    .line 11
    .line 12
    iput p2, p0, Lcom/mycompany/app/down/DownSaveSplit$1;->i:I

    .line 13
    .line 14
    iput-boolean p9, p0, Lcom/mycompany/app/down/DownSaveSplit$1;->j:Z

    .line 15
    .line 16
    iput-boolean p10, p0, Lcom/mycompany/app/down/DownSaveSplit$1;->k:Z

    .line 17
    .line 18
    iput p3, p0, Lcom/mycompany/app/down/DownSaveSplit$1;->l:I

    .line 19
    .line 20
    iput p4, p0, Lcom/mycompany/app/down/DownSaveSplit$1;->m:I

    .line 21
    .line 22
    iput-object p7, p0, Lcom/mycompany/app/down/DownSaveSplit$1;->n:Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v5, p0, Lcom/mycompany/app/down/DownSaveSplit$1;->c:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v6, p0, Lcom/mycompany/app/down/DownSaveSplit$1;->f:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 4
    .line 5
    iget-object v8, p0, Lcom/mycompany/app/down/DownSaveSplit$1;->g:Ljava/lang/String;

    .line 6
    .line 7
    iget v1, p0, Lcom/mycompany/app/down/DownSaveSplit$1;->h:I

    .line 8
    .line 9
    iget v2, p0, Lcom/mycompany/app/down/DownSaveSplit$1;->i:I

    .line 10
    .line 11
    iget-boolean v9, p0, Lcom/mycompany/app/down/DownSaveSplit$1;->j:Z

    .line 12
    .line 13
    iget-boolean v10, p0, Lcom/mycompany/app/down/DownSaveSplit$1;->k:Z

    .line 14
    .line 15
    iget v3, p0, Lcom/mycompany/app/down/DownSaveSplit$1;->l:I

    .line 16
    .line 17
    iget v4, p0, Lcom/mycompany/app/down/DownSaveSplit$1;->m:I

    .line 18
    .line 19
    iget-object v7, p0, Lcom/mycompany/app/down/DownSaveSplit$1;->n:Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;

    .line 20
    .line 21
    :try_start_0
    new-instance v0, Lcom/mycompany/app/down/DownSaveSplit$2;

    .line 22
    .line 23
    invoke-direct/range {v0 .. v10}, Lcom/mycompany/app/down/DownSaveSplit$2;-><init>(IIIILandroid/content/Context;Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;Ljava/lang/String;ZZ)V

    .line 24
    .line 25
    .line 26
    invoke-static {v5, v0}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catch_0
    const/4 v0, 0x1

    .line 31
    iput-boolean v0, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->N:Z

    .line 32
    .line 33
    invoke-interface {v7, v6}, Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;->b(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
