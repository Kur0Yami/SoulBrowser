.class Lcom/mycompany/app/dialog/DialogMenuMain$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogMenuMain;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogMenuMain;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogMenuMain$21;->c:Lcom/mycompany/app/dialog/DialogMenuMain;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogMenuMain$21;->c:Lcom/mycompany/app/dialog/DialogMenuMain;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->D0:Lcom/mycompany/app/view/MyBarView;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v2, 0x0

    .line 11
    invoke-static {v2, v2}, Lcom/mycompany/app/main/MainUtil;->s0(IZ)I

    .line 12
    .line 13
    .line 14
    move-result v13

    .line 15
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->D0:Lcom/mycompany/app/view/MyBarView;

    .line 16
    .line 17
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->b0:Landroid/content/Context;

    .line 18
    .line 19
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->e0:[I

    .line 20
    .line 21
    const/4 v15, 0x0

    .line 22
    const/16 v16, 0x0

    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v7, 0x0

    .line 26
    const/4 v8, 0x0

    .line 27
    const/4 v9, 0x0

    .line 28
    const/4 v10, 0x0

    .line 29
    const/4 v11, 0x0

    .line 30
    const/4 v12, 0x0

    .line 31
    const/4 v14, 0x0

    .line 32
    invoke-virtual/range {v3 .. v16}, Lcom/mycompany/app/view/MyBarView;->a(Landroid/content/Context;[ILjava/lang/String;Ljava/lang/String;IZIIZIIII)V

    .line 33
    .line 34
    .line 35
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogMenuMain;->D0:Lcom/mycompany/app/view/MyBarView;

    .line 36
    .line 37
    new-instance v3, Lcom/mycompany/app/dialog/DialogMenuMain$21$1;

    .line 38
    .line 39
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogMenuMain$21$1;-><init>(Lcom/mycompany/app/dialog/DialogMenuMain$21;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyBarView;->setListener(Lcom/mycompany/app/view/MyBarView$BarListener;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogMenuMain;->B()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->show()V

    .line 49
    .line 50
    .line 51
    return-void
.end method
