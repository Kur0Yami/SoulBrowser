.class Lcom/mycompany/app/main/MainDownSvc$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainDownSvc$DownItem;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;

.field public final synthetic h:Lcom/mycompany/app/main/MainDownSvc;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainDownSvc;Lcom/mycompany/app/main/MainDownSvc$DownItem;Ljava/lang/String;Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainDownSvc$13;->h:Lcom/mycompany/app/main/MainDownSvc;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/main/MainDownSvc$13;->c:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mycompany/app/main/MainDownSvc$13;->f:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/mycompany/app/main/MainDownSvc$13;->g:Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$13;->h:Lcom/mycompany/app/main/MainDownSvc;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 4
    .line 5
    const/4 v6, 0x0

    .line 6
    iget-object v7, p0, Lcom/mycompany/app/main/MainDownSvc$13;->g:Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/mycompany/app/main/MainDownSvc$13;->c:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/mycompany/app/main/MainDownSvc$13;->f:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    invoke-static/range {v1 .. v7}, Lcom/mycompany/app/down/DownSaveAudio;->a(Landroid/content/Context;Lcom/mycompany/app/main/MainDownSvc$DownItem;Ljava/lang/String;IIZLcom/mycompany/app/main/MainDownSvc$DownSaveListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
