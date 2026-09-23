.class Lcom/mycompany/app/dialog/DialogListGdrive$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogListGdrive;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogListGdrive;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogListGdrive$12;->a:Lcom/mycompany/app/dialog/DialogListGdrive;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogListGdrive$12;->a:Lcom/mycompany/app/dialog/DialogListGdrive;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->I:Lcom/mycompany/app/gdrive/GdriveAdapter;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, v1, Lcom/mycompany/app/gdrive/GdriveAdapter;->d:Ljava/util/List;

    .line 9
    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->K:Lcom/mycompany/app/dialog/DialogListGdrive$SortTask;

    .line 20
    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    iput-boolean v3, v2, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 25
    .line 26
    :cond_2
    const/4 v2, 0x0

    .line 27
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->K:Lcom/mycompany/app/dialog/DialogListGdrive$SortTask;

    .line 28
    .line 29
    new-instance v2, Lcom/mycompany/app/dialog/DialogListGdrive$SortTask;

    .line 30
    .line 31
    invoke-direct {v2, v0, v1}, Lcom/mycompany/app/dialog/DialogListGdrive$SortTask;-><init>(Lcom/mycompany/app/dialog/DialogListGdrive;Ljava/util/List;)V

    .line 32
    .line 33
    .line 34
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->K:Lcom/mycompany/app/dialog/DialogListGdrive$SortTask;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->x:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {v2, v0}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    :cond_3
    :goto_0
    return-void
.end method
