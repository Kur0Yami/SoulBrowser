.class Lcom/mycompany/app/down/DownSaveSplit$2;
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
    iput-object p6, p0, Lcom/mycompany/app/down/DownSaveSplit$2;->c:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 5
    .line 6
    iput-object p5, p0, Lcom/mycompany/app/down/DownSaveSplit$2;->f:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p8, p0, Lcom/mycompany/app/down/DownSaveSplit$2;->g:Ljava/lang/String;

    .line 9
    .line 10
    iput p1, p0, Lcom/mycompany/app/down/DownSaveSplit$2;->h:I

    .line 11
    .line 12
    iput p2, p0, Lcom/mycompany/app/down/DownSaveSplit$2;->i:I

    .line 13
    .line 14
    iput-boolean p9, p0, Lcom/mycompany/app/down/DownSaveSplit$2;->j:Z

    .line 15
    .line 16
    iput-boolean p10, p0, Lcom/mycompany/app/down/DownSaveSplit$2;->k:Z

    .line 17
    .line 18
    iput p3, p0, Lcom/mycompany/app/down/DownSaveSplit$2;->l:I

    .line 19
    .line 20
    iput p4, p0, Lcom/mycompany/app/down/DownSaveSplit$2;->m:I

    .line 21
    .line 22
    iput-object p7, p0, Lcom/mycompany/app/down/DownSaveSplit$2;->n:Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/down/DownSaveSplit$2;->n:Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/down/DownSaveSplit$2;->c:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/mycompany/app/down/DownSaveSplit$2;->c:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 6
    .line 7
    iget v2, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 8
    .line 9
    const/4 v13, 0x1

    .line 10
    if-eq v2, v13, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mycompany/app/down/DownSaveSplit$2;->f:Landroid/content/Context;

    .line 14
    .line 15
    iget-object v4, p0, Lcom/mycompany/app/down/DownSaveSplit$2;->g:Ljava/lang/String;

    .line 16
    .line 17
    iget v5, p0, Lcom/mycompany/app/down/DownSaveSplit$2;->h:I

    .line 18
    .line 19
    iget v6, p0, Lcom/mycompany/app/down/DownSaveSplit$2;->i:I

    .line 20
    .line 21
    iget-boolean v7, p0, Lcom/mycompany/app/down/DownSaveSplit$2;->j:Z

    .line 22
    .line 23
    iget-boolean v8, p0, Lcom/mycompany/app/down/DownSaveSplit$2;->k:Z

    .line 24
    .line 25
    iget v9, p0, Lcom/mycompany/app/down/DownSaveSplit$2;->l:I

    .line 26
    .line 27
    iget v10, p0, Lcom/mycompany/app/down/DownSaveSplit$2;->m:I

    .line 28
    .line 29
    iget-object v12, p0, Lcom/mycompany/app/down/DownSaveSplit$2;->n:Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;

    .line 30
    .line 31
    const/4 v11, 0x1

    .line 32
    invoke-static/range {v2 .. v12}, Lcom/mycompany/app/down/DownSaveSplit;->a(Landroid/content/Context;Lcom/mycompany/app/main/MainDownSvc$DownItem;Ljava/lang/String;IIZZIIZLcom/mycompany/app/main/MainDownSvc$DownSaveListener;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    iget v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 36
    .line 37
    if-ne v2, v13, :cond_1

    .line 38
    .line 39
    invoke-interface {v0, v1}, Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;->e(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    return-void

    .line 43
    :catch_0
    iput-boolean v13, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->N:Z

    .line 44
    .line 45
    invoke-interface {v0, v1}, Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;->b(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
