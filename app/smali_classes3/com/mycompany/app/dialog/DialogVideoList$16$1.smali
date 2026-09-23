.class Lcom/mycompany/app/dialog/DialogVideoList$16$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogVideoList$16;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogVideoList$16;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogVideoList$16$1;->c:Lcom/mycompany/app/dialog/DialogVideoList$16;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList$16$1;->c:Lcom/mycompany/app/dialog/DialogVideoList$16;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogVideoList$16;->a:Lcom/mycompany/app/dialog/DialogVideoList;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogVideoList;->M0:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogVideoList;->N0:Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogVideoList;->M0:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogVideoList;->N0:Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogVideoList;->c0:Lcom/mycompany/app/dialog/DialogVideoList$VideoListListener;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-object v4, v3, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->c:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v3, v3, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->d:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->t2(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-interface {v1, v2, v4, v3}, Lcom/mycompany/app/dialog/DialogVideoList$VideoListListener;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogVideoList$16;->a:Lcom/mycompany/app/dialog/DialogVideoList;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogVideoList;->G0:Z

    .line 35
    .line 36
    return-void
.end method
