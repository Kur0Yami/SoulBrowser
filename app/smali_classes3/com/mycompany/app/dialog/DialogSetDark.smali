.class public Lcom/mycompany/app/dialog/DialogSetDark;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogSetDark$SetDarkListener;
    }
.end annotation


# static fields
.field public static final synthetic y0:I

.field public static final D0:[I

.field public static final E0:[I


# instance fields
.field public a0:Lcom/mycompany/app/main/MainActivity;

.field public b0:Landroid/content/Context;

.field public c0:Lcom/mycompany/app/dialog/DialogSetDark$SetDarkListener;

.field public d0:Lcom/mycompany/app/view/MyDialogLinear;

.field public e0:Lcom/mycompany/app/view/MyLineFrame;

.field public f0:Lcom/mycompany/app/view/MyButtonImage;

.field public g0:Lcom/mycompany/app/view/MyButtonImage;

.field public h0:Lcom/mycompany/app/view/MyButtonImage;

.field public i0:Lcom/mycompany/app/view/MyRecyclerView;

.field public j0:Lcom/mycompany/app/view/MyLineLinear;

.field public k0:Landroidx/appcompat/widget/AppCompatTextView;

.field public l0:Lcom/mycompany/app/view/MyLineText;

.field public m0:Lcom/mycompany/app/setting/SettingListAdapter;

.field public n0:Lcom/mycompany/app/view/MyPopupMenu;

.field public o0:Lcom/mycompany/app/dialog/DialogConfirm;

.field public p0:Lcom/mycompany/app/dialog/DialogSeekSimple;

.field public q0:Lcom/mycompany/app/dialog/DialogSetMsg;

.field public r0:Z

.field public s0:Z

.field public t0:I

.field public u0:I

.field public v0:Z

.field public w0:I

.field public x0:Z

.field public z0:Ljava/lang/String;

.field public A0:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/mycompany/app/dialog/DialogSetDark;->D0:[I

    sget v0, Lnet/kaki87/soul2/testing/R$string;->theme_light:I

    sget v1, Lnet/kaki87/soul2/testing/R$string;->theme_dark:I

    sget v2, Lnet/kaki87/soul2/testing/R$string;->default_title:I

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/mycompany/app/dialog/DialogSetDark;->E0:[I

    return-void
.end method

.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogSetDark$SetDarkListener;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->b0:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogSetDark;->c0:Lcom/mycompany/app/dialog/DialogSetDark$SetDarkListener;

    const/4 p3, 0x1

    invoke-static {p2, p3}, Lcom/mycompany/app/main/MainUtil;->I1(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogSetDark;->z0:Ljava/lang/String;

    .line 13
    .line 14
    sget p1, Lcom/mycompany/app/pref/PrefWeb;->K:I

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    const/4 v0, 0x2

    .line 18
    if-ne p1, v0, :cond_0

    .line 19
    .line 20
    sput p2, Lcom/mycompany/app/pref/PrefWeb;->K:I

    .line 21
    .line 22
    :cond_0
    sget p1, Lcom/mycompany/app/pref/PrefWeb;->L:I

    .line 23
    .line 24
    if-ne p1, v0, :cond_1

    .line 25
    .line 26
    sput p2, Lcom/mycompany/app/pref/PrefWeb;->L:I

    .line 27
    .line 28
    :cond_1
    sget-boolean p1, Lcom/mycompany/app/pref/PrefWeb;->J:Z

    .line 29
    .line 30
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->s0:Z

    .line 31
    .line 32
    sget p1, Lcom/mycompany/app/pref/PrefWeb;->K:I

    .line 33
    .line 34
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->t0:I

    .line 35
    .line 36
    const/4 p1, 0x2

    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDark;->z0:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_host_default

    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->b0:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/mycompany/app/db/book/DbBookTheme;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_host_theme

    goto :goto_host_default

    :cond_host_theme
    move p1, v0

    :cond_host_default
    :goto_host_default
    .line 37
    .line 38
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->u0:I

    iput p1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->A0:I

    .line 39
    .line 40
    sget-boolean p1, Lcom/mycompany/app/pref/PrefWeb;->M:Z

    .line 41
    .line 42
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->v0:Z

    .line 43
    .line 44
    sget p1, Lcom/mycompany/app/pref/PrefWeb;->N:I

    .line 45
    .line 46
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->w0:I

    .line 47
    .line 48
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 49
    .line 50
    if-nez p1, :cond_2

    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    new-instance p2, Lcom/mycompany/app/dialog/DialogSetDark$1;

    .line 54
    .line 55
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogSetDark$1;-><init>(Lcom/mycompany/app/dialog/DialogSetDark;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public static B(I)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p0, "%"

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method


# virtual methods
.method public final C()Ljava/util/ArrayList;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetDark;->b0:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    return-object v1

    .line 9
    :cond_0
    iget-boolean v7, v0, Lcom/mycompany/app/dialog/DialogSetDark;->s0:Z

    .line 10
    .line 11
    sget-object v9, Lcom/mycompany/app/setting/SettingDisplay;->q2:[I

    .line 12
    .line 13
    iget v2, v0, Lcom/mycompany/app/dialog/DialogSetDark;->t0:I

    .line 14
    .line 15
    aget v2, v9, v2

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogSetDark;->v0:Z

    .line 22
    .line 23
    const/4 v10, 0x1

    .line 24
    xor-int/lit8 v16, v1, 0x1

    .line 25
    .line 26
    new-instance v1, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 32
    .line 33
    const/4 v8, 0x0

    .line 34
    const/4 v5, 0x0

    .line 35
    const-string v3, "UI"

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    invoke-direct/range {v2 .. v8}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 45
    .line 46
    sget v3, Lnet/kaki87/soul2/testing/R$string;->web_page:I

    .line 47
    .line 48
    iget v4, v0, Lcom/mycompany/app/dialog/DialogSetDark;->u0:I

    .line 49
    .line 50
    sget-object v5, Lcom/mycompany/app/dialog/DialogSetDark;->E0:[I

    aget v4, v5, v4

    sget v6, Lcom/mycompany/app/pref/PrefWeb;->L:I

    const/4 v8, 0x1

    if-ne v6, v8, :cond_web_force_dis

    move v6, v7

    goto :cond_web_dis_done

    :cond_web_force_dis
    const/4 v6, 0x2

    aget v4, v5, v6

    const/4 v6, 0x1

    :cond_web_dis_done
    .line 51
    .line 52
    invoke-direct {v2, v10, v3, v4, v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIZ)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    new-instance v17, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 59
    .line 60
    sget v19, Lnet/kaki87/soul2/testing/R$string;->screen_info_system:I

    .line 61
    .line 62
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogSetDark;->s0:Z

    .line 63
    .line 64
    const/16 v23, 0x1

    .line 65
    .line 66
    const/16 v21, 0x2

    .line 67
    .line 68
    const/16 v18, 0x2

    .line 69
    .line 70
    const/16 v20, 0x0

    .line 71
    .line 72
    move/from16 v22, v2

    .line 73
    .line 74
    invoke-direct/range {v17 .. v23}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 75
    .line 76
    .line 77
    move-object/from16 v2, v17

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 83
    .line 84
    const/4 v3, 0x3

    .line 85
    invoke-direct {v2, v3, v10}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    new-instance v17, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 92
    .line 93
    sget v19, Lnet/kaki87/soul2/testing/R$string;->dark_image:I

    .line 94
    .line 95
    sget v20, Lnet/kaki87/soul2/testing/R$string;->img_brt_info:I

    .line 96
    .line 97
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogSetDark;->v0:Z

    .line 98
    .line 99
    const/16 v21, 0x1

    .line 100
    .line 101
    const/16 v18, 0x4

    .line 102
    .line 103
    move/from16 v22, v2

    .line 104
    .line 105
    invoke-direct/range {v17 .. v23}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 106
    .line 107
    .line 108
    move-object/from16 v2, v17

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    new-instance v11, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 114
    .line 115
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetDark;->b0:Landroid/content/Context;

    .line 116
    .line 117
    sget v3, Lnet/kaki87/soul2/testing/R$string;->img_bright:I

    .line 118
    .line 119
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v12

    .line 123
    iget v2, v0, Lcom/mycompany/app/dialog/DialogSetDark;->w0:I

    .line 124
    .line 125
    invoke-static {v2}, Lcom/mycompany/app/dialog/DialogSetDark;->B(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v15

    .line 129
    const/16 v17, 0x0

    .line 130
    .line 131
    const/4 v14, 0x0

    .line 132
    const/4 v13, 0x5

    .line 133
    invoke-direct/range {v11 .. v17}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    return-object v1
.end method

.method public final D()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDark;->o0:Lcom/mycompany/app/dialog/DialogConfirm;

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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDark;->o0:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final E()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDark;->q0:Lcom/mycompany/app/dialog/DialogSetMsg;

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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDark;->q0:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final F(Z)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefWeb;->J:Z

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->s0:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    sget v0, Lcom/mycompany/app/pref/PrefWeb;->K:I

    .line 9
    .line 10
    iget v3, p0, Lcom/mycompany/app/dialog/DialogSetDark;->t0:I

    .line 11
    .line 12
    if-ne v0, v3, :cond_1

    .line 13
    .line 14
    iget v0, p0, Lcom/mycompany/app/dialog/DialogSetDark;->A0:I

    .line 15
    .line 16
    iget v3, p0, Lcom/mycompany/app/dialog/DialogSetDark;->u0:I

    .line 17
    .line 18
    if-ne v0, v3, :cond_1

    .line 19
    .line 20
    sget-boolean v0, Lcom/mycompany/app/pref/PrefWeb;->M:Z

    .line 21
    .line 22
    iget-boolean v3, p0, Lcom/mycompany/app/dialog/DialogSetDark;->v0:Z

    .line 23
    .line 24
    if-ne v0, v3, :cond_1

    .line 25
    .line 26
    sget v0, Lcom/mycompany/app/pref/PrefWeb;->N:I

    .line 27
    .line 28
    iget v3, p0, Lcom/mycompany/app/dialog/DialogSetDark;->w0:I

    .line 29
    .line 30
    if-eq v0, v3, :cond_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    move v0, v2

    .line 34
    :goto_0
    move v1, v0

    .line 35
    goto :goto_2

    .line 36
    :cond_1
    :goto_1
    sput-boolean v1, Lcom/mycompany/app/pref/PrefWeb;->J:Z

    .line 37
    .line 38
    iget v0, p0, Lcom/mycompany/app/dialog/DialogSetDark;->t0:I

    .line 39
    .line 40
    sput v0, Lcom/mycompany/app/pref/PrefWeb;->K:I

    .line 41
    .line 42
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDark;->z0:Ljava/lang/String;

    iget v3, p0, Lcom/mycompany/app/dialog/DialogSetDark;->u0:I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_save_site

    const/4 v0, 0x2

    if-ne v3, v0, :cond_save_global_web

    goto :goto_after_web_save

    :cond_save_global_web
    sput v3, Lcom/mycompany/app/pref/PrefWeb;->L:I

    goto :goto_after_web_save

    :cond_save_site
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->b0:Landroid/content/Context;

    const/4 v4, 0x2

    if-ne v3, v4, :cond_upsert_site

    invoke-static {v1, v0}, Lcom/mycompany/app/db/book/DbBookTheme;->d(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_after_web_save

    :cond_upsert_site
    invoke-static {v1, v0, v3}, Lcom/mycompany/app/db/book/DbBookTheme;->c(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_after_web_save
    iget v0, p0, Lcom/mycompany/app/dialog/DialogSetDark;->u0:I

    iput v0, p0, Lcom/mycompany/app/dialog/DialogSetDark;->A0:I

    .line 45
    .line 46
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogSetDark;->v0:Z

    .line 47
    .line 48
    sput-boolean v0, Lcom/mycompany/app/pref/PrefWeb;->M:Z

    .line 49
    .line 50
    iget v0, p0, Lcom/mycompany/app/dialog/DialogSetDark;->w0:I

    .line 51
    .line 52
    sput v0, Lcom/mycompany/app/pref/PrefWeb;->N:I

    .line 53
    .line 54
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDark;->b0:Landroid/content/Context;

    .line 55
    .line 56
    invoke-static {v0, v2}, Lcom/mycompany/app/pref/PrefWeb;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefWeb;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v1, "mThemeSys"

    .line 61
    .line 62
    sget-boolean v3, Lcom/mycompany/app/pref/PrefWeb;->J:Z

    .line 63
    .line 64
    invoke-virtual {v0, v1, v3}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 65
    .line 66
    .line 67
    const-string v1, "mThemeUi"

    .line 68
    .line 69
    sget v3, Lcom/mycompany/app/pref/PrefWeb;->K:I

    .line 70
    .line 71
    invoke-virtual {v0, v3, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->z0:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_skip_theme_web

    const-string v1, "mThemeWeb"

    .line 75
    .line 76
    sget v3, Lcom/mycompany/app/pref/PrefWeb;->L:I

    .line 77
    .line 78
    invoke-virtual {v0, v3, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    :cond_skip_theme_web
    .line 79
    .line 80
    .line 81
    const-string v1, "mThemeImg"

    .line 82
    .line 83
    sget-boolean v3, Lcom/mycompany/app/pref/PrefWeb;->M:Z

    .line 84
    .line 85
    invoke-virtual {v0, v1, v3}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 86
    .line 87
    .line 88
    const-string v1, "mImgBright"

    .line 89
    .line 90
    sget v3, Lcom/mycompany/app/pref/PrefWeb;->N:I

    .line 91
    .line 92
    invoke-virtual {v0, v3, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 96
    .line 97
    .line 98
    const/4 v0, 0x1

    .line 99
    if-eqz p1, :cond_2

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->f7()V

    .line 103
    .line 104
    .line 105
    move v1, v2

    .line 106
    :goto_2
    if-eqz p1, :cond_4

    .line 107
    .line 108
    if-eqz v0, :cond_3

    .line 109
    .line 110
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->c0:Lcom/mycompany/app/dialog/DialogSetDark$SetDarkListener;

    .line 111
    .line 112
    if-eqz p1, :cond_3

    .line 113
    .line 114
    invoke-interface {p1, v1}, Lcom/mycompany/app/dialog/DialogSetDark$SetDarkListener;->a(Z)V

    .line 115
    .line 116
    .line 117
    :cond_3
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogSetDark;->dismiss()V

    .line 118
    .line 119
    .line 120
    iput-boolean v2, p0, Lcom/mycompany/app/dialog/DialogSetDark;->r0:Z

    .line 121
    .line 122
    return-void

    .line 123
    :cond_4
    if-nez v0, :cond_5

    .line 124
    .line 125
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->r0:Z

    .line 126
    .line 127
    if-eqz p1, :cond_6

    .line 128
    .line 129
    iput-boolean v2, p0, Lcom/mycompany/app/dialog/DialogSetDark;->r0:Z

    .line 130
    .line 131
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->m0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 132
    .line 133
    if-eqz p1, :cond_6

    .line 134
    .line 135
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogSetDark;->C()Ljava/util/ArrayList;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {p1, v0}, Lcom/mycompany/app/setting/SettingListAdapter;->E(Ljava/util/List;)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :cond_5
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 144
    .line 145
    if-nez p1, :cond_7

    .line 146
    .line 147
    :cond_6
    return-void

    .line 148
    :cond_7
    new-instance v0, Lcom/mycompany/app/dialog/DialogSetDark$17;

    .line 149
    .line 150
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogSetDark$17;-><init>(Lcom/mycompany/app/dialog/DialogSetDark;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 154
    .line 155
    .line 156
    return-void
.end method

.method public final G(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDark;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_0

    .line 6
    .line 7
    :cond_0
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 8
    .line 9
    const/high16 v1, -0x1000000

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDark;->i0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 16
    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 21
    .line 22
    const v0, -0xdededf

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->e0:Lcom/mycompany/app/view/MyLineFrame;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyLineFrame;->h()V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 34
    .line 35
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_sunny_dark_20:I

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 41
    .line 42
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_dark_mode_dark_20:I

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 48
    .line 49
    const v0, -0xc0c0c1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 61
    .line 62
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_dark:I

    .line 63
    .line 64
    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 68
    .line 69
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_dark:I

    .line 70
    .line 71
    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 75
    .line 76
    const v1, -0x50506

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 83
    .line 84
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 88
    .line 89
    if-eqz p1, :cond_4

    .line 90
    .line 91
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_help_dark_20:I

    .line 92
    .line 93
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDark;->i0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 103
    .line 104
    const v2, -0x70708

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 108
    .line 109
    .line 110
    if-eqz p1, :cond_3

    .line 111
    .line 112
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 113
    .line 114
    const/4 v0, -0x1

    .line 115
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->e0:Lcom/mycompany/app/view/MyLineFrame;

    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyLineFrame;->h()V

    .line 121
    .line 122
    .line 123
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 124
    .line 125
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_sunny_black_20:I

    .line 126
    .line 127
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 131
    .line 132
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_dark_mode_black_20:I

    .line 133
    .line 134
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 135
    .line 136
    .line 137
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 138
    .line 139
    const/high16 v0, 0x21000000

    .line 140
    .line 141
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 145
    .line 146
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 147
    .line 148
    .line 149
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 150
    .line 151
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back:I

    .line 152
    .line 153
    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 154
    .line 155
    .line 156
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 157
    .line 158
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back:I

    .line 159
    .line 160
    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 161
    .line 162
    .line 163
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 164
    .line 165
    const v2, -0xe19938

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    .line 170
    .line 171
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 172
    .line 173
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 174
    .line 175
    .line 176
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 177
    .line 178
    if-eqz p1, :cond_4

    .line 179
    .line 180
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_help_black_20:I

    .line 181
    .line 182
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 183
    .line 184
    .line 185
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 186
    .line 187
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 188
    .line 189
    .line 190
    :cond_4
    :goto_0
    return-void
.end method

.method public final H(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDark;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_3

    .line 6
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_h_web_ok

    sget v1, Lcom/mycompany/app/pref/PrefWeb;->L:I

    if-ne v1, v0, :goto_3

    :cond_h_web_ok
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDark;->n0:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->n0:Lcom/mycompany/app/view/MyPopupMenu;

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
    if-nez p2, :cond_4

    .line 29
    .line 30
    iget v0, p0, Lcom/mycompany/app/dialog/DialogSetDark;->t0:I

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_4
    iget v0, p0, Lcom/mycompany/app/dialog/DialogSetDark;->u0:I

    .line 34
    .line 35
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x0

    .line 43
    move v2, v1

    if-nez p2, :cond_web_popup

    .line 44
    :goto_1
    const/4 v3, 0x2

    .line 45
    if-ge v2, v3, :cond_6

    .line 46
    .line 47
    sget-object v3, Lcom/mycompany/app/setting/SettingDisplay;->p2:[I

    .line 48
    .line 49
    aget v3, v3, v2

    .line 50
    .line 51
    new-instance v4, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 52
    .line 53
    sget-object v6, Lcom/mycompany/app/setting/SettingDisplay;->q2:[I

    .line 54
    .line 55
    aget v6, v6, v3

    .line 56
    .line 57
    if-ne v0, v3, :cond_5

    .line 58
    .line 59
    const/4 v3, 0x1

    .line 60
    goto :goto_2

    .line 61
    :cond_5
    move v3, v1

    .line 62
    :goto_2
    invoke-direct {v4, v2, v6, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    add-int/lit8 v2, v2, 0x1

    .line 69
    .line 70
    goto :goto_1

    :cond_web_popup
    :goto_web_1
    const/4 v3, 0x3

    if-ge v2, v3, :cond_6

    sget-object v3, Lcom/mycompany/app/dialog/DialogSetDark;->D0:[I

    aget v3, v3, v2

    new-instance v4, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    sget-object v6, Lcom/mycompany/app/dialog/DialogSetDark;->E0:[I

    aget v6, v6, v3

    if-ne v0, v3, :cond_web_unsel

    const/4 v3, 0x1

    goto :goto_web_2

    :cond_web_unsel
    move v3, v1

    :goto_web_2
    invoke-direct {v4, v2, v6, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_web_1

    .line 71
    :cond_6
    new-instance v1, Lcom/mycompany/app/view/MyPopupMenu;

    .line 72
    .line 73
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogSetDark;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 74
    .line 75
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogSetDark;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 76
    .line 77
    iget-object v4, p1, Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;->D:Landroid/view/View;

    .line 78
    .line 79
    sget-boolean v6, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 80
    .line 81
    new-instance v7, Lcom/mycompany/app/dialog/DialogSetDark$10;

    .line 82
    .line 83
    invoke-direct {v7, p0, v0, p2}, Lcom/mycompany/app/dialog/DialogSetDark$10;-><init>(Lcom/mycompany/app/dialog/DialogSetDark;II)V

    .line 84
    .line 85
    .line 86
    invoke-direct/range {v1 .. v7}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 87
    .line 88
    .line 89
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->n0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 90
    .line 91
    iput-object v1, p0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 92
    .line 93
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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDark;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogSetDark;->D()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDark;->p0:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSeekSimple;->dismiss()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->p0:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 21
    .line 22
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogSetDark;->E()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDark;->n0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    iput-object v1, p0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->n0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 35
    .line 36
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDark;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 44
    .line 45
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDark;->e0:Lcom/mycompany/app/view/MyLineFrame;

    .line 46
    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineFrame;->g()V

    .line 50
    .line 51
    .line 52
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->e0:Lcom/mycompany/app/view/MyLineFrame;

    .line 53
    .line 54
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDark;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 55
    .line 56
    if-eqz v0, :cond_5

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 59
    .line 60
    .line 61
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 62
    .line 63
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDark;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 64
    .line 65
    if-eqz v0, :cond_6

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 68
    .line 69
    .line 70
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 71
    .line 72
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDark;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 73
    .line 74
    if-eqz v0, :cond_7

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 77
    .line 78
    .line 79
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 80
    .line 81
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDark;->i0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 82
    .line 83
    if-eqz v0, :cond_8

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 86
    .line 87
    .line 88
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->i0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 89
    .line 90
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDark;->j0:Lcom/mycompany/app/view/MyLineLinear;

    .line 91
    .line 92
    if-eqz v0, :cond_9

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineLinear;->a()V

    .line 95
    .line 96
    .line 97
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->j0:Lcom/mycompany/app/view/MyLineLinear;

    .line 98
    .line 99
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDark;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 100
    .line 101
    if-eqz v0, :cond_a

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 104
    .line 105
    .line 106
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 107
    .line 108
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDark;->m0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 109
    .line 110
    if-eqz v0, :cond_b

    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingListAdapter;->z()V

    .line 113
    .line 114
    .line 115
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->m0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 116
    .line 117
    :cond_b
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 118
    .line 119
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->b0:Landroid/content/Context;

    .line 120
    .line 121
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->c0:Lcom/mycompany/app/dialog/DialogSetDark$SetDarkListener;

    .line 122
    .line 123
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetDark;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 124
    .line 125
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 126
    .line 127
    .line 128
    return-void
.end method
