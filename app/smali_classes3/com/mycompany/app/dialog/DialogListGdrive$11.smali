.class Lcom/mycompany/app/dialog/DialogListGdrive$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogListGdrive$11;->a:Lcom/mycompany/app/dialog/DialogListGdrive;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogListGdrive;->X:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogListGdrive$11;->a:Lcom/mycompany/app/dialog/DialogListGdrive;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->P:Lcom/mycompany/app/view/MyPopupMenu;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput-object v2, v0, Lcom/mycompany/app/view/MyDialogNormal;->u:Lcom/mycompany/app/view/MyPopupWrap;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 13
    .line 14
    .line 15
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->P:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogListGdrive$11;->a:Lcom/mycompany/app/dialog/DialogListGdrive;

    .line 2
    .line 3
    iget v0, p1, Lcom/mycompany/app/dialog/DialogListGdrive;->A:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz p2, :cond_4

    .line 7
    .line 8
    if-eq p2, v1, :cond_2

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    if-eq p2, v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v2, p1, Lcom/mycompany/app/dialog/DialogListGdrive;->P:Lcom/mycompany/app/view/MyPopupMenu;

    .line 15
    .line 16
    if-eqz v2, :cond_7

    .line 17
    .line 18
    iget-object v3, p1, Lcom/mycompany/app/dialog/DialogListGdrive;->I:Lcom/mycompany/app/gdrive/GdriveAdapter;

    .line 19
    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object v3, p1, Lcom/mycompany/app/dialog/DialogListGdrive;->x:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {v2, p2}, Lcom/mycompany/app/view/MyPopupMenu;->d(I)Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    xor-int/2addr p2, v1

    .line 30
    invoke-static {v3, v0, p2}, Lcom/mycompany/app/pref/PrefUtil;->h(Landroid/content/Context;IZ)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogListGdrive;->I:Lcom/mycompany/app/gdrive/GdriveAdapter;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 36
    .line 37
    .line 38
    return v1

    .line 39
    :cond_2
    iget-object v2, p1, Lcom/mycompany/app/dialog/DialogListGdrive;->P:Lcom/mycompany/app/view/MyPopupMenu;

    .line 40
    .line 41
    if-eqz v2, :cond_7

    .line 42
    .line 43
    iget-object v3, p1, Lcom/mycompany/app/dialog/DialogListGdrive;->I:Lcom/mycompany/app/gdrive/GdriveAdapter;

    .line 44
    .line 45
    if-nez v3, :cond_3

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    iget-object v3, p1, Lcom/mycompany/app/dialog/DialogListGdrive;->x:Landroid/content/Context;

    .line 49
    .line 50
    invoke-virtual {v2, p2}, Lcom/mycompany/app/view/MyPopupMenu;->d(I)Z

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    xor-int/2addr p2, v1

    .line 55
    invoke-static {v3, v0, p2}, Lcom/mycompany/app/pref/PrefUtil;->g(Landroid/content/Context;IZ)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogListGdrive;->I:Lcom/mycompany/app/gdrive/GdriveAdapter;

    .line 59
    .line 60
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 61
    .line 62
    .line 63
    return v1

    .line 64
    :cond_4
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogListGdrive;->w:Lcom/mycompany/app/setting/SettingBackup;

    .line 65
    .line 66
    if-nez p2, :cond_5

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_5
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogListGdrive;->Q:Lcom/mycompany/app/dialog/DialogSetSort;

    .line 70
    .line 71
    if-eqz p2, :cond_6

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_6
    iget-object v2, p1, Lcom/mycompany/app/dialog/DialogListGdrive;->R:Lcom/mycompany/app/dialog/DialogDeleteItem;

    .line 75
    .line 76
    if-eqz v2, :cond_8

    .line 77
    .line 78
    :cond_7
    :goto_0
    return v1

    .line 79
    :cond_8
    if-eqz p2, :cond_9

    .line 80
    .line 81
    invoke-virtual {p2}, Lcom/mycompany/app/dialog/DialogSetSort;->dismiss()V

    .line 82
    .line 83
    .line 84
    const/4 p2, 0x0

    .line 85
    iput-object p2, p1, Lcom/mycompany/app/dialog/DialogListGdrive;->Q:Lcom/mycompany/app/dialog/DialogSetSort;

    .line 86
    .line 87
    :cond_9
    new-instance p2, Lcom/mycompany/app/dialog/DialogSetSort;

    .line 88
    .line 89
    iget-object v2, p1, Lcom/mycompany/app/dialog/DialogListGdrive;->w:Lcom/mycompany/app/setting/SettingBackup;

    .line 90
    .line 91
    new-instance v3, Lcom/mycompany/app/dialog/DialogListGdrive$12;

    .line 92
    .line 93
    invoke-direct {v3, p1}, Lcom/mycompany/app/dialog/DialogListGdrive$12;-><init>(Lcom/mycompany/app/dialog/DialogListGdrive;)V

    .line 94
    .line 95
    .line 96
    invoke-direct {p2, v2, v0, v3}, Lcom/mycompany/app/dialog/DialogSetSort;-><init>(Lcom/mycompany/app/main/MainActivity;ILcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V

    .line 97
    .line 98
    .line 99
    iput-object p2, p1, Lcom/mycompany/app/dialog/DialogListGdrive;->Q:Lcom/mycompany/app/dialog/DialogSetSort;

    .line 100
    .line 101
    new-instance v0, Lcom/mycompany/app/dialog/DialogListGdrive$13;

    .line 102
    .line 103
    invoke-direct {v0, p1}, Lcom/mycompany/app/dialog/DialogListGdrive$13;-><init>(Lcom/mycompany/app/dialog/DialogListGdrive;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, v0}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 107
    .line 108
    .line 109
    return v1
.end method
