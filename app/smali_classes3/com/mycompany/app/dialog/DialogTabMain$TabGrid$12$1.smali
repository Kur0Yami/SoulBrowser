.class Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$12$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$12;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$12;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$12$1;->c:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$12;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$12$1;->c:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$12;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$12;->c:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->D:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 6
    .line 7
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->x:Z

    .line 8
    .line 9
    iget-boolean v3, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->y:Z

    .line 10
    .line 11
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->z:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->z:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 15
    .line 16
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->o:Lcom/mycompany/app/web/WebTabAdapter;

    .line 17
    .line 18
    if-nez v5, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-object v5, Lcom/mycompany/app/dialog/DialogTabMain;->l1:[I

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogTabMain;->M()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogTabMain;->O()V

    .line 27
    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    invoke-static {v1, v4}, Lcom/mycompany/app/dialog/DialogTabMain;->w(Lcom/mycompany/app/dialog/DialogTabMain;Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    if-nez v3, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    new-instance v6, Lcom/mycompany/app/view/MySnackbar;

    .line 39
    .line 40
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogTabMain;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 41
    .line 42
    invoke-direct {v6, v2}, Lcom/mycompany/app/view/MySnackbar;-><init>(Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogTabMain;->D0:Lcom/mycompany/app/view/MySnackbar;

    .line 46
    .line 47
    iget-object v7, v1, Lcom/mycompany/app/dialog/DialogTabMain;->P:Landroid/widget/FrameLayout;

    .line 48
    .line 49
    sget v9, Lnet/kaki87/soul2/testing/R$string;->undelete:I

    .line 50
    .line 51
    new-instance v11, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$13;

    .line 52
    .line 53
    invoke-direct {v11, v0}, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$13;-><init>(Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;)V

    .line 54
    .line 55
    .line 56
    const/4 v1, 0x2

    .line 57
    iput v1, v6, Lcom/mycompany/app/view/MySnackbar;->i:I

    .line 58
    .line 59
    const/4 v8, 0x0

    .line 60
    const/4 v10, 0x0

    .line 61
    invoke-virtual/range {v6 .. v11}, Lcom/mycompany/app/view/MySnackbar;->x(Landroid/view/ViewGroup;IIILcom/mycompany/app/view/MySnackbar$SnackbarListener;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->D:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->e1:Z

    .line 68
    .line 69
    return-void
.end method
