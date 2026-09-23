.class public Lcom/mycompany/app/dialog/DialogSetSort2;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# static fields
.field public static final synthetic n0:I


# instance fields
.field public a0:Lcom/mycompany/app/main/MainActivity;

.field public b0:Landroid/content/Context;

.field public c0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

.field public d0:Z

.field public e0:Z

.field public f0:I

.field public g0:Z

.field public h0:Lcom/mycompany/app/view/MyDialogLinear;

.field public i0:Lcom/mycompany/app/view/MyRecyclerView;

.field public j0:Lcom/mycompany/app/view/MyLineText;

.field public k0:Lcom/mycompany/app/setting/SettingListAdapter;

.field public l0:Lcom/mycompany/app/view/MyPopupMenu;

.field public m0:Lcom/mycompany/app/view/MyPopupMenu;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetSort2;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetSort2;->b0:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogSetSort2;->c0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 13
    .line 14
    sget-boolean p1, Lcom/mycompany/app/pref/PrefList;->F:Z

    .line 15
    .line 16
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSetSort2;->d0:Z

    .line 17
    .line 18
    sget-boolean p1, Lcom/mycompany/app/pref/PrefList;->G:Z

    .line 19
    .line 20
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSetSort2;->e0:Z

    .line 21
    .line 22
    sget p1, Lcom/mycompany/app/pref/PrefList;->H:I

    .line 23
    .line 24
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSetSort2;->f0:I

    .line 25
    .line 26
    sget-boolean p1, Lcom/mycompany/app/pref/PrefList;->I:Z

    .line 27
    .line 28
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSetSort2;->g0:Z

    .line 29
    .line 30
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 31
    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogSetSort2$1;

    .line 36
    .line 37
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogSetSort2$1;-><init>(Lcom/mycompany/app/dialog/DialogSetSort2;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final B()Ljava/util/ArrayList;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 7
    .line 8
    sget v3, Lnet/kaki87/soul2/testing/R$string;->sort_user:I

    .line 9
    .line 10
    iget-boolean v6, p0, Lcom/mycompany/app/dialog/DialogSetSort2;->d0:Z

    .line 11
    .line 12
    const/4 v7, 0x1

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-direct/range {v1 .. v7}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 23
    .line 24
    sget v4, Lnet/kaki87/soul2/testing/R$string;->folder_top:I

    .line 25
    .line 26
    iget-boolean v6, p0, Lcom/mycompany/app/dialog/DialogSetSort2;->e0:Z

    .line 27
    .line 28
    iget-boolean v7, p0, Lcom/mycompany/app/dialog/DialogSetSort2;->d0:Z

    .line 29
    .line 30
    const/4 v9, 0x0

    .line 31
    const/4 v3, 0x1

    .line 32
    move v8, v7

    .line 33
    invoke-direct/range {v2 .. v9}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIZZZI)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 40
    .line 41
    sget v2, Lnet/kaki87/soul2/testing/R$string;->sort_by:I

    .line 42
    .line 43
    sget-object v3, Lcom/mycompany/app/dialog/DialogSetSort;->x0:[I

    .line 44
    .line 45
    iget v4, p0, Lcom/mycompany/app/dialog/DialogSetSort2;->f0:I

    .line 46
    .line 47
    aget v3, v3, v4

    .line 48
    .line 49
    iget-boolean v4, p0, Lcom/mycompany/app/dialog/DialogSetSort2;->d0:Z

    .line 50
    .line 51
    const/4 v5, 0x2

    .line 52
    invoke-direct {v1, v5, v2, v3, v4}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIZ)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 59
    .line 60
    sget v2, Lnet/kaki87/soul2/testing/R$string;->order_by:I

    .line 61
    .line 62
    iget-boolean v3, p0, Lcom/mycompany/app/dialog/DialogSetSort2;->g0:Z

    .line 63
    .line 64
    if-eqz v3, :cond_0

    .line 65
    .line 66
    sget v3, Lnet/kaki87/soul2/testing/R$string;->order_descend:I

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    sget v3, Lnet/kaki87/soul2/testing/R$string;->order_ascend:I

    .line 70
    .line 71
    :goto_0
    iget-boolean v4, p0, Lcom/mycompany/app/dialog/DialogSetSort2;->d0:Z

    .line 72
    .line 73
    const/4 v5, 0x3

    .line 74
    invoke-direct {v1, v5, v2, v3, v4}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIZ)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    return-object v0
.end method

.method public final dismiss()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetSort2;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetSort2;->l0:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetSort2;->l0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetSort2;->m0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iput-object v1, p0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetSort2;->m0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 31
    .line 32
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetSort2;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetSort2;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 40
    .line 41
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetSort2;->i0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 42
    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetSort2;->i0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 49
    .line 50
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetSort2;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 51
    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetSort2;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 58
    .line 59
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetSort2;->k0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 60
    .line 61
    if-eqz v0, :cond_6

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingListAdapter;->z()V

    .line 64
    .line 65
    .line 66
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetSort2;->k0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 67
    .line 68
    :cond_6
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetSort2;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 69
    .line 70
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetSort2;->b0:Landroid/content/Context;

    .line 71
    .line 72
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetSort2;->c0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 73
    .line 74
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 75
    .line 76
    .line 77
    return-void
.end method
