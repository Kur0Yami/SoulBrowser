.class Lcom/mycompany/app/dialog/DialogListGdrive$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogListGdrive;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogListGdrive;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogListGdrive$5;->c:Lcom/mycompany/app/dialog/DialogListGdrive;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogListGdrive$5;->c:Lcom/mycompany/app/dialog/DialogListGdrive;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->J:Lcom/mycompany/app/dialog/DialogListGdrive$ListTask;

    .line 4
    .line 5
    if-nez v1, :cond_5

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->K:Lcom/mycompany/app/dialog/DialogListGdrive$SortTask;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget v1, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->A:I

    .line 13
    .line 14
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->w:Lcom/mycompany/app/setting/SettingBackup;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->P:Lcom/mycompany/app/view/MyPopupMenu;

    .line 20
    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    if-eqz v2, :cond_3

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    iput-object v3, v0, Lcom/mycompany/app/view/MyDialogNormal;->u:Lcom/mycompany/app/view/MyPopupWrap;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 30
    .line 31
    .line 32
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->P:Lcom/mycompany/app/view/MyPopupMenu;

    .line 33
    .line 34
    :cond_3
    if-nez p1, :cond_4

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_4
    new-instance v8, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    new-instance v2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 43
    .line 44
    sget v3, Lnet/kaki87/soul2/testing/R$string;->sort:I

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    invoke-direct {v2, v4, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    new-instance v2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 54
    .line 55
    sget v3, Lnet/kaki87/soul2/testing/R$string;->show_detail:I

    .line 56
    .line 57
    invoke-static {v1}, Lcom/mycompany/app/pref/PrefUtil;->a(I)Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    const/4 v6, 0x1

    .line 62
    invoke-direct {v2, v6, v3, v4, v5}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIIZ)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    new-instance v2, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 69
    .line 70
    sget v3, Lnet/kaki87/soul2/testing/R$string;->show_single:I

    .line 71
    .line 72
    invoke-static {v1}, Lcom/mycompany/app/pref/PrefUtil;->c(I)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    const/4 v5, 0x2

    .line 77
    invoke-direct {v2, v5, v3, v4, v1}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIIZ)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    new-instance v4, Lcom/mycompany/app/view/MyPopupMenu;

    .line 84
    .line 85
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->w:Lcom/mycompany/app/setting/SettingBackup;

    .line 86
    .line 87
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->B:Lcom/mycompany/app/view/MyMainRelative;

    .line 88
    .line 89
    sget-boolean v9, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 90
    .line 91
    new-instance v10, Lcom/mycompany/app/dialog/DialogListGdrive$11;

    .line 92
    .line 93
    invoke-direct {v10, v0}, Lcom/mycompany/app/dialog/DialogListGdrive$11;-><init>(Lcom/mycompany/app/dialog/DialogListGdrive;)V

    .line 94
    .line 95
    .line 96
    move-object v7, p1

    .line 97
    invoke-direct/range {v4 .. v10}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 98
    .line 99
    .line 100
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogListGdrive;->P:Lcom/mycompany/app/view/MyPopupMenu;

    .line 101
    .line 102
    iput-object v4, v0, Lcom/mycompany/app/view/MyDialogNormal;->u:Lcom/mycompany/app/view/MyPopupWrap;

    .line 103
    .line 104
    :cond_5
    :goto_0
    return-void
.end method
