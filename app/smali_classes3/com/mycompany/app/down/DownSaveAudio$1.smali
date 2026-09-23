.class Lcom/mycompany/app/down/DownSaveAudio$1;
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

.field public final synthetic j:Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;


# direct methods
.method public constructor <init>(IILandroid/content/Context;Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/mycompany/app/down/DownSaveAudio$1;->c:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/mycompany/app/down/DownSaveAudio$1;->f:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 7
    .line 8
    iput-object p6, p0, Lcom/mycompany/app/down/DownSaveAudio$1;->g:Ljava/lang/String;

    .line 9
    .line 10
    iput p1, p0, Lcom/mycompany/app/down/DownSaveAudio$1;->h:I

    .line 11
    .line 12
    iput p2, p0, Lcom/mycompany/app/down/DownSaveAudio$1;->i:I

    .line 13
    .line 14
    iput-object p5, p0, Lcom/mycompany/app/down/DownSaveAudio$1;->j:Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v3, p0, Lcom/mycompany/app/down/DownSaveAudio$1;->c:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v6, p0, Lcom/mycompany/app/down/DownSaveAudio$1;->g:Ljava/lang/String;

    .line 4
    .line 5
    iget v1, p0, Lcom/mycompany/app/down/DownSaveAudio$1;->h:I

    .line 6
    .line 7
    iget v2, p0, Lcom/mycompany/app/down/DownSaveAudio$1;->i:I

    .line 8
    .line 9
    iget-object v5, p0, Lcom/mycompany/app/down/DownSaveAudio$1;->j:Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;

    .line 10
    .line 11
    iget-object v4, p0, Lcom/mycompany/app/down/DownSaveAudio$1;->f:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 12
    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    :try_start_0
    new-instance v0, Lcom/mycompany/app/down/DownSaveAudio$2;

    .line 16
    .line 17
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/down/DownSaveAudio$2;-><init>(IILandroid/content/Context;Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v3, v0}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catch_0
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, v4, Lcom/mycompany/app/main/MainDownSvc$DownItem;->N:Z

    .line 26
    .line 27
    invoke-interface {v5, v4}, Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;->b(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method
