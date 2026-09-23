.class public Lcom/mycompany/app/setting/SettingPassList;
.super Lcom/mycompany/app/setting/SettingActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/setting/SettingPassList$LoadTask;
    }
.end annotation


# static fields
.field public static final synthetic t2:I


# instance fields
.field public X1:Lcom/mycompany/app/view/MyButtonImage;

.field public Y1:Lcom/mycompany/app/view/MyButtonImage;

.field public Z1:Lcom/mycompany/app/view/MyScrollBar;

.field public a2:Landroid/widget/ImageView;

.field public b2:Lcom/mycompany/app/view/MyButtonText;

.field public c2:Lcom/mycompany/app/view/MyCoverView;

.field public d2:Lcom/mycompany/app/setting/SettingPassAdapter;

.field public e2:Lcom/mycompany/app/setting/SettingPassList$LoadTask;

.field public f2:Lcom/mycompany/app/view/MyPopupMenu;

.field public g2:Lcom/mycompany/app/dialog/DialogDeleteItem;

.field public h2:Lcom/mycompany/app/dialog/DialogPassInfo;

.field public i2:Lcom/mycompany/app/dialog/DialogPassLoad;

.field public j2:Lcom/mycompany/app/dialog/DialogPassSave;

.field public k2:Z

.field public l2:Z

.field public m2:Lcom/mycompany/app/view/MyRoundImage;

.field public n2:Ljava/lang/String;

.field public o2:Lcom/mycompany/app/main/MainListLoader;

.field public p2:Ljava/util/regex/Pattern;

.field public q2:Z

.field public final r2:Ljava/lang/Runnable;

