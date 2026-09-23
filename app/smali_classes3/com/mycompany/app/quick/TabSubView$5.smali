.class Lcom/mycompany/app/quick/TabSubView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/TabSubView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/TabSubView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/TabSubView$5;->c:Lcom/mycompany/app/quick/TabSubView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/quick/TabSubView$5;->c:Lcom/mycompany/app/quick/TabSubView;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/quick/TabSubView;->c:Landroid/app/Activity;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/quick/TabSubView;->J:Lcom/mycompany/app/dialog/DialogDeleteItem;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_1
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogDeleteItem;->dismiss()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p1, Lcom/mycompany/app/quick/TabSubView;->J:Lcom/mycompany/app/dialog/DialogDeleteItem;

    .line 20
    .line 21
    :cond_2
    iget-object v0, p1, Lcom/mycompany/app/quick/TabSubView;->D:Lcom/mycompany/app/web/WebTabAdapter;

    .line 22
    .line 23
    if-nez v0, :cond_3

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_3
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebTabAdapter;->u:Z

    .line 27
    .line 28
    if-eqz v2, :cond_4

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebTabAdapter;->E()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    goto :goto_0

    .line 35
    :cond_4
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebTabAdapter;->J()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    :goto_0
    if-nez v0, :cond_5

    .line 40
    .line 41
    :goto_1
    return-void

    .line 42
    :cond_5
    iget-object v2, p1, Lcom/mycompany/app/quick/TabSubView;->Q:Lcom/mycompany/app/view/MySnackbar;

    .line 43
    .line 44
    if-eqz v2, :cond_6

    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/mycompany/app/view/MySnackbar;->p()V

    .line 47
    .line 48
    .line 49
    iput-object v1, p1, Lcom/mycompany/app/quick/TabSubView;->Q:Lcom/mycompany/app/view/MySnackbar;

    .line 50
    .line 51
    :cond_6
    invoke-virtual {p1}, Lcom/mycompany/app/quick/TabSubView;->f()V

    .line 52
    .line 53
    .line 54
    iput v0, p1, Lcom/mycompany/app/quick/TabSubView;->v0:I

    .line 55
    .line 56
    new-instance v0, Lcom/mycompany/app/dialog/DialogDeleteItem;

    .line 57
    .line 58
    iget-object v1, p1, Lcom/mycompany/app/quick/TabSubView;->c:Landroid/app/Activity;

    .line 59
    .line 60
    new-instance v2, Lcom/mycompany/app/quick/TabSubView$22;

    .line 61
    .line 62
    invoke-direct {v2, p1}, Lcom/mycompany/app/quick/TabSubView$22;-><init>(Lcom/mycompany/app/quick/TabSubView;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {v0, v1, v2}, Lcom/mycompany/app/dialog/DialogDeleteItem;-><init>(Landroid/app/Activity;Lcom/mycompany/app/dialog/DialogDeleteItem$DelItemListener;)V

    .line 66
    .line 67
    .line 68
    iput-object v0, p1, Lcom/mycompany/app/quick/TabSubView;->J:Lcom/mycompany/app/dialog/DialogDeleteItem;

    .line 69
    .line 70
    new-instance v1, Lcom/mycompany/app/quick/TabSubView$23;

    .line 71
    .line 72
    invoke-direct {v1, p1}, Lcom/mycompany/app/quick/TabSubView$23;-><init>(Lcom/mycompany/app/quick/TabSubView;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method
