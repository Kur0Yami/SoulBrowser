.class public Lcom/mycompany/app/setting/SettingMenu;
.super Lcom/mycompany/app/setting/CastActivity;
.source "SourceFile"


# static fields
.field public static final synthetic s2:I


# instance fields
.field public C1:Lcom/mycompany/app/view/MyMainRelative;

.field public D1:Lcom/mycompany/app/view/MyButtonImage;

.field public E1:Landroidx/appcompat/widget/AppCompatTextView;

.field public F1:Lcom/mycompany/app/view/MyButtonImage;

.field public G1:Lcom/mycompany/app/view/MyButtonImage;

.field public H1:Lcom/mycompany/app/view/MyRecyclerView;

.field public I1:Lcom/mycompany/app/main/MenuIconAdapter;

.field public J1:Lcom/mycompany/app/view/MyManagerGrid;

.field public K1:Lcom/mycompany/app/quick/MenuDragHelper;

.field public L1:Landroidx/recyclerview/widget/ItemTouchHelper;

.field public M1:Z

.field public N1:Landroidx/appcompat/widget/AppCompatTextView;

.field public O1:Lcom/mycompany/app/view/MyButtonImage;

.field public P1:Lcom/mycompany/app/view/MyButtonImage;

.field public Q1:Lcom/mycompany/app/view/MyButtonImage;

.field public R1:Lcom/mycompany/app/view/MyButtonImage;

.field public S1:Lcom/mycompany/app/view/MyRecyclerView;

.field public T1:Lcom/mycompany/app/main/MenuIconAdapter;

.field public U1:Lcom/mycompany/app/view/MyManagerLinear;

.field public V1:Lcom/mycompany/app/quick/MenuDragHelper;

.field public W1:Landroidx/recyclerview/widget/ItemTouchHelper;

.field public X1:Z

.field public Y1:Landroidx/appcompat/widget/AppCompatTextView;

.field public Z1:Lcom/mycompany/app/view/MyButtonImage;

.field public a2:Lcom/mycompany/app/view/MyButtonImage;

.field public b2:Lcom/mycompany/app/view/MyButtonImage;

.field public c2:Lcom/mycompany/app/view/MyButtonImage;