.field public s2:Lcom/mycompany/app/main/MainItem$ChildItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/setting/SettingPassList$9;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingPassList$9;-><init>(Lcom/mycompany/app/setting/SettingPassList;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingPassList;->r2:Ljava/lang/Runnable;

    .line 10
    .line 11
    return-void
.end method

.method public static O0(Lcom/mycompany/app/setting/SettingPassList;ILcom/mycompany/app/main/MainItem$ChildItem;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPassList;->d2:Lcom/mycompany/app/setting/SettingPassAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingPassList;->S0()Z

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
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingPassList;->Q0()V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lcom/mycompany/app/setting/SettingPassList;->s2:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 17
    .line 18
    new-instance p2, Lcom/mycompany/app/dialog/DialogDeleteItem;

    .line 19
    .line 20
    new-instance v0, Lcom/mycompany/app/setting/SettingPassList$11;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/mycompany/app/setting/SettingPassList$11;-><init>(Lcom/mycompany/app/setting/SettingPassList;I)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p2, p0, v0}, Lcom/mycompany/app/dialog/DialogDeleteItem;-><init>(Landroid/app/Activity;Lcom/mycompany/app/dialog/DialogDeleteItem$DelItemListener;)V

    .line 26
    .line 27
    .line 28
    iput-object p2, p0, Lcom/mycompany/app/setting/SettingPassList;->g2:Lcom/mycompany/app/dialog/DialogDeleteItem;

    .line 29
    .line 30
    new-instance p1, Lcom/mycompany/app/setting/SettingPassList$12;

    .line 31
    .line 32
    invoke-direct {p1, p0}, Lcom/mycompany/app/setting/SettingPassList$12;-><init>(Lcom/mycompany/app/setting/SettingPassList;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final P0(ZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPassList;->e2:Lcom/mycompany/app/setting/SettingPassList$LoadTask;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingPassList;->e2:Lcom/mycompany/app/setting/SettingPassList$LoadTask;

    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/setting/SettingPassList$LoadTask;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1, p2}, Lcom/mycompany/app/setting/SettingPassList$LoadTask;-><init>(Lcom/mycompany/app/setting/SettingPassList;ZZ)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingPassList;->e2:Lcom/mycompany/app/setting/SettingPassList$LoadTask;

    .line 17
    .line 18
    iget-object p1, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final Q0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPassList;->g2:Lcom/mycompany/app/dialog/DialogDeleteItem;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogDeleteItem;->dismiss()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingPassList;->g2:Lcom/mycompany/app/dialog/DialogDeleteItem;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPassList;->o2:Lcom/mycompany/app/main/MainListLoader;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListLoader;->f()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingPassList;->o2:Lcom/mycompany/app/main/MainListLoader;

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPassList;->m2:Lcom/mycompany/app/view/MyRoundImage;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundImage;->k()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingPassList;->m2:Lcom/mycompany/app/view/MyRoundImage;

    .line 28
    .line 29
    :cond_2
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingPassList;->n2:Ljava/lang/String;

    .line 30
    .line 31
    return-void
.end method

.method public final R0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPassList;->h2:Lcom/mycompany/app/dialog/DialogPassInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogPassInfo;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingPassList;->h2:Lcom/mycompany/app/dialog/DialogPassInfo;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final S0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPassList;->g2:Lcom/mycompany/app/dialog/DialogDeleteItem;

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
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPassList;->h2:Lcom/mycompany/app/dialog/DialogPassInfo;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    return v1

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPassList;->i2:Lcom/mycompany/app/dialog/DialogPassLoad;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    return v1

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPassList;->j2:Lcom/mycompany/app/dialog/DialogPassSave;

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    return v1

    .line 22
    :cond_3
    const/4 v0, 0x0

    .line 23
    return v0
.end method

.method public final finish()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingPassList;->k2:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final k0(IILandroid/content/Intent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPassList;->j2:Lcom/mycompany/app/dialog/DialogPassSave;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    const/16 v2, 0x13

    .line 7
    .line 8
    if-ne p1, v2, :cond_3

    .line 9
    .line 10
    if-ne p2, v1, :cond_a

    .line 11
    .line 12
    if-nez p3, :cond_0

    .line 13
    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->b0:Landroid/content/Context;

    .line 23
    .line 24
    sget p2, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 25
    .line 26
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    invoke-static {p1}, Lcom/mycompany/app/main/MainUri;->a(Landroid/net/Uri;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    if-eqz p3, :cond_2

    .line 39
    .line 40
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->b0:Landroid/content/Context;

    .line 41
    .line 42
    sget p2, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 43
    .line 44
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    invoke-virtual {v0, p2}, Lcom/mycompany/app/dialog/DialogPassSave;->E(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogPassSave;->b0:Landroid/content/Context;

    .line 52
    .line 53
    invoke-static {p2, p1}, Lcom/mycompany/app/main/MainUtil;->z7(Landroid/content/Context;Landroid/net/Uri;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_3
    const/16 v0, 0x9

    .line 58
    .line 59
    if-ne p1, v0, :cond_a

    .line 60
    .line 61
    if-ne p2, v1, :cond_a

    .line 62
    .line 63
    if-nez p3, :cond_4

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_4
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-nez p1, :cond_5

    .line 71
    .line 72
    sget p1, Lnet/kaki87/soul2/testing/R$string;->invalid_file:I

    .line 73
    .line 74
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_5
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result p3

    .line 86
    if-eqz p3, :cond_6

    .line 87
    .line 88
    sget p1, Lnet/kaki87/soul2/testing/R$string;->invalid_file:I

    .line 89
    .line 90
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_6
    iget-object p3, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 95
    .line 96
    invoke-static {p3, p2}, Lcom/mycompany/app/main/MainUri;->k(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p3

    .line 100
    invoke-static {p3}, Lcom/mycompany/app/main/MainUtil;->W0(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p3

    .line 104
    const-string v0, "csv"

    .line 105
    .line 106
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result p3

    .line 110
    if-nez p3, :cond_7

    .line 111
    .line 112
    sget p1, Lnet/kaki87/soul2/testing/R$string;->invalid_file:I

    .line 113
    .line 114
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :cond_7
    iget-object p3, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 119
    .line 120
    invoke-static {p3, p1}, Lcom/mycompany/app/main/MainUtil;->z7(Landroid/content/Context;Landroid/net/Uri;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingPassList;->S0()Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-eqz p1, :cond_8

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_8
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingPassList;->i2:Lcom/mycompany/app/dialog/DialogPassLoad;

    .line 131
    .line 132
    if-eqz p1, :cond_9

    .line 133
    .line 134
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogPassLoad;->dismiss()V

    .line 135
    .line 136
    .line 137
    const/4 p1, 0x0

    .line 138
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingPassList;->i2:Lcom/mycompany/app/dialog/DialogPassLoad;

    .line 139
    .line 140
    :cond_9
    new-instance p1, Lcom/mycompany/app/dialog/DialogPassLoad;

    .line 141
    .line 142
    invoke-direct {p1, p0, p2}, Lcom/mycompany/app/dialog/DialogPassLoad;-><init>(Lcom/mycompany/app/setting/SettingPassList;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingPassList;->i2:Lcom/mycompany/app/dialog/DialogPassLoad;

    .line 146
    .line 147
    new-instance p2, Lcom/mycompany/app/setting/SettingPassList$16;

    .line 148
    .line 149
    invoke-direct {p2, p0}, Lcom/mycompany/app/setting/SettingPassList$16;-><init>(Lcom/mycompany/app/setting/SettingPassList;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 153
    .line 154
    .line 155
    :cond_a
    :goto_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/setting/SettingActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/mycompany/app/setting/SettingPassList;->l2:Z

    .line 5
    .line 6
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    iput-boolean v0, p0, Lcom/mycompany/app/setting/SettingPassList;->l2:Z

    .line 12
    .line 13
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingActivity;->L1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    if-eqz v0, :cond_2

    .line 19
    .line 20
    :try_start_0
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingPassList;->X1:Lcom/mycompany/app/view/MyButtonImage;

    .line 21
    .line 22
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_delete_dark_24:I

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingPassList;->Y1:Lcom/mycompany/app/view/MyButtonImage;

    .line 28
    .line 29
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_more_vert_dark_24:I

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingActivity;->L1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 35
    .line 36
    const v0, -0xdededf

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingPassList;->X1:Lcom/mycompany/app/view/MyButtonImage;

    .line 44
    .line 45
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_delete_black_24:I

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingPassList;->Y1:Lcom/mycompany/app/view/MyButtonImage;

    .line 51
    .line 52
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_more_vert_black_24:I

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingActivity;->L1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 58
    .line 59
    const/4 v0, -0x1

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 61
    .line 62
    .line 63
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingPassList;->d2:Lcom/mycompany/app/setting/SettingPassAdapter;

    .line 64
    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 68
    .line 69
    .line 70
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingPassList;->b2:Lcom/mycompany/app/view/MyButtonText;

    .line 71
    .line 72
    if-eqz p1, :cond_5

    .line 73
    .line 74
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 75
    .line 76
    const/high16 v1, -0x1000000

    .line 77
    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    const v0, -0x50506

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingPassList;->b2:Lcom/mycompany/app/view/MyButtonText;

    .line 87
    .line 88
    const v0, -0xd8d8d9

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v1, v0}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_4
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingPassList;->b2:Lcom/mycompany/app/view/MyButtonText;

    .line 99
    .line 100
    const v0, -0x70708

    .line 101
    .line 102
    .line 103
    const/high16 v1, 0x21000000

    .line 104
    .line 105
    invoke-virtual {p1, v0, v1}, Lcom/mycompany/app/view/MyButtonText;->u(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .line 107
    .line 108
    :catch_0
    :cond_5
    :goto_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Lcom/mycompany/app/setting/SettingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 7
    .line 8
    iput-boolean v1, v0, Lcom/mycompany/app/setting/SettingPassList;->l2:Z

    .line 9
    .line 10
    const/16 v1, 0x9

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x13

    .line 17
    .line 18
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 19
    .line 20
    .line 21
    sget v1, Lnet/kaki87/soul2/testing/R$string;->password:I

    .line 22
    .line 23
    sget v3, Lnet/kaki87/soul2/testing/R$id;->set_icon_frame:I

    .line 24
    .line 25
    sget v4, Lnet/kaki87/soul2/testing/R$id;->set_cast_ctrl:I

    .line 26
    .line 27
    new-instance v5, Lcom/mycompany/app/view/MyMainRelative;

    .line 28
    .line 29
    invoke-direct {v5, v0}, Lcom/mycompany/app/view/MyMainRelative;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    .line 33
    .line 34
    const/4 v7, -0x1

    .line 35
    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    .line 40
    .line 41
    new-instance v6, Landroid/widget/RelativeLayout;

    .line 42
    .line 43
    invoke-direct {v6, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    const/4 v8, 0x2

    .line 47
    invoke-static {v7, v7, v8, v4}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    invoke-virtual {v5, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    .line 53
    .line 54
    new-instance v8, Lcom/mycompany/app/view/MyRecyclerView;

    .line 55
    .line 56
    invoke-direct {v8, v0}, Lcom/mycompany/app/view/MyRecyclerView;-><init>(Landroid/content/Context;)V

    .line 57
    .line 58
    .line 59
    const/4 v9, 0x1

    .line 60
    invoke-virtual {v8, v9, v9}, Lcom/mycompany/app/view/MyRecyclerView;->u0(ZZ)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v8, v9}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 64
    .line 65
    .line 66
    const/4 v10, 0x0

    .line 67
    invoke-virtual {v8, v10}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 68
    .line 69
    .line 70
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 71
    .line 72
    invoke-direct {v11, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 73
    .line 74
    .line 75
    sget v12, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 76
    .line 77
    iput v12, v11, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 78
    .line 79
    invoke-virtual {v6, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    .line 81
    .line 82
    new-instance v11, Lcom/mycompany/app/view/MyScrollBar;

    .line 83
    .line 84
    invoke-direct {v11, v0}, Lcom/mycompany/app/view/MyScrollBar;-><init>(Landroid/content/Context;)V

    .line 85
    .line 86
    .line 87
    sget v12, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 88
    .line 89
    sget v13, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 90
    .line 91
    iput v12, v11, Lcom/mycompany/app/view/MyScrollBar;->O:I

    .line 92
    .line 93
    iput v13, v11, Lcom/mycompany/app/view/MyScrollBar;->P:I

    .line 94
    .line 95
    const/4 v12, 0x4

    .line 96
    invoke-virtual {v11, v12}, Lcom/mycompany/app/view/MyScrollBar;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 100
    .line 101
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 102
    .line 103
    invoke-direct {v13, v14, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 104
    .line 105
    .line 106
    const/16 v14, 0x15

    .line 107
    .line 108
    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v6, v11, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    .line 113
    .line 114
    new-instance v13, Landroid/widget/ImageView;

    .line 115
    .line 116
    invoke-direct {v13, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 117
    .line 118
    .line 119
    sget-object v15, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 120
    .line 121
    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 122
    .line 123
    .line 124
    sget v12, Lnet/kaki87/soul2/testing/R$drawable;->logo_gray:I

    .line 125
    .line 126
    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    .line 128
    .line 129
    const/16 v12, 0x8

    .line 130
    .line 131
    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    .line 133
    .line 134
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 135
    .line 136
    invoke-direct {v14, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 137
    .line 138
    .line 139
    sget v10, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 140
    .line 141
    iput v10, v14, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 142
    .line 143
    sget-boolean v10, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 144
    .line 145
    if-eqz v10, :cond_0

    .line 146
    .line 147
    sget v10, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 148
    .line 149
    iput v10, v14, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 150
    .line 151
    :cond_0
    invoke-virtual {v6, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    .line 153
    .line 154
    sget-boolean v10, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 155
    .line 156
    if-eqz v10, :cond_1

    .line 157
    .line 158
    new-instance v10, Lcom/mycompany/app/view/MyButtonText;

    .line 159
    .line 160
    invoke-direct {v10, v0}, Lcom/mycompany/app/view/MyButtonText;-><init>(Landroid/content/Context;)V

    .line 161
    .line 162
    .line 163
    sget v7, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 164
    .line 165
    sget v14, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 166
    .line 167
    sget v12, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 168
    .line 169
    sget v2, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 170
    .line 171
    invoke-virtual {v10, v7, v14, v12, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 172
    .line 173
    .line 174
    const/16 v2, 0x11

    .line 175
    .line 176
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 177
    .line 178
    .line 179
    sget v2, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 180
    .line 181
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 182
    .line 183
    .line 184
    const/high16 v2, 0x41600000    # 14.0f

    .line 185
    .line 186
    invoke-virtual {v10, v9, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 187
    .line 188
    .line 189
    sget v2, Lnet/kaki87/soul2/testing/R$string;->import_normal:I

    .line 190
    .line 191
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(I)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v10, v9}, Lcom/mycompany/app/view/MyButtonText;->setBgNorFixed(Z)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v10, v9}, Lcom/mycompany/app/view/MyButtonText;->setRoundRect(Z)V

    .line 198
    .line 199
    .line 200
    sget v2, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 201
    .line 202
    invoke-virtual {v10, v2}, Lcom/mycompany/app/view/MyButtonText;->setRoundRadius(I)V

    .line 203
    .line 204
    .line 205
    const/16 v2, 0x8

    .line 206
    .line 207
    invoke-virtual {v10, v2}, Lcom/mycompany/app/view/MyButtonText;->setVisibility(I)V

    .line 208
    .line 209
    .line 210
    const/high16 v2, 0x41a00000    # 20.0f

    .line 211
    .line 212
    invoke-static {v0, v2}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    float-to-int v2, v2

    .line 217
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 218
    .line 219
    const/4 v12, -0x2

    .line 220
    const/4 v14, -0x1

    .line 221
    invoke-direct {v7, v14, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 222
    .line 223
    .line 224
    const/16 v12, 0xc

    .line 225
    .line 226
    invoke-virtual {v7, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v7, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v7, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 233
    .line 234
    .line 235
    iput v2, v7, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 236
    .line 237
    invoke-virtual {v6, v10, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    .line 239
    .line 240
    goto :goto_0

    .line 241
    :cond_1
    const/4 v10, 0x0

    .line 242
    :goto_0
    new-instance v2, Lcom/mycompany/app/view/MyCoverView;

    .line 243
    .line 244
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MyCoverView;-><init>(Landroid/content/Context;)V

    .line 245
    .line 246
    .line 247
    const/16 v7, 0x8

    .line 248
    .line 249
    invoke-virtual {v2, v7}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 250
    .line 251
    .line 252
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 253
    .line 254
    const/4 v14, -0x1

    .line 255
    invoke-direct {v7, v14, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 256
    .line 257
    .line 258
    sget v12, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 259
    .line 260
    iput v12, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 261
    .line 262
    invoke-virtual {v6, v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    .line 264
    .line 265
    new-instance v7, Lcom/mycompany/app/view/MyHeaderView;

    .line 266
    .line 267
    invoke-direct {v7, v0}, Lcom/mycompany/app/view/MyHeaderView;-><init>(Landroid/content/Context;)V

    .line 268
    .line 269
    .line 270
    sget v12, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 271
    .line 272
    invoke-virtual {v6, v7, v14, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 273
    .line 274
    .line 275
    new-instance v6, Lcom/mycompany/app/view/MyButtonImage;

    .line 276
    .line 277
    invoke-direct {v6, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v6, v15}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 281
    .line 282
    .line 283
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 284
    .line 285
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 286
    .line 287
    sget v9, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 288
    .line 289
    invoke-direct {v12, v14, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 290
    .line 291
    .line 292
    sget v9, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 293
    .line 294
    invoke-virtual {v12, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v7, v6, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    .line 299
    .line 300
    new-instance v9, Landroidx/appcompat/widget/AppCompatTextView;

    .line 301
    .line 302
    const/4 v12, 0x0

    .line 303
    invoke-direct {v9, v0, v12}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 304
    .line 305
    .line 306
    const/16 v12, 0x10

    .line 307
    .line 308
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 309
    .line 310
    .line 311
    const/4 v14, 0x1

    .line 312
    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 313
    .line 314
    .line 315
    const/high16 v12, 0x41900000    # 18.0f

    .line 316
    .line 317
    invoke-virtual {v9, v14, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 318
    .line 319
    .line 320
    if-lez v1, :cond_2

    .line 321
    .line 322
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(I)V

    .line 323
    .line 324
    .line 325
    :cond_2
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 326
    .line 327
    sget v12, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 328
    .line 329
    const/4 v14, -0x1

    .line 330
    invoke-direct {v1, v14, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 331
    .line 332
    .line 333
    const/16 v12, 0x10

    .line 334
    .line 335
    invoke-virtual {v1, v12, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 336
    .line 337
    .line 338
    sget v12, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 339
    .line 340
    invoke-virtual {v1, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v7, v9, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    .line 345
    .line 346
    new-instance v1, Landroid/widget/LinearLayout;

    .line 347
    .line 348
    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v1, v3}, Landroid/view/View;->setId(I)V

    .line 352
    .line 353
    .line 354
    const/4 v3, 0x0

    .line 355
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 359
    .line 360
    .line 361
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 362
    .line 363
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 364
    .line 365
    const/4 v14, -0x2

    .line 366
    invoke-direct {v3, v14, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 367
    .line 368
    .line 369
    const/16 v12, 0x15

    .line 370
    .line 371
    invoke-virtual {v3, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 372
    .line 373
    .line 374
    sget v12, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 375
    .line 376
    iput v12, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 377
    .line 378
    invoke-virtual {v7, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 379
    .line 380
    .line 381
    const/high16 v3, 0x41600000    # 14.0f

    .line 382
    .line 383
    invoke-static {v0, v3}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 384
    .line 385
    .line 386
    move-result v3

    .line 387
    float-to-int v3, v3

    .line 388
    new-instance v12, Lcom/mycompany/app/view/MyButtonImage;

    .line 389
    .line 390
    invoke-direct {v12, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v12, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v12, v15}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 397
    .line 398
    .line 399
    const/16 v14, 0x8

    .line 400
    .line 401
    invoke-virtual {v12, v14}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 402
    .line 403
    .line 404
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 405
    .line 406
    invoke-virtual {v1, v12, v14, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 407
    .line 408
    .line 409
    new-instance v14, Lcom/mycompany/app/view/MyButtonImage;

    .line 410
    .line 411
    invoke-direct {v14, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v14, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 418
    .line 419
    .line 420
    sget v3, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 421
    .line 422
    invoke-virtual {v1, v14, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 423
    .line 424
    .line 425
    new-instance v3, Landroid/widget/FrameLayout;

    .line 426
    .line 427
    invoke-direct {v3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 428
    .line 429
    .line 430
    const/4 v15, 0x4

    .line 431
    invoke-virtual {v3, v15}, Landroid/view/View;->setVisibility(I)V

    .line 432
    .line 433
    .line 434
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 435
    .line 436
    move-object/from16 p1, v8

    .line 437
    .line 438
    const/4 v8, -0x2

    .line 439
    invoke-virtual {v1, v3, v8, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 440
    .line 441
    .line 442
    new-instance v1, Landroid/widget/FrameLayout;

    .line 443
    .line 444
    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v1, v4}, Landroid/view/View;->setId(I)V

    .line 448
    .line 449
    .line 450
    const/16 v4, 0x8

    .line 451
    .line 452
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 453
    .line 454
    .line 455
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 456
    .line 457
    const/4 v15, -0x1

    .line 458
    invoke-direct {v4, v15, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 459
    .line 460
    .line 461
    const/16 v8, 0xc

    .line 462
    .line 463
    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v5, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    .line 468
    .line 469
    iput-object v5, v0, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 470
    .line 471
    iput-object v7, v0, Lcom/mycompany/app/setting/SettingActivity;->F1:Lcom/mycompany/app/view/MyHeaderView;

    .line 472
    .line 473
    iput-object v6, v0, Lcom/mycompany/app/setting/SettingActivity;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 474
    .line 475
    iput-object v9, v0, Lcom/mycompany/app/setting/SettingActivity;->H1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 476
    .line 477
    iput-object v12, v0, Lcom/mycompany/app/setting/SettingPassList;->X1:Lcom/mycompany/app/view/MyButtonImage;

    .line 478
    .line 479
    iput-object v14, v0, Lcom/mycompany/app/setting/SettingPassList;->Y1:Lcom/mycompany/app/view/MyButtonImage;

    .line 480
    .line 481
    iput-object v11, v0, Lcom/mycompany/app/setting/SettingPassList;->Z1:Lcom/mycompany/app/view/MyScrollBar;

    .line 482
    .line 483
    iput-object v13, v0, Lcom/mycompany/app/setting/SettingPassList;->a2:Landroid/widget/ImageView;

    .line 484
    .line 485
    iput-object v10, v0, Lcom/mycompany/app/setting/SettingPassList;->b2:Lcom/mycompany/app/view/MyButtonText;

    .line 486
    .line 487
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingPassList;->c2:Lcom/mycompany/app/view/MyCoverView;

    .line 488
    .line 489
    move-object/from16 v2, p1

    .line 490
    .line 491
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingActivity;->L1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 492
    .line 493
    invoke-virtual {v0, v5, v3, v1}, Lcom/mycompany/app/setting/CastActivity;->B0(Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    .line 494
    .line 495
    .line 496
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 497
    .line 498
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 499
    .line 500
    .line 501
    move-result-object v2

    .line 502
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyMainRelative;->setWindow(Landroid/view/Window;)V

    .line 503
    .line 504
    .line 505
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 506
    .line 507
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->initMainScreenOn(Landroid/view/View;)V

    .line 508
    .line 509
    .line 510
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 511
    .line 512
    if-nez v1, :cond_3

    .line 513
    .line 514
    return-void

    .line 515
    :cond_3
    new-instance v2, Lcom/mycompany/app/setting/SettingPassList$1;

    .line 516
    .line 517
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingPassList$1;-><init>(Lcom/mycompany/app/setting/SettingPassList;)V

    .line 518
    .line 519
    .line 520
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 521
    .line 522
    .line 523
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/SettingActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPassList;->X1:Lcom/mycompany/app/view/MyButtonImage;

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
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingPassList;->X1:Lcom/mycompany/app/view/MyButtonImage;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPassList;->Y1:Lcom/mycompany/app/view/MyButtonImage;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingPassList;->Y1:Lcom/mycompany/app/view/MyButtonImage;

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPassList;->Z1:Lcom/mycompany/app/view/MyScrollBar;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyScrollBar;->k()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingPassList;->Z1:Lcom/mycompany/app/view/MyScrollBar;

    .line 31
    .line 32
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPassList;->b2:Lcom/mycompany/app/view/MyButtonText;

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonText;->t()V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingPassList;->b2:Lcom/mycompany/app/view/MyButtonText;

    .line 40
    .line 41
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPassList;->c2:Lcom/mycompany/app/view/MyCoverView;

    .line 42
    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyCoverView;->i()V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingPassList;->c2:Lcom/mycompany/app/view/MyCoverView;

    .line 49
    .line 50
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPassList;->d2:Lcom/mycompany/app/setting/SettingPassAdapter;

    .line 51
    .line 52
    if-eqz v0, :cond_6

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingPassAdapter;->d()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    iput v2, v0, Lcom/mycompany/app/setting/SettingPassAdapter;->h:I

    .line 59
    .line 60
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingPassAdapter;->f:Lcom/mycompany/app/main/MainListLoader;

    .line 61
    .line 62
    if-eqz v2, :cond_5

    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/mycompany/app/main/MainListLoader;->f()V

    .line 65
    .line 66
    .line 67
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingPassAdapter;->f:Lcom/mycompany/app/main/MainListLoader;

    .line 68
    .line 69
    :cond_5
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingPassAdapter;->d:Ljava/util/List;

    .line 70
    .line 71
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingPassAdapter;->e:Lcom/mycompany/app/setting/SettingPassAdapter$PassListListener;

    .line 72
    .line 73
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingPassAdapter;->g:Ljava/util/regex/Pattern;

    .line 74
    .line 75
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingPassList;->d2:Lcom/mycompany/app/setting/SettingPassAdapter;

    .line 76
    .line 77
    :cond_6
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingPassList;->a2:Landroid/widget/ImageView;

    .line 78
    .line 79
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingPassList;->p2:Ljava/util/regex/Pattern;

    .line 80
    .line 81
    return-void
.end method

.method public final onPause()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/SettingActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPassList;->f2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingPassList;->f2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingPassList;->Q0()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingPassList;->R0()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPassList;->i2:Lcom/mycompany/app/dialog/DialogPassLoad;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogPassLoad;->dismiss()V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingPassList;->i2:Lcom/mycompany/app/dialog/DialogPassLoad;

    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPassList;->j2:Lcom/mycompany/app/dialog/DialogPassSave;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogPassSave;->dismiss()V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingPassList;->j2:Lcom/mycompany/app/dialog/DialogPassSave;

    .line 45
    .line 46
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPassList;->e2:Lcom/mycompany/app/setting/SettingPassList$LoadTask;

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    iput-boolean v2, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 52
    .line 53
    :cond_3
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingPassList;->e2:Lcom/mycompany/app/setting/SettingPassList$LoadTask;

    .line 54
    .line 55
    :cond_4
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingPassList;->Z1:Lcom/mycompany/app/view/MyScrollBar;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyFadeView;->e()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
