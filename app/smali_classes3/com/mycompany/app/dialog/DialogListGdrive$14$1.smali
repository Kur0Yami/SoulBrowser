.class Lcom/mycompany/app/dialog/DialogListGdrive$14$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogListGdrive$14;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogListGdrive$14;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogListGdrive$14$1;->c:Lcom/mycompany/app/dialog/DialogListGdrive$14;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogListGdrive$14$1;->c:Lcom/mycompany/app/dialog/DialogListGdrive$14;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogListGdrive$14;->a:Lcom/mycompany/app/dialog/DialogListGdrive;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->V:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->z:Lcom/mycompany/app/gdrive/GdriveManager;

    .line 11
    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-object v1, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Lcom/mycompany/app/gdrive/GdriveManager;->b(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->G:Lcom/mycompany/app/view/MyRecyclerView;

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    :goto_0
    return-void

    .line 26
    :cond_2
    new-instance v2, Lcom/mycompany/app/dialog/DialogListGdrive$14$1$1;

    .line 27
    .line 28
    invoke-direct {v2, p0, v1}, Lcom/mycompany/app/dialog/DialogListGdrive$14$1$1;-><init>(Lcom/mycompany/app/dialog/DialogListGdrive$14$1;Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method
