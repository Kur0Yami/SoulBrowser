.class Lcom/mycompany/app/dialog/DialogSetTabDetail$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetTabDetail;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetTabDetail;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail$6;->c:Lcom/mycompany/app/dialog/DialogSetTabDetail;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail$6;->c:Lcom/mycompany/app/dialog/DialogSetTabDetail;

    .line 2
    .line 3
    iget-object v3, p1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->x0:Landroid/view/View;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->e0:Lcom/mycompany/app/main/MainActivity;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->a1:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v1, p1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->a1:Lcom/mycompany/app/view/MyPopupMenu;

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
    sget-object v0, Lcom/mycompany/app/main/MainConst;->M:[I

    .line 34
    .line 35
    array-length v0, v0

    .line 36
    const/4 v1, 0x0

    .line 37
    move v2, v1

    .line 38
    :goto_1
    if-ge v2, v0, :cond_5

    .line 39
    .line 40
    sget-object v5, Lcom/mycompany/app/main/MainConst;->M:[I

    .line 41
    .line 42
    aget v5, v5, v2

    .line 43
    .line 44
    new-instance v6, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 45
    .line 46
    sget-object v7, Lcom/mycompany/app/main/MainConst;->N:[I

    .line 47
    .line 48
    aget v7, v7, v5

    .line 49
    .line 50
    iget v8, p1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->R0:I

    .line 51
    .line 52
    if-ne v8, v5, :cond_4

    .line 53
    .line 54
    const/4 v5, 0x1

    .line 55
    goto :goto_2

    .line 56
    :cond_4
    move v5, v1

    .line 57
    :goto_2
    invoke-direct {v6, v2, v7, v5}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    add-int/lit8 v2, v2, 0x1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_5
    new-instance v1, Lcom/mycompany/app/view/MyPopupMenu;

    .line 67
    .line 68
    move v2, v0

    .line 69
    move-object v0, v1

    .line 70
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->e0:Lcom/mycompany/app/main/MainActivity;

    .line 71
    .line 72
    move v5, v2

    .line 73
    iget-object v2, p1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 74
    .line 75
    move v6, v5

    .line 76
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 77
    .line 78
    move v7, v6

    .line 79
    new-instance v6, Lcom/mycompany/app/dialog/DialogSetTabDetail$25;

    .line 80
    .line 81
    invoke-direct {v6, p1, v7}, Lcom/mycompany/app/dialog/DialogSetTabDetail$25;-><init>(Lcom/mycompany/app/dialog/DialogSetTabDetail;I)V

    .line 82
    .line 83
    .line 84
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 85
    .line 86
    .line 87
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->a1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 88
    .line 89
    iput-object v0, p1, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 90
    .line 91
    return-void
.end method
