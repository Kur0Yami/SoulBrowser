.class public Lcom/mycompany/app/dialog/DialogSetColumn;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# static fields
.field public static final k0:[I

.field public static final l0:[I


# instance fields
.field public a0:Lcom/mycompany/app/main/MainActivity;

.field public b0:Landroid/content/Context;

.field public final c0:Z

.field public d0:Lcom/mycompany/app/view/MyDialogLinear;

.field public e0:Lcom/mycompany/app/view/MyRecyclerView;

.field public f0:Lcom/mycompany/app/view/MyLineText;

.field public g0:Lcom/mycompany/app/setting/SettingListAdapter;

.field public h0:Lcom/mycompany/app/view/MyPopupMenu;

.field public i0:I

.field public j0:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/mycompany/app/dialog/DialogSetColumn;->k0:[I

    .line 8
    .line 9
    const/16 v0, 0x9

    .line 10
    .line 11
    new-array v0, v0, [I

    .line 12
    .line 13
    fill-array-data v0, :array_1

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/mycompany/app/dialog/DialogSetColumn;->l0:[I

    .line 17
    .line 18
    return-void

    .line 19
    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data

    .line 20
    .line 21
    .line 22
    :array_1
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
    .end array-data
.end method

.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetColumn;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetColumn;->b0:Landroid/content/Context;

    .line 11
    .line 12
    iput-boolean p2, p0, Lcom/mycompany/app/dialog/DialogSetColumn;->c0:Z

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    sget p1, Lcom/mycompany/app/pref/PrefMain;->z:I

    .line 17
    .line 18
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSetColumn;->i0:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget p1, Lcom/mycompany/app/pref/PrefZtri;->l0:I

    .line 22
    .line 23
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSetColumn;->i0:I

    .line 24
    .line 25
    sget p1, Lcom/mycompany/app/pref/PrefZtri;->m0:I

    .line 26
    .line 27
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSetColumn;->j0:I

    .line 28
    .line 29
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 30
    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    new-instance p2, Lcom/mycompany/app/dialog/DialogSetColumn$1;

    .line 35
    .line 36
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogSetColumn$1;-><init>(Lcom/mycompany/app/dialog/DialogSetColumn;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public static B(I)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {p0, v0}, Landroid/support/v4/media/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method


# virtual methods
.method public final C(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetColumn;->h0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_4

    .line 6
    .line 7
    :cond_0
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetColumn;->h0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_1
    if-eqz p1, :cond_7

    .line 18
    .line 19
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 20
    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    goto :goto_4

    .line 24
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    const/4 v1, 0x1

    .line 31
    if-ne p2, v1, :cond_4

    .line 32
    .line 33
    move v2, v0

    .line 34
    :goto_0
    const/16 v3, 0x9

    .line 35
    .line 36
    if-ge v2, v3, :cond_6

    .line 37
    .line 38
    sget-object v3, Lcom/mycompany/app/dialog/DialogSetColumn;->l0:[I

    .line 39
    .line 40
    aget v3, v3, v2

    .line 41
    .line 42
    new-instance v4, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 43
    .line 44
    invoke-static {v3}, Lcom/mycompany/app/dialog/DialogSetColumn;->B(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    iget v7, p0, Lcom/mycompany/app/dialog/DialogSetColumn;->j0:I

    .line 49
    .line 50
    if-ne v7, v3, :cond_3

    .line 51
    .line 52
    move v3, v1

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    move v3, v0

    .line 55
    :goto_1
    invoke-direct {v4, v6, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(Ljava/lang/String;IZ)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    add-int/lit8 v2, v2, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    move v2, v0

    .line 65
    :goto_2
    const/4 v3, 0x6

    .line 66
    if-ge v2, v3, :cond_6

    .line 67
    .line 68
    sget-object v3, Lcom/mycompany/app/dialog/DialogSetColumn;->k0:[I

    .line 69
    .line 70
    aget v3, v3, v2

    .line 71
    .line 72
    new-instance v4, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 73
    .line 74
    invoke-static {v3}, Lcom/mycompany/app/dialog/DialogSetColumn;->B(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    iget v7, p0, Lcom/mycompany/app/dialog/DialogSetColumn;->i0:I

    .line 79
    .line 80
    if-ne v7, v3, :cond_5

    .line 81
    .line 82
    move v3, v1

    .line 83
    goto :goto_3

    .line 84
    :cond_5
    move v3, v0

    .line 85
    :goto_3
    invoke-direct {v4, v6, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(Ljava/lang/String;IZ)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    add-int/lit8 v2, v2, 0x1

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_6
    new-instance v1, Lcom/mycompany/app/view/MyPopupMenu;

    .line 95
    .line 96
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogSetColumn;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 97
    .line 98
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogSetColumn;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 99
    .line 100
    iget-object v4, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 101
    .line 102
    sget-boolean v6, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 103
    .line 104
    new-instance v7, Lcom/mycompany/app/dialog/DialogSetColumn$6;

    .line 105
    .line 106
    invoke-direct {v7, p0, p2}, Lcom/mycompany/app/dialog/DialogSetColumn$6;-><init>(Lcom/mycompany/app/dialog/DialogSetColumn;I)V

    .line 107
    .line 108
    .line 109
    invoke-direct/range {v1 .. v7}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 110
    .line 111
    .line 112
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetColumn;->h0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 113
    .line 114
    iput-object v1, p0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 115
    .line 116
    :cond_7
    :goto_4
    return-void
.end method

.method public final dismiss()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetColumn;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetColumn;->h0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iput-object v1, p0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetColumn;->h0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetColumn;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetColumn;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 29
    .line 30
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetColumn;->e0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetColumn;->e0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 38
    .line 39
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetColumn;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 40
    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetColumn;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 47
    .line 48
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetColumn;->g0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 49
    .line 50
    if-eqz v0, :cond_5

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingListAdapter;->z()V

    .line 53
    .line 54
    .line 55
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetColumn;->g0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 56
    .line 57
    :cond_5
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetColumn;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 58
    .line 59
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetColumn;->b0:Landroid/content/Context;

    .line 60
    .line 61
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 62
    .line 63
    .line 64
    return-void
.end method
