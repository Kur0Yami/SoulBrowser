.class Lcom/mycompany/app/main/list/MainListMemo$2;
.super Lcom/mycompany/app/main/MainListListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/list/MainListMemo;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/list/MainListMemo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/list/MainListMemo$2;->a:Lcom/mycompany/app/main/list/MainListMemo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListMemo$2;->a:Lcom/mycompany/app/main/list/MainListMemo;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final m(Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object v1, p0, Lcom/mycompany/app/main/list/MainListMemo$2;->a:Lcom/mycompany/app/main/list/MainListMemo;

    .line 2
    .line 3
    iget-object p1, v1, Lcom/mycompany/app/main/list/MainListMemo;->F1:Lcom/mycompany/app/dialog/DialogEditMemo;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogEditMemo;->dismiss()V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-object p1, v1, Lcom/mycompany/app/main/list/MainListMemo;->F1:Lcom/mycompany/app/dialog/DialogEditMemo;

    .line 15
    .line 16
    :cond_1
    new-instance v0, Lcom/mycompany/app/dialog/DialogEditMemo;

    .line 17
    .line 18
    new-instance v7, Lcom/mycompany/app/main/list/MainListMemo$9;

    .line 19
    .line 20
    invoke-direct {v7, v1}, Lcom/mycompany/app/main/list/MainListMemo$9;-><init>(Lcom/mycompany/app/main/list/MainListMemo;)V

    .line 21
    .line 22
    .line 23
    const/16 v2, 0x25

    .line 24
    .line 25
    const-wide/16 v3, 0x0

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v6, 0x0

    .line 29
    invoke-direct/range {v0 .. v7}, Lcom/mycompany/app/dialog/DialogEditMemo;-><init>(Landroid/app/Activity;IJLjava/lang/String;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, v1, Lcom/mycompany/app/main/list/MainListMemo;->F1:Lcom/mycompany/app/dialog/DialogEditMemo;

    .line 33
    .line 34
    new-instance p1, Lcom/mycompany/app/main/list/MainListMemo$10;

    .line 35
    .line 36
    invoke-direct {p1, v1}, Lcom/mycompany/app/main/list/MainListMemo$10;-><init>(Lcom/mycompany/app/main/list/MainListMemo;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final o(Lcom/mycompany/app/list/ListTask$ListTaskConfig;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/list/MainListMemo$2;->a:Lcom/mycompany/app/main/list/MainListMemo;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/main/list/MainListMemo;->E1:Lcom/mycompany/app/main/MainListView2;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView2;->l()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-static {p1, v0}, Lcom/mycompany/app/main/list/MainListMemo;->D0(Lcom/mycompany/app/main/list/MainListMemo;Z)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const/4 v0, 0x1

    .line 19
    invoke-static {p1, v0}, Lcom/mycompany/app/main/list/MainListMemo;->D0(Lcom/mycompany/app/main/list/MainListMemo;Z)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
