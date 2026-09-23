.class Lcom/mycompany/app/dialog/DialogVideoList$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogVideoList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogVideoList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogVideoList$4;->a:Lcom/mycompany/app/dialog/DialogVideoList;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogVideoList$4;->a:Lcom/mycompany/app/dialog/DialogVideoList;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogVideoList;->m0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyDialogBottom;->show()V

    .line 9
    .line 10
    .line 11
    iget v0, p1, Lcom/mycompany/app/dialog/DialogVideoList;->g0:I

    .line 12
    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogVideoList;->B0:Lcom/mycompany/app/dialog/DialogVideoList$DialogTask;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    :goto_0
    return-void

    .line 20
    :cond_1
    new-instance v0, Lcom/mycompany/app/dialog/DialogVideoList$DialogTask;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lcom/mycompany/app/dialog/DialogVideoList$DialogTask;-><init>(Lcom/mycompany/app/dialog/DialogVideoList;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogVideoList;->B0:Lcom/mycompany/app/dialog/DialogVideoList$DialogTask;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogVideoList;->b0:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    const/4 v1, 0x5

    .line 34
    const/4 v2, 0x1

    .line 35
    if-ne v0, v1, :cond_4

    .line 36
    .line 37
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogVideoList;->C0:Ljava/util/List;

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_3

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogVideoList;->O()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogVideoList;->K()V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_3
    invoke-virtual {p1, v2}, Lcom/mycompany/app/dialog/DialogVideoList;->L(Z)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_4
    invoke-virtual {p1, v2}, Lcom/mycompany/app/dialog/DialogVideoList;->L(Z)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
