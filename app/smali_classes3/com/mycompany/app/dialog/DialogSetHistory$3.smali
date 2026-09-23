.class Lcom/mycompany/app/dialog/DialogSetHistory$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetHistory;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetHistory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetHistory$3;->c:Lcom/mycompany/app/dialog/DialogSetHistory;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetHistory$3;->c:Lcom/mycompany/app/dialog/DialogSetHistory;

    .line 2
    .line 3
    iget-object v3, p1, Lcom/mycompany/app/dialog/DialogSetHistory;->f0:Landroid/view/View;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetHistory;->o0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-object v1, p1, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p1, Lcom/mycompany/app/dialog/DialogSetHistory;->o0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 19
    .line 20
    :cond_1
    if-nez v3, :cond_2

    .line 21
    .line 22
    :goto_0
    return-void

    .line 23
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    move v1, v0

    .line 30
    :goto_1
    const/4 v2, 0x7

    .line 31
    if-ge v1, v2, :cond_4

    .line 32
    .line 33
    new-instance v2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 34
    .line 35
    sget-object v5, Lcom/mycompany/app/dialog/DialogSetHistory;->q0:[I

    .line 36
    .line 37
    aget v5, v5, v1

    .line 38
    .line 39
    iget v6, p1, Lcom/mycompany/app/dialog/DialogSetHistory;->n0:I

    .line 40
    .line 41
    if-ne v1, v6, :cond_3

    .line 42
    .line 43
    const/4 v6, 0x1

    .line 44
    goto :goto_2

    .line 45
    :cond_3
    move v6, v0

    .line 46
    :goto_2
    invoke-direct {v2, v1, v5, v6}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    add-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_4
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 56
    .line 57
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogSetHistory;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 58
    .line 59
    iget-object v2, p1, Lcom/mycompany/app/dialog/DialogSetHistory;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 60
    .line 61
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 62
    .line 63
    new-instance v6, Lcom/mycompany/app/dialog/DialogSetHistory$6;

    .line 64
    .line 65
    invoke-direct {v6, p1}, Lcom/mycompany/app/dialog/DialogSetHistory$6;-><init>(Lcom/mycompany/app/dialog/DialogSetHistory;)V

    .line 66
    .line 67
    .line 68
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 69
    .line 70
    .line 71
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogSetHistory;->o0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 72
    .line 73
    iput-object v0, p1, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 74
    .line 75
    return-void
.end method
