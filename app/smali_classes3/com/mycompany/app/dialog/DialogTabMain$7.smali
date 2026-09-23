.class Lcom/mycompany/app/dialog/DialogTabMain$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTabMain;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMain;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain$7;->c:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain$7;->c:Lcom/mycompany/app/dialog/DialogTabMain;

    iget-boolean v0, p1, Lcom/mycompany/app/dialog/DialogTabMain;->L:Z

    invoke-virtual {p1, v0}, Lcom/mycompany/app/dialog/DialogTabMain;->x(Z)Lcom/mycompany/app/web/WebTabAdapter;

    move-result-object v0

    if-eqz v0, :cond_copy_skip

    iget-boolean v1, v0, Lcom/mycompany/app/web/WebTabAdapter;->u:Z

    if-eqz v1, :cond_copy_skip

    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogTabMain;->H:Landroid/content/Context;

    invoke-virtual {v0, p1}, Lcom/mycompany/app/web/WebTabAdapter;->copySelectedUrls(Landroid/content/Context;)V

    return-void

    :cond_copy_skip
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogTabMain;->I:Lcom/mycompany/app/dialog/DialogTabMain$ListTabListener;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-boolean v0, p1, Lcom/mycompany/app/dialog/DialogTabMain;->d1:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p1, Lcom/mycompany/app/dialog/DialogTabMain;->d1:Z

    .line 15
    .line 16
    sget-boolean v0, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 17
    .line 18
    iget-boolean v1, p1, Lcom/mycompany/app/dialog/DialogTabMain;->L:Z

    .line 19
    .line 20
    if-ne v0, v1, :cond_4

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Lcom/mycompany/app/dialog/DialogTabMain;->x(Z)Lcom/mycompany/app/web/WebTabAdapter;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebTabAdapter;->J()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    iget-boolean v0, p1, Lcom/mycompany/app/dialog/DialogTabMain;->L:Z

    .line 36
    .line 37
    invoke-static {p1, v0}, Lcom/mycompany/app/dialog/DialogTabMain;->u(Lcom/mycompany/app/dialog/DialogTabMain;Z)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogTabMain;->dismiss()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_4
    new-instance v0, Lcom/mycompany/app/dialog/DialogTabMain$7$1;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogTabMain$7$1;-><init>(Lcom/mycompany/app/dialog/DialogTabMain$7;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyDialogNormal;->m(Ljava/lang/Runnable;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method