.field public d2:[I

.field public e2:[I

.field public f2:Lcom/mycompany/app/view/MyPopupMenu;

.field public g2:Lcom/mycompany/app/dialog/DialogConfirm;

.field public h2:Lcom/mycompany/app/dialog/DialogSetMsg;

.field public i2:Lcom/mycompany/app/dialog/DialogSetMsg;

.field public j2:Lcom/mycompany/app/dialog/DialogSetColumn;

.field public k2:Lcom/mycompany/app/dialog/DialogSetItem;

.field public l2:Lcom/mycompany/app/dialog/DialogSetBar;

.field public m2:Lcom/mycompany/app/dialog/DialogSaveConfirm;

.field public n2:Z

.field public o2:Lcom/mycompany/app/view/MyFadeFrame;

.field public p2:Z

.field public q2:I

.field public r2:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static D0(Lcom/mycompany/app/setting/SettingMenu;Z)V
    .locals 2

    .line 1
    const/16 v0, 0x44

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingMenu;->I1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/mycompany/app/main/MenuIconAdapter;->v(II)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingMenu;->R0()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->H1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 19
    .line 20
    new-instance v1, Lcom/mycompany/app/setting/SettingMenu$19;

    .line 21
    .line 22
    invoke-direct {v1, p0, p1}, Lcom/mycompany/app/setting/SettingMenu$19;-><init>(Lcom/mycompany/app/setting/SettingMenu;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingMenu;->T1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 30
    .line 31
    if-nez p1, :cond_2

    .line 32
    .line 33
    :goto_0
    return-void

    .line 34
    :cond_2
    invoke-virtual {p1, v0, v1}, Lcom/mycompany/app/main/MenuIconAdapter;->v(II)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingMenu;->R0()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/setting/SettingMenu;->V0(IZ)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public static E0(Lcom/mycompany/app/setting/SettingMenu;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->T1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/main/MenuIconAdapter;->d()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/16 v1, 0x9

    .line 11
    .line 12
    if-lt v0, v1, :cond_1

    .line 13
    .line 14
    sget v0, Lnet/kaki87/soul2/testing/R$string;->not_space:I

    .line 15
    .line 16
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method public static F0(Lcom/mycompany/app/setting/SettingMenu;Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingMenu;->P0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingMenu;->J0()V

    .line 9
    .line 10
    .line 11
    iput-boolean p1, p0, Lcom/mycompany/app/setting/SettingMenu;->r2:Z

    .line 12
    .line 13
    new-instance p1, Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 14
    .line 15
    sget v0, Lnet/kaki87/soul2/testing/R$string;->del_all_confirm:I

    .line 16
    .line 17
    sget v1, Lnet/kaki87/soul2/testing/R$string;->delete_all:I

    .line 18
    .line 19
    new-instance v2, Lcom/mycompany/app/setting/SettingMenu$27;

    .line 20
    .line 21
    invoke-direct {v2, p0}, Lcom/mycompany/app/setting/SettingMenu$27;-><init>(Lcom/mycompany/app/setting/SettingMenu;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, p0, v0, v1, v2}, Lcom/mycompany/app/dialog/DialogSetMsg;-><init>(Landroid/app/Activity;IILcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingMenu;->h2:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 28
    .line 29
    new-instance v0, Lcom/mycompany/app/setting/SettingMenu$28;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingMenu$28;-><init>(Lcom/mycompany/app/setting/SettingMenu;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public static G0(Lcom/mycompany/app/setting/SettingMenu;Z)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefRead;->w:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingMenu;->P0()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingMenu;->K0()V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/mycompany/app/dialog/DialogConfirm;

    .line 17
    .line 18
    sget v1, Lnet/kaki87/soul2/testing/R$string;->space_title:I

    .line 19
    .line 20
    sget v2, Lnet/kaki87/soul2/testing/R$string;->space_guide:I

    .line 21
    .line 22
    new-instance v3, Lcom/mycompany/app/setting/SettingMenu$25;

    .line 23
    .line 24
    invoke-direct {v3, p0}, Lcom/mycompany/app/setting/SettingMenu$25;-><init>(Lcom/mycompany/app/setting/SettingMenu;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/mycompany/app/dialog/DialogConfirm;-><init>(Landroid/app/Activity;IILcom/mycompany/app/dialog/DialogConfirm$DialogConfListener;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->g2:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 31
    .line 32
    new-instance v1, Lcom/mycompany/app/setting/SettingMenu$26;

    .line 33
    .line 34
    invoke-direct {v1, p0, p1}, Lcom/mycompany/app/setting/SettingMenu$26;-><init>(Lcom/mycompany/app/setting/SettingMenu;Z)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public static H0(IILcom/mycompany/app/setting/SettingMenu;Z)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Lcom/mycompany/app/setting/SettingMenu;->P0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p2}, Lcom/mycompany/app/setting/SettingMenu;->N0()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p2, Lcom/mycompany/app/setting/SettingMenu;->I1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget-object v1, p2, Lcom/mycompany/app/setting/SettingMenu;->T1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MenuIconAdapter;->y(I)[I

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    iget-object v0, p2, Lcom/mycompany/app/setting/SettingMenu;->T1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MenuIconAdapter;->y(I)[I

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetItem;

    .line 32
    .line 33
    new-instance v7, Lcom/mycompany/app/setting/SettingMenu$32;

    .line 34
    .line 35
    invoke-direct {v7, p1, p0, p2, p3}, Lcom/mycompany/app/setting/SettingMenu$32;-><init>(IILcom/mycompany/app/setting/SettingMenu;Z)V

    .line 36
    .line 37
    .line 38
    move v4, p1

    .line 39
    move-object v3, p2

    .line 40
    invoke-direct/range {v2 .. v7}, Lcom/mycompany/app/dialog/DialogSetItem;-><init>(Landroid/app/Activity;I[I[ILcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;)V

    .line 41
    .line 42
    .line 43
    iput-object v2, v3, Lcom/mycompany/app/setting/SettingMenu;->k2:Lcom/mycompany/app/dialog/DialogSetItem;

    .line 44
    .line 45
    new-instance p0, Lcom/mycompany/app/setting/SettingMenu$33;

    .line 46
    .line 47
    invoke-direct {p0, v3}, Lcom/mycompany/app/setting/SettingMenu$33;-><init>(Lcom/mycompany/app/setting/SettingMenu;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, p0}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    :goto_0
    return-void
.end method

.method public static I0(Lcom/mycompany/app/setting/SettingMenu;Landroid/view/View;IIZ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->f2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    if-eqz v0, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingMenu;->f2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 15
    .line 16
    :cond_1
    if-nez p1, :cond_2

    .line 17
    .line 18
    :goto_0
    return-void

    .line 19
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 25
    .line 26
    if-eqz p4, :cond_3

    .line 27
    .line 28
    sget v1, Lnet/kaki87/soul2/testing/R$string;->move_down:I

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_3
    sget v1, Lnet/kaki87/soul2/testing/R$string;->move_up:I

    .line 32
    .line 33
    :goto_1
    const/4 v2, 0x1

    .line 34
    invoke-direct {v0, v2, v1}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    sget v2, Lnet/kaki87/soul2/testing/R$string;->do_change:I

    .line 44
    .line 45
    invoke-direct {v0, v1, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 52
    .line 53
    const/4 v1, 0x2

    .line 54
    sget v2, Lnet/kaki87/soul2/testing/R$string;->delete:I

    .line 55
    .line 56
    invoke-direct {v0, v1, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    new-instance v2, Lcom/mycompany/app/view/MyPopupMenu;

    .line 63
    .line 64
    iget-object v4, p0, Lcom/mycompany/app/setting/SettingMenu;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 65
    .line 66
    sget-boolean v7, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 67
    .line 68
    new-instance v8, Lcom/mycompany/app/setting/SettingMenu$20;

    .line 69
    .line 70
    invoke-direct {v8, p2, p3, p0, p4}, Lcom/mycompany/app/setting/SettingMenu$20;-><init>(IILcom/mycompany/app/setting/SettingMenu;Z)V

    .line 71
    .line 72
    .line 73
    move-object v3, p0

    .line 74
    move-object v5, p1

    .line 75
    invoke-direct/range {v2 .. v8}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 76
    .line 77
    .line 78
    iput-object v2, v3, Lcom/mycompany/app/setting/SettingMenu;->f2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 79
    .line 80
    iput-object v2, v3, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 81
    .line 82
    return-void
.end method


# virtual methods
.method public final J0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->h2:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetMsg;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->h2:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final K0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->g2:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogConfirm;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->g2:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final L0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->i2:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetMsg;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->i2:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final M0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->m2:Lcom/mycompany/app/dialog/DialogSaveConfirm;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSaveConfirm;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->m2:Lcom/mycompany/app/dialog/DialogSaveConfirm;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final N0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->k2:Lcom/mycompany/app/dialog/DialogSetItem;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetItem;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->k2:Lcom/mycompany/app/dialog/DialogSetItem;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final O0()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->I1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v2, p0, Lcom/mycompany/app/setting/SettingMenu;->T1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v2, p0, Lcom/mycompany/app/setting/SettingMenu;->d2:[I

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/main/MenuIconAdapter;->B(I[I)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x1

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    return v2

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->T1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/mycompany/app/setting/SettingMenu;->e2:[I

    .line 24
    .line 25
    invoke-virtual {v0, v1, v3}, Lcom/mycompany/app/main/MenuIconAdapter;->B(I[I)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    return v2

    .line 32
    :cond_2
    :goto_0
    return v1
.end method

.method public final P0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->g2:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->h2:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    return v1

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->i2:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    return v1

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->j2:Lcom/mycompany/app/dialog/DialogSetColumn;

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    return v1

    .line 22
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->k2:Lcom/mycompany/app/dialog/DialogSetItem;

    .line 23
    .line 24
    if-eqz v0, :cond_4

    .line 25
    .line 26
    return v1

    .line 27
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->l2:Lcom/mycompany/app/dialog/DialogSetBar;

    .line 28
    .line 29
    if-eqz v0, :cond_5

    .line 30
    .line 31
    return v1

    .line 32
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->m2:Lcom/mycompany/app/dialog/DialogSaveConfirm;

    .line 33
    .line 34
    if-eqz v0, :cond_6

    .line 35
    .line 36
    return v1

    .line 37
    :cond_6
    const/4 v0, 0x0

    .line 38
    return v0
.end method

.method public final Q0(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->I1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->T1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_5

    .line 10
    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingMenu;->n2:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    goto/16 :goto_5

    .line 16
    .line 17
    :cond_1
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/mycompany/app/setting/SettingMenu;->n2:Z

    .line 19
    .line 20
    iget-object v1, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-static {v1, v2}, Lcom/mycompany/app/pref/PrefMain;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefMain;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget-object v3, p0, Lcom/mycompany/app/setting/SettingMenu;->I1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 28
    .line 29
    iget-object v4, p0, Lcom/mycompany/app/setting/SettingMenu;->d2:[I

    .line 30
    .line 31
    invoke-virtual {v3, v2, v4}, Lcom/mycompany/app/main/MenuIconAdapter;->B(I[I)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_4

    .line 36
    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    iget-object v3, p0, Lcom/mycompany/app/setting/SettingMenu;->I1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 40
    .line 41
    invoke-virtual {v3, v2}, Lcom/mycompany/app/main/MenuIconAdapter;->y(I)[I

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->b2([I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    sput-object v3, Lcom/mycompany/app/pref/PrefMain;->B:Ljava/lang/String;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const-string v3, "3,4,5,7,8,20,66,11,69,60,45,12,14,15,16,41,62,73,6,17,9,54,18,19,47,10,46,32,74,33,40"

    .line 53
    .line 54
    sput-object v3, Lcom/mycompany/app/pref/PrefMain;->B:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->a2(Ljava/lang/String;)[I

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    iput-object v3, p0, Lcom/mycompany/app/setting/SettingMenu;->d2:[I

    .line 61
    .line 62
    :goto_0
    const-string v3, "mMenuItems"

    .line 63
    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    sget-object v4, Lcom/mycompany/app/pref/PrefMain;->B:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v1, v3, v4}, Lcom/mycompany/app/pref/PrefCore;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    invoke-virtual {v1, v3}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :goto_1
    move v3, v0

    .line 76
    goto :goto_2

    .line 77
    :cond_4
    move v3, v2

    .line 78
    :goto_2
    iget-object v4, p0, Lcom/mycompany/app/setting/SettingMenu;->T1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 79
    .line 80
    iget-object v5, p0, Lcom/mycompany/app/setting/SettingMenu;->e2:[I

    .line 81
    .line 82
    invoke-virtual {v4, v2, v5}, Lcom/mycompany/app/main/MenuIconAdapter;->B(I[I)Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-eqz v4, :cond_7

    .line 87
    .line 88
    if-eqz p1, :cond_5

    .line 89
    .line 90
    iget-object v3, p0, Lcom/mycompany/app/setting/SettingMenu;->T1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 91
    .line 92
    invoke-virtual {v3, v2}, Lcom/mycompany/app/main/MenuIconAdapter;->y(I)[I

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->b2([I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    sput-object v3, Lcom/mycompany/app/pref/PrefMain;->C:Ljava/lang/String;

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_5
    const-string v3, "21,22,23,24,25"

    .line 104
    .line 105
    sput-object v3, Lcom/mycompany/app/pref/PrefMain;->C:Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->a2(Ljava/lang/String;)[I

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    iput-object v3, p0, Lcom/mycompany/app/setting/SettingMenu;->e2:[I

    .line 112
    .line 113
    :goto_3
    const-string v3, "mMidItems"

    .line 114
    .line 115
    if-eqz p1, :cond_6

    .line 116
    .line 117
    sget-object v4, Lcom/mycompany/app/pref/PrefMain;->C:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v1, v3, v4}, Lcom/mycompany/app/pref/PrefCore;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_6
    invoke-virtual {v1, v3}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_7
    move v0, v3

    .line 128
    :goto_4
    if-eqz v0, :cond_8

    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 131
    .line 132
    .line 133
    :cond_8
    if-eqz p1, :cond_9

    .line 134
    .line 135
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :cond_9
    iput-boolean v2, p0, Lcom/mycompany/app/setting/SettingMenu;->n2:Z

    .line 140
    .line 141
    :cond_a
    :goto_5
    return-void
.end method

.method public final R0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->N1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->I1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/main/MenuIconAdapter;->d()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    const/16 v2, 0x8

    .line 16
    .line 17
    if-lez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->N1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->O1:Lcom/mycompany/app/view/MyButtonImage;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->P1:Lcom/mycompany/app/view/MyButtonImage;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->N1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->O1:Lcom/mycompany/app/view/MyButtonImage;

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->P1:Lcom/mycompany/app/view/MyButtonImage;

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->T1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/mycompany/app/main/MenuIconAdapter;->d()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-lez v0, :cond_2

    .line 57
    .line 58
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->Y1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->Z1:Lcom/mycompany/app/view/MyButtonImage;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->a2:Lcom/mycompany/app/view/MyButtonImage;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->Y1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->Z1:Lcom/mycompany/app/view/MyButtonImage;

    .line 80
    .line 81
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->a2:Lcom/mycompany/app/view/MyButtonImage;

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 87
    .line 88
    .line 89
    :cond_3
    :goto_1
    return-void
.end method

.method public final S0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->J1:Lcom/mycompany/app/view/MyManagerGrid;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v1, p0, Lcom/mycompany/app/setting/SettingMenu;->q2:I

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    iget v2, v0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 12
    .line 13
    if-eq v2, v1, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->x1(I)V

    .line 16
    .line 17
    .line 18
    :cond_2
    :goto_0
    return-void
.end method

.method public final T0()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 6
    .line 7
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_dark_24:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->E1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 13
    .line 14
    const v1, -0x50506

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 21
    .line 22
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_replay_dark_20:I

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 28
    .line 29
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_dark_20:I

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->H1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 35
    .line 36
    const v2, -0xdededf

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->N1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->O1:Lcom/mycompany/app/view/MyButtonImage;

    .line 48
    .line 49
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_dark_24:I

    .line 50
    .line 51
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->P1:Lcom/mycompany/app/view/MyButtonImage;

    .line 55
    .line 56
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_delete_dark_24:I

    .line 57
    .line 58
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->Q1:Lcom/mycompany/app/view/MyButtonImage;

    .line 62
    .line 63
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_border_clear_dark_24:I

    .line 64
    .line 65
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->R1:Lcom/mycompany/app/view/MyButtonImage;

    .line 69
    .line 70
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_dark_24:I

    .line 71
    .line 72
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->S1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 76
    .line 77
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->Y1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->Z1:Lcom/mycompany/app/view/MyButtonImage;

    .line 86
    .line 87
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_dark_24:I

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->a2:Lcom/mycompany/app/view/MyButtonImage;

    .line 93
    .line 94
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_delete_dark_24:I

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->b2:Lcom/mycompany/app/view/MyButtonImage;

    .line 100
    .line 101
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_border_clear_dark_24:I

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->c2:Lcom/mycompany/app/view/MyButtonImage;

    .line 107
    .line 108
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_dark_24:I

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 115
    .line 116
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_black_24:I

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->E1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 122
    .line 123
    const/high16 v1, -0x1000000

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 129
    .line 130
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_replay_black_20:I

    .line 131
    .line 132
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 136
    .line 137
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_black_20:I

    .line 138
    .line 139
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->H1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 143
    .line 144
    const/4 v2, -0x1

    .line 145
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->N1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->O1:Lcom/mycompany/app/view/MyButtonImage;

    .line 154
    .line 155
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_black_24:I

    .line 156
    .line 157
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 158
    .line 159
    .line 160
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->P1:Lcom/mycompany/app/view/MyButtonImage;

    .line 161
    .line 162
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_delete_black_24:I

    .line 163
    .line 164
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->Q1:Lcom/mycompany/app/view/MyButtonImage;

    .line 168
    .line 169
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_border_clear_black_24:I

    .line 170
    .line 171
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 172
    .line 173
    .line 174
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->R1:Lcom/mycompany/app/view/MyButtonImage;

    .line 175
    .line 176
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_black_24:I

    .line 177
    .line 178
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 179
    .line 180
    .line 181
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->S1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 182
    .line 183
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 184
    .line 185
    .line 186
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->Y1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 189
    .line 190
    .line 191
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->Z1:Lcom/mycompany/app/view/MyButtonImage;

    .line 192
    .line 193
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_black_24:I

    .line 194
    .line 195
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 196
    .line 197
    .line 198
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->a2:Lcom/mycompany/app/view/MyButtonImage;

    .line 199
    .line 200
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_delete_black_24:I

    .line 201
    .line 202
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 203
    .line 204
    .line 205
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->b2:Lcom/mycompany/app/view/MyButtonImage;

    .line 206
    .line 207
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_border_clear_black_24:I

    .line 208
    .line 209
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 210
    .line 211
    .line 212
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->c2:Lcom/mycompany/app/view/MyButtonImage;

    .line 213
    .line 214
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_black_24:I

    .line 215
    .line 216
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 217
    .line 218
    .line 219
    :goto_0
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 220
    .line 221
    if-eqz v0, :cond_1

    .line 222
    .line 223
    const v0, -0xc0c0c1

    .line 224
    .line 225
    .line 226
    goto :goto_1

    .line 227
    :cond_1
    const/high16 v0, 0x21000000

    .line 228
    .line 229
    :goto_1
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingMenu;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 230
    .line 231
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 232
    .line 233
    .line 234
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingMenu;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 235
    .line 236
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 237
    .line 238
    .line 239
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingMenu;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 240
    .line 241
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 242
    .line 243
    .line 244
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingMenu;->O1:Lcom/mycompany/app/view/MyButtonImage;

    .line 245
    .line 246
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 247
    .line 248
    .line 249
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingMenu;->P1:Lcom/mycompany/app/view/MyButtonImage;

    .line 250
    .line 251
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 252
    .line 253
    .line 254
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingMenu;->Q1:Lcom/mycompany/app/view/MyButtonImage;

    .line 255
    .line 256
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 257
    .line 258
    .line 259
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingMenu;->R1:Lcom/mycompany/app/view/MyButtonImage;

    .line 260
    .line 261
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 262
    .line 263
    .line 264
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingMenu;->Z1:Lcom/mycompany/app/view/MyButtonImage;

    .line 265
    .line 266
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 267
    .line 268
    .line 269
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingMenu;->a2:Lcom/mycompany/app/view/MyButtonImage;

    .line 270
    .line 271
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 272
    .line 273
    .line 274
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingMenu;->b2:Lcom/mycompany/app/view/MyButtonImage;

    .line 275
    .line 276
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 277
    .line 278
    .line 279
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingMenu;->c2:Lcom/mycompany/app/view/MyButtonImage;

    .line 280
    .line 281
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 282
    .line 283
    .line 284
    return-void
.end method

.method public final U0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingMenu;->P0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingMenu;->M0()V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/dialog/DialogSaveConfirm;

    .line 12
    .line 13
    new-instance v1, Lcom/mycompany/app/setting/SettingMenu$36;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingMenu$36;-><init>(Lcom/mycompany/app/setting/SettingMenu;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0, v1}, Lcom/mycompany/app/dialog/DialogSaveConfirm;-><init>(Landroid/app/Activity;Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->m2:Lcom/mycompany/app/dialog/DialogSaveConfirm;

    .line 22
    .line 23
    new-instance v1, Lcom/mycompany/app/setting/SettingMenu$37;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingMenu$37;-><init>(Lcom/mycompany/app/setting/SettingMenu;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final V0(IZ)V
    .locals 2

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v1, Lcom/mycompany/app/setting/SettingMenu$34;

    .line 9
    .line 10
    invoke-direct {v1, p0, p2, p1}, Lcom/mycompany/app/setting/SettingMenu$34;-><init>(Lcom/mycompany/app/setting/SettingMenu;ZI)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    :cond_1
    :goto_0
    return-void
.end method

.method public final l0()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingMenu;->n2:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingMenu;->O0()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingMenu;->U0()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->Y()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingMenu;->l0()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/main/MainActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->l2:Lcom/mycompany/app/dialog/DialogSetBar;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetBar;->i0:Landroid/widget/FrameLayout;

    .line 14
    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogBottom;->q()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    :cond_1
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSetBar;->i0:Landroid/widget/FrameLayout;

    .line 25
    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    const/16 v2, 0x8

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    move v2, v1

    .line 32
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 36
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->i5(ZLandroid/content/res/Configuration;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    sput-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 41
    .line 42
    invoke-static {v1, p1}, Lcom/mycompany/app/main/MainUtil;->i5(ZLandroid/content/res/Configuration;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    sput-boolean p1, Lcom/mycompany/app/main/MainApp;->L1:Z

    .line 47
    .line 48
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 49
    .line 50
    if-nez p1, :cond_4

    .line 51
    .line 52
    return-void

    .line 53
    :cond_4
    new-instance v0, Lcom/mycompany/app/setting/SettingMenu$38;

    .line 54
    .line 55
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingMenu$38;-><init>(Lcom/mycompany/app/setting/SettingMenu;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Lcom/mycompany/app/setting/CastActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->C7(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lcom/mycompany/app/pref/PrefMain;->B:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->a2(Ljava/lang/String;)[I

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingMenu;->d2:[I

    .line 16
    .line 17
    sget-object v1, Lcom/mycompany/app/pref/PrefMain;->C:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->a2(Ljava/lang/String;)[I

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingMenu;->e2:[I

    .line 24
    .line 25
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 26
    .line 27
    iput-boolean v1, v0, Lcom/mycompany/app/setting/SettingMenu;->p2:Z

    .line 28
    .line 29
    sget v1, Lcom/mycompany/app/pref/PrefMain;->z:I

    .line 30
    .line 31
    iput v1, v0, Lcom/mycompany/app/setting/SettingMenu;->q2:I

    .line 32
    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    const/4 v1, 0x5

    .line 36
    iput v1, v0, Lcom/mycompany/app/setting/SettingMenu;->q2:I

    .line 37
    .line 38
    :cond_0
    sget v1, Lnet/kaki87/soul2/testing/R$id;->set_icon_reset:I

    .line 39
    .line 40
    sget v2, Lnet/kaki87/soul2/testing/R$id;->set_icon_apply:I

    .line 41
    .line 42
    sget v3, Lnet/kaki87/soul2/testing/R$id;->set_cast_icon:I

    .line 43
    .line 44
    sget v4, Lnet/kaki87/soul2/testing/R$id;->set_cast_ctrl:I

    .line 45
    .line 46
    new-instance v5, Lcom/mycompany/app/view/MyMainRelative;

    .line 47
    .line 48
    invoke-direct {v5, v0}, Lcom/mycompany/app/view/MyMainRelative;-><init>(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    .line 52
    .line 53
    const/4 v7, -0x1

    .line 54
    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    .line 59
    .line 60
    new-instance v6, Lcom/mycompany/app/view/MyHeaderView;

    .line 61
    .line 62
    invoke-direct {v6, v0}, Lcom/mycompany/app/view/MyHeaderView;-><init>(Landroid/content/Context;)V

    .line 63
    .line 64
    .line 65
    sget v8, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 66
    .line 67
    invoke-virtual {v5, v6, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 68
    .line 69
    .line 70
    new-instance v8, Lcom/mycompany/app/view/MyButtonImage;

    .line 71
    .line 72
    invoke-direct {v8, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 73
    .line 74
    .line 75
    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 76
    .line 77
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 78
    .line 79
    .line 80
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 81
    .line 82
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 83
    .line 84
    sget v12, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 85
    .line 86
    invoke-direct {v10, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 87
    .line 88
    .line 89
    sget v11, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 90
    .line 91
    invoke-virtual {v10, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    .line 96
    .line 97
    new-instance v10, Landroidx/appcompat/widget/AppCompatTextView;

    .line 98
    .line 99
    const/4 v11, 0x0

    .line 100
    invoke-direct {v10, v0, v11}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    .line 102
    .line 103
    const/16 v12, 0x10

    .line 104
    .line 105
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 106
    .line 107
    .line 108
    const/4 v13, 0x1

    .line 109
    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 110
    .line 111
    .line 112
    const/high16 v14, 0x41900000    # 18.0f

    .line 113
    .line 114
    invoke-virtual {v10, v13, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 115
    .line 116
    .line 117
    sget v14, Lnet/kaki87/soul2/testing/R$string;->list_menu:I

    .line 118
    .line 119
    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(I)V

    .line 120
    .line 121
    .line 122
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 123
    .line 124
    invoke-direct {v14, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v14, v12, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 128
    .line 129
    .line 130
    sget v15, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 131
    .line 132
    invoke-virtual {v14, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v6, v10, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    .line 137
    .line 138
    const/high16 v14, 0x41600000    # 14.0f

    .line 139
    .line 140
    invoke-static {v0, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 141
    .line 142
    .line 143
    move-result v14

    .line 144
    float-to-int v14, v14

    .line 145
    new-instance v15, Lcom/mycompany/app/view/MyButtonImage;

    .line 146
    .line 147
    invoke-direct {v15, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v15, v1}, Landroid/view/View;->setId(I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v15, v14, v14, v14, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v15, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 157
    .line 158
    .line 159
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 160
    .line 161
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 162
    .line 163
    invoke-direct {v1, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v12, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 167
    .line 168
    .line 169
    sget v11, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 170
    .line 171
    iput v11, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 172
    .line 173
    invoke-virtual {v6, v15, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    .line 175
    .line 176
    new-instance v1, Lcom/mycompany/app/view/MyButtonImage;

    .line 177
    .line 178
    invoke-direct {v1, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v14, v14, v14, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 188
    .line 189
    .line 190
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 191
    .line 192
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 193
    .line 194
    invoke-direct {v2, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2, v12, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 198
    .line 199
    .line 200
    sget v11, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 201
    .line 202
    iput v11, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 203
    .line 204
    invoke-virtual {v6, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    .line 206
    .line 207
    new-instance v2, Landroid/widget/FrameLayout;

    .line 208
    .line 209
    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 213
    .line 214
    .line 215
    const/4 v3, 0x4

    .line 216
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 217
    .line 218
    .line 219
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 220
    .line 221
    sget v11, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 222
    .line 223
    const/4 v12, -0x2

    .line 224
    invoke-direct {v3, v12, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 225
    .line 226
    .line 227
    const/16 v11, 0x15

    .line 228
    .line 229
    invoke-virtual {v3, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v6, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    .line 234
    .line 235
    new-instance v3, Landroid/widget/FrameLayout;

    .line 236
    .line 237
    invoke-direct {v3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 238
    .line 239
    .line 240
    const/4 v6, 0x2

    .line 241
    invoke-static {v7, v7, v6, v4}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    sget v11, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 246
    .line 247
    sget v14, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 248
    .line 249
    add-int/2addr v11, v14

    .line 250
    iput v11, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 251
    .line 252
    invoke-virtual {v5, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    .line 254
    .line 255
    const/high16 v6, 0x43680000    # 232.0f

    .line 256
    .line 257
    invoke-static {v0, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 258
    .line 259
    .line 260
    move-result v6

    .line 261
    float-to-int v6, v6

    .line 262
    new-instance v11, Lcom/mycompany/app/view/MyRecyclerView;

    .line 263
    .line 264
    invoke-direct {v11, v0}, Lcom/mycompany/app/view/MyRecyclerView;-><init>(Landroid/content/Context;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v11, v13, v13}, Lcom/mycompany/app/view/MyRecyclerView;->u0(ZZ)V

    .line 268
    .line 269
    .line 270
    const/4 v14, 0x0

    .line 271
    invoke-virtual {v11, v14}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v11, v14}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 275
    .line 276
    .line 277
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 278
    .line 279
    invoke-direct {v12, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 280
    .line 281
    .line 282
    iput v6, v12, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 283
    .line 284
    invoke-virtual {v3, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    .line 286
    .line 287
    new-instance v12, Landroidx/appcompat/widget/AppCompatTextView;

    .line 288
    .line 289
    const/4 v14, 0x0

    .line 290
    invoke-direct {v12, v0, v14}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 291
    .line 292
    .line 293
    const/16 v14, 0x11

    .line 294
    .line 295
    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 296
    .line 297
    .line 298
    const/high16 v14, 0x41800000    # 16.0f

    .line 299
    .line 300
    invoke-virtual {v12, v13, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 301
    .line 302
    .line 303
    sget v14, Lnet/kaki87/soul2/testing/R$string;->not_used:I

    .line 304
    .line 305
    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(I)V

    .line 306
    .line 307
    .line 308
    const/16 v14, 0x8

    .line 309
    .line 310
    invoke-virtual {v12, v14}, Landroid/view/View;->setVisibility(I)V

    .line 311
    .line 312
    .line 313
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 314
    .line 315
    invoke-direct {v13, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 316
    .line 317
    .line 318
    iput v6, v13, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 319
    .line 320
    invoke-virtual {v3, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    .line 322
    .line 323
    const/high16 v6, 0x43300000    # 176.0f

    .line 324
    .line 325
    invoke-static {v0, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 326
    .line 327
    .line 328
    move-result v6

    .line 329
    float-to-int v6, v6

    .line 330
    new-instance v13, Lcom/mycompany/app/view/MyButtonImage;

    .line 331
    .line 332
    invoke-direct {v13, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v13, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v13, v14}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 339
    .line 340
    .line 341
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 342
    .line 343
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 344
    .line 345
    invoke-direct {v7, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 346
    .line 347
    .line 348
    const v14, 0x800053

    .line 349
    .line 350
    .line 351
    iput v14, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 352
    .line 353
    sget v14, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 354
    .line 355
    invoke-virtual {v7, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 356
    .line 357
    .line 358
    iput v6, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 359
    .line 360
    invoke-virtual {v3, v13, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    .line 362
    .line 363
    new-instance v7, Lcom/mycompany/app/view/MyButtonImage;

    .line 364
    .line 365
    invoke-direct {v7, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 369
    .line 370
    .line 371
    const/16 v14, 0x8

    .line 372
    .line 373
    invoke-virtual {v7, v14}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 374
    .line 375
    .line 376
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 377
    .line 378
    move-object/from16 v20, v2

    .line 379
    .line 380
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 381
    .line 382
    invoke-direct {v14, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 383
    .line 384
    .line 385
    const v2, 0x800053

    .line 386
    .line 387
    .line 388
    iput v2, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 389
    .line 390
    sget v2, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 391
    .line 392
    sget v21, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 393
    .line 394
    add-int v2, v2, v21

    .line 395
    .line 396
    invoke-virtual {v14, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 397
    .line 398
    .line 399
    iput v6, v14, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 400
    .line 401
    invoke-virtual {v3, v7, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    .line 403
    .line 404
    new-instance v2, Lcom/mycompany/app/view/MyButtonImage;

    .line 405
    .line 406
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 410
    .line 411
    .line 412
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 413
    .line 414
    move-object/from16 v21, v7

    .line 415
    .line 416
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 417
    .line 418
    invoke-direct {v14, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 419
    .line 420
    .line 421
    const v7, 0x800055

    .line 422
    .line 423
    .line 424
    iput v7, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 425
    .line 426
    sget v22, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 427
    .line 428
    sget v23, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 429
    .line 430
    add-int v7, v22, v23

    .line 431
    .line 432
    invoke-virtual {v14, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 433
    .line 434
    .line 435
    iput v6, v14, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 436
    .line 437
    invoke-virtual {v3, v2, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 438
    .line 439
    .line 440
    new-instance v7, Lcom/mycompany/app/view/MyButtonImage;

    .line 441
    .line 442
    invoke-direct {v7, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 446
    .line 447
    .line 448
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 449
    .line 450
    move-object/from16 v22, v2

    .line 451
    .line 452
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 453
    .line 454
    invoke-direct {v14, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 455
    .line 456
    .line 457
    const v2, 0x800055

    .line 458
    .line 459
    .line 460
    iput v2, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 461
    .line 462
    sget v2, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 463
    .line 464
    invoke-virtual {v14, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 465
    .line 466
    .line 467
    iput v6, v14, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 468
    .line 469
    invoke-virtual {v3, v7, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 470
    .line 471
    .line 472
    const/high16 v2, 0x42a00000    # 80.0f

    .line 473
    .line 474
    invoke-static {v0, v2}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 475
    .line 476
    .line 477
    move-result v2

    .line 478
    float-to-int v2, v2

    .line 479
    new-instance v6, Lcom/mycompany/app/view/MyRecyclerView;

    .line 480
    .line 481
    invoke-direct {v6, v0}, Lcom/mycompany/app/view/MyRecyclerView;-><init>(Landroid/content/Context;)V

    .line 482
    .line 483
    .line 484
    const/4 v14, 0x1

    .line 485
    invoke-virtual {v6, v14, v14}, Lcom/mycompany/app/view/MyRecyclerView;->u0(ZZ)V

    .line 486
    .line 487
    .line 488
    const/4 v14, 0x0

    .line 489
    invoke-virtual {v6, v14}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v6, v14}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 493
    .line 494
    .line 495
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 496
    .line 497
    move-object/from16 v16, v7

    .line 498
    .line 499
    const/4 v7, -0x1

    .line 500
    invoke-direct {v14, v7, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 501
    .line 502
    .line 503
    const v7, 0x800053

    .line 504
    .line 505
    .line 506
    iput v7, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 507
    .line 508
    sget v7, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 509
    .line 510
    iput v7, v14, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 511
    .line 512
    invoke-virtual {v3, v6, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 513
    .line 514
    .line 515
    new-instance v7, Landroidx/appcompat/widget/AppCompatTextView;

    .line 516
    .line 517
    const/4 v14, 0x0

    .line 518
    invoke-direct {v7, v0, v14}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 519
    .line 520
    .line 521
    const/16 v14, 0x11

    .line 522
    .line 523
    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 524
    .line 525
    .line 526
    move-object/from16 p1, v6

    .line 527
    .line 528
    const/high16 v6, 0x41800000    # 16.0f

    .line 529
    .line 530
    const/4 v14, 0x1

    .line 531
    invoke-virtual {v7, v14, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 532
    .line 533
    .line 534
    sget v6, Lnet/kaki87/soul2/testing/R$string;->not_used:I

    .line 535
    .line 536
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(I)V

    .line 537
    .line 538
    .line 539
    const/16 v14, 0x8

    .line 540
    .line 541
    invoke-virtual {v7, v14}, Landroid/view/View;->setVisibility(I)V

    .line 542
    .line 543
    .line 544
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 545
    .line 546
    const/4 v14, -0x1

    .line 547
    invoke-direct {v6, v14, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 548
    .line 549
    .line 550
    const v2, 0x800053

    .line 551
    .line 552
    .line 553
    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 554
    .line 555
    sget v14, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 556
    .line 557
    iput v14, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 558
    .line 559
    invoke-virtual {v3, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 560
    .line 561
    .line 562
    new-instance v6, Lcom/mycompany/app/view/MyButtonImage;

    .line 563
    .line 564
    invoke-direct {v6, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 568
    .line 569
    .line 570
    const/16 v14, 0x8

    .line 571
    .line 572
    invoke-virtual {v6, v14}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 573
    .line 574
    .line 575
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 576
    .line 577
    move-object/from16 v17, v7

    .line 578
    .line 579
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 580
    .line 581
    invoke-direct {v14, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 582
    .line 583
    .line 584
    iput v2, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 585
    .line 586
    sget v2, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 587
    .line 588
    invoke-virtual {v14, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 589
    .line 590
    .line 591
    sget v2, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 592
    .line 593
    iput v2, v14, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 594
    .line 595
    invoke-virtual {v3, v6, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 596
    .line 597
    .line 598
    new-instance v2, Lcom/mycompany/app/view/MyButtonImage;

    .line 599
    .line 600
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 601
    .line 602
    .line 603
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 604
    .line 605
    .line 606
    const/16 v14, 0x8

    .line 607
    .line 608
    invoke-virtual {v2, v14}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 609
    .line 610
    .line 611
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 612
    .line 613
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 614
    .line 615
    invoke-direct {v7, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 616
    .line 617
    .line 618
    const v14, 0x800053

    .line 619
    .line 620
    .line 621
    iput v14, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 622
    .line 623
    sget v14, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 624
    .line 625
    sget v18, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 626
    .line 627
    add-int v14, v14, v18

    .line 628
    .line 629
    invoke-virtual {v7, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 630
    .line 631
    .line 632
    sget v14, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 633
    .line 634
    iput v14, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 635
    .line 636
    invoke-virtual {v3, v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 637
    .line 638
    .line 639
    new-instance v7, Lcom/mycompany/app/view/MyButtonImage;

    .line 640
    .line 641
    invoke-direct {v7, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 642
    .line 643
    .line 644
    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 645
    .line 646
    .line 647
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 648
    .line 649
    move-object/from16 v18, v2

    .line 650
    .line 651
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 652
    .line 653
    invoke-direct {v14, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 654
    .line 655
    .line 656
    const v2, 0x800055

    .line 657
    .line 658
    .line 659
    iput v2, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 660
    .line 661
    sget v2, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 662
    .line 663
    sget v19, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 664
    .line 665
    add-int v2, v2, v19

    .line 666
    .line 667
    invoke-virtual {v14, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 668
    .line 669
    .line 670
    sget v2, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 671
    .line 672
    iput v2, v14, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 673
    .line 674
    invoke-virtual {v3, v7, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 675
    .line 676
    .line 677
    new-instance v2, Lcom/mycompany/app/view/MyButtonImage;

    .line 678
    .line 679
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 680
    .line 681
    .line 682
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 683
    .line 684
    .line 685
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 686
    .line 687
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 688
    .line 689
    invoke-direct {v9, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 690
    .line 691
    .line 692
    const v14, 0x800055

    .line 693
    .line 694
    .line 695
    iput v14, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 696
    .line 697
    sget v14, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 698
    .line 699
    invoke-virtual {v9, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 700
    .line 701
    .line 702
    sget v14, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 703
    .line 704
    iput v14, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 705
    .line 706
    invoke-virtual {v3, v2, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 707
    .line 708
    .line 709
    new-instance v3, Landroid/widget/FrameLayout;

    .line 710
    .line 711
    invoke-direct {v3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 712
    .line 713
    .line 714
    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 715
    .line 716
    .line 717
    const/16 v14, 0x8

    .line 718
    .line 719
    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    .line 720
    .line 721
    .line 722
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 723
    .line 724
    const/4 v9, -0x2

    .line 725
    const/4 v14, -0x1

    .line 726
    invoke-direct {v4, v14, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 727
    .line 728
    .line 729
    const/16 v9, 0xc

    .line 730
    .line 731
    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 732
    .line 733
    .line 734
    invoke-virtual {v5, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 735
    .line 736
    .line 737
    iput-object v5, v0, Lcom/mycompany/app/setting/SettingMenu;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 738
    .line 739
    iput-object v8, v0, Lcom/mycompany/app/setting/SettingMenu;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 740
    .line 741
    iput-object v10, v0, Lcom/mycompany/app/setting/SettingMenu;->E1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 742
    .line 743
    iput-object v15, v0, Lcom/mycompany/app/setting/SettingMenu;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 744
    .line 745
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingMenu;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 746
    .line 747
    iput-object v11, v0, Lcom/mycompany/app/setting/SettingMenu;->H1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 748
    .line 749
    iput-object v12, v0, Lcom/mycompany/app/setting/SettingMenu;->N1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 750
    .line 751
    iput-object v13, v0, Lcom/mycompany/app/setting/SettingMenu;->O1:Lcom/mycompany/app/view/MyButtonImage;

    .line 752
    .line 753
    move-object/from16 v1, v21

    .line 754
    .line 755
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingMenu;->P1:Lcom/mycompany/app/view/MyButtonImage;

    .line 756
    .line 757
    move-object/from16 v1, v22

    .line 758
    .line 759
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingMenu;->Q1:Lcom/mycompany/app/view/MyButtonImage;

    .line 760
    .line 761
    move-object/from16 v1, v16

    .line 762
    .line 763
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingMenu;->R1:Lcom/mycompany/app/view/MyButtonImage;

    .line 764
    .line 765
    move-object/from16 v1, p1

    .line 766
    .line 767
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingMenu;->S1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 768
    .line 769
    move-object/from16 v1, v17

    .line 770
    .line 771
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingMenu;->Y1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 772
    .line 773
    iput-object v6, v0, Lcom/mycompany/app/setting/SettingMenu;->Z1:Lcom/mycompany/app/view/MyButtonImage;

    .line 774
    .line 775
    move-object/from16 v1, v18

    .line 776
    .line 777
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingMenu;->a2:Lcom/mycompany/app/view/MyButtonImage;

    .line 778
    .line 779
    iput-object v7, v0, Lcom/mycompany/app/setting/SettingMenu;->b2:Lcom/mycompany/app/view/MyButtonImage;

    .line 780
    .line 781
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingMenu;->c2:Lcom/mycompany/app/view/MyButtonImage;

    .line 782
    .line 783
    move-object/from16 v1, v20

    .line 784
    .line 785
    invoke-virtual {v0, v5, v1, v3}, Lcom/mycompany/app/setting/CastActivity;->B0(Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    .line 786
    .line 787
    .line 788
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMenu;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 789
    .line 790
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 791
    .line 792
    .line 793
    move-result-object v2

    .line 794
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyMainRelative;->setWindow(Landroid/view/Window;)V

    .line 795
    .line 796
    .line 797
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMenu;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 798
    .line 799
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->initMainScreenOn(Landroid/view/View;)V

    .line 800
    .line 801
    .line 802
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 803
    .line 804
    if-nez v1, :cond_1

    .line 805
    .line 806
    return-void

    .line 807
    :cond_1
    new-instance v2, Lcom/mycompany/app/setting/SettingMenu$1;

    .line 808
    .line 809
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingMenu$1;-><init>(Lcom/mycompany/app/setting/SettingMenu;)V

    .line 810
    .line 811
    .line 812
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 813
    .line 814
    .line 815
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/CastActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingMenu;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingMenu;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingMenu;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 31
    .line 32
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->H1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingMenu;->H1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 40
    .line 41
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->I1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 42
    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/mycompany/app/main/MenuIconAdapter;->D()V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingMenu;->I1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 49
    .line 50
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->K1:Lcom/mycompany/app/quick/MenuDragHelper;

    .line 51
    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    iput-object v1, v0, Lcom/mycompany/app/quick/MenuDragHelper;->d:Lcom/mycompany/app/quick/MenuDragHelper$MenuDragListener;

    .line 55
    .line 56
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingMenu;->K1:Lcom/mycompany/app/quick/MenuDragHelper;

    .line 57
    .line 58
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->O1:Lcom/mycompany/app/view/MyButtonImage;

    .line 59
    .line 60
    if-eqz v0, :cond_6

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 63
    .line 64
    .line 65
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingMenu;->O1:Lcom/mycompany/app/view/MyButtonImage;

    .line 66
    .line 67
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->P1:Lcom/mycompany/app/view/MyButtonImage;

    .line 68
    .line 69
    if-eqz v0, :cond_7

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 72
    .line 73
    .line 74
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingMenu;->P1:Lcom/mycompany/app/view/MyButtonImage;

    .line 75
    .line 76
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->Q1:Lcom/mycompany/app/view/MyButtonImage;

    .line 77
    .line 78
    if-eqz v0, :cond_8

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 81
    .line 82
    .line 83
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingMenu;->Q1:Lcom/mycompany/app/view/MyButtonImage;

    .line 84
    .line 85
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->R1:Lcom/mycompany/app/view/MyButtonImage;

    .line 86
    .line 87
    if-eqz v0, :cond_9

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 90
    .line 91
    .line 92
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingMenu;->R1:Lcom/mycompany/app/view/MyButtonImage;

    .line 93
    .line 94
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->S1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 95
    .line 96
    if-eqz v0, :cond_a

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 99
    .line 100
    .line 101
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingMenu;->S1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 102
    .line 103
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->T1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 104
    .line 105
    if-eqz v0, :cond_b

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/mycompany/app/main/MenuIconAdapter;->D()V

    .line 108
    .line 109
    .line 110
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingMenu;->T1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 111
    .line 112
    :cond_b
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->V1:Lcom/mycompany/app/quick/MenuDragHelper;

    .line 113
    .line 114
    if-eqz v0, :cond_c

    .line 115
    .line 116
    iput-object v1, v0, Lcom/mycompany/app/quick/MenuDragHelper;->d:Lcom/mycompany/app/quick/MenuDragHelper$MenuDragListener;

    .line 117
    .line 118
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingMenu;->V1:Lcom/mycompany/app/quick/MenuDragHelper;

    .line 119
    .line 120
    :cond_c
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->Z1:Lcom/mycompany/app/view/MyButtonImage;

    .line 121
    .line 122
    if-eqz v0, :cond_d

    .line 123
    .line 124
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 125
    .line 126
    .line 127
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingMenu;->Z1:Lcom/mycompany/app/view/MyButtonImage;

    .line 128
    .line 129
    :cond_d
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->a2:Lcom/mycompany/app/view/MyButtonImage;

    .line 130
    .line 131
    if-eqz v0, :cond_e

    .line 132
    .line 133
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 134
    .line 135
    .line 136
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingMenu;->a2:Lcom/mycompany/app/view/MyButtonImage;

    .line 137
    .line 138
    :cond_e
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->b2:Lcom/mycompany/app/view/MyButtonImage;

    .line 139
    .line 140
    if-eqz v0, :cond_f

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 143
    .line 144
    .line 145
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingMenu;->b2:Lcom/mycompany/app/view/MyButtonImage;

    .line 146
    .line 147
    :cond_f
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->c2:Lcom/mycompany/app/view/MyButtonImage;

    .line 148
    .line 149
    if-eqz v0, :cond_10

    .line 150
    .line 151
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 152
    .line 153
    .line 154
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingMenu;->c2:Lcom/mycompany/app/view/MyButtonImage;

    .line 155
    .line 156
    :cond_10
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->o2:Lcom/mycompany/app/view/MyFadeFrame;

    .line 157
    .line 158
    if-eqz v0, :cond_11

    .line 159
    .line 160
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyFadeFrame;->f()V

    .line 161
    .line 162
    .line 163
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingMenu;->o2:Lcom/mycompany/app/view/MyFadeFrame;

    .line 164
    .line 165
    :cond_11
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingMenu;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 166
    .line 167
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingMenu;->E1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 168
    .line 169
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingMenu;->J1:Lcom/mycompany/app/view/MyManagerGrid;

    .line 170
    .line 171
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingMenu;->L1:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 172
    .line 173
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingMenu;->N1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 174
    .line 175
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingMenu;->Y1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 176
    .line 177
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingMenu;->d2:[I

    .line 178
    .line 179
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingMenu;->U1:Lcom/mycompany/app/view/MyManagerLinear;

    .line 180
    .line 181
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingMenu;->W1:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 182
    .line 183
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingMenu;->e2:[I

    .line 184
    .line 185
    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/CastActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingMenu;->K0()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingMenu;->J0()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingMenu;->L0()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->j2:Lcom/mycompany/app/dialog/DialogSetColumn;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetColumn;->dismiss()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingMenu;->j2:Lcom/mycompany/app/dialog/DialogSetColumn;

    .line 28
    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingMenu;->N0()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->l2:Lcom/mycompany/app/dialog/DialogSetBar;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetBar;->dismiss()V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingMenu;->l2:Lcom/mycompany/app/dialog/DialogSetBar;

    .line 40
    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingMenu;->M0()V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu;->f2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 51
    .line 52
    .line 53
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingMenu;->f2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 54
    .line 55
    :cond_2
    return-void
.end method
