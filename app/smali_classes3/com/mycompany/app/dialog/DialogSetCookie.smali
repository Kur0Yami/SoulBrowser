.class public Lcom/mycompany/app/dialog/DialogSetCookie;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# static fields
.field public static final synthetic k0:I


# instance fields
.field public a0:Lcom/mycompany/app/main/MainActivity;

.field public b0:Landroid/content/Context;

.field public c0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

.field public d0:Lcom/mycompany/app/view/MyDialogLinear;

.field public e0:Lcom/mycompany/app/view/MyRecyclerView;

.field public f0:Lcom/mycompany/app/view/MyLineText;

.field public g0:Lcom/mycompany/app/setting/SettingListAdapter;

.field public h0:I

.field public i0:I

.field public j0:Lcom/mycompany/app/view/MyPopupMenu;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetCookie;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetCookie;->b0:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogSetCookie;->c0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 13
    .line 14
    sget p1, Lcom/mycompany/app/pref/PrefWeb;->F:I

    .line 15
    .line 16
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSetCookie;->h0:I

    .line 17
    .line 18
    sget p1, Lcom/mycompany/app/pref/PrefWeb;->G:I

    .line 19
    .line 20
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSetCookie;->i0:I

    .line 21
    .line 22
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogSetCookie$1;

    .line 28
    .line 29
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogSetCookie$1;-><init>(Lcom/mycompany/app/dialog/DialogSetCookie;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final B(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetCookie;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_3

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetCookie;->j0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    goto :goto_3

    .line 11
    :cond_1
    if-eqz v0, :cond_2

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetCookie;->j0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 20
    .line 21
    :cond_2
    if-eqz p1, :cond_7

    .line 22
    .line 23
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 24
    .line 25
    if-nez v0, :cond_3

    .line 26
    .line 27
    goto :goto_3

    .line 28
    :cond_3
    const/4 v0, 0x1

    .line 29
    if-ne p2, v0, :cond_4

    .line 30
    .line 31
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSetCookie;->i0:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_4
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSetCookie;->h0:I

    .line 35
    .line 36
    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    sget-object v2, Lcom/mycompany/app/main/MainConst;->Q:[I

    .line 42
    .line 43
    array-length v2, v2

    .line 44
    const/4 v3, 0x0

    .line 45
    move v4, v3

    .line 46
    :goto_1
    if-ge v4, v2, :cond_6

    .line 47
    .line 48
    sget-object v5, Lcom/mycompany/app/main/MainConst;->Q:[I

    .line 49
    .line 50
    aget v5, v5, v4

    .line 51
    .line 52
    new-instance v7, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 53
    .line 54
    sget-object v8, Lcom/mycompany/app/main/MainConst;->R:[I

    .line 55
    .line 56
    aget v8, v8, v5

    .line 57
    .line 58
    if-ne v1, v5, :cond_5

    .line 59
    .line 60
    move v5, v0

    .line 61
    goto :goto_2

    .line 62
    :cond_5
    move v5, v3

    .line 63
    :goto_2
    invoke-direct {v7, v4, v8, v5}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    add-int/lit8 v4, v4, 0x1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_6
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 73
    .line 74
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogSetCookie;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 75
    .line 76
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogSetCookie;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 77
    .line 78
    iget-object v5, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 79
    .line 80
    sget-boolean v7, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 81
    .line 82
    new-instance v8, Lcom/mycompany/app/dialog/DialogSetCookie$6;

    .line 83
    .line 84
    invoke-direct {v8, p0, v2, p2}, Lcom/mycompany/app/dialog/DialogSetCookie$6;-><init>(Lcom/mycompany/app/dialog/DialogSetCookie;II)V

    .line 85
    .line 86
    .line 87
    move-object v2, v0

    .line 88
    invoke-direct/range {v2 .. v8}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 89
    .line 90
    .line 91
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogSetCookie;->j0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 92
    .line 93
    iput-object v2, p0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 94
    .line 95
    :cond_7
    :goto_3
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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetCookie;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetCookie;->j0:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetCookie;->j0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetCookie;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetCookie;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 29
    .line 30
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetCookie;->e0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetCookie;->e0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 38
    .line 39
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetCookie;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 40
    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetCookie;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 47
    .line 48
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetCookie;->g0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 49
    .line 50
    if-eqz v0, :cond_5

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingListAdapter;->z()V

    .line 53
    .line 54
    .line 55
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetCookie;->g0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 56
    .line 57
    :cond_5
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetCookie;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 58
    .line 59
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetCookie;->b0:Landroid/content/Context;

    .line 60
    .line 61
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetCookie;->c0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 62
    .line 63
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 64
    .line 65
    .line 66
    return-void
.end method
