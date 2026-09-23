.class Lcom/mycompany/app/down/DownSaveZip$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainDownSvc$DownZipListener;

.field public final synthetic f:Landroid/content/Context;

.field public final synthetic g:Ljava/util/List;

.field public final synthetic h:I

.field public final synthetic i:I

.field public final synthetic j:I

.field public final synthetic k:Lcom/mycompany/app/main/MainItem$ChildItem;


# direct methods
.method public constructor <init>(IIILandroid/content/Context;Lcom/mycompany/app/main/MainDownSvc$DownZipListener;Lcom/mycompany/app/main/MainItem$ChildItem;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p5, p0, Lcom/mycompany/app/down/DownSaveZip$2;->c:Lcom/mycompany/app/main/MainDownSvc$DownZipListener;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/mycompany/app/down/DownSaveZip$2;->f:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p7, p0, Lcom/mycompany/app/down/DownSaveZip$2;->g:Ljava/util/List;

    .line 9
    .line 10
    iput p1, p0, Lcom/mycompany/app/down/DownSaveZip$2;->h:I

    .line 11
    .line 12
    iput p2, p0, Lcom/mycompany/app/down/DownSaveZip$2;->i:I

    .line 13
    .line 14
    iput p3, p0, Lcom/mycompany/app/down/DownSaveZip$2;->j:I

    .line 15
    .line 16
    iput-object p6, p0, Lcom/mycompany/app/down/DownSaveZip$2;->k:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v5, p0, Lcom/mycompany/app/down/DownSaveZip$2;->c:Lcom/mycompany/app/main/MainDownSvc$DownZipListener;

    .line 2
    .line 3
    invoke-interface {v5}, Lcom/mycompany/app/main/MainDownSvc$DownZipListener;->isRunning()Z

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
    iget-object v0, p0, Lcom/mycompany/app/down/DownSaveZip$2;->f:Landroid/content/Context;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/mycompany/app/down/DownSaveZip$2;->g:Ljava/util/List;

    .line 13
    .line 14
    iget v2, p0, Lcom/mycompany/app/down/DownSaveZip$2;->h:I

    .line 15
    .line 16
    iget v3, p0, Lcom/mycompany/app/down/DownSaveZip$2;->i:I

    .line 17
    .line 18
    iget v4, p0, Lcom/mycompany/app/down/DownSaveZip$2;->j:I

    .line 19
    .line 20
    invoke-static/range {v0 .. v5}, Lcom/mycompany/app/down/DownSaveZip;->a(Landroid/content/Context;Ljava/util/List;IIILcom/mycompany/app/main/MainDownSvc$DownZipListener;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catch_0
    iget-object v0, p0, Lcom/mycompany/app/down/DownSaveZip$2;->k:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 25
    .line 26
    const/4 v1, 0x4

    .line 27
    iput v1, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->d:I

    .line 28
    .line 29
    iget-object v0, p0, Lcom/mycompany/app/down/DownSaveZip$2;->g:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v5, v0}, Lcom/mycompany/app/main/MainDownSvc$DownZipListener;->b(Ljava/util/List;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
