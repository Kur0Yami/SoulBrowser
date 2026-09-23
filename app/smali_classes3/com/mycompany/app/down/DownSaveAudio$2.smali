.class Lcom/mycompany/app/down/DownSaveAudio$2;
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

.field public final synthetic j:Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;


# direct methods
.method public constructor <init>(IILandroid/content/Context;Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lcom/mycompany/app/down/DownSaveAudio$2;->c:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/mycompany/app/down/DownSaveAudio$2;->f:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p6, p0, Lcom/mycompany/app/down/DownSaveAudio$2;->g:Ljava/lang/String;

    .line 9
    .line 10
    iput p1, p0, Lcom/mycompany/app/down/DownSaveAudio$2;->h:I

    .line 11
    .line 12
    iput p2, p0, Lcom/mycompany/app/down/DownSaveAudio$2;->i:I

    .line 13
    .line 14
    iput-object p5, p0, Lcom/mycompany/app/down/DownSaveAudio$2;->j:Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v1, p0, Lcom/mycompany/app/down/DownSaveAudio$2;->c:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 2
    .line 3
    iget v0, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 4
    .line 5
    const/4 v7, 0x1

    .line 6
    if-eq v0, v7, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mycompany/app/down/DownSaveAudio$2;->f:Landroid/content/Context;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/mycompany/app/down/DownSaveAudio$2;->g:Ljava/lang/String;

    .line 12
    .line 13
    iget v3, p0, Lcom/mycompany/app/down/DownSaveAudio$2;->h:I

    .line 14
    .line 15
    iget v4, p0, Lcom/mycompany/app/down/DownSaveAudio$2;->i:I

    .line 16
    .line 17
    iget-object v6, p0, Lcom/mycompany/app/down/DownSaveAudio$2;->j:Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    invoke-static/range {v0 .. v6}, Lcom/mycompany/app/down/DownSaveAudio;->a(Landroid/content/Context;Lcom/mycompany/app/main/MainDownSvc$DownItem;Ljava/lang/String;IIZLcom/mycompany/app/main/MainDownSvc$DownSaveListener;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catch_0
    iget-object v0, p0, Lcom/mycompany/app/down/DownSaveAudio$2;->c:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 25
    .line 26
    iput-boolean v7, v0, Lcom/mycompany/app/main/MainDownSvc$DownItem;->N:Z

    .line 27
    .line 28
    iget-object v1, p0, Lcom/mycompany/app/down/DownSaveAudio$2;->j:Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;

    .line 29
    .line 30
    invoke-interface {v1, v0}, Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;->b(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
