.class Lcom/mycompany/app/main/MainDownSvc$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainDownSvc$DownItem;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;

.field public final synthetic j:Lcom/mycompany/app/main/MainDownSvc;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainDownSvc;Lcom/mycompany/app/main/MainDownSvc$DownItem;Ljava/lang/String;IILcom/mycompany/app/main/MainDownSvc$DownSaveListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainDownSvc$12;->j:Lcom/mycompany/app/main/MainDownSvc;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/main/MainDownSvc$12;->c:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mycompany/app/main/MainDownSvc$12;->f:Ljava/lang/String;

    .line 9
    .line 10
    iput p4, p0, Lcom/mycompany/app/main/MainDownSvc$12;->g:I

    .line 11
    .line 12
    iput p5, p0, Lcom/mycompany/app/main/MainDownSvc$12;->h:I

    .line 13
    .line 14
    iput-object p6, p0, Lcom/mycompany/app/main/MainDownSvc$12;->i:Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$12;->j:Lcom/mycompany/app/main/MainDownSvc;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 4
    .line 5
    const/4 v8, 0x0

    .line 6
    iget-object v9, p0, Lcom/mycompany/app/main/MainDownSvc$12;->i:Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/mycompany/app/main/MainDownSvc$12;->c:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/mycompany/app/main/MainDownSvc$12;->f:Ljava/lang/String;

    .line 11
    .line 12
    iget v4, p0, Lcom/mycompany/app/main/MainDownSvc$12;->g:I

    .line 13
    .line 14
    iget v5, p0, Lcom/mycompany/app/main/MainDownSvc$12;->h:I

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v7, 0x0

    .line 18
    invoke-static/range {v1 .. v9}, Lcom/mycompany/app/down/DownSavePath;->a(Landroid/content/Context;Lcom/mycompany/app/main/MainDownSvc$DownItem;Ljava/lang/String;IIIIZLcom/mycompany/app/main/MainDownSvc$DownSaveListener;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
