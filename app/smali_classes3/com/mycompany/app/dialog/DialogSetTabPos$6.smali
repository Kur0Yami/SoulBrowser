.class Lcom/mycompany/app/dialog/DialogSetTabPos$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetTabPos;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetTabPos;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos$6;->c:Lcom/mycompany/app/dialog/DialogSetTabPos;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos$6;->c:Lcom/mycompany/app/dialog/DialogSetTabPos;

    .line 2
    .line 3
    iget-object v3, p1, Lcom/mycompany/app/dialog/DialogSetTabPos;->s0:Landroid/view/View;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetTabPos;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetTabPos;->y0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    if-eqz v0, :cond_2

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput-object v1, p1, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p1, Lcom/mycompany/app/dialog/DialogSetTabPos;->y0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 24
    .line 25
    :cond_2
    if-nez v3, :cond_3

    .line 26
    .line 27
    :goto_0
    return-void

    .line 28
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    move v1, v0

    .line 35
    :goto_1
    const/4 v2, 0x5

    .line 36
    if-ge v1, v2, :cond_5

    .line 37
    .line 38
    sget-object v2, Lcom/mycompany/app/dialog/DialogSetTabPos;->C0:[I

    .line 39
    .line 40
    aget v2, v2, v1

    .line 41
    .line 42
    new-instance v5, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 43
    .line 44
    sget-object v6, Lcom/mycompany/app/dialog/DialogSetTabPos;->D0:[I

    .line 45
    .line 46
    aget v6, v6, v2

    .line 47
    .line 48
    iget v7, p1, Lcom/mycompany/app/dialog/DialogSetTabPos;->x0:I

    .line 49
    .line 50
    if-ne v7, v2, :cond_4

    .line 51
    .line 52
    const/4 v2, 0x1

    .line 53
    goto :goto_2

    .line 54
    :cond_4
    move v2, v0

    .line 55
    :goto_2
    invoke-direct {v5, v1, v6, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    add-int/lit8 v1, v1, 0x1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_5
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 65
    .line 66
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogSetTabPos;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 67
    .line 68
    iget-object v2, p1, Lcom/mycompany/app/dialog/DialogSetTabPos;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 69
    .line 70
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 71
    .line 72
    new-instance v6, Lcom/mycompany/app/dialog/DialogSetTabPos$11;

    .line 73
    .line 74
    invoke-direct {v6, p1}, Lcom/mycompany/app/dialog/DialogSetTabPos$11;-><init>(Lcom/mycompany/app/dialog/DialogSetTabPos;)V

    .line 75
    .line 76
    .line 77
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 78
    .line 79
    .line 80
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogSetTabPos;->y0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 81
    .line 82
    iput-object v0, p1, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 83
    .line 84
    return-void
.end method
